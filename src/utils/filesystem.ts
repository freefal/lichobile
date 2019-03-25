export function getFiles(prefix: string): Promise<FileEntry[]> {
  return new Promise((resolve, reject) => {
    window.requestFileSystem(LocalFileSystem.PERSISTENT, 0, (fs) => {
      fs.root.createReader().readEntries((entries: FileEntry[]) => {
        resolve(entries.filter(e => e.isFile && e.name.includes(prefix)))
      }, reject)
    }, reject)
  })
}

export function getLocalFileOrDowload(remoteFileUri: string, fileName: string, prefix: string, onProgress?: (e: ProgressEvent) => void): Promise<FileEntry> {
  return new Promise((resolve, reject) => {
    window.requestFileSystem(LocalFileSystem.PERSISTENT, 0, (fs) => {
      console.log(fs)
      fs.root.getFile(prefix + fileName, undefined, (fe) => {
        fe.file(f => {
          if (f.size > 0) {
            resolve(fe)
          } else {
            console.log('syncing remote file')
            syncRemoteFile(fs, remoteFileUri, fileName, prefix, onProgress)
            .then(resolve)
            .catch(reject)
          }
        }, reject)
      }, (err: FileError) => {
        console.log(err)
        if (err.code === FileError.NOT_FOUND_ERR) {
          syncRemoteFile(fs, remoteFileUri, fileName, prefix, onProgress)
          .then(resolve)
          .catch(reject)
        } else {
          reject(err)
        }
      })
    }, reject)
  })
}

function syncRemoteFile(fs: FileSystem, remoteFileUri: string, fileName: string, prefix: string, onProgress?: (e: ProgressEvent) => void): Promise<FileEntry> {
  console.log(fs)
  console.log(remoteFileUri)
  console.log(fileName)
  console.log(prefix)

  return new Promise((resolve, reject) => {
    fs.root.getFile(
      prefix + fileName,
      { create: true, exclusive: false },
      (fileEntry) =>
        download(fileEntry, remoteFileUri, onProgress)
        .then(resolve)
        .catch(err => {
          // a zero lenght file is created while trying to download and save
          console.log('Download error')
          console.log(err)
          fileEntry.remove(() => {})
          reject(err)
        }),
      reject
    )
  })
}

function download(fileEntry: FileEntry, remoteURI: string, onProgress?: (e: ProgressEvent) => void): Promise<FileEntry> {
  console.log(fileEntry)
  console.log(remoteURI)

  return new Promise((resolve, reject) => {
    const client = new XMLHttpRequest()
    client.open('GET', remoteURI, true)
    client.responseType = 'blob'
    if (onProgress) {
      client.onprogress = onProgress
    }
    client.onload = () => {
      const blob = client.response
      console.log(client)
      //const meow = "Meow"
      //const blob2 = new Blob([meow.repeat(100)], { type: "text/plain" });
      console.log('got response')
      console.log(blob)
      const reader = new FileReader()
      reader.onload = function () {
        console.log(reader.result);
      }
      reader.readAsBinaryString(blob)
      if (blob) {
        fileEntry.createWriter(fileWriter => {
          fileWriter.onwriteend = () => {readBinaryFile(fileEntry); resolve(fileEntry) }
          fileWriter.onerror = err => {console.log('error writing'); console.log(err); reject(err)}
          console.log(fileWriter)
          fileWriter.write(blob)
        }, reject)
      } else {
        reject('could not get file')
      }
    }
    client.send()  
  })
}

function readBinaryFile(fileEntry: FileEntry) {

    fileEntry.file(function (file) {
        var reader = new FileReader();

        reader.onloadend = function() {

            console.log("Successful file write: " + this.result);
            console.log(fileEntry.fullPath + ": " + this.result);
            if (this.result instanceof ArrayBuffer) {
              var blob = new Blob([new Uint8Array(this.result)], { type: "image/png" });
              const reader = new FileReader()
              reader.onload = function () {
                console.log(reader.result);
              }
              reader.readAsBinaryString(blob)
            }
            else {
              console.log('not array')
            }
        };

        reader.readAsArrayBuffer(file);

    }, () => { console.log("error3")} );
}
