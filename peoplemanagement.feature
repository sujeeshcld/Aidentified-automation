Feature: To test M2 scenarios

@test13
Scenario: Verifying the successful login.
    When I go to "/user/login"
    And I wait "testdata.testdata_time_20" milliseconds
    And I enter "testdata.testdata_username" in "locators.locator_username"
    And I enter "testdata.testdata_password" in "locators.locator_password"
    And I click on "locators.locator_signIn"
    And I wait "testdata.testdata_time_20" milliseconds 
    And I wait "testdata.testdata_time_20" milliseconds 


@test13
Scenario:Verify user is able to maximize money in motion filter section and verify that money in motion event attributes are present 
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_money_in_motion_attribute"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_people_money_in_motion_event"
    And I wait "testdata.testdata_time_5" milliseconds



  
@test13
Scenario: Verify user is able to filter by money motion event in the prospect finder-people screen and verify data in profile screen.
    And I mouse hover on "locators.locator_hover_moneymotionin_people"
    And I wait "testdata.testdata_time_3" milliseconds
    And I hover on "locators.locator_people_money_in_motion_event"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_people_event_all"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filter_boxpeople_event_all"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario: Verify user is able to filter by wealth segment  in the prospect finder-insight screen and verify data in profile screen.
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_filter_boxpeople_event_all"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario: Verify user is able to filter by wealth segment in the prospect finder-event screen and verify data in profile screen.
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filter_boxpeople_event_all"
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario: Verify user is able to close wealth segment label filter by clicking on close button in the label.
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_filter_boxpeople_event_all"
    And I wait "testdata.testdata_time_8" milliseconds
    And I check "locators.locator_filter_boxpeople_event_all" not present  
    And I wait "testdata.testdata_time_3" milliseconds

@test13
Scenario: Verify user is able to  clear wealth segment filter by clicking on clear button.
    And I hover on "locators.locator_people_money_in_motion_event"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_people_event_all"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filter_boxpeople_event_all" not present  
    And I wait "testdata.testdata_time_3" milliseconds

    