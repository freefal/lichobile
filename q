warning: LF will be replaced by CRLF in config.xml.
The file will have its original line endings in your working directory.
[1mdiff --git a/config.xml b/config.xml[m
[1mindex 0ebc9997..688f5108 100644[m
[1m--- a/config.xml[m
[1m+++ b/config.xml[m
[36m@@ -106,13 +106,11 @@[m
             <path event="other" url="*" />[m
         </host>[m
     </universal-links>[m
[32m+[m[32m    <engine name="ios" spec="4.5.4" />[m
[32m+[m[32m    <plugin name="de.appplant.cordova.plugin.local-notification" spec="git+https://github.com/katzer/cordova-plugin-local-notifications.git#0.8.5" />[m
     <plugin name="com.rjfun.cordova.plugin.lowlatencyaudio" spec="https://github.com/veloce/cordova-plugin-nativeaudio.git#old_interface" />[m
     <plugin name="cordova-plugin-app-event" spec="git+https://github.com/katzer/cordova-plugin-app-event.git#1.2.1" />[m
     <plugin name="cordova-plugin-appversion" spec="1.0.0" />[m
[31m-    <plugin name="cordova-plugin-crosswalk-webview" spec="2.3.0">[m
[31m-        <variable name="XWALK_MODE" value="embedded" />[m
[31m-        <variable name="XWALK_MULTIPLEAPK" value="true" />[m
[31m-    </plugin>[m
     <plugin name="cordova-plugin-device" spec="1.1.4" />[m
     <plugin name="cordova-plugin-dialogs" spec="1.3.1" />[m
     <plugin name="cordova-plugin-file-transfer" spec="1.6.1" />[m
[36m@@ -127,11 +125,8 @@[m
     <plugin name="cordova-plugin-x-socialsharing" spec="5.1.3" />[m
     <plugin name="cordova-plugin-x-toast" spec="2.5.2" />[m
     <plugin name="cordova-universal-links-plugin" spec="git+https://github.com/flipflopapp/cordova-universal-links-plugin.git#be60a9b" />[m
[31m-    <plugin name="de.appplant.cordova.plugin.local-notification" spec="git+https://github.com/katzer/cordova-plugin-local-notifications.git#0.8.5" />[m
     <plugin name="ionic-plugin-keyboard" spec="2.2.1" />[m
     <plugin name="onesignal-cordova-plugin" spec="2.2.4" />[m
     <plugin name="cordova-plugin-network-information" spec="2.0.1" />[m
[31m-    <plugin name="cordova-plugin-stockfish" spec="https://github.com/veloce/cordova-plugin-stockfish.git#v1.6.0" />[m
[31m-    <engine name="android" spec="7.0.0" />[m
[31m-    <engine name="ios" spec="4.5.4" />[m
[32m+[m[32m    <plugin name="cordova-plugin-stockfish" spec="git+https://github.com/veloce/cordova-plugin-stockfish.git#v1.6.0" />[m
 </widget>[m
[1mdiff --git a/package-lock.json b/package-lock.json[m
[1mindex 594ce826..2f15dd33 100644[m
[1m--- a/package-lock.json[m
[1m+++ b/package-lock.json[m
[36m@@ -1348,7 +1348,8 @@[m
         "balanced-match": {[m
             "version": "1.0.0",[m
             "resolved": "https://registry.npmjs.org/balanced-match/-/balanced-match-1.0.0.tgz",[m
[31m-            "integrity": "sha1-ibTRmasr7kneFk6gK4nORi1xt2c="[m
[32m+[m[32m            "integrity": "sha1-ibTRmasr7kneFk6gK4nORi1xt2c=",[m
[32m+[m[32m            "dev": true[m
         },[m
         "base62": {[m
             "version": "0.1.1",[m
[36m@@ -1358,7 +1359,8 @@[m
         "base64-js": {[m
             "version": "1.2.0",[m
             "resolved": "https://registry.npmjs.org/base64-js/-/base64-js-1.2.0.tgz",[m
[31m-            "integrity": "sha1-o5mS1yNYSBGYK+XikLtqU9hnAPE="[m
[32m+[m[32m            "integrity": "sha1-o5mS1yNYSBGYK+XikLtqU9hnAPE=",[m
[32m+[m[32m            "dev": true[m
         },[m
         "bcrypt-pbkdf": {[m
             "version": "1.0.1",[m
[36m@@ -1434,6 +1436,7 @@[m
             "version": "1.1.8",[m
             "resolved": "https://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.8.tgz",[m
             "integrity": "sha1-wHshHHyVLsH479Uad+8NHTmQopI=",[m
[32m+[m[32m            "dev": true,[m
             "requires": {[m
                 "balanced-match": "1.0.0",[m
                 "concat-map": "0.0.1"[m
[36m@@ -1835,33 +1838,6 @@[m
             "integrity": "sha1-DQcLTQQ6W+ozovGkDi7bPZpMz3c=",[m
             "dev": true[m
         },[m
[31m-        "color": {[m
[31m-            "version": "0.7.3",[m
[31m-            "resolved": "https://registry.npmjs.org/color/-/color-0.7.3.tgz",[m
[31m-            "integrity": "sha1-qzrkvGy4z62110nEDzSuoIgQT4k=",[m
[31m-            "requires": {[m
[31m-                "color-convert": "0.5.3",[m
[31m-                "color-string": "0.2.4"[m
[31m-            }[m
[31m-        },[m
[31m-        "color-convert": {[m
[31m-            "version": "0.5.3",[m
[31m-            "resolved": "https://registry.npmjs.org/color-convert/-/color-convert-0.5.3.tgz",[m
[31m-            "integrity": "sha1-vbbGnOZg+t/+CwAHzER+G59ygr0="[m
[31m-        },[m
[31m-        "color-name": {[m
[31m-            "version": "1.0.1",[m
[31m-            "resolved": "https://registry.npmjs.org/color-name/-/color-name-1.0.1.tgz",[m
[31m-            "integrity": "sha1-azSyspt3FgE5crC51b7c+7Zxjfg="[m
[31m-        },[m
[31m-        "color-string": {[m
[31m-            "version": "0.2.4",[m
[31m-            "resolved": "https://registry.npmjs.org/color-string/-/color-string-0.2.4.tgz",[m
[31m-            "integrity": "sha1-Ih/2QjT3Gqo+E7yMfoyV883Y+Bo=",[m
[31m-            "requires": {[m
[31m-                "color-name": "1.0.1"[m
[31m-            }[m
[31m-        },[m
         "combine-source-map": {[m
             "version": "0.7.2",[m
             "resolved": "https://registry.npmjs.org/combine-source-map/-/combine-source-map-0.7.2.tgz",[m
[36m@@ -1892,7 +1868,8 @@[m
         "concat-map": {[m
             "version": "0.0.1",[m
             "resolved": "https://registry.npmjs.org/concat-map/-/concat-map-0.0.1.tgz",[m
[31m-            "integrity": "sha1-2Klr13/Wjfd5OnMDajug1UBdR3s="[m
[32m+[m[32m            "integrity": "sha1-2Klr13/Wjfd5OnMDajug1UBdR3s=",[m
[32m+[m[32m            "dev": true[m
         },[m
         "concat-stream": {[m
             "version": "1.5.2",[m
[36m@@ -2484,11 +2461,6 @@[m
             "resolved": "https://registry.npmjs.org/cordova-plugin-appversion/-/cordova-plugin-appversion-1.0.0.tgz",[m
             "integrity": "sha1-tgo5E+R1k1+QCJMLRpclwmOUKJE="[m
         },[m
[31m-        "cordova-plugin-crosswalk-webview": {[m
[31m-            "version": "2.3.0",[m
[31m-            "resolved": "https://registry.npmjs.org/cordova-plugin-crosswalk-webview/-/cordova-plugin-crosswalk-webview-2.3.0.tgz",[m
[31m-            "integrity": "sha1-4u407P2t3YS9qE5yZjU55AyZ0yQ="[m
[31m-        },[m
         "cordova-plugin-device": {[m
             "version": "1.1.4",[m
             "resolved": "https://registry.npmjs.org/cordova-plugin-device/-/cordova-plugin-device-1.1.4.tgz",[m
[36m@@ -2539,9 +2511,6 @@[m
             "resolved": "https://registry.npmjs.org/cordova-plugin-statusbar/-/cordova-plugin-statusbar-2.3.0.tgz",[m
             "integrity": "sha1-MU4dAJxlkQzf3gNL/KE71QLJ5eA="[m
         },[m
[31m-        "cordova-plugin-stockfish": {[m
[31m-            "version": "git+https://github.com/veloce/cordova-plugin-stockfish.git#80882c93476f0769f1782e578453f818d8bfa429"[m
[31m-        },[m
         "cordova-plugin-vibration": {[m
             "version": "2.1.3",[m
             "resolved": "https://registry.npmjs.org/cordova-plugin-vibration/-/cordova-plugin-vibration-2.1.3.tgz",[m
[36m@@ -2562,16 +2531,6 @@[m
             "resolved": "https://registry.npmjs.org/cordova-plugin-x-toast/-/cordova-plugin-x-toast-2.5.2.tgz",[m
             "integrity": "sha1-1BsEVcrUvGdWJ3HEDsMW7yGcMjs="[m
         },[m
[31m-        "cordova-universal-links-plugin": {[m
[31m-            "version": "git+https://github.com/flipflopapp/cordova-universal-links-plugin.git#be60a9beb7dc853426c92794d47476557ca1e788",[m
[31m-            "requires": {[m
[31m-                "mkpath": "1.0.0",[m
[31m-                "node-version-compare": "1.0.1",[m
[31m-                "plist": "2.1.0",[m
[31m-                "rimraf": "2.6.2",[m
[31m-                "xml2js": "0.4.19"[m
[31m-            }[m
[31m-        },[m
         "core-js": {[m
             "version": "2.5.2",[m
             "resolved": "https://registry.npmjs.org/core-js/-/core-js-2.5.2.tgz",[m
[36m@@ -3500,7 +3459,8 @@[m
         "fs.realpath": {[m
             "version": "1.0.0",[m
             "resolved": "https://registry.npmjs.org/fs.realpath/-/fs.realpath-1.0.0.tgz",[m
[31m-            "integrity": "sha1-FQStJSMVjKpA20onh8sBQRmU6k8="[m
[32m+[m[32m            "integrity": "sha1-FQStJSMVjKpA20onh8sBQRmU6k8=",[m
[32m+[m[32m            "dev": true[m
         },[m
         "fsevents": {[m
             "version": "1.1.3",[m
[36m@@ -4452,6 +4412,7 @@[m
             "version": "7.1.2",[m
             "resolved": "https://registry.npmjs.org/glob/-/glob-7.1.2.tgz",[m
             "integrity": "sha512-MJTUg1kjuLeQCJ+ccE4Vpa6kKVXkPYJ2mOCQyUuKLcLQsdrMCpBPUi8qVE6+YuaJkozeA9NusTAw3hLr8Xe5EQ==",[m
[32m+[m[32m            "dev": true,[m
             "requires": {[m
                 "fs.realpath": "1.0.0",[m
                 "inflight": "1.0.6",[m
[36m@@ -5129,6 +5090,7 @@[m
             "version": "1.0.6",[m
             "resolved": "https://registry.npmjs.org/inflight/-/inflight-1.0.6.tgz",[m
             "integrity": "sha1-Sb1jMdfQLQwJvJEKEHW6gWW1bfk=",[m
[32m+[m[32m            "dev": true,[m
             "requires": {[m
                 "once": "1.4.0",[m
                 "wrappy": "1.0.2"[m
[36m@@ -7409,6 +7371,7 @@[m
             "version": "3.0.4",[m
             "resolved": "https://registry.npmjs.org/minimatch/-/minimatch-3.0.4.tgz",[m
             "integrity": "sha512-yJHVQEhyqPLUTgt9B83PXu6W3rx4MvvHvSUvToogpwoGDOUQ+yDrR0HRot+yOCdCO7u4hX3pWft6kWBBcqh0UA==",[m
[32m+[m[32m            "dev": true,[m
             "requires": {[m
                 "brace-expansion": "1.1.8"[m
             }[m
[36m@@ -7441,11 +7404,6 @@[m
                 }[m
             }[m
         },[m
[31m-        "mkpath": {[m
[31m-            "version": "1.0.0",[m
[31m-            "resolved": "https://registry.npmjs.org/mkpath/-/mkpath-1.0.0.tgz",[m
[31m-            "integrity": "sha1-67Opd+evHGg65v2hK1Raa6bFhT0="[m
[31m-        },[m
         "module-deps": {[m
             "version": "4.1.1",[m
             "resolved": "https://registry.npmjs.org/module-deps/-/module-deps-4.1.1.tgz",[m
[36m@@ -7567,11 +7525,6 @@[m
                 "which": "1.3.0"[m
             }[m
         },[m
[31m-        "node-version-compare": {[m
[31m-            "version": "1.0.1",[m
[31m-            "resolved": "https://registry.npmjs.org/node-version-compare/-/node-version-compare-1.0.1.tgz",[m
[31m-            "integrity": "sha1-2Fv9IPCsreM1d/VmgscQnDTFUM0="[m
[31m-        },[m
         "normalize-package-data": {[m
             "version": "2.4.0",[m
             "resolved": "https://registry.npmjs.org/normalize-package-data/-/normalize-package-data-2.4.0.tgz",[m
[36m@@ -7709,6 +7662,7 @@[m
             "version": "1.4.0",[m
             "resolved": "https://registry.npmjs.org/once/-/once-1.4.0.tgz",[m
             "integrity": "sha1-WDsap3WWHUsROsF9nFC6753Xa9E=",[m
[32m+[m[32m            "dev": true,[m
             "requires": {[m
                 "wrappy": "1.0.2"[m
             }[m
[36m@@ -7930,7 +7884,8 @@[m
         "path-is-absolute": {[m
             "version": "1.0.1",[m
             "resolved": "https://registry.npmjs.org/path-is-absolute/-/path-is-absolute-1.0.1.tgz",[m
[31m-            "integrity": "sha1-F0uSaHNVNP+8es5r9TpanhtcX18="[m
[32m+[m[32m            "integrity": "sha1-F0uSaHNVNP+8es5r9TpanhtcX18=",[m
[32m+[m[32m            "dev": true[m
         },[m
         "path-key": {[m
             "version": "2.0.1",[m
[36m@@ -8016,16 +7971,6 @@[m
                 "pinkie": "2.0.4"[m
             }[m
         },[m
[31m-        "plist": {[m
[31m-            "version": "2.1.0",[m
[31m-            "resolved": "https://registry.npmjs.org/plist/-/plist-2.1.0.tgz",[m
[31m-            "integrity": "sha1-V8zbeggh3yGDEhejytVOPhRqECU=",[m
[31m-            "requires": {[m
[31m-                "base64-js": "1.2.0",[m
[31m-                "xmlbuilder": "8.2.2",[m
[31m-                "xmldom": "0.1.27"[m
[31m-            }[m
[31m-        },[m
         "plugin-error": {[m
             "version": "1.0.1",[m
             "resolvedwarning: LF will be replaced by CRLF in package-lock.json.
The file will have its original line endings in your working directory.
": "https://registry.npmjs.org/plugin-error/-/plugin-error-1.0.1.tgz",[m
[36m@@ -8540,6 +8485,7 @@[m
             "version": "2.6.2",[m
             "resolved": "https://registry.npmjs.org/rimraf/-/rimraf-2.6.2.tgz",[m
             "integrity": "sha512-lreewLK/BlghmxtfH36YYVg1i8IAce4TI7oao75I1g245+6BctqTVQiBP3YUJ9C6DQOXJmkYR9X9fCLtCOJc5w==",[m
[32m+[m[32m            "dev": true,[m
             "requires": {[m
                 "glob": "7.1.2"[m
             }[m
[36m@@ -8584,7 +8530,8 @@[m
         "sax": {[m
             "version": "1.2.4",[m
             "resolved": "https://registry.npmjs.org/sax/-/sax-1.2.4.tgz",[m
[31m-            "integrity": "sha512-NqVDv9TpANUjFm0N8uM5GxL36UgKi9/atZw+x7YFnQ8ckwFGKrl4xX4yWtrey3UJm5nP1kUbnYgLopqWNSRhWw=="[m
[32m+[m[32m            "integrity": "sha512-NqVDv9TpANUjFm0N8uM5GxL36UgKi9/atZw+x7YFnQ8ckwFGKrl4xX4yWtrey3UJm5nP1kUbnYgLopqWNSRhWw==",[m
[32m+[m[32m            "dev": true[m
         },[m
         "semver": {[m
             "version": "5.4.1",[m
[36m@@ -9464,11 +9411,6 @@[m
                 "spdx-expression-parse": "1.0.4"[m
             }[m
         },[m
[31m-        "vendor-prefix": {[m
[31m-            "version": "0.1.0",[m
[31m-            "resolved": "https://registry.npmjs.org/vendor-prefix/-/vendor-prefix-0.1.0.tgz",[m
[31m-            "integrity": "sha1-175Tq25IefsR+eozaW5Zx9wpSXw="[m
[31m-        },[m
         "verror": {[m
             "version": "1.10.0",[m
             "resolved": "https://registry.npmjs.org/verror/-/verror-1.10.0.tgz",[m
[36m@@ -9809,7 +9751,8 @@[m
         "wrappy": {[m
             "version": "1.0.2",[m
             "resolved": "https://registry.npmjs.org/wrappy/-/wrappy-1.0.2.tgz",[m
[31m-            "integrity": "sha1-tSQ9jz7BqjXxNkYFvA0QNuMKtp8="[m
[32m+[m[32m            "integrity": "sha1-tSQ9jz7BqjXxNkYFvA0QNuMKtp8=",[m
[32m+[m[32m            "dev": true[m
         },[m
         "write-file-atomic": {[m
             "version": "2.3.0",[m
[36m@@ -9828,32 +9771,6 @@[m
             "integrity": "sha1-TYuPHszTQZqjYgYb7O9RXh5VljU=",[m
             "dev": true[m
         },[m
[31m-        "xml2js": {[m
[31m-            "version": "0.4.19",[m
[31m-            "resolved": "https://registry.npmjs.org/xml2js/-/xml2js-0.4.19.tgz",[m
[31m-            "integrity": "sha512-esZnJZJOiJR9wWKMyuvSE1y6Dq5LCuJanqhxslH2bxM6duahNZ+HMpCLhBQGZkbX6xRf8x1Y2eJlgt2q3qo49Q==",[m
[31m-            "requires": {[m
[31m-                "sax": "1.2.4",[m
[31m-                "xmlbuilder": "9.0.4"[m
[31m-            },[m
[31m-            "dependencies": {[m
[31m-                "xmlbuilder": {[m
[31m-                    "version": "9.0.4",[m
[31m-                    "resolved": "https://registry.npmjs.org/xmlbuilder/-/xmlbuilder-9.0.4.tgz",[m
[31m-                    "integrity": "sha1-UZy0ymhtAFqEINNJbz8MruzKWA8="[m
[31m-                }[m
[31m-            }[m
[31m-        },[m
[31m-        "xmlbuilder": {[m
[31m-            "version": "8.2.2",[m
[31m-            "resolved": "https://registry.npmjs.org/xmlbuilder/-/xmlbuilder-8.2.2.tgz",[m
[31m-            "integrity": "sha1-aSSGc0ELS6QuGmE2VR0pIjNap3M="[m
[31m-        },[m
[31m-        "xmldom": {[m
[31m-            "version": "0.1.27",[m
[31m-            "resolved": "https://registry.npmjs.org/xmldom/-/xmldom-0.1.27.tgz",[m
[31m-            "integrity": "sha1-1QH5ezvbQDr4757MIFcxh6rawOk="[m
[31m-        },[m
         "xregexp": {[m
             "version": "3.1.0",[m
             "resolved": "https://registry.npmjs.org/xregexp/-/xregexp-3.1.0.tgz",[m
[36m@@ -9893,13 +9810,6 @@[m
                     "dev": true[m
                 }[m
             }[m
[31m-        },[m
[31m-        "zanimo": {[m
[31m-            "version": "git+https://github.com/veloce/Zanimo.git#645841a4408cedee41788df82f9510ce5a0e5c48",[m
[31m-            "requires": {[m
[31m-                "color": "0.7.3",[m
[31m-                "vendor-prefix": "0.1.0"[m
[31m-            }[m
         }[m
     }[m
 }[m
[1mdiff --git a/package.json b/package.json[m
[1mindex b824a445..e834ed5a 100644[m
[1m--- a/package.json[m
[1m+++ b/package.json[m
[36m@@ -1,172 +1,169 @@[m
 {[m
[31m-    "name": "lichobile",[m
[31m-    "version": "0.0.0",[m
[31m-    "description": "lichess.org mobile application",[m
[31m-    "main": "app.js",[m
[31m-    "repository": {[m
[31m-        "type": "git",[m
[31m-        "url": "https://github.com/veloce/lichobile.git"[m
[31m-    },[m
[31m-    "keywords": [[m
[31m-        "lichess",[m
[31m-        "chess",[m
[31m-        "application",[m
[31m-        "mobile",[m
[31m-        "realtime",[m
[31m-        "android",[m
[31m-        "ios"[m
[32m+[m[32m  "name": "lichobile",[m
[32m+[m[32m  "version": "0.0.0",[m
[32m+[m[32m  "description": "lichess.org mobile application",[m
[32m+[m[32m  "main": "app.js",[m
[32m+[m[32m  "repository": {[m
[32m+[m[32m    "type": "git",[m
[32m+[m[32m    "url": "https://github.com/veloce/lichobile.git"[m
[32m+[m[32m  },[m
[32m+[m[32m  "keywords": [[m
[32m+[m[32m    "lichess",[m
[32m+[m[32m    "chess",[m
[32m+[m[32m    "application",[m
[32m+[m[32m    "mobile",[m
[32m+[m[32m    "realtime",[m
[32m+[m[32m    "android",[m
[32m+[m[32m    "ios"[m
[32m+[m[32m  ],[m
[32m+[m[32m  "author": "Vincent Velociter (https://github.com/veloce)",[m
[32m+[m[32m  "license": "MIT",[m
[32m+[m[32m  "bugs": {[m
[32m+[m[32m    "url": "https://github.com/veloce/lichobile/issues"[m
[32m+[m[32m  },[m
[32m+[m[32m  "homepage": "https://github.com/veloce/lichobile",[m
[32m+[m[32m  "devDependencies": {[m
[32m+[m[32m    "@types/jest": "21.1.5",[m
[32m+[m[32m    "babel-plugin-transform-react-jsx": "6.24.1",[m
[32m+[m[32m    "babel-plugin-transform-react-require": "1.0.1",[m
[32m+[m[32m    "babel-plugin-transform-remove-console": "6.8.0",[m
[32m+[m[32m    "babel-preset-env": "1.6.1",[m
[32m+[m[32m    "babelify": "8.0.0",[m
[32m+[m[32m    "browserify": "14.5.0",[m
[32m+[m[32m    "gulp": "3.9.1",[m
[32m+[m[32m    "gulp-autoprefixer": "3.1.1",[m
[32m+[m[32m    "gulp-preprocess": "2.0.0",[m
[32m+[m[32m    "gulp-rename": "1.2.2",[m
[32m+[m[32m    "gulp-sourcemaps": "2.4.0",[m
[32m+[m[32m    "gulp-stylus": "2.6.0",[m
[32m+[m[32m    "gulp-uglify-es": "1.0.1",[m
[32m+[m[32m    "gulp-util": "3.0.7",[m
[32m+[m[32m    "jest": "21.2.1",[m
[32m+[m[32m    "minimist": "1.2.0",[m
[32m+[m[32m    "ncp": "2.0.0",[m
[32m+[m[32m    "tsify": "3.0.4",[m
[32m+[m[32m    "tslint": "5.8.0",[m
[32m+[m[32m    "typescript": "2.8.1",[m
[32m+[m[32m    "vinyl-buffer": "1.0.1",[m
[32m+[m[32m    "vinyl-source-stream": "1.1.0",[m
[32m+[m[32m    "watchify": "3.9.0"[m
[32m+[m[32m  },[m
[32m+[m[32m  "dependencies": {[m
[32m+[m[32m    "@types/d3": "4.5.0",[m
[32m+[m[32m    "@types/hammerjs": "2.0.35",[m
[32m+[m[32m    "com.rjfun.cordova.plugin.lowlatencyaudio": "https://github.com/veloce/cordova-plugin-nativeaudio.git#old_interface",[m
[32m+[m[32m    "cordova-android": "7.0.0",[m
[32m+[m[32m    "cordova-ios": "4.5.4",[m
[32m+[m[32m    "cordova-plugin-app-event": "git+https://github.com/katzer/cordova-plugin-app-event.git#1.2.1",[m
[32m+[m[32m    "cordova-plugin-appversion": "1.0.0",[m
[32m+[m[32m    "cordova-plugin-compat": "1.2.0",[m
[32m+[m[32m    "cordova-plugin-device": "1.1.4",[m
[32m+[m[32m    "cordova-plugin-dialogs": "1.3.1",[m
[32m+[m[32m    "cordova-plugin-file": "4.3.3",[m
[32m+[m[32m    "cordova-plugin-file-transfer": "1.6.1",[m
[32m+[m[32m    "cordova-plugin-fullscreen": "1.1.0",[m
[32m+[m[32m    "cordova-plugin-globalization": "1.0.5",[m
[32m+[m[32m    "cordova-plugin-inappbrowser": "1.6.1",[m
[32m+[m[32m    "cordova-plugin-insomnia": "4.2.0",[m
[32m+[m[32m    "cordova-plugin-nativeaudio": "git+https://github.com/veloce/cordova-plugin-nativeaudio.git#old_interface",[m
[32m+[m[32m    "cordova-plugin-network-information": "2.0.1",[m
[32m+[m[32m    "cordova-plugin-splashscreen": "4.1.0",[m
[32m+[m[32m    "cordova-plugin-statusbar": "2.3.0",[m
[32m+[m[32m    "cordova-plugin-stockfish": "git+https://github.com/veloce/cordova-plugin-stockfish.git#v1.6.0",[m
[32m+[m[32m    "cordova-plugin-vibration": "2.1.3",[m
[32m+[m[32m    "cordova-plugin-whitelist": "1.3.1",[m
[32m+[m[32m    "cordova-plugin-x-socialsharing": "5.1.3",[m
[32m+[m[32m    "cordova-plugin-x-toast": "2.5.2",[m
[32m+[m[32m    "cordova-universal-links-plugin": "git+https://github.com/flipflopapp/cordova-universal-links-plugin.git#be60a9b",[m
[32m+[m[32m    "d3-axis": "1.0.8",[m
[32m+[m[32m    "d3-scale": "1.0.6",[m
[32m+[m[32m    "d3-selection": "1.1.0",[m
[32m+[m[32m    "d3-shape": "1.2.0",[m
[32m+[m[32m    "d3-time": "1.0.7",[m
[32m+[m[32m    "d3-time-format": "2.0.5",[m
[32m+[m[32m    "de.appplant.cordova.plugin.local-notification": "git+https://github.com/katzer/cordova-plugin-local-notifications.git#0.8.5",[m
[32m+[m[32m    "hammerjs": "2.0.8",[m
[32m+[m[32m    "ionic-plugin-keyboard": "2.2.1",[m
[32m+[m[32m    "iscroll": "5.1.3",[m
[32m+[m[32m    "localforage": "1.5.5",[m
[32m+[m[32m    "lodash": "4.17.4",[m
[32m+[m[32m    "mithril": "1.1.6",[m
[32m+[m[32m    "moment": "2.21.0",[m
[32m+[m[32m    "onesignal-cordova-plugin": "2.2.4",[m
[32m+[m[32m    "raven-js": "3.17.0",[m
[32m+[m[32m    "rlite-router": "1.1.3",[m
[32m+[m[32m    "signals": "1.0.0",[m
[32m+[m[32m    "whatwg-fetch": "2.0.3",[m
[32m+[m[32m    "zanimo": "git+https://github.com/veloce/Zanimo.git"[m
[32m+[m[32m  },[m
[32m+[m[32m  "scripts": {[m
[32m+[m[32m    "lint": "tslint --project tsconfig.json -e '**/dts/**' -e '**/*.js'",[m
[32m+[m[32m    "build": "gulp",[m
[32m+[m[32m    "test": "jest",[m
[32m+[m[32m    "watch": "gulp watch",[m
[32m+[m[32m    "watch-dev": "gulp watch --env=env-dev.json",[m
[32m+[m[32m    "watch-stage": "gulp watch --env=env-stage.json",[m
[32m+[m[32m    "watch-prod": "gulp watch --env=env-prod.json",[m
[32m+[m[32m    "build-stage": "BABEL_ENV=production gulp --mode='release' --env=env-stage.json",[m
[32m+[m[32m    "prebuild-stage": "npm run lint && npm run test",[m
[32m+[m[32m    "build-cordova-dev": "gulp --target='cordova' --env=env-dev.json",[m
[32m+[m[32m    "build-cordova-stage": "gulp --target='cordova' --env=env-stage.json",[m
[32m+[m[32m    "build-cordova-prod": "gulp --target='cordova' --env=env-prod.json",[m
[32m+[m[32m    "build-cordova-release": "BABEL_ENV=production gulp --mode='release' --target='cordova' --env=env-prod.json",[m
[32m+[m[32m    "android-dev": "npm run build-cordova-dev && cordova run android --browserify",[m
[32m+[m[32m    "android-stage": "npm run build-cordova-stage && cordova run android --browserify",[m
[32m+[m[32m    "android-prod": "npm run build-cordova-prod && cordova run android --browserify",[m
[32m+[m[32m    "android-release": "npm run build-cordova-release && cordova run android --browserify",[m
[32m+[m[32m    "ios-dev": "npm run build-cordova-dev && cordova run ios --browserify",[m
[32m+[m[32m    "ios-stage": "npm run build-cordova-stage && cordova run ios --browserify",[m
[32m+[m[32m    "ios-prod": "npm run build-cordova-prod && cordova run ios --browserify",[m
[32m+[m[32m    "prepare-ios-dev": "npm run build-cordova-dev && cordova prepare ios --browserify",[m
[32m+[m[32m    "prepare-ios-stage": "npm run build-cordova-stage && cordova prepare ios --browserify",[m
[32m+[m[32m    "prepare-ios-prod": "npm run build-cordova-prod && cordova prepare ios --browserify",[m
[32m+[m[32m    "release-android": "npm run build-cordova-release && cordova build android --release --browserify",[m
[32m+[m[32m    "release-ios": "npm run build-cordova-release && cordova build ios --release --browserify"[m
[32m+[m[32m  },[m
[32m+[m[32m  "cordova": {[m
[32m+[m[32m    "platforms": [[m
[32m+[m[32m      "ios"[m
     ],[m
[31m-    "author": "Vincent Velociter (https://github.com/veloce)",[m
[31m-    "license": "MIT",[m
[31m-    "bugs": {[m
[31m-        "url": "https://github.com/veloce/lichobile/issues"[m
[31m-    },[m
[31m-    "homepage": "https://github.com/veloce/lichobile",[m
[31m-    "devDependencies": {[m
[31m-        "@types/jest": "21.1.5",[m
[31m-        "babel-plugin-transform-react-jsx": "6.24.1",[m
[31m-        "babel-plugin-transform-react-require": "1.0.1",[m
[31m-        "babel-plugin-transform-remove-console": "6.8.0",[m
[31m-        "babel-preset-env": "1.6.1",[m
[31m-        "babelify": "8.0.0",[m
[31m-        "browserify": "14.5.0",[m
[31m-        "gulp": "3.9.1",[m
[31m-        "gulp-autoprefixer": "3.1.1",[m
[31m-        "gulp-preprocess": "2.0.0",[m
[31m-        "gulp-rename": "1.2.2",[m
[31m-        "gulp-sourcemaps": "2.4.0",[m
[31m-        "gulp-stylus": "2.6.0",[m
[31m-        "gulp-uglify-es": "1.0.1",[m
[31m-        "gulp-util": "3.0.7",[m
[31m-        "jest": "21.2.1",[m
[31m-        "minimist": "1.2.0",[m
[31m-        "ncp": "2.0.0",[m
[31m-        "tsify": "3.0.4",[m
[31m-        "tslint": "5.8.0",[m
[31m-        "typescript": "2.8.1",[m
[31m-        "vinyl-buffer": "1.0.1",[m
[31m-        "vinyl-source-stream": "1.1.0",[m
[31m-        "watchify": "3.9.0"[m
[31m-    },[m
[31m-    "dependencies": {[m
[31m-        "@types/d3": "4.5.0",[m
[31m-        "@types/hammerjs": "2.0.35",[m
[31m-        "com.rjfun.cordova.plugin.lowlatencyaudio": "https://github.com/veloce/cordova-plugin-nativeaudio.git#old_interface",[m
[31m-        "cordova-android": "7.0.0",[m
[31m-        "cordova-ios": "4.5.4",[m
[31m-        "cordova-plugin-app-event": "git+https://github.com/katzer/cordova-plugin-app-event.git#1.2.1",[m
[31m-        "cordova-plugin-appversion": "1.0.0",[m
[31m-        "cordova-plugin-crosswalk-webview": "2.3.0",[m
[31m-        "cordova-plugin-device": "1.1.4",[m
[31m-        "cordova-plugin-dialogs": "1.3.1",[m
[31m-        "cordova-plugin-file-transfer": "1.6.1",[m
[31m-        "cordova-plugin-fullscreen": "1.1.0",[m
[31m-        "cordova-plugin-globalization": "1.0.5",[m
[31m-        "cordova-plugin-inappbrowser": "1.6.1",[m
[31m-        "cordova-plugin-insomnia": "4.2.0",[m
[31m-        "cordova-plugin-network-information": "2.0.1",[m
[31m-        "cordova-plugin-splashscreen": "4.1.0",[m
[31m-        "cordova-plugin-statusbar": "2.3.0",[m
[31m-        "cordova-plugin-stockfish": "git+https://github.com/veloce/cordova-plugin-stockfish.git#v1.6.0",[m
[31m-        "cordova-plugin-vibration": "2.1.3",[m
[31m-        "cordova-plugin-whitelist": "1.3.1",[m
[31m-        "cordova-plugin-x-socialsharing": "5.1.3",[m
[31m-        "cordova-plugin-x-toast": "2.5.2",[m
[31m-        "cordova-universal-links-plugin": "git+https://github.com/flipflopapp/cordova-universal-links-plugin.git#be60a9b",[m
[31m-        "d3-axis": "1.0.8",[m
[31m-        "d3-scale": "1.0.6",[m
[31m-        "d3-selection": "1.1.0",[m
[31m-        "d3-shape": "1.2.0",[m
[31m-        "d3-time": "1.0.7",[m
[31m-        "d3-time-format": "2.0.5",[m
[31m-        "de.appplant.cordova.plugin.local-notification": "git+https://github.com/katzer/cordova-plugin-local-notifications.git#0.8.5",[m
[31m-        "hammerjs": "2.0.8",[m
[31m-        "ionic-plugin-keyboard": "2.2.1",[m
[31m-        "iscroll": "5.1.3",[m
[31m-        "localforage": "1.5.5",[m
[31m-        "lodash": "4.17.4",[m
[31m-        "mithril": "1.1.6",[m
[31m-        "moment": "2.21.0",[m
[31m-        "onesignal-cordova-plugin": "2.2.4",[m
[31m-        "raven-js": "3.17.0",[m
[31m-        "rlite-router": "1.1.3",[m
[31m-        "signals": "1.0.0",[m
[31m-        "whatwg-fetch": "2.0.3",[m
[31m-        "zanimo": "git+https://github.com/veloce/Zanimo.git"[m
[31m-    },[m
[31m-    "scripts": {[m
[31m-        "lint": "tslint --project tsconfig.json -e '**/dts/**' -e '**/*.js'",[m
[31m-        "build": "gulp",[m
[31m-        "test": "jest",[m
[31m-        "watch": "gulp watch",[m
[31m-        "watch-dev": "gulp watch --env=env-dev.json",[m
[31m-        "watch-stage": "gulp watch --env=env-stage.json",[m
[31m-        "watch-prod": "gulp watch --env=env-prod.json",[m
[31m-        "build-stage": "BABEL_ENV=production gulp --mode='release' --env=env-stage.json",[m
[31m-        "prebuild-stage": "npm run lint && npm run test",[m
[31m-        "build-cordova-dev": "gulp --target='cordova' --env=env-dev.json",[m
[31m-        "build-cordova-stage": "gulp --target='cordova' --env=env-stage.json",[m
[31m-        "build-cordova-prod": "gulp --target='cordova' --env=env-prod.json",[m
[31m-        "build-cordova-release": "BABEL_ENV=production gulp --mode='release' --target='cordova' --env=env-prod.json",[m
[31m-        "android-dev": "npm run build-cordova-dev && cordova run android --browserify",[m
[31m-        "android-stage": "npm run build-cordova-stage && cordova run android --browserify",[m
[31m-        "android-prod": "npm run build-cordova-prod && cordova run android --browserify",[m
[31m-        "android-release": "npm run build-cordova-release && cordova run android --browserify",[m
[31m-        "ios-dev": "npm run build-cordova-dev && cordova run ios --browserify",[m
[31m-        "ios-stage": "npm run build-cordova-stage && cordova run ios --browserify",[m
[31m-        "ios-prod": "npm run build-cordova-prod && cordova run ios --browserify",[m
[31m-        "prepare-ios-dev": "npm run build-cordova-dev && cordova prepare ios --browserify",[m
[31m-        "prepare-ios-stage": "npm run build-cordova-stage && cordova prepare ios --browserify",[m
[31m-        "prepare-ios-prod": "npm run build-cordova-prod && cordova prepare ios --browserify",[m
[31m-        "release-android": "npm run build-cordova-release && cordova build android --release --browserify",[m
[31m-        "release-ios": "npm run build-cordova-release && cordova build ios --release --browserify"[m
[31m-    },[m
[31m-    "cordova": {[m
[31m-        "platforms": [[m
[31m-            "android",[m
[31m-            "ios"[m
[31m-        ],[m
[31m-        "plugins": {[m
[31m-            "com.rjfun.cordova.plugin.lowlatencyaudio": {},[m
[31m-            "cordova-plugin-appversion": {},[m
[31m-            "cordova-plugin-crosswalk-webview": {[m
[31m-                "XWALK_MODE": "embedded",[m
[31m-                "XWALK_MULTIPLEAPK": "true"[m
[31m-            },[m
[31m-            "cordova-plugin-device": {},[m
[31m-            "cordova-plugin-dialogs": {},[m
[31m-            "cordova-plugin-file-transfer": {},[m
[31m-            "cordova-plugin-fullscreen": {},[m
[31m-            "cordova-plugin-globalization": {},[m
[31m-            "cordova-plugin-inappbrowser": {},[m
[31m-            "cordova-plugin-insomnia": {},[m
[31m-            "cordova-plugin-vibration": {},[m
[31m-            "cordova-plugin-whitelist": {},[m
[31m-            "cordova-plugin-x-socialsharing": {},[m
[31m-            "cordova-plugin-x-toast": {},[m
[31m-            "ionic-plugin-keyboard": {},[m
[31m-            "onesignal-cordova-plugin": {},[m
[31m-            "cordova-plugin-app-event": {},[m
[31m-            "de.appplant.cordova.plugin.local-notification": {},[m
[31m-            "cordova-universal-links-plugin": {},[m
[31m-            "cordova-plugin-statusbar": {},[m
[31m-            "cordova-plugin-splashscreen": {},[m
[31m-            "cordova-plugin-network-information": {},[m
[31m-            "cordova-plugin-stockfish": {}[m
[31m-        }[m
[31m-    },[m
[31m-    "jest": {[m
[31m-        "moduleFileExtensions": [[m
[31m-            "ts",[m
[31m-            "tsx",[m
[31m-            "js"[m
[31m-        ],[m
[31m-        "transform": {[m
[31m-            "^.+\\.(ts|tsx)$": "<rootDir>/testPreprocessor.js"[m
[31m-        },[m
[31m-        "testMatch": [[m
[31m-            "**/__tests__/*.(ts|tsx|js)"[m
[31m-        ],[m
[31m-        "verbose": true[m
[32m+[m[32m    "plugins": {[m
[32m+[m[32m      "com.rjfun.cordova.plugin.lowlatencyaudio": {},[m
[32m+[m[32m      "cordova-plugin-appversion": {},[m
[32m+[m[32m      "cordova-plugin-device": {},[m
[32m+[m[32m      "cordova-plugin-dialogs": {},[m
[32m+[m[32m      "cordova-plugin-file-transfer": {},[m
[32m+[m[32m      "cordova-plugin-fullscreen": {},[m
[32m+[m[32m      "cordova-plugin-globalization": {},[m
[32m+[m[32m      "cordova-plugin-inappbrowser": {},[m
[32m+[m[32m      "cordova-plugin-insomnia": {},[m
[32m+[m[32m      "cordova-plugin-vibration": {},[m
[32m+[m[32m      "cordova-plugin-whitelist": {},[m
[32m+[m[32m      "cordova-plugin-x-socialsharing": {},[m
[32m+[m[32m      "cordova-plugin-x-toast": {},[m
[32m+[m[32m      "ionic-plugin-keyboard": {},[m
[32m+[m[32m      "onesignal-cordova-plugin": {},[m
[32m+[m[32m      "cordova-plugin-app-event": {},[m
[32m+[m[32m      "de.appplant.cordova.plugin.local-notification": {},[m
[32m+[m[32m      "cordova-universal-links-plugin": {},[m
[32m+[m[32m      "cordova-plugin-statusbar": {},[m
[32m+[m[32m      "cordova-plugin-splashscreen": {},[m
[32m+[m[32m      "cordova-plugin-network-information": {},[m
[32m+[m[32m      "cordova-plugin-stockfish": {}[m
     }[m
[31m-}[m
[32m+[m[32m  },[m
[32m+[m[32m  "jest": {[m
[32m+[m[32m    "moduleFileExtensions": [[m
[32m+[m[32m      "ts",[m
[32m+[m[32m      "tsx",[m
[32m+[m[32m      "js"[m
[32m+[m[32m    ],[m
[32m+[m[32m    "transform": {[m
[32m+[m[32m      "^.+\\.(ts|tsx)$": "<rootDir>/testPreprocessor.js"[m
[32m+[m[32m    },[m
[32m+[m[32m    "testMatch": [[m
[32m+[m[32m      "**/__tests__/*.(ts|tsx|js)"[m
[32m+[m[32m    ],[m
[32m+[m[32m    "verbose": true[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
\ No newline at end of file[m
warning: LF will be replaced by CRLF in package.json.
The file will have its original line endings in your working directory.
