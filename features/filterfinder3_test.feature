Feature: To test M2 scenarios

@test132
Scenario: Verifying the successful login.
    When I go to "/user/login"
    And I wait "testdata.testdata_time_20" milliseconds
    And I enter "testdata.testdata_username" in "locators.locator_username"
    And I enter "testdata.testdata_password" in "locators.locator_password"
    And I click on "locators.locator_signIn"
    And I wait "testdata.testdata_time_20" milliseconds 
    And I wait "testdata.testdata_time_20" milliseconds 


@test132
Scenario: Verify the user is able to see new Prospect finder filter screen
    And I click on "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds 
    #And I should see field "locators.locator_prospectfilter"

     
@test132
Scenario: Verify the user is able to open  Prospect finder filter screen
    #And I click on "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_AddNewprospectfilter"



      
@test132
Scenario:Verify user is able to create filter and able to edit it.
    And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_groupby" in "locators.locator_prospectprofile_name"
    And I clicked "locators.locator_filter_moneyinmotion_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_emailalert_checkbox"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_house_hold_save_close"
    And I wait "testdata.testdata_time_8" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_GroupBy_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_auto_GroupBy"
    And I wait "testdata.testdata_time_8" milliseconds



@test132
Scenario:Verify user is able to create filter to check inferred income count where  inferred income is 0 to 100k.
    And I mouse hover on "locators.locator_filter_default_click_auto_GroupBy_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_autoGroupBy_edit"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_filter_professional_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_infered_income"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_infered_income_100k"
    And I wait "testdata.testdata_time_2" milliseconds
    ## And I clicked "locators.locator_filter_moneyinmotion_attribute_button"
    ## And I wait "testdata.testdata_time_5" milliseconds
    ## And I hover on "locators.locator_filter_timeframedd"
    ## And I wait "testdata.testdata_time_5" milliseconds
    ## And I clicked "locators.locator_filter_timeframedd_All"
    ## And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_emailalert_checkbox"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_house_hold_save_close"
    And I wait "testdata.testdata_time_8" milliseconds


    
@test132
Scenario:Verify user is able to see only income count(0 to 100k)  on the top of the  listing after selecting inferred income from dropdown 
     And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_group_by_insight_DD_infererincome"
    And I clicked "locators.locator_group_by_insight_DD_infererincome"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_inferedincome100k"

@test132
Scenario:Verify user is able to see both inferred income count(0 to 100k)  in insight and people screen are same where group by dropdown selected as nferred income   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_inferedincome100k" in "locators.locator_company_count_verify"


@test132
Scenario:Verify user is able to see people screen while clicking on inferred income count(0 to 100k) in the insight screen 
    And I should see field "locators.locatorpeopletab"






@test132
Scenario:Verify user is able to see filter result inferred income as 0 to 100k in Peoples's profile screeen
    #And I clicked "locators.locator_prospect_profiletab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_infered_income_100k_inprofile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds




    
@test132
Scenario:Verify the user is able to see default filter name in event's table .
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see "testdata.testdata_groupby" in "locators.locator_prospectprofile_filter_default_dropdown"
    And I wait "testdata.testdata_time_5" milliseconds



@test132
Scenario:Verify the user is able to see filter result inferred income as 0 to 100k in profile of event's screen
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_infered_income_100k_inprofile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test132
Scenario:Verify user is able to see filter result inferred income as 0 to 100k  in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_infered_income_100k_inprofile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

@test132
Scenario:Verify user is able to delete created filter for inferred income as 0 to 100k  
    And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_GroupBy_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_autoGroupBy_edit"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_delete"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_delete_ok_popup"
    And I wait "testdata.testdata_time_5" milliseconds

@test132
Scenario:Verify user is able to create filter to check inferred income count where degree is second, and nferred income is 101 to 250k.
    And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_groupby1" in "locators.locator_prospectprofile_name"
    And I clicked "locators.locator_filter_moneyinmotion_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_professional_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_infered_income"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_infered_income_250k"
    And I wait "testdata.testdata_time_2" milliseconds

    And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_emailalert_checkbox"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_house_hold_save_close"
    And I wait "testdata.testdata_time_8" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_GroupBy1_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_auto_GroupBy1"
    And I wait "testdata.testdata_time_8" milliseconds

    
@test132
Scenario:Verify user is able to see only income count(101 to 250k)  on the top of the  listing after selecting inferred income from dropdown 
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_group_by_insight_DD_infererincome"
    And I clicked "locators.locator_group_by_insight_DD_infererincome"
    And I wait "testdata.testdata_time_3" milliseconds 
    #And I should see field "locators.locator_inferedincome101k"

@test132
Scenario:Verify user is able to see both inferred income count(101 to 250k)  in insight and people screen are same where group by dropdown selected as nferred income   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_inferedincome101k" in "locators.locator_company_count_verify"

@test132
Scenario:Verify user is able to see people screen while clicking on inferred income count(101to 250k) in the insight screen 
    And I should see field "locators.locatorpeopletab"

@test132
Scenario:Verify user is able to see filter result inferred income as 101 to 250k in Peoples's profile screeen
    #And I clicked "locators.locator_prospect_profiletab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_infered_income_101k_250kinprofile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

@test132
Scenario:Verify the user is able to see filter result inferred income as 101 to 250k in profile of event's screen
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_infered_income_101k_250kinprofile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test132
Scenario:Verify user is able to see filter result inferred income as 101 to 250k  in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_infered_income_101k_250kinprofile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test132
Scenario:Verify user is able to delete created filter for inferred income as 101 to 250k  
    And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_GroupBy1_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_autoGroupBy1_edit"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_delete"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_delete_ok_popup"
    And I wait "testdata.testdata_time_5" milliseconds











@test132
Scenario:Verify user is able to create filter to check inferred income count where degree is second, and nferred income is 251 to 500k.
     And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_groupby2" in "locators.locator_prospectprofile_name"
    And I clicked "locators.locator_filter_moneyinmotion_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_professional_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_infered_income"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_infered_income_500k"
    And I wait "testdata.testdata_time_2" milliseconds

    And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_emailalert_checkbox"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_house_hold_save_close"
    And I wait "testdata.testdata_time_8" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_GroupBy2_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_auto_GroupBy2"
    And I wait "testdata.testdata_time_8" milliseconds

    
@test132
Scenario:Verify user is able to see only income count(251 to 500k)  on the top of the  listing after selecting inferred income from dropdown 
     And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_group_by_insight_DD_infererincome"
    And I clicked "locators.locator_group_by_insight_DD_infererincome"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_inferedincome251k"

@test132
Scenario:Verify user is able to see both inferred income count(251 to 500k)  in insight and people screen are same where group by dropdown selected as nferred income   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_inferedincome251k" in "locators.locator_company_count_verify"

@test132
Scenario:Verify user is able to see people screen while clicking on inferred income count(251 to 500k) in the insight screen 
    And I should see field "locators.locatorpeopletab"

@test132
Scenario:Verify user is able to see filter result inferred income as 251 to 500k in Peoples's profile screeen
    #And I clicked "locators.locator_prospect_profiletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_infered_income_251k_500kinprofile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test132
Scenario:Verify the user is able to see filter result inferred income as 251 to 500k in profile of event's screen
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_infered_income_251k_500kinprofile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test132
Scenario:Verify user is able to see filter result inferred income as 251 to 500k  in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_infered_income_251k_500kinprofile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test132
Scenario:Verify user is able to delete created filter for inferred income as 250 to 500k  
    And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_GroupBy2_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_autoGroupBy2_edit"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_delete"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_delete_ok_popup"
    And I wait "testdata.testdata_time_5" milliseconds


@test132
Scenario:Verify user is able to create filter to check inferred income count where degree is second, and nferred income is 501 to 1M.
    And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_groupby3" in "locators.locator_prospectprofile_name"
    And I clicked "locators.locator_filter_moneyinmotion_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_oneMonth"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_professional_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_infered_income"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_infered_income_501k"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_emailalert_checkbox"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_house_hold_save_close"
    And I wait "testdata.testdata_time_8" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_GroupBy3_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_auto_GroupBy3"
    And I wait "testdata.testdata_time_8" milliseconds



    
@test132
Scenario:Verify user is able to see only income count(501 to 1M)  on the top of the  listing after selecting inferred income from dropdown 
     And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_group_by_insight_DD_infererincome"
    And I clicked "locators.locator_group_by_insight_DD_infererincome"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_inferedincome501k"

@test132
Scenario:Verify user is able to see both inferred income count(501 to 1M)  in insight and people screen are same where group by dropdown selected as nferred income   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_inferedincome501k" in "locators.locator_company_count_verify"

@test132
Scenario:Verify user is able to see people screen while clicking on inferred income count(501 to 1M) in the insight screen 
    And I should see field "locators.locatorpeopletab"

@test132
Scenario:Verify user is able to see filter result inferred income as 501 to 1M in Peoples's profile screeen
    #And I clicked "locators.locator_prospect_profiletab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_infered_income_501k_1Minprofile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

@test132
Scenario:Verify the user is able to see filter result inferred income as 501 to 1M in profile of event's screen
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_infered_income_501k_1Minprofile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test132
Scenario:Verify user is able to see filter result inferred income as 501 to 1M  in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_infered_income_501k_1Minprofile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test132
Scenario:Verify user is able to delete created filter for inferred income as 500 to 1m  
    And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_GroupBy3_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_autoGroupBy3_edit"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_delete"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_delete_ok_popup"
    And I wait "testdata.testdata_time_5" milliseconds

@test132
Scenario:Verify user is able to create filter to check inferred income count where degree is second, and nferred income is 1M plus.
    And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_groupby4" in "locators.locator_prospectprofile_name"
    And I clicked "locators.locator_filter_moneyinmotion_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_oneMonth"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_professional_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_infered_income"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_infered_income_1M"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_emailalert_checkbox"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_house_hold_save_close"
    And I wait "testdata.testdata_time_8" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_GroupBy4_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_auto_GroupBy4"
    And I wait "testdata.testdata_time_8" milliseconds
    

    
@test132
Scenario:Verify user is able to see only income count(1M plus)  on the top of the  listing after selecting inferred income from dropdown 
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_group_by_insight_DD_infererincome"
    And I clicked "locators.locator_group_by_insight_DD_infererincome"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_inferedincome1Mplus"

@test132
Scenario:Verify user is able to see both inferred income count(1M plus)  in insight and people screen are same where group by dropdown selected as nferred income   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_inferedincome1Mplus" in "locators.locator_company_count_verify"

@test132
Scenario:Verify user is able to see people screen while clicking on inferred income count(101to 250k) in the insight screen 
    And I should see field "locators.locatorpeopletab"

@test132
Scenario:Verify user is able to see filter result inferred income as above 1M in Peoples's profile screeen
    #And I clicked "locators.locator_prospect_profiletab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_infered_income_1MPlus_inprofile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

@test132
Scenario:Verify the user is able to see filter result inferred income as above 1M in profile of event's screen
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_infered_income_1MPlus_inprofile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test132
Scenario:Verify user is able to see filter result inferred income as above 1M  in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_infered_income_1MPlus_inprofile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test132
Scenario:Verify user is able to delete created filter for inferred income above 1m  
    And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_GroupBy4_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_autoGroupBy4_edit"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_delete"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_delete_ok_popup"
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario:Verify user is able to create filter to check title rank count where degree is second, and title rank is ceo.
    And I click on "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_group_by_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    #And I clicked "locators.locator_Saved_filter_Relationship_2nd"
    And I wait "testdata.testdata_time_2" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I hover on "locator.locator_filter_title_rank_dd"
    And I wait "testdata.testdata_time_5" milliseconds  
    And I clicked "locators.locator_filter_title_rank_options"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds
    
@test13
Scenario:Verify user is able to see only title rank  count(CEO)  on the top of the  listing after selecting title rank from dropdown 
     And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_titlerank"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_titlerank_ceo"

@test13
Scenario:Verify user is able to see both title rank  count(CEO)  in insight and people screen are same where group by dropdown selected as nferred income   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_titlerank_ceo" in "locators.locator_company_count_verify"

@test13
Scenario:Verify user is able to see people screen while clicking on title rank  count(CEO) in the insight screen 
    And I should see field "locators.locatorpeopletab"


##
@test13
Scenario:Verify user is able to create filter to check title count where degree is second, and title is president.
    #And I click on "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_group_by_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    #And I clicked "locators.locator_Saved_filter_Relationship_2nd"
    And I wait "testdata.testdata_time_2" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I mouse hover on "locator.locator_filter_title_name"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I enter "testdata.testdata_job_title_name" in "locators.locator_filter_title_name"
    And I wait "testdata.testdata_time_10" milliseconds  
    And I clicked "locators.locator_filter_title_first_options_President"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds
    
@test13
Scenario:Verify user is able to see title count(president)  on the top of the  listing after selecting inferred income from dropdown 
     And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_title"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_title_President"

@test13
Scenario:Verify user is able to see both title count(president)   in insight and people screen are same where group by dropdown selected as title   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_title_President" in "locators.locator_company_count_verify"

@test13
Scenario:Verify user is able to see people screen while clicking on title count(president) in the insight screen 
    And I should see field "locators.locatorpeopletab"

@test13
Scenario:Verify user is able to see filter result title count(president) in Peoples's profile screeen
    #And I clicked "locators.locator_prospect_profiletab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locatro_President_profileas_job"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario:Verify the user is able to see filter result title count(president) in profile of event's screen
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locatro_President_profileas_job"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario:Verify user is able to see filter result title count(president)  in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locatro_President_profileas_job"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



####26

