var {defineSupportCode} = require('cucumber');
var chai = require('chai');
var chaiAsPromised = require('chai-as-promised');
chai.use(chaiAsPromised);
var expect = chai.expect;
var moment = require("moment");


var {After, Status} = require('cucumber');

After(function (testCase) {
  var world = this;
  if (testCase.result.status === Status.FAILED) {
    return browser.takeScreenshot().then(function(screenShot) {
      // screenShot is a base-64 encoded PNG
      world.attach(screenShot, 'image/png');
    });
  }
}); 

// var {Workbook} = require('exceljs');
// var {Row} = require('exceljs');
// var {Cell} = require('exceljs');
// var {Worksheet} = require('exceljs');
// var EditXlsx = require('edit-xlsx');
var name;
var onPrepareConfig = require('../support/onPrepare.js');

defineSupportCode(function ({ setDefaultTimeout, Given, When, Then }) {

  setDefaultTimeout(6000 * 1000);
/* converting srting input from feature file to actual locator value */
function getelement(locator,text) {
  var locatorparts = locator.split(".");
  var locatorinput = locatorparts[locatorparts.length-1];
  var input = locators[locatorinput];
   if(input.startsWith(".") || input.startsWith("#") || input.startsWith("[") || input.startsWith("t") || input.startsWith("[aria-")){
     return element(by.css(input));
   }else if(input.startsWith("div") || input.startsWith("label") || input.startsWith("option") || input.startsWith("p") || input.startsWith("h")){
     return element(by.cssContainingText(input,getinput(text)));
   }else if(input.startsWith("//")){
     return element(by.xpath(input));
   }else if(input.startsWith("a")){
     var parts=input.split("_");
     return element(by.linkText(parts[1]));
   }else if(input.startsWith("component")){
     var parts=input.split("_");
     return element(by.css(parts[1]));
   }else if(input.startsWith("Text")){
    var parts=input.split("_");
    return element(by.cssContainingText(parts[1],getinput(text)));
   }else if(input.startsWith("all")){
    var parts=input.split("_");
    return element.all(by.css(parts[1]));
   }else if(input.startsWith("alll")){
    var parts=input.split("_");
    return element.all(by.xpath(parts[1]));
   }
   else {
     return element(by.buttonText(input));
   }
 };
/* converting srting input from feature file to actual testdata value */
  function getinput(inputvalue){        
    var valueparts = inputvalue.split(".");      
    var valueinput = valueparts[valueparts.length-1]; 
    return testdata[valueinput];   
  };
  function comp2(value2){ 
    var v2 =value2.split(".");
    var v2_array=v2[v2.length-1];
    var v2_input=locators[v2_array];

    if(v2_input.startsWith("/")){  
       return element(by.xpath(v2_input));
    }       
    else if (v2_input.startsWith("#") || (".") || ("[name")){
        return element(by.css(v2_input));
    }   
}

/* converting srting input url from feature file to actual url value */
  function geturl(url){        
    var domain = testdata[url.substring(url.indexOf("/") +2,url.indexOf("."))];  
    var part1=url.split("value");    
    var part2=url.substring(url.indexOf("."));
    return urlvalue=part1[0]+domain+part2;    

  };

/* navigating to a given url */
  When(/^I go to "(.*)"$/, function (url, callback) {
    onPrepareConfig();   
  if(url.startsWith("https://value")){
    browser.get(geturl(url)).then(callback); 
  }else{
    browser.get(url).then(callback); 
  }  
    
  });

  /* navigating to a given url */
  When(/^I go to new window "(.*)"$/, function (inputvalue) {
    browser.get(getinput(inputvalue));
    
  });



/* waiting for a given time*/
  When(/^I wait for "(.*)" milliseconds$/, function (time) { 
    onPrepareConfig(); 
    browser.sleep(time); 
  });

/* entering inputs into inputbox */
  When(/^I enter "(.*)" in "(.*)"$/, function (inputvalue, locator) { 
    onPrepareConfig(); 
    return getelement(locator).sendKeys(getinput(inputvalue));

  });

/* click on a given element */
  When(/^I click on "(.*)"$/, function (locator) {
    onPrepareConfig();  
    return getelement(locator).click();
  });



/* click on a text */
  When(/^I click "(.*)" text in "(.*)"$/, function (text,locator) {
    onPrepareConfig(); 
    var elm = getelement(locator,text);
    return browser.executeScript("arguments[0].click();", elm.getWebElement()); 
  });

/* pressing enter key */
  When(/^I press enter key$/, function () { 
    onPrepareConfig();
    browser.actions().sendKeys(protractor.Key.ENTER).perform();
  });


/* drag and drop an element using html-dnd */
  When(/^I drag from "(.*)" to "(.*)"$/, function (locator1,locator2) {
    onPrepareConfig();
    var locator1_parts = locator1.split(".");
    var locator1_input = locator1_parts[locator1_parts.length-1];
    var input1 = locators[locator1_input];  

    var locator2_parts = locator2.split(".");
    var locator2_input = locator2_parts[locator2_parts.length-1];
    var input2 = locators[locator2_input];  

    const dnd = require('html-dnd').code;
    const dragAndDrop = (elem, target) => {
      let e1 = element(by.xpath(elem));
      let e2 = element(by.css(target));
      browser.executeScript(dnd, e1.getWebElement(), e2.getWebElement());
    }
    dragAndDrop(input1, input2);   
  });

    When(/^I drag a file from "(.*)" to "(.*)"$/, function (filePathToUpload, locator) {
    onPrepareConfig(); 
    var path = require('path');
    var absolutePath = path.resolve(__dirname, getinput(filePathToUpload));
    var fileElem = getelement(locator);
    var browsername=browser.params.browser_name;
    var locator_parts = locator.split(".");
    var locator_input = locator_parts[locator_parts.length-1];
    var input2 = locators[locator_input];
    const dnd = require('html-dnd').code;
    const dragAndDrop = (absolutePath, target) => {
    let e1 = element(by.xpath(absolutePath));
    let e2 = element(by.css(target));
   
    //browser.executeScript(dnd, e1, e2.getWebElement());
    

   // e2.sendKeys(e1);
    //dragAndDrop(absolutePath, input2);

    //element(by.css('input[type="file"]')).sendKeys(absolutePath);    
    //element(by.css(target)).click();

    }
    //
    
    return getelement(locator).sendKeys(absolutePath); 
  });
/* verifying the current page url is equal to the given url */
  Then(/^I should be at the "(.*)"$/, function (url) { 
    onPrepareConfig(); 
    browser.sleep(6000);
    if(url.startsWith("https://value")){
      return expect(browser.getCurrentUrl()).to.eventually.equals(geturl(url));
    }else if(url == '/login'){
      return ;
    } else{
      // return expect(browser.getCurrentUrl()).to.eventually.equals(url);
      return expect(browser.getCurrentUrl()).to.eventually.equals(browser.baseUrl + url);
    } 
    
  }); 

  /* verifying the given field is readonly or not */
  Then(/^I should see field "(.*)" as readonly$/, function (locator) {
    onPrepareConfig();  
    return expect(getelement(locator).getAttribute('readonly')).to.eventually.equals('true');
  });

/* verifying the given field is disabled or not */
  Then(/^I should see field "(.*)" as disabled$/, function (locator) {
    onPrepareConfig();  
    return expect(getelement(locator).getAttribute('disabled')).to.eventually.equals('true');
  });

  /* verifying the given field is not disabled */
  Then(/^I should see field "(.*)" is not disabled$/, function (locator) {
    onPrepareConfig();  
    return expect(getelement(locator).getAttribute('disabled')).to.eventually.equals('false');
  });

/* verifying a specific text in the current page is equal to the given text */
  Then(/^I should see "(.*)" in "(.*)"$/, function (inputvalue, locator) { 
    onPrepareConfig(); 
    browser.sleep(2000);
    return expect(getelement(locator).getText()).to.eventually.equals(getinput(inputvalue));
  });

/* verifying the given element in the current page is present */
  When(/^I check "(.*)" present$/, function (locator) { 
    onPrepareConfig();  
    return expect(getelement(locator).isPresent()).to.eventually.equals(true); 
  });

/* verifying the given element is not selected in the current page */
 When(/^I check "(.*)" is not selected$/, function (locator) {  
  onPrepareConfig(); 
    return expect(getelement(locator).isSelected()).to.eventually.equals(false); 
  });

 /* verifying the given element is selected in the current page */
 When(/^I check "(.*)" is selected$/, function (locator) {  
  onPrepareConfig(); 
    return expect(getelement(locator).isSelected()).to.eventually.be.true; 

  });


/* verifying a option containing text is present */
  When(/^I check "(.*)" present in "(.*)"$/, function (option,locator) { 
    onPrepareConfig();  
    return expect(getelement(option,locator).isPresent()).to.eventually.equals(true); 
  });  

/* verifying the given element in the current page is not present */
  When(/^I check "(.*)" not present$/, function (locator) {  
    onPrepareConfig(); 
    return expect(getelement(locator).isPresent()).to.eventually.equals(false); 
  }); 

/* verifying a option containing text is not present */
  When(/^I check "(.*)" not present in "(.*)"$/, function (option,locator) { 
    onPrepareConfig();  
    return expect(getelement(option,locator).isPresent()).to.eventually.equals(false); 
  }); 

/* entering a given datevalue into the date input field */
  // When(/^I given "(.*)" in "(.*)"$/, function (date,locator) {
  //   // getelement(locator).click();
  //   var inputEle = getelement(locator);
  //   var inputValue = getinput(date);
  //   browser.executeScript('arguments[0].value=arguments[1]', 
  //                     inputEle.getWebElement(), 
  //                     inputValue);
  //   // inputEle.click();
  // });

/* mouse hover on a given element */
  When(/^I mouse hover on "(.*)"$/, function (locator_hover) {  
    onPrepareConfig();  
    return browser.actions().mouseMove(getelement(locator_hover)).perform();
  });

/*  select a option from dropdown(selecting the element with text)*/
  When(/^I select "(.*)" in "(.*)"$/, function (text,locator) {
    onPrepareConfig(); 
    return getelement(locator,text).click();
  });

/* verifying a specific element(selecting the element with text) is displaying in the current page */
When(/^I verify "(.*)" in "(.*)"$/, function (text,locator) {
  onPrepareConfig(); 
  return expect(getelement(locator,text).isPresent()).to.eventually.equals(true); 
});

/* verifying a specific element(selecting the element with text) is not displaying in the current page */
When(/^I verify "(.*)" not in "(.*)"$/, function (text,locator) {
  onPrepareConfig(); 
  return expect(getelement(locator,text).isPresent()).to.eventually.equals(false); 
});

  When(/^I hover on "(.*)"$/, function (locator_hover) {  
    onPrepareConfig(); 
  return browser.actions().mouseMove(getelement(locator_hover)).click().perform();
});

/* clearing an inputbox */
  When(/^I clear field "(.*)"$/, function (locator) {
    onPrepareConfig(); 
    getelement(locator).clear();
  });

/* cliking on a dropdown element(if we need to select options from multiple dropdowns) */
 When(/^I select "(.*)" of dropdown "(.*)"$/, function (text,locator) {
  onPrepareConfig(); 
    var ele = getelement(locator);
    ele.element(by.cssContainingText('option', getinput(text))).click();
  }); 

  /* upload a file */  
  When(/^I upload "(.*)" in "(.*)"$/, function (filePathToUpload, locator) {
    onPrepareConfig(); 
    var path = require('path');
    var absolutePath = path.resolve(__dirname, getinput(filePathToUpload));
    var fileElem = getelement(locator);
    var browsername=browser.params.browser_name;
    if (browsername.includes("firefox")){
      browser.executeScript("arguments[0].style.display = 'inline';", fileElem);
      return element(by.css('input[type="file"]')).sendKeys(absolutePath);
    }else if(browsername.includes("internet explorer")){
      fileElem.sendKeys('F://images/f4.jpg');
    }else{
      return getelement(locator).sendKeys(absolutePath);
    }  
  });

/* entering date value(entering character by character) */ 
  When(/^I enter date "(.*)" in "(.*)"$/, function (date,locator) {
    onPrepareConfig(); 
    var valueparts = date.split(".");     
    var valueinput = valueparts[valueparts.length-1]; 
    var data = testdata[valueinput];
    getelement(locator).sendKeys("").click();
    browser.sleep(1000);
    getelement(locator).clear();

      for (var i = 0; i < data.length; i++) {
        browser.sleep(1000);
        getelement(locator).sendKeys(data.charAt(i));
      }
  });
  
/* double click on an element */ 
  When(/^I double click on "(.*)"$/, function (locator) {  
    onPrepareConfig(); 
    browser.actions().doubleClick(getelement(locator)).perform();
  }); 

/* entering random date */ 
  When(/^I enter random date in "(.*)"$/, function (locator) {
    onPrepareConfig(); 
    var Chance = require('chance'),
    chance = new Chance();
    var nxtyear = moment().add(1, 'year').format("YYYY");
    var after30yr=moment().add(30, 'year').format("YYYY");

    let bounds = {
      min: chance.date({ year: nxtyear }),
      max: chance.date({ year: after30yr })
    }

    let date = chance.date(bounds)
    console.log(moment(date).format('MM-DD-YYYY'));
    var randomdate=moment(date).format('MM-DD-YYYY');
    return getelement(locator).sendKeys(randomdate);
  });  
  
  /* close browser*/
  When(/^I close browser$/, function () { 
    browser.restart();
    onPrepareConfig(); 
  });

  /* read a text */
  Then(/^I read "(.*)"$/, function (locator) { 
    onPrepareConfig();
    browser.sleep(2000);
    var F_name= getelement(locator).getText();
    name=F_name;
    inc_value=name+1;
    console.log(inc_value);
  });

/* entering stored input into inputbox */
When(/^I enter incremented value in "(.*)"$/, function (locator) { 
  onPrepareConfig();
  console.log(inc_value);
  return getelement(locator).sendKeys(inc_value);
  
});

  /* entering stored input into inputbox */
  When(/^I enter in "(.*)"$/, function (locator) { 
    onPrepareConfig();
    return getelement(locator).sendKeys(name);
  });

  /* verifying an already created text, is equal to the given text */
  Then(/^I should see text "(.*)"$/, function (locator) { 
    onPrepareConfig(); 
    browser.sleep(2000);
    return expect(getelement(locator).getText()).to.eventually.equals(name);
  });

  /* click on a given element after hovering */
  When(/^I clicked "(.*)"$/, function (locator) {
    onPrepareConfig();
    var elm = getelement(locator);
    return browser.executeScript("arguments[0].click();", elm.getWebElement());  
  });

  /* click on a given element */
  When(/^I clicking "(.*)"$/, function (locator) {
    onPrepareConfig();
    var ele=locators[locator.split(".").pop()];  
    var selectbtn = element.all(by.css(ele)).filter(function (elm) {
      return elm.isDisplayed().then(function (isDisplayed) {
          return isDisplayed;
      });
    }).first();
    selectbtn.click();
  });

  /* mouse hover on a specific element */
  When(/^I mouse hover "(.*)" on "(.*)"$/, function (text,locator) { 
    browser.sleep(5000); 
    onPrepareConfig(); 
    var elem=getelement(locator,text); 
    return browser.actions().mouseMove(elem).perform(); 
  });

  /* innerscroll to a position in the web page */
  When(/^I scroll "(.*)"$/, function (locator) { 
    onPrepareConfig(); 
    //browser.executeScript("$('.frx-formulary-body-right').scrollTop(1500);");
    var ele=locators[locator.split(".").pop()];
    browser.executeScript("$('"+ele+"').scrollTop(1800);");
  });  
  When(/^I scroll to "(.*)"$/, function (locator) { 
    onPrepareConfig(); 
    //browser.executeScript("$('.frx-formulary-body-right').scrollTop(1500);");
    var ele=locators[locator.split(".").pop()];
    browser.executeScript("$('"+ele+"').scrollTop(600);");
  });  

  /* mouse hover on already created element */
  When(/^I mouse hover specific element "(.*)"$/, function (locator) {
    onPrepareConfig(); 
    var locatorparts = locator.split(".");
    var locatorinput = locatorparts[locatorparts.length-1];
    var input = locators[locatorinput]; 
    var elem=element(by.cssContainingText(input, name));  
    return browser.actions().mouseMove(elem).perform();
  });
 
  /* click on already created element */
  When(/^I click on specific element "(.*)"$/, function (locator) {
    onPrepareConfig();
    var locatorparts = locator.split(".");
    var locatorinput = locatorparts[locatorparts.length-1];
    var input = locators[locatorinput]; 
    var elem=element(by.cssContainingText(input, name));
    return browser.actions().mouseMove(elem).click().perform(); 
  });  

/* click on element by refering sibling */
When(/^I click on element by refering sibling "(.*)"$/, function (locator) {
  onPrepareConfig();
  var loc=getelement(locator);
  //let h4ByText = element(by.xpath(`//*[@class="frx-rule-body"]//h3[contains(text(),"Sample rule groups")]//ancestor::div[contains(@class,"frx-rule-block")]//h4`));    
  return browser.executeScript("arguments[0].click();", loc.getWebElement()); 
});

/* check a particular text is present */
When(/^I checking "(.*)" in "(.*)"$/, function (text,locator) {
  onPrepareConfig();
  return expect(getelement(locator,text).isPresent()).to.eventually.equals(true); 
});

/* check a particular text is not present */
When(/^I checking "(.*)" not in "(.*)"$/, function (text,locator) {
  onPrepareConfig();
  return expect(getelement(locator,text).isPresent()).to.eventually.equals(false); 
});  

/*  */
When(/^I checked count "(.*)" in "(.*)"$/, function (data,locator) {
   //onPrepareConfig();
  var loc=locators[locator.split(".").pop()];
  var count=parseInt(testdata[data.split(".").pop()]); 
  element.all(by.xpath(loc)).count().then(function (size) {
     return expect(size).to.equal(count);
  });
});  

/* verify the last page for pagination */
When(/^I verify "(.*)" is last page "(.*)"$/, function (locator,locator1) {
  onPrepareConfig(); 
  var loc=locators[locator.split(".").pop()];
  var loc1=locators[locator1.split(".").pop()];
  element(by.xpath(loc)).getText().then(function(page){
    var arr=page.split(" ");
    element(by.xpath(loc1)).getAttribute('value').then(function(val){
    return expect(arr[4]).to.equal(val);
  });
});
});

/* verify the particular page for pagination */
When(/^I verify page "(.*)" in "(.*)"$/, function (data,locator) {
  onPrepareConfig(); 
  var loc=locators[locator.split(".").pop()];
  var num=testdata[data.split(".").pop()]; 
  element(by.xpath(loc)).getAttribute('value').then(function(page){
    return expect(page).to.equal(num);
  });
});

/* verifying the given element in the current page is displayed */
When(/^I check "(.*)" displayed$/, function (locator) { 
  onPrepareConfig();  
  return expect(getelement(locator).isDisplayed()).to.eventually.equals(true); 
});

/* verifying the given element in the current page is not displayed */
When(/^I check "(.*)" not displayed$/, function (locator) { 
  onPrepareConfig();  
  return expect(getelement(locator).isDisplayed()).to.eventually.equals(false); 
});
When(/^I check existing "(.*)"$/, function (locator) {
  getelement(locator).isPresent().then(function (checking_exist){
  if(checking_exist) {
      browser.sleep(2000);
      //getelement(locator).click();
      
    var elm = getelement(locator);
    return browser.executeScript("arguments[0].click();", elm.getWebElement());  
       //element(by.css(locators.locator_PA_drug_actions_attach)).click();
      //browser.sleep(5000);
      //element(by.css(locators.locator_PA_drug_actions_attach_confirm)).click();
      //browser.sleep(5000);
      //element(by.css(locators.locator_PA_drug_actions_attach_select_drug)).click();
      //browser.sleep(5000);
      //element(by.css(locators.locator_PA_drug_attachment_type_drpdwn,testdata.value_PA_attachment_type)).click();
      
      //element(by.css(locators.locator_PA_drug_actions_attach_save)).click();
      //browser.sleep(5000);
  }
  else {
  }
  });

});
// Comparing the values from two locators 
When(/^I compare the values "(.*)" and "(.*)"$/, function (locator,value2) {
  browser.sleep(2000);
  getelement(locator).getText().then(function (firstText) {

  browser.sleep(2000);
  var secondText = comp2(value2).getText();
 
  expect(secondText).to.eventually.equal(firstText.trim());
  browser.sleep(2000);
  });

});
// Switching to required window
When(/^I switch to new window$/, function () {
  browser.getAllWindowHandles().then(function (handles) {
      var firstWindowHandle = handles[0];
      var secondWindowHandle = handles[1];             
  browser.switchTo().window(secondWindowHandle).then(function () {
  
  })
  });
});
When(/^I close the window$/, function () {
  browser.getAllWindowHandles().then(function (handles) {
      var firstWindowHandle = handles[0];
      var secondWindowHandle = handles[1];             
  browser.switchTo().window(secondWindowHandle).then(function () {
  browser.close();
  }).then(function(){
  browser.switchTo().window(firstWindowHandle)
  }).then(function(){

  });
  });
});

/* verifying the given field is not disabled with a class extension*/
Then(/^I should see field "(.*)" as disabled with class extension$/, function (locator) {
  onPrepareConfig();  
  return expect(getelement(locator).isPresent()).to.eventually.equals(true);
});

When(/^I scroll$/, function () {
  browser.executeScript('window.scrollTo(0,2000);');

});

When(/^I scroll to top$/, function () {
  browser.executeScript('window.scrollTo(0,0);');

});

Then(/^I should see data"(.*)" in "(.*)"$/, function (inputvalue, locator) { 
  onPrepareConfig(); 
  browser.sleep(2000);
  return expect(getelement(locator).getText().trim()).to.eventually.equals(getinput(inputvalue));
});
//clicking on mouse up arrow
When(/^I click up arrow key on "(.*)"$/, function (locator) {
  onPrepareConfig();  
  return getelement(locator).sendKeys(protractor.Key.ARROW_UP);
});

/* verifying the given element in the current page is present */
When(/^I should see field "(.*)"$/, function (locator) { 
  onPrepareConfig();  
  return expect(getelement(locator).isPresent()).to.eventually.equals(true); 
});

When(/^I wait "(.*)" milliseconds$/, function (inputvalue) { 
  onPrepareConfig(); 
  return browser.sleep(getinput(inputvalue)); 
});

When(/^I check security question "(.*)"$/, function (locator){
  
  return getelement(locator).isPresent().then(function (value){

       if(value)  {
        element(by.xpath(locators.locator_security_qn_fav_place_to_vacation)).isPresent().then(function(ans){
          if(ans){
          browser.sleep(4000);

          element(by.css(locators.locator_security_question)).click();
          element(by.css(locators.locator_security_question)).sendKeys(testdata.value_security_qn_vacation);
          browser.sleep(4000);
          element(by.css(locators.locator_security_qn_login)).click();
          }
        });
        element(by.xpath(locators.locator_security_qn_fav_book)).isPresent().then(function(ans1){
          if(ans1){
          browser.sleep(4000);
          element(by.css(locators.locator_security_question)).click();
          element(by.css(locators.locator_security_question)).sendKeys(testdata.value_security_qn_book);
          browser.sleep(4000);
          element(by.css(locators.locator_security_qn_login)).click();
          }
        });
        element(by.xpath(locators.locator_security_qn_fav_food)).isPresent().then(function(ans2){
          if(ans2){ 
          browser.sleep(4000);
          element(by.css(locators.locator_security_question)).click();
          element(by.css(locators.locator_security_question)).sendKeys(testdata.value_security_qn_food);
          browser.sleep(4000);
          element(by.css(locators.locator_security_qn_login)).click();
          }
        });

       }
       else {
       }
   });
   });
//refresh a page
   When(/^I refresh$/,function (){
    // browser.refresh();
    browser.driver.navigate().refresh();
  });  
//verify data
  When(/^I check value "(.*)" in "(.*)"$/,function (data,loc){
    return expect(getelement(loc).getAttribute('value')).to.eventually.equals(getinput(data));
  });

  When(/^I click "(.*)" and drag from "(.*)" to "(.*)"$/, function (locator,locator1,locator2) {
    onPrepareConfig();

    var locator_parts = locator.split(".");
    var locator_input = locator_parts[locator_parts.length-1];
    var input = locators[locator_input]; 

    var locator1_parts = locator1.split(".");
    var locator1_input = locator1_parts[locator1_parts.length-1];
    var input1 = locators[locator1_input];  

    var locator2_parts = locator2.split(".");
    var locator2_input = locator2_parts[locator2_parts.length-1];
    var input2 = locators[locator2_input];  

    const dnd = require('html-dnd').code;
    const dragAndDrop = (elem, target) => {
      let e1 = element(by.xpath(elem));
      let e2 = element(by.css(target));
      browser.executeScript(dnd, e1.getWebElement(), e2.getWebElement());
    }
    element(by.xpath(input)).click().then(function(){
      browser.sleep("4000"); 
      dragAndDrop(input1, input2);      
    });
    
  });

  / pressing enter key /
When(/^I press enter key "(.*)"$/, function (locator) { 
  onPrepareConfig();
  getelement(locator).sendKeys(protractor.Key.RETURN);
  
});

When(/^I clear test "(.*)"$/, function (locator) { 
    onPrepareConfig();
    getelement(locator).sendKeys(protractor.Key.DELETE);
    
  });





  /* verifying a specific between filter result */
Then(/^I test values of "(.*)" is between "(.*)" and "(.*)"$/, function (locator,data1,data2) {
//expect(5).to.be.within(1,3);
    onPrepareConfig();
    console.log('#############')
    var num1=parseInt(testdata[data1.split(".").pop()]); 
    var num2=parseInt(testdata[data2.split(".").pop()]); 
    var add=[];
    var i=0;
    var loc= locators[locator.split(".").pop()];
    console.log('#############5',loc);
    //var loc=getelement(locator);
    var ele = element.all(by.xpath(loc));
    console.log('#############6',ele);
     ele.each(function(eachName){
        eachName.getText().then(function(name){
          console.log('#############4',name);

        add[i] = name;
        console.log('#############3',add[i]);
        
        //expect(add[i]).to.be.within(getinput(data1),getinput(data2));
        i++;
        });
       
      }).then(function() {
      console.log('##############',add);
      console.log('##############',num1);
      //console.log('##############',num2);

      return expect(add).to.be.within(num1,num2); 
    //console.log(data1);
  });
    });
 /*verifying a column text in the current page is between to the given text */
    Then(/^I check value between "(.*)" and "(.*)"$/, function (data1,data2) {
      onPrepareConfig();
      var Array_Age=[];
      var num1=parseInt(testdata[data1.split(".").pop()]); 
      var num2=parseInt(testdata[data2.split(".").pop()]); 

      //console.log("$$$$$$$$$$$$$$$$");
      return element.all(by.css(".eventList .ant-table-tbody .ant-table-row")).count().then(function (rowcount) {
      console.log('#############q',rowcount);
      for(j=1; j<=rowcount; j++){
      //var selector=".ant-table-row:nth-child("+j+") td:nth-child(11) div";
      var selector="//div[@class='eventList']//table//tbody//tr["+j+"]//td[11]";
      //console.log("#######1",selector);
      element(by.xpath(selector)).getText().then(function(text) {
        var xxx=parseInt(text);
      console.log('##############',xxx);
      //console.log('##############',num1);
      //console.log('##############',num2);

      expect(xxx).to.be.within(num1,num2);
            
      //Array_Age.push(text);
      //console.log(Array_Age);
      });
      }
      });
      });


  /*verifying a specific text in the current page is equal to the given text */
  Then(/^I see "(.*)"$/, function (locator) { 
    
    
    onPrepareConfig(); 
    browser.sleep(2000);
    return getelement(locator).getText().then(function(text) {
      console.log('##############',text);
    });
    
  });
  
  

   /*verifying a column text in the current page is equal to the given text */
  Then(/^I check column values are between "(.*)" and "(.*)"$/, function (data1,data2) {
    onPrepareConfig();
    var newArr=[];
    var num1=parseInt(testdata[data1.split(".").pop()]); 
    var num2=parseInt(testdata[data2.split(".").pop()]); 
    var Array_Age=[];
    return element.all(by.css(".eventList .ant-table-tbody .ant-table-row")).count().then(function (rowcount) {
          //console.log('#############q',rowcount);
          for(j=2; j<=rowcount; j++){
              //var selector=".ant-table-row:nth-child("+j+") td:nth-child(11) div";
              var selector="//div[@class='eventList']//table//tbody//tr["+j+"]//td[10]";
              //console.log("#######1",selector);
               // element(by.xpath(selector)).isPresent().then(function (checking_exist){
                  //console.log("#######s1",selector);

                  if(selector) {
                    //console.log("#######s",selector);
                    element.all(by.xpath(selector)).getText().then(function(text) {
                    var xxx=parseInt(text);
                     //console.log('##############q',xxx);
                    Array_Age.push(xxx);
                    Array_Age = Array_Age.filter(item => item);
                    //console.log(Array_Age);
                    for(i=0; i<=Array_Age.length-1; i++){
                      
                      newArr[i]=Array_Age[i];
                      //console.log('##############mn',newArr[i]);
                     expect(newArr[i]).to.be.within(num1,num2); 
                    }
                    });
                  }else
                  {
                  console.log('element not available');
                  }
              //});
          }
  });
    });




   /*verifying a column text in the current page is equal to the given text */
   Then(/^I check column values is equal to "(.*)"$/, function (data1) {
    onPrepareConfig();
    var newArr=[];
    var num1=parseInt(testdata[data1.split(".").pop()]); 
    var Array_Age=[];
    return element.all(by.css(".eventList .ant-table-tbody .ant-table-row")).count().then(function (rowcount) {
          //console.log('#############q',rowcount);
          for(j=1; j<=rowcount; j++){
              //var selector=".ant-table-row:nth-child("+j+") td:nth-child(11) div";
              var selector="//div[@class='eventList']//table//tbody//tr["+j+"]//td[11]";
              //console.log("#######1",selector);
               // element(by.xpath(selector)).isPresent().then(function (checking_exist){
                  //console.log("#######s1",selector);

                  if(selector) {
                    //console.log("#######s",selector);
                    element.all(by.xpath(selector)).getText().then(function(text) {
                    var xxx=parseInt(text);
                     //console.log('##############q',xxx);
                    Array_Age.push(xxx);
                    Array_Age = Array_Age.filter(item => item);
                    //console.log(Array_Age);
                    for(i=0; i<=Array_Age.length-1; i++){
                      
                      newArr[i]=Array_Age[i];
                      //console.log('##############mn',newArr[i]);
                     expect(newArr[i]).to.equals(num1); 
                     //expect(getelement(locator).getText().trim()).to.eventually.equals(getinput(inputvalue));

                    }
                    });
                  }else
                  {
                  console.log('element not available');
                  }
              //});
          }
  });
    });



   /*verifying a column text in the current page is equal to the given text */
   Then(/^I check all city names are equal to "(.*)"$/, function (data1) {
    onPrepareConfig();
    var newArr=[];
    var Array_Age=[];
    var num1=testdata[data1.split(".").pop()]; 
    return element.all(by.css(".ant-table-tbody .ant-table-row")).count().then(function (rowcount) {
          //console.log('#############q',rowcount);
          for(j=1; j<=rowcount; j++){
              //var selector=".ant-table-row:nth-child("+j+") td:nth-child(11) div";
              var selector="//table//tbody//tr["+j+"]//td[8]";
              //console.log("#######1",selector);
               // element(by.xpath(selector)).isPresent().then(function (checking_exist){
                  //console.log("#######s1",selector);

                  if(selector) {
                    //console.log("#######s",selector);
                    element.all(by.xpath(selector)).getText().then(function(text) {
                     //console.log('##############q',text);
                    Array_Age.push(text);
                    Array_Age = Array_Age.filter(item => item);
                    //console.log(Array_Age);
                    for(i=0; i<=Array_Age.length-1; i++){
                      
                      newArr[i]=Array_Age[i];
                      //console.log('##############mn',newArr[i]);
                     expect(newArr[i].toString()).to.equals(num1);
                     //expect(getelement(locator).getText().trim()).to.eventually.equals(getinput(inputvalue));

                    }
                    });
                  }else
                  {
                  console.log('element not available');
                  }
              //});
          }
  });
    });




   /*verifying a column text in the current page is equal to the given text */
   Then(/^I check all state names are equal to "(.*)"$/, function (data1) {
    onPrepareConfig();
    var newArr=[];
    var Array_Age=[];
    var num1=testdata[data1.split(".").pop()]; 
    return element.all(by.css(".ant-table-tbody .ant-table-row")).count().then(function (rowcount) {
          //console.log('#############q',rowcount);
          for(j=2; j<=rowcount; j++){
              //var selector=".ant-table-row:nth-child("+j+") td:nth-child(11) div";
              var selector="//table//tbody//tr["+j+"]//td[8]";
              //console.log("#######1",selector);
               // element(by.xpath(selector)).isPresent().then(function (checking_exist){
                  //console.log("#######s1",selector);

                  if(selector) {
                    //console.log("#######s",selector);
                    element.all(by.xpath(selector)).getText().then(function(text) {
                     //console.log('##############q',text);
                    Array_Age.push(text);
                    Array_Age = Array_Age.filter(item => item);
                    //console.log(Array_Age);
                    for(i=0; i<=Array_Age.length-1; i++){
                      
                      newArr[i]=Array_Age[i];
                      //console.log('##############mn',newArr[i]);
                     expect(newArr[i].toString()).to.equals(num1);
                     //expect(getelement(locator).getText().trim()).to.eventually.equals(getinput(inputvalue));

                    }
                    });
                  }else
                  {
                  console.log('element not available');
                  }
              //});
          }
  });
    });



   /*verifying a click count equal to row count */
   Then(/^I click and count "(.*)" and "(.*)"$/, function (locator,locator1) {
      onPrepareConfig(); 
      var loc=locators[locator1.split(".").pop()];
      return getelement(locator).getText().then(function (size) {
         var ele= parseInt(size);
         getelement(locator).click().then(function (click) {
            browser.sleep(10000);
            element.all(by.css(loc)).count().then(function (size) {
              expect(size).to.equal(ele);
              });
  
          });
      });
    });



   /*verifying a column text in the current page is equal to the given text */
  Then(/^I check profile age is between "(.*)" and "(.*)" on "(.*)"$/, function (data1,data2,locator) {
    onPrepareConfig();
    var num1=parseInt(testdata[data1.split(".").pop()]); 
    var num2=parseInt(testdata[data2.split(".").pop()]); 
    console.log('##############q1',num1);
    console.log('##############q2',num2);
                    
         getelement(locator).getText().then(function(text) {
           var ele= parseInt(text);
           console.log('##############q3',ele);
           return expect(ele).to.be.within(num1,num2);
        });     
              
          
  });
/* verifying a specific text in the current page is equal to the given text */
Then(/^I should see same text in other screen "(.*)" in "(.*)"$/, function (locator, locator1) { 
  onPrepareConfig(); 
  //var loc=locators[locator1.split(".").pop()];
      return getelement(locator).getText().then(function (size) {
         //var ele= parseInt(size);
       
         getelement(locator).click();
            browser.sleep(10000);
            
              expect(getelement(locator1).getText()).to.eventually.equals(size+' Results');
              });
  
          
  
});


// sort equals //
  Then(/^I check sort order in ascending order "(.*)"$/, function (locator) {
    var loc=locators[locator.split(".").pop()];
    var sorted=[], unsorted=[];
    var i=0;

    var ele = element.all(by.xpath(loc));
    return ele.each(function(eachName){
        eachName.getText().then(function(name){
          //console.log('##############qs',name);
          unsorted[i]=name.toLowerCase();
          sorted[i]=name.toLowerCase();
          //console.log('##############q',unsorted[i]);
          //console.log('##############s',sorted[i]);
          i++;
        });
      }).then(function(){
    sorted.sort();
    //console.log('##############s',sorted);
     expect(sorted.toString()).to.equal(unsorted.toString());
    });
  });


  /*verifying a column text in the current page is equal to the given text */
  Then(/^I check profile age is between dollor "(.*)" and "(.*)" on "(.*)"$/, function (data1,data2,locator) {
    onPrepareConfig();
    var num1=parseInt(testdata[data1.split(".").pop()]); 
    var num2=parseInt(testdata[data2.split(".").pop()]); 
    console.log('##############q1',num1);
    console.log('##############q2',num2);
                    
         getelement(locator).getText().then(function(text) {
          var doltxt = text.split("$");
          var txt1 = doltxt[doltxt.length-1];

          var doltxt2 = txt1.split("M");
          var txt2 = doltxt2[doltxt2.length-2];

           var ele= parseInt(txt2);
           console.log('##############q3',txt1);
           console.log('##############q3',txt2);

           return expect(ele).to.be.within(num1,num2);
        });      
  });


  /*verifying a column text in the current page is equal to the given text */
  Then(/^I check profile age is between dollorB "(.*)" and "(.*)" on "(.*)"$/, function (data1,data2,locator) {
    onPrepareConfig();
    var num1=parseInt(testdata[data1.split(".").pop()]); 
    var num2=parseInt(testdata[data2.split(".").pop()]); 
    console.log('##############q1',num1);
    console.log('##############q2',num2);
                    
         getelement(locator).getText().then(function(text) {
          var doltxt = text.split("$");
          var txt1 = doltxt[doltxt.length-1];

          var doltxt2 = txt1.split("B");
          var txt2 = doltxt2[doltxt2.length-2];

           var ele= parseInt(txt2);
           console.log('##############q3',txt1);
           console.log('##############q3',txt2);

           return expect(ele).to.be.within(num1,num2);
        });      
  });


});



