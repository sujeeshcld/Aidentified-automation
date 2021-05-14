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
Scenario: Verify user is able to navigate to create new filter screen by clicking on  create prospect filter dropdown option in the relation inteligence screen
    And I click on "locators.locator_filter_timeframedd_All_selectedin_RI"
    And I wait "testdata.testdata_time_5" milliseconds 
    #And I mouse hover on "locators.locator_create_new_filter_timeframedd_All_selectedin_RI"
    #And I wait "testdata.testdata_time_3" milliseconds 
    #And I click on "locators.locator_create_new_filter_timeframedd_All_selectedin_RI"
    #And I wait "testdata.testdata_time_3" milliseconds 
    And I click on "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 

    And I should see field "locators.locator_prospect_filter_create_screen"
    And I wait "testdata.testdata_time_3" milliseconds 

@test13
Scenario: Verifyuser is able to see apply email alert check box is checked defaultly
    And I should see field "locators.locator_apply_todaily_mail_alert_checked"
    And I wait "testdata.testdata_time_3" milliseconds 




@test13
Scenario:Verify user is able to create filter to check event  company in event tab
    And I enter "testdata.testdata_eventname_name" in "locators.locator_prospectprofile_name"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_filter_default_click"
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_oneMonth"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_event_company_name" in "locators.locator_filter_event_company_name"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_event_company_even"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_10" milliseconds

 


@test13
Scenario:Verify user is able to see system opens  RI screen automatically
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    And I should see field "locators.locator_filter_timeframedd_All_selectedin_RI"
    And I wait "testdata.testdata_time_3" milliseconds 




@test13
Scenario:Verify user is able to see event company name in profile From RI screen
    And I enter "testdata.testdata_Sarah_Morgan_name" in "locators.locator_MM_inner_search"
    And I wait "testdata.testdata_time_10" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_company_Even_profilscreen"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario:Verify user is able to see selected event company name shown above the listing table 
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_eventscreen_selected_company_name"


@test13
Scenario:Verify user is able to see event company name in event screen From RI screen 
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_company_Even_profilscreen"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

    
@test13
Scenario:Verify user is able to remove selected event company name by clicking on company name close button which present above the lising table 
    And I clicked "locators.locator_eventscreen_selected_company_close"
    And I wait "testdata.testdata_time_10" milliseconds
    And I check "locators.locator_eventscreen_selected_company_close" not present  
##


@test13
Scenario:Verify user is able to remove selected filter name by cliking on Clear filter button in the event screen 
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I should see field "locators.locator_no_filter_selected_event_tab"

    
@test13
Scenario:Verify user is not able to see clear filter button while cliking on Clear filter button in the event screen
    And I check "locators.locator_prospect_findrer_clearbutton" not present  
    And I wait "testdata.testdata_time_3" milliseconds


@test13
Scenario: Verify user is able to sort by event name in event screen
    And I clicked "locators.locator_event_in_evenet_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check sort order in ascending order "locators.locator_evet_filter_result_eventscreen"



@test13
Scenario: Verify user is able to sort by name in event screen
    And I clicked "locators.locator_Name_in_evenet_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I wait "testdata.testdata_time_3" milliseconds
    And I check sort order in ascending order "locators.locator_Name_filter_result_eventscreen"


@test13
Scenario: Verify user is able to sort by title in event screen
    And I clicked "locators.locator_Title_in_evenet_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I wait "testdata.testdata_time_3" milliseconds
    And I check sort order in ascending order "locators.locator_Title_filter_result_eventscreen"


@test13
Scenario: Verify user is able to sort by Company Name in event screen
    And I clicked "locators.locator_Company_in_evenet_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check sort order in ascending order "locators.locator_Company_filter_result_eventscreen"



@test13
Scenario: Verify user is able to sort by city Name in event screen
    And I clicked "locators.locator_city_in_evenet_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I wait "testdata.testdata_time_3" milliseconds
    And I check sort order in ascending order "locators.locator_City_filter_result_eventscreen"



@test13
Scenario: Verify user is able to sort by State Name in event screen
    And I mouse hover on "locators.locator_event_linkedin_icon"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_STate_in_evenet_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I wait "testdata.testdata_time_3" milliseconds
    And I check sort order in ascending order "locators.locator_State_filter_result_eventscreen"


@test13
Scenario: Verify user is able to sort by  state Name in event screen
    And I clicked "locators.locator_EventSTate_in_evenet_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I wait "testdata.testdata_time_3" milliseconds
    And I check sort order in ascending order "locators.locator_Eventstate_filter_result_eventscreen"




@test13
Scenario: Verify user is able to sort by Age in event screen
    And I clicked "locators.locator_Age_in_evenet_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I wait "testdata.testdata_time_3" milliseconds
    And I check sort order in ascending order "locators.locator_Age_filter_result_eventscreen"

#####


