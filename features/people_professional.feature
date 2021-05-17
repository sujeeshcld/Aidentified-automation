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
Scenario:Verify user is able to minimize avanced search option of house hold attributes and verify that advanced household attributes are not  present 
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_household_adv_max"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_filter_Household_inter"
    And I clicked "locators.locator_household_adv_max"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check "locators.locator_google_cmpny_selct" not present  


@test13
Scenario:Verify user is able to minimize house hold attributes and verify that household attributes are not  present 
    And I hover on "locators.locator_household_attribute_minimize"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check "locators.locator_household_adv_max" not present  



@test13
Scenario: Verify user is able to filter by company name in the prospect finder-people screen and verify data in profile screen.
    And I enter "testdata.testdata_company_name" in "locators.locator_company_dd_people_filter"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_google_cmpny_selct"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filter_box_google"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario: Verify user is able to filter by company name in the prospect finder-insight screen and verify data in profile screen.
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_filter_box_google"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is able to filter by company name in the prospect finder-event screen and verify data in profile screen.
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filter_box_google"
    And I wait "testdata.testdata_time_5" milliseconds




@test13
Scenario: Verify user is able to close company name label filter by clicking on close button in the label.
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_filterlabel_google_close"
    And I wait "testdata.testdata_time_8" milliseconds
    And I check "locators.locator_filter_box_google" not present  
    And I wait "testdata.testdata_time_3" milliseconds

@test13
Scenario: Verify user is able to  clear company name filter by clicking on clear button.
    And I enter "testdata.testdata_company_name" in "locators.locator_company_dd_people_filter"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_google_cmpny_selct"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filter_box_google" not present  
    And I wait "testdata.testdata_time_3" milliseconds

######29_04_2021

@test13
Scenario: Verify user is able to filter by title in the prospect finder-people screen and verify data in profile screen.
    And I enter "testdata.testdata_CEO" in "locators.locator_filter_peoplescreen_title_input"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_ceo_select_peoplescreen"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filter_box_glocator_filter_box_ceo"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario: Verify user is able to filter by title name in the prospect finder-insight screen and verify data in profile screen.
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_filter_box_glocator_filter_box_ceo"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is able to filter by title name in the prospect finder-event screen and verify data in profile screen.
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filter_box_glocator_filter_box_ceo"
    And I wait "testdata.testdata_time_5" milliseconds




@test13
Scenario: Verify user is able to close title name label filter by clicking on close button in the label.
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_filter_box_glocator_filter_box_ceo"
    And I wait "testdata.testdata_time_8" milliseconds
    And I check "locators.locator_filter_box_glocator_filter_box_ceo" not present  
    And I wait "testdata.testdata_time_3" milliseconds

@test13
Scenario: Verify user is able to  clear title name filter by clicking on clear button.
    And I enter "testdata.testdata_CEO" in "locators.locator_filter_peoplescreen_title_input"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_ceo_select_peoplescreen"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filter_box_glocator_filter_box_ceo" not present  
    And I wait "testdata.testdata_time_3" milliseconds

#

@test13
Scenario: Verify user is able to filter by school in the prospect finder-people screen and verify data in profile screen.
    And I enter "testdata.testdata_professional_school_name" in "locators.locator_filter_peoplescreen_school_input"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_school_dd_select"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filter_box_gocator_filter_box_school"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario: Verify user is able to filter by school name in the prospect finder-insight screen and verify data in profile screen.
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_filter_box_gocator_filter_box_school"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is able to filter by school name in the prospect finder-event screen and verify data in profile screen.
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filter_box_gocator_filter_box_school"
    And I wait "testdata.testdata_time_5" milliseconds




@test13
Scenario: Verify user is able to close school name label filter by clicking on close button in the label.
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_filter_box_gocator_filter_box_school"
    And I wait "testdata.testdata_time_8" milliseconds
    And I check "locators.locator_filter_box_gocator_filter_box_school" not present  
    And I wait "testdata.testdata_time_3" milliseconds

@test13
Scenario: Verify user is able to  clear school name filter by clicking on clear button.
    And I enter "testdata.testdata_professional_school_name" in "locators.locator_filter_peoplescreen_school_input"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_school_dd_select"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filter_box_gocator_filter_box_school" not present  
    And I wait "testdata.testdata_time_3" milliseconds

#####30042021

@test13
Scenario: Verify user is able to  professional attributes advanced search section by clicking on advanced search button.
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_avanced_search_professional_attr"
    And I wait "testdata.testdata_time_3" milliseconds
    And I should see field "locators.locator_litlegroup_dd_inpeople"


@test13
Scenario: Verify user is able to filter by title group in the prospect finder-people screen and verify data in profile screen.
    And I hover on "locators.locator_litlegroup_dd_inpeople"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_litlegroup_dd_inpeople_CEO"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filter_box_glocator_filter_box_rank_ceo"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario: Verify user is able to filter by title group in the prospect finder-insight screen and verify data in profile screen.
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_filter_box_glocator_filter_box_rank_ceo"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario: Verify user is able to filter by title group in the prospect finder-event screen and verify data in profile screen.
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filter_box_glocator_filter_box_rank_ceo"
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario: Verify user is able to close title group label filter by clicking on close button in the label.
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_filter_box_glocator_filter_box_rank_ceo"
    And I wait "testdata.testdata_time_8" milliseconds
    And I check "locators.locator_filter_box_glocator_filter_box_rank_ceo" not present  
    And I wait "testdata.testdata_time_3" milliseconds

@test13
Scenario: Verify user is able to  clear title group filter by clicking on clear button.
    And I hover on "locators.locator_litlegroup_dd_inpeople"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_litlegroup_dd_inpeople_CEO"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filter_box_glocator_filter_box_rank_ceo" not present  
    And I wait "testdata.testdata_time_3" milliseconds


@test13
Scenario: Verify user is able to filter by previous company in the prospect finder-people screen and verify data in profile screen.
    And I enter "testdata.testdata_company_name" in "locators.locator_previous_company_peoplescreen"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_previous_comany_people_google"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filter_box_previous_cmpny_google"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario: Verify user is able to filter by previous company name in the prospect finder-insight screen and verify data in profile screen.
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_filter_box_previous_cmpny_google"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is not able to see result of filter by previous company in the prospect finder-event screen and verify data in profile screen.
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I check "locators.locator_filter_box_previous_cmpny_google" not present  
    And I wait "testdata.testdata_time_5" milliseconds




@test13
Scenario: Verify user is able to close previous company name label filter by clicking on close button in the label.
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_filter_box_previous_cmpny_google"
    And I wait "testdata.testdata_time_8" milliseconds
    And I check "locators.locator_filter_box_previous_cmpny_google" not present  
    And I wait "testdata.testdata_time_3" milliseconds

@test13
Scenario: Verify user is able to  clear previous company name filter by clicking on clear button.
    And I enter "testdata.testdata_company_name" in "locators.locator_previous_company_peoplescreen"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_previous_comany_people_google"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filter_box_previous_cmpny_google" not present  
    And I wait "testdata.testdata_time_3" milliseconds

    And I refresh
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_avanced_search_professional_attr"
    And I wait "testdata.testdata_time_3" milliseconds

    ########################################
    
@test13
Scenario: Verify user is able to filter by industry in the prospect finder-people screen and verify data in profile screen.
    And I hover on "locators.locator_industry_dd_people_filter"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_accounting_in_dd_people"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filter_box_accounting_google"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario: Verify user is able to filter by industry in the prospect finder-insight screen and verify data in profile screen.
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_filter_box_accounting_google"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario: Verify user is able to filter by industry in the prospect finder-event screen and verify data in profile screen.
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filter_box_accounting_google"
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario: Verify user is able to close industry label filter by clicking on close button in the label.
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_filter_box_accounting_google"
    And I wait "testdata.testdata_time_8" milliseconds
    And I check "locators.locator_filter_box_accounting_google" not present  
    And I wait "testdata.testdata_time_3" milliseconds

@test13
Scenario: Verify user is able to  clear industry filter by clicking on clear button.
    And I hover on "locators.locator_industry_dd_people_filter"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_accounting_in_dd_people"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filter_box_accounting_google" not present  
    And I wait "testdata.testdata_time_3" milliseconds

    And I refresh
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_avanced_search_professional_attr"
    And I wait "testdata.testdata_time_3" milliseconds

    
