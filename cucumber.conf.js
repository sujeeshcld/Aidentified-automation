
var params = require('./features/support/browsers.js');
var browser = params.browser;
var multiCapabilities = browser.split(',').map(function(browserName){
    return {
        browserName: browserName.trim(),
        chromeOptions: {
          //args: ["--incognito"]   //incognito
          w3c: false //right click
       }
    };
})

var moment = require("moment");
var date =moment().format('YYYYMMDDHHmm');

exports.config = {
 
  seleniumAddress: 'http://127.0.0.1:4444/wd/hub',
  getPageTimeout: 60000,
  allScriptsTimeout: 500000,
  framework: 'custom',

  // path relative to the current config file
  frameworkPath: require.resolve('protractor-cucumber-framework'), 
  // 'autoStartStopServer': true,
  multiCapabilities: multiCapabilities,
  
  // Spec patterns are relative to this directory.
 
  specs:  [
       // './features/Prospectfilter.feature'
       './features/peoplemanagement.feature'
  ],
     
        
 
  baseUrl: 'https://app.aidentified.com',  
  onPrepare: function () {
    var onPrepareConfig = require('./features/support/onPrepare.js');
    onPrepareConfig();
   
  },
       
  
 
   cucumberOpts: {
    require:'./features/step_definitions/*.js',
     tags:"@test13",
    //tags:false,
    plugin: ['pretty'],
    
    format: 'json:./features/reports/report_'+date+' _'+browser+'/results.json',
     profile:false,
    'no-source': true,
       
    // directConnect: false,
    
   
   
  },
   
    plugins: [{
        package: 'protractor-multiple-cucumber-html-reporter-plugin',
        options:{
            automaticallyGenerateReport: true,
            pageFooter: "<div><center><p>Created by:Cloudium Software</p></center></div>",

            
        }
        
        
    }]
};
 