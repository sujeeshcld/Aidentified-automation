# Aidentified-New
protractor-cucumber
Protractor Aidentified tests using cucumber

# Project Description:
Project setup with Protractor version 6.1.2.
Makes use of Page Objects.
Written in Java script
Page Object classes are in the ./pages directory and should inherit from basePage.po.
Specs scripts are in the ./specs directory, grouped into directory by page or functionality.
Mock data (eg usernames and pws) are in ./data directory.
Utility functions are in ./utils directory.

# Setup:
Install Node (v6.x.x or later)
Follow setup steps described here
(http://www.protractortest.org/#/tutorial#setup)
npm install to install the project dependencies
'webdriver-manager update' to install selenium & borwser specific drivers

# Run tests:
npm run protractor Run tests using Chrome browser

this is the command for running project(protractor cucumber.conf.js --browser="chrome").