@test13
Scenario: Verify user is able to filter by Company Viability in the prospect finder-people screen and verify data in profile screen.
    And I hover on "locators.locator_company_viability_dd_people_filter"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_veryHigh_in_dd_people"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filter_box_viabilty_high"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario: Verify user is able to filter by Company Viability in the prospect finder-insight screen and verify data in profile screen.
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_filter_box_viabilty_high"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario: Verify user is not able to filter by Company Viability in the prospect finder-event screen and verify data in profile screen.
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I check "locators.locator_filter_box_viabilty_high" not present  
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario: Verify user is able to close Company Viability label filter by clicking on close button in the label.
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_filter_box_viabilty_high"
    And I wait "testdata.testdata_time_8" milliseconds
    And I check "locators.locator_filter_box_viabilty_high" not present  
    And I wait "testdata.testdata_time_3" milliseconds

@test13
Scenario: Verify user is able to  clear industry filter by clicking on clear button.
    And I hover on "locators.locator_company_viability_dd_people_filter"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_veryHigh_in_dd_people"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filter_box_viabilty_high" not present  
    And I wait "testdata.testdata_time_3" milliseconds



    #########################
    #########################
    

    ########################################
    
@test13
Scenario: Verify user is able to filter by company head count in the prospect finder-people screen and verify data in profile screen.
    And I refresh
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_avanced_search_professional_attr"
    And I wait "testdata.testdata_time_3" milliseconds
    And I hover on "locators.locator_cmpny_headcount_dd_people_filter"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_headcount_1_10_pepfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filter_box_headcount_1_10"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario: Verify user is able to filter by company head count in the prospect finder-insight screen and verify data in profile screen.
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_filter_box_headcount_1_10"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario: Verify user is not able to filter by company head count in the prospect finder-event screen and verify data in profile screen.
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I check "locators.locator_filter_box_headcount_1_10" not present  
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario: Verify user is able to close company head count label filter by clicking on close button in the label.
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_filter_box_headcount_1_10"
    And I wait "testdata.testdata_time_8" milliseconds
    And I check "locators.locator_filter_box_headcount_1_10" not present  
    And I wait "testdata.testdata_time_3" milliseconds

@test13
Scenario: Verify user is able to  clear company head count filter by clicking on clear button.
    And I hover on "locators.locator_cmpny_headcount_dd_people_filter"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_headcount_1_10_pepfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filter_box_headcount_1_10" not present  
    And I wait "testdata.testdata_time_3" milliseconds

   

  
@test13
Scenario: Verify user is able to filter by company type  in the prospect finder-people screen and verify data in profile screen.
    And I refresh
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_avanced_search_professional_attr"
    And I wait "testdata.testdata_time_3" milliseconds
    And I hover on "locators.locator_cmpny_type_dd_people_filter"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_companytype_public_pepfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filter_box_cmpny_type"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario: Verify user is able to filter by company type  in the prospect finder-insight screen and verify data in profile screen.
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_filter_box_cmpny_type"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario: Verify user is not able to filter by company type  in the prospect finder-event screen and verify data in profile screen.
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I check "locators.locator_filter_box_cmpny_type" not present  
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario: Verify user is able to close company type  label filter by clicking on close button in the label.
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_filter_box_cmpny_type"
    And I wait "testdata.testdata_time_8" milliseconds
    And I check "locators.locator_filter_box_cmpny_type" not present  
    And I wait "testdata.testdata_time_3" milliseconds

@test13
Scenario: Verify user is able to  clear company type  filter by clicking on clear button.
    And I hover on "locators.locator_cmpny_type_dd_people_filter"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_companytype_public_pepfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filter_box_cmpny_type" not present  
    And I wait "testdata.testdata_time_3" milliseconds

    And I refresh
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_avanced_search_professional_attr"
    And I wait "testdata.testdata_time_3" milliseconds



    #########################
    #########################
    

    ########################################
    
