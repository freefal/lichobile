import * as xhr from '../userXhr';
import socket from '../../../socket';
import * as utils from '../../../utils';
import m from 'mithril';

const filters = {
  all: 'gamesPlayed',
  rated: 'rated',
  win: 'wins',
  loss: 'nbLosses',
  draw: 'nbDraws',
  bookmark: 'nbBookmarks',
  me: 'nbGamesWithYou'
};

export default function controller() {
  const userId = m.route.param('id');
  const user = m.prop();
  const availableFilters = m.prop([]);
  const currentFilter = m.prop(m.route.param('filter') || 'all');

  socket.createDefault();

  xhr.user(userId).then(data => {
    user(data);
    return data;
  }, error => {
    utils.handleXhrError(error);
    m.route('/');
    throw error;
  }).then(data => {
    let f = Object.keys(data.count)
      .filter(k => filters.hasOwnProperty(k) && data.count[k] > 0)
      .map(k => {
        return {
          key: k,
          label: filters[k],
          count: user().count[k]
        };
      });
    availableFilters(f);
  });

  function getPageData(page) {
    console.log(page);
    return xhr.games(userId, currentFilter(), page, true);
  }

  function onFilterChange(e) {
    currentFilter(e.target.value);
  }

  function toggleBookmark(index) {
    // games()[index].bookmarked = !games()[index].bookmarked;
  }

  return {
    availableFilters,
    currentFilter,
    getPageData,
    userId,
    user,
    onFilterChange,
    toggleBookmark,
    onunload() {
      socket.destroy();
    }
  };
}
