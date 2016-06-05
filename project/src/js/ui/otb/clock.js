import settings from '../../settings';
import formWidgets from '../shared/form';
import * as utils from '../../utils';

export default {
  clockLogic: {'no': null, 'simple': simpleLogic, 'increment': incrementLogic, 'delay': delayLogic},
  clockSettingsView: {'no': () => null, 'simple': simpleSettingsView, 'increment': incrementSettingsView, 'delay': delaySettingsView}
};

function simpleLogic () { }

function incrementLogic () { }

function delayLogic () { }

function simpleSettingsView () {
  return (
    <div key="simpleClockSettings" className="otbClockSettings">
      <div class="select_input">
        {formWidgets.renderSelect('time', 'simpleTime', settings.gameSetup.availableTimes, settings.otb.simple.time, false)}
      </div>
    </div>
  );
}

function incrementSettingsView () {
  return (
    <div key="incrementClockSettings" className="otbClockSettings">
      <div class="select_input inline">
        {formWidgets.renderSelect('time', 'incrementTime', settings.gameSetup.availableTimes, settings.otb.increment.time, false)}
      </div>
      <div class="select_input inline">
        {formWidgets.renderSelect('increment', 'incrementIncrement', settings.gameSetup.availableIncrements.map(utils.tupleOf), settings.otb.increment.increment, false)}
      </div>
    </div>
  );
}

function delaySettingsView () {
  return (
    <div key="incrementClockSettings" className="otbClockSettings">
      <div class="select_input inline">
        {formWidgets.renderSelect('time', 'delayTime', settings.gameSetup.availableTimes, settings.otb.delay.time, false)}
      </div>
      <div class="select_input inline">
        {formWidgets.renderSelect('increment', 'delayIncrement', settings.gameSetup.availableIncrements.map(utils.tupleOf), settings.otb.delay.increment, false)}
      </div>
    </div>
  );
}