@test13
Scenario: Verify user is able to filter by Inferred income in the prospect finder-people screen and verify data in profile screen.
    And I refresh
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_avanced_search_professional_attr"
    And I wait "testdata.testdata_time_3" milliseconds
    And I hover on "locators.locator_inferred_income_dd_people_filter"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_inferred_income_dd_people_0_100"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filter_box_InferredIncome_1_10"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario: Verify user is able to filter by Inferred income in the prospect finder-insight screen and verify data in profile screen.
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_filter_box_InferredIncome_1_10"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario: Verify user is able to filter by Inferred income in the prospect finder-event screen and verify data in profile screen.
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filter_box_InferredIncome_1_10"
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario: Verify user is able to close Inferred income label filter by clicking on close button in the label.
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_filter_box_InferredIncome_1_10"
    And I wait "testdata.testdata_time_8" milliseconds
    And I check "locators.locator_filter_box_InferredIncome_1_10" not present  
    And I wait "testdata.testdata_time_3" milliseconds

@test13
Scenario: Verify user is able to  clear Inferred income filter by clicking on clear button.
    And I hover on "locators.locator_inferred_income_dd_people_filter"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_inferred_income_dd_people_0_100"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filter_box_InferredIncome_1_10" not present  
    And I wait "testdata.testdata_time_3" milliseconds

   

  
@test13
Scenario: Verify user is able to filter by wealth segment  in the prospect finder-people screen and verify data in profile screen.
    And I refresh
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_avanced_search_professional_attr"
    And I wait "testdata.testdata_time_3" milliseconds
    And I hover on "locators.locator_Wealth_Segment_dd_people_filter"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_wealth_segment100_dd_people_0_100"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filter_box_wealth_segment100"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario: Verify user is able to filter by wealth segment  in the prospect finder-insight screen and verify data in profile screen.
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_filter_box_wealth_segment100"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario: Verify user is able to filter by wealth segment in the prospect finder-event screen and verify data in profile screen.
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filter_box_wealth_segment100"
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario: Verify user is able to close wealth segment label filter by clicking on close button in the label.
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_filter_box_wealth_segment100"
    And I wait "testdata.testdata_time_8" milliseconds
    And I check "locators.locator_filter_box_wealth_segment100" not present  
    And I wait "testdata.testdata_time_3" milliseconds

@test13
Scenario: Verify user is able to  clear wealth segment filter by clicking on clear button.
    And I hover on "locators.locator_Wealth_Segment_dd_people_filter"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_wealth_segment100_dd_people_0_100"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filter_box_wealth_segment100" not present  
    And I wait "testdata.testdata_time_3" milliseconds

    
#####

@test13
Scenario: Verify user is able to minimize profettional attributes filter section.
    And I clicked "locators.locator_professional_attribute_min"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check "locators.locator_Wealth_Segment_dd_people_filter" not present  


@test13
Scenario: Verify user is able to maximize management changes attributes filter section.
    And I clicked "locators.locator_managementchanges_attribute_min"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_managementchanges_startdate"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario: Verify user is see date picker and able to choose date
    And I hover on "locators.locator_managementchanges_startdate"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_date_previous_icon"
    And I wait "testdata.testdata_time_5" milliseconds
     And I clicked "locators.locator_start_date_1"
    And I wait "testdata.testdata_time_1" milliseconds
     And I clicked "locators.locator_end_date_1"
    And I wait "testdata.testdata_time_1" milliseconds


    
  
@test13
Scenario: Verify user is able to  filter by management start and end date in the people screen and verify filter label name in profile screen.
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filter_box_management_date"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario: Verify user is able to filter by management start and end date in the prospect finder-insight screen and verify filter label name in profile screen.
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_filter_box_management_date"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario: Verify user is able to filter by management start and end date in the prospect finder-event screen and verify filter label name in profile screen.
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I check "locators.locator_filter_box_management_date" not present  
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario: Verify user is able to close management changes label filter by clicking on close button in the label.
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_filter_box_management_date"
    And I wait "testdata.testdata_time_8" milliseconds
    And I check "locators.locator_filter_box_management_date" not present  
    And I wait "testdata.testdata_time_3" milliseconds

@test13
Scenario: Verify user is able to clear management changes filter by clicking on clear button.
    And I hover on "locators.locator_managementchanges_startdate"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_date_previous_icon"
    And I wait "testdata.testdata_time_5" milliseconds
     And I clicked "locators.locator_start_date_1"
    And I wait "testdata.testdata_time_1" milliseconds
     And I clicked "locators.locator_end_date_1"
    And I wait "testdata.testdata_time_1" milliseconds
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filter_box_management_date" not present  
    And I wait "testdata.testdata_time_3" milliseconds

