module.exports = function onPrepareConfig() {
    browser.ignoreSynchronization = true;
    browser.manage().window().maximize();
    global.testdata = require('./testdata.js');
    global.locators = require('./locators.js');
}