@test13
Scenario: Verify user is able to see manage My FIlter option in  peoples screen
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I hover on "locators.locator_filter_dropdown_people_screen"
    And I wait "testdata.testdata_time_3" milliseconds
    And I should see field "locators.locator_manage_my_filter"
    And I wait "testdata.testdata_time_3" milliseconds
    
@test13
Scenario: Verify user is able to navigate to prospect filter screen by clicking on  manage My FIlter option in the peoples screen
    And I clicked "locators.locator_manage_my_filter"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_prospectfilter_screen"
    And I wait "testdata.testdata_time_3" milliseconds






@test13
Scenario:Verify user is able to create filter with multilple states selected
    And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I enter "testdata.testdata_prospectprofile_name_state1" in "locators.locator_prospectprofile_name"
    And I wait "testdata.testdata_time_3" milliseconds
    
    And I clicked "locators.locator_filter_default_click"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_Saved_filter_Relationship_2nd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I click on "locators.locator_filter_by_state"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_state_AlabamaAL"
    And I clicked "locators.locator_filter_state_AlaskAKcreate"
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_20" milliseconds
    

    
@test13
Scenario:Verify user is able to see sort by name result as ascending order in people screen
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_citysort_people_screen"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check sort order in ascending order "locators.locator_city_sort_filter_result_peoplescreen"


    
@test13
Scenario:Verify user is able to see sort by name result as ascending order in people screen
    And I clicked "locators.locator_Titlesort_people_screen"
    And I wait "testdata.testdata_time_5" milliseconds
        And I wait "testdata.testdata_time_5" milliseconds

    And I check sort order in ascending order "locators.locator_title_sort_filter_result_peoplescreen"

    
@test13
Scenario:Verify user is able to see sort by company result as ascending order in people screen
    And I clicked "locators.locator_Companysort_people_screen"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check sort order in ascending order "locators.locator_Company_sort_filter_result_peoplescreen"

    
@test13
Scenario:Verify user is able to see sort by city result as ascending order in people screen
    And I clicked "locators.locator_citysort_people_screen"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check sort order in ascending order "locators.locator_city_sort_filter_result_peoplescreen"

      
@test13
Scenario:Verify user is able to see sort by state result as ascending order in people screen
    And I clicked "locators.locator_statesort_people_screen"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check sort order in ascending order "locators.locator_state_sort_filter_result_peoplescreen"


    ###
    
      
@test13
Scenario:Verify user is able to clear default filter name by clicking on clear filter button in the people screen
    And I clicked "locators.locator_filtername_clear_button"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check "locators.locator_filtername_clear_button" not present  



@test13
Scenario:Verify user is able to see filter name adter refreshing page(we hae clear it in previous step)
    And I refresh
    And I wait "testdata.testdata_time_10" milliseconds
    #And I check "locators.locator_eventscreen_selected_company_close" not present  
    And I should see field "locators.locator_filtername_clear_button"

    

@test13
Scenario: Verify user is able to sort by event name in event screen
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    And I clicked "locators.locator_event_in_RI_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check sort order in ascending order "locators.locator_evet_filter_result_RIscreen"


@test13
Scenario: Verify user is able to sort by name in event screen
    And I clicked "locators.locator_name_in_RI_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I wait "testdata.testdata_time_3" milliseconds
    And I check sort order in ascending order "locators.locator_name_filter_result_RIscreen"



   


@test13
Scenario: Verify user is able to sort by title in event screen
    And I clicked "locators.locator_title_in_RI_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I wait "testdata.testdata_time_3" milliseconds
    And I check sort order in ascending order "locators.locator_title_filter_result_RIscreen"


@test13
Scenario: Verify user is able to sort by Value in event screen
    And I clicked "locators.locator_value_in_RI_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check sort order in ascending order "locators.locator_value_filter_result_RIscreen"



@test13
Scenario: Verify user is able to sort by Date in event screen
And I refresh
And I wait "testdata.testdata_time_20" milliseconds
    And I clicked "locators.locator_Date_in_RI_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I wait "testdata.testdata_time_3" milliseconds
    And I check sort order in ascending order "locators.locator_DAte_filter_result_RIscreen"


#######

@test13
Scenario: Verify user is able to sort by company in RI screen
    And I clicked "locators.locator_Company_in_RI_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check sort order in ascending order "locators.locator_Company_filter_result_RIscreen"


@test13
Scenario: Verify user is able to sort by city in RI screen
    And I clicked "locators.locator_City_in_RI_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check sort order in ascending order "locators.locator_City_filter_result_RIscreen"


@test13
Scenario: Verify user is able to sort by state in RI screen
    And I clicked "locators.locator_State_in_RI_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check sort order in ascending order "locators.locator_State_filter_result_RIscreen"


@test13
Scenario: Verify user is able to sort by event state in RI screen
    And I clicked "locators.locator_EventState_in_RI_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check sort order in ascending order "locators.locator_EventState_filter_result_RIscreen"


@test13
Scenario: Verify user is able to sort by age in RI screen
    And I clicked "locators.locator_Age_in_RI_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check sort order in ascending order "locators.locator_Age_filter_result_RIscreen"


