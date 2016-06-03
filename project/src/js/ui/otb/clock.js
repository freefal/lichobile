export default {
  clockTypes: ['No Logic', 'Sudden Death', 'Fischer', 'Delay'],
  clockLogic: {'No Logic': null, 'Sudden Death': simpleLogic, 'Fischer': fischerLogic, 'Delay': delayLogic},
  clockSettingsView: {'No Logic': null, 'Sudden Death': simpleSettingsView, 'Fischer': fischerSettingsView, 'Delay': delaySettingsView}
};

function simpleLogic () { }

function fischerLogic () { }

function delayLogic () { }

function simpleSettingsView () { }

function fischerSettingsView () { }

function delaySettingsView () { }
