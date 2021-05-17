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
Scenario: Verify the user is able to see error validation message while saving a propect filter without entering name 
    And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_house_hold_save_close"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I should see field "locators.locator_prospectfilter_name_missing"
@test132
Scenario:Verify user is able to create filter to check wealth segment count where wealth segment is Mass Market: <$100k.

    And I enter "testdata.testdata_wealthsegment1_name" in "locators.locator_prospectprofile_name"
    And I clicked "locators.locator_filter_moneyinmotion_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_oneMonth"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_professional_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I hover on "locator.locator_filter_wealthSegmentdd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_welthsegment_less100k"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_emailalert_checkbox"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_house_hold_save_close"
    And I wait "testdata.testdata_time_8" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_Wealthsegment1_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_auto_Wealthsegment1"
    And I wait "testdata.testdata_time_8" milliseconds




@test132
Scenario:Verify user is able to see filter result wealth segment as  Mass Market: <$100k in Peoples's profile screeen
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_welthsegment_less100k_profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

@test132
Scenario:Verify the user is able to see filter result wealth segment as  Mass Market: <$100k in profile of event's screen
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_welthsegment_less100k_profile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test132
Scenario:Verify user is able to see filter result wealth segment as  Mass Market: <$100k  in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_welthsegment_less100k_profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds





@test132
Scenario:Verify user is able to see wealth segment as  Mass Market: <$100k  on the top of the  listing after selecting wealth segment from dropdown 
    And I click on "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_wealthsegment"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_welthsegment_less100k_dd"

@test132
Scenario:Verify user is able to see both wealth segment as  Mass Market: <$100k  in insight and people screen are same where group by dropdown selected as wealth segment    
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_welthsegment_less100k_dd" in "locators.locator_company_count_verify"

@test132
Scenario:Verify user is able to see people screen while clicking on  Mass Market: <$100k's count in the insight screen 
    And I should see field "locators.locatorpeopletab"



@test132
Scenario:Verify user is able to delete created filter for wealth segment as  Mass Market: <$100k 
    And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_Wealthsegment1_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_autoWealthsegment1_edit"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_delete"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_delete_ok_popup"
    And I wait "testdata.testdata_time_5" milliseconds


##

@test132
Scenario:Verify user is able to create filter to check wealth segment  count where  wealth segment is Middle Market: $100k-$500k.
     And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I enter "testdata.testdata_wealthsegment2_name" in "locators.locator_prospectprofile_name"
    And I clicked "locators.locator_filter_moneyinmotion_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_oneMonth"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_professional_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locator.locator_filter_wealthSegmentdd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_welthsegment_100kto500k"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_emailalert_checkbox"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_house_hold_save_close"
    And I wait "testdata.testdata_time_8" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_Wealthsegment2_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_auto_Wealthsegment2"
    And I wait "testdata.testdata_time_8" milliseconds
    


@test132
Scenario:Verify user is able to see filter result wealth segment is Middle Market: $100k-$500k in Peoples's profile screeen
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I refresh
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_welthsegment_100kto500k_profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

@test132
Scenario:Verify the user is able to see filter result wealth segment is Middle Market: $100k-$500k in profile of event's screen
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_welthsegment_100kto500k_profile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test132
Scenario:Verify user is able to see filter result wealth segment is Middle Market: $100k-$500k  in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_welthsegment_100kto500k_profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds





@test132
Scenario:Verify user is able to see wealth segment as Middle Market: $100k-$500k  on the top of the  listing after selecting wealth segment from dropdown 
    And I click on "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_wealthsegment"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_welthsegment_100kto500_dd"

@test132
Scenario:Verify user is able to see both wealth segment as Middle Market: $100k-$500k  in insight and people screen are same where group by dropdown selected as wealth segment  
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_welthsegment_100kto500_dd" in "locators.locator_company_count_verify"

@test132
Scenario:Verify user is able to see people screen while clicking on Middle Market: $100k-$500k's count in the insight screen 
    And I should see field "locators.locatorpeopletab"


@test132
Scenario:Verify user is able to delete created filter for wealth segment as  Middle Market: $100k-$500k 
    And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_Wealthsegment2_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_autoWealthsegment2_edit"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_delete"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_delete_ok_popup"
    And I wait "testdata.testdata_time_5" milliseconds





##

@test132
Scenario:Verify user is able to create filter to check wealth segment  count where  wealth segment is Mass-Affluent Market: $500k-$2m.
    And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I enter "testdata.testdata_wealthsegment3_name" in "locators.locator_prospectprofile_name"
    And I clicked "locators.locator_filter_moneyinmotion_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_oneMonth"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_professional_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locator.locator_filter_wealthSegmentdd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_welthsegment_500kto2m"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_emailalert_checkbox"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_house_hold_save_close"
    And I wait "testdata.testdata_time_8" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_Wealthsegment3_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_auto_Wealthsegment3"
    And I wait "testdata.testdata_time_8" milliseconds
    
   
   



@test132
Scenario:Verify user is able to see filter result wealth segment as Mass-Affluent Market: $500k-$2m in Peoples's profile screeen
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I refresh
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_welthsegment_500kto2M_profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

@test132
Scenario:Verify the user is able to see filter result wealth segment as Mass-Affluent Market: $500k-$2m in profile on event's screen
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_welthsegment_500kto2M_profile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test1
Scenario:Verify user is able to see filter result wealth segment is Mass-Affluent Market: $500k-$2m  in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    And I refresh
    And I wait "testdata.testdata_time_20" milliseconds
        And I wait "testdata.testdata_time_20" milliseconds

    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_welthsegment_500kto2M_profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds





@test132
Scenario:Verify user is able to see wealth segment as Mass-Affluent Market: $500k-$2m  on the top of the  listing after selecting wealth segment from dropdown 
    #And I click on "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_wealthsegment"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_welthsegment_500kto2m_dd"

@test132
Scenario:Verify user is able to see both wealth segment as Mass-Affluent Market: $500k-$2m  in insight and people screen are same where group by dropdown selected as wealth segment   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_welthsegment_500kto2m_dd" in "locators.locator_company_count_verify"

@test132
Scenario:Verify user is able to see people screen while clicking on wealth segment (Mass-Affluent Market: $500k-$2M) in the insight screen 
    And I should see field "locators.locatorpeopletab"

@test132
Scenario:Verify user is able to delete created filter for wealth segment as  Mass-Affluent Market: $500k-$2m 
    And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_Wealthsegment3_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_autoWealthsegment3_edit"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_delete"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_delete_ok_popup"
    And I wait "testdata.testdata_time_5" milliseconds




@test13
Scenario:Verify user is able to create filter to check wealth segment  count where  wealth segment is Mass-Affluent Market: $500k-$2m.
    
@test132
Scenario:Verify user is able to create filter to check wealth segment  count where  wealth segment is Mass-Affluent Market: $500k-$2m.
    And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I enter "testdata.testdata_wealthsegment4_name" in "locators.locator_prospectprofile_name"
    And I clicked "locators.locator_filter_moneyinmotion_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_oneMonth"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_professional_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locator.locator_filter_wealthSegmentdd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_welthsegment_2mto5m"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_emailalert_checkbox"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_house_hold_save_close"
    And I wait "testdata.testdata_time_8" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_Wealthsegment4_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_auto_Wealthsegment4"
    And I wait "testdata.testdata_time_8" milliseconds
    
    



@test132
Scenario:Verify user is able to see filter result wealth segment as Mass-Affluent Market: $500k-$2m in Peoples's profile screeen
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I refresh
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_welthsegment_2mto5m_profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

@test132
Scenario:Verify the user is able to see filter result wealth segment as Mass-Affluent Market: $500k-$2m in profile on event's screen
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_welthsegment_2mto5m_profile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test132
Scenario:Verify user is able to see filter result wealth segment is Mass-Affluent Market: $500k-$2m  in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    #And I refresh
    #And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_welthsegment_2mto5m_profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds





@test132
Scenario:Verify user is able to see wealth segment as Mass-Affluent Market: $500k-$2m  on the top of the  listing after selecting wealth segment from dropdown 
    And I click on "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_wealthsegment"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_welthsegment_2mto5m_dd"

@test132
Scenario:Verify user is able to see both wealth segment as Mass-Affluent Market: $500k-$2m  in insight and people screen are same where group by dropdown selected as wealth segment   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_welthsegment_2mto5m_dd" in "locators.locator_company_count_verify"

@test132
Scenario:Verify user is able to see people screen while clicking on wealth segment (Mass-Affluent Market: $500k-$2M) in the insight screen 
    And I should see field "locators.locatorpeopletab"



@test132
Scenario:Verify user is able to delete created filter for wealth segment as  Mass-Affluent Market: $500k-$2m 
    And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_Wealthsegment4_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_autoWealthsegment4_edit"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_delete"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_delete_ok_popup"
    And I wait "testdata.testdata_time_5" milliseconds

##


@test132
Scenario:Verify user is able to create filter to check wealth segment  count where  wealth segment is Mass-Affluent Market: $500k-$2m.
     And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I enter "testdata.testdata_wealthsegment5_name" in "locators.locator_prospectprofile_name"
    And I clicked "locators.locator_filter_moneyinmotion_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_oneMonth"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_professional_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locator.locator_filter_wealthSegmentdd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_welthsegment_5mto10m"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_emailalert_checkbox"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_house_hold_save_close"
    And I wait "testdata.testdata_time_8" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_Wealthsegment5_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_auto_Wealthsegment5"
    And I wait "testdata.testdata_time_8" milliseconds
    
    
    



@test132
Scenario:Verify user is able to see filter result wealth segment as Mass-Affluent Market: $500k-$2m in Peoples's profile screeen
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I refresh
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_welthsegment_5mto10m_profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

@test132
Scenario:Verify the user is able to see filter result wealth segment as Mass-Affluent Market: $500k-$2m in profile on event's screen
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_welthsegment_5mto10m_profile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test132
Scenario:Verify user is able to see filter result wealth segment is Mass-Affluent Market: $500k-$2m  in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    #And I refresh
    #And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_welthsegment_5mto10m_profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds





@test132
Scenario:Verify user is able to see wealth segment as Mass-Affluent Market: $500k-$2m  on the top of the  listing after selecting wealth segment from dropdown 
    And I click on "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_wealthsegment"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_welthsegment_5mto10m_dd"

@test132
Scenario:Verify user is able to see both wealth segment as Mass-Affluent Market: $500k-$2m  in insight and people screen are same where group by dropdown selected as wealth segment   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_welthsegment_5mto10m_dd" in "locators.locator_company_count_verify"

@test132
Scenario:Verify user is able to see people screen while clicking on wealth segment (Mass-Affluent Market: $500k-$2M) in the insight screen 
    And I should see field "locators.locatorpeopletab"



@test132
Scenario:Verify user is able to delete created filter forwealth segment (Mass-Affluent Market: $500k-$2M)
    And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_Wealthsegment5_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_autoWealthsegment5_edit"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_delete"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_delete_ok_popup"
    And I wait "testdata.testdata_time_5" milliseconds


@test132
Scenario:Verify user is able to create filter to check wealth segment  count where  wealth segment is Mass-Affluent Market: $500k-$2m.
     And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I enter "testdata.testdata_wealthsegment6_name" in "locators.locator_prospectprofile_name"
    And I clicked "locators.locator_filter_moneyinmotion_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_oneMonth"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_professional_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locator.locator_filter_wealthSegmentdd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_welthsegment_10mto20m"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_emailalert_checkbox"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_house_hold_save_close"
    And I wait "testdata.testdata_time_8" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_Wealthsegment6_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_auto_Wealthsegment6"
    And I wait "testdata.testdata_time_8" milliseconds
   




@test132
Scenario:Verify user is able to see filter result wealth segment as Mass-Affluent Market: $500k-$2m in Peoples's profile screeen
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I refresh
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_welthsegment_10mto20m_profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

@test132
Scenario:Verify the user is able to see filter result wealth segment as Mass-Affluent Market: $500k-$2m in profile on event's screen
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_welthsegment_10mto20m_profile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test132
Scenario:Verify user is able to see filter result wealth segment is Mass-Affluent Market: $500k-$2m  in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    #And I wait "testdata.testdata_time_20" milliseconds
    #And I refresh
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_welthsegment_10mto20m_profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds





@test132
Scenario:Verify user is able to see wealth segment as Mass-Affluent Market: $500k-$2m  on the top of the  listing after selecting wealth segment from dropdown 
    And I click on "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_wealthsegment"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_welthsegment_10mto20m_dd"

@test132
Scenario:Verify user is able to see both wealth segment as Mass-Affluent Market: $500k-$2m  in insight and people screen are same where group by dropdown selected as wealth segment   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_welthsegment_10mto20m_dd" in "locators.locator_company_count_verify"

@test132
Scenario:Verify user is able to see people screen while clicking on wealth segment (Mass-Affluent Market: $500k-$2M) in the insight screen 
    And I should see field "locators.locatorpeopletab"



@test132
Scenario:Verify user is able to delete created filter forwealth segment (Mass-Affluent Market: $10m-$20M)
    And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_Wealthsegment6_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_autoWealthsegment6_edit"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_delete"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_delete_ok_popup"
    And I wait "testdata.testdata_time_5" milliseconds




##02032021


@test132
Scenario:Verify user is able to create filter to check wealth segment  count where  wealth segment is Ultra-High Wealth Market: $20m-$1b.
      And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I enter "testdata.testdata_wealthsegment7_name" in "locators.locator_prospectprofile_name"
    And I clicked "locators.locator_filter_moneyinmotion_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_oneMonth"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_professional_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locator.locator_filter_wealthSegmentdd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_welthsegment_20mto1b"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_emailalert_checkbox"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_house_hold_save_close"
    And I wait "testdata.testdata_time_8" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_Wealthsegment7_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_auto_Wealthsegment7"
    And I wait "testdata.testdata_time_8" milliseconds
   
    


@test132
Scenario:Verify user is able to see filter result wealth segment as Ultra-High Wealth Market: $20m-$1b in Peoples's profile screeen
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I refresh
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_welthsegment_20mto1b_profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

@test132
Scenario:Verify the user is able to see filter result wealth segment as Ultra-High Wealth Market: $20m-$1b in profile on event's screen
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_welthsegment_20mto1b_profile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test132
Scenario:Verify user is able to see filter result wealth segment is Ultra-High Wealth Market: $20m-$1b  in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    #And I wait "testdata.testdata_time_20" milliseconds
    #And I refresh
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_welthsegment_20mto1b_profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds





@test132
Scenario:Verify user is able to see wealth segment as Ultra-High Wealth Market: $20m-$1b  on the top of the  listing after selecting wealth segment from dropdown 
    And I click on "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_wealthsegment"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_welthsegment_20mto1b_dd"

@test132
Scenario:Verify user is able to see both wealth segment as Ultra-High Wealth Market: $20m-$1b  in insight and people screen are same where group by dropdown selected as wealth segment   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_welthsegment_20mto1b_dd" in "locators.locator_company_count_verify"

@test132
Scenario:Verify user is able to see people screen while clicking on wealth segment (Ultra-High Wealth Market: $20m-$1b) in the insight screen 
    And I should see field "locators.locatorpeopletab"



@test132
Scenario:Verify user is able to delete created filter for wealth segment (Ultra-High Wealth Market: $20m-$1b)
    And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_Wealthsegment7_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_autoWealthsegment7_edit"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_delete"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_delete_ok_popup"
    And I wait "testdata.testdata_time_5" milliseconds




@test132
Scenario:Verify user is able to create filter to check wealth segment  count where  wealth segment is Billionaire Wealth Market: >$1b.
    And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I enter "testdata.testdata_wealthsegment8_name" in "locators.locator_prospectprofile_name"
    And I clicked "locators.locator_filter_moneyinmotion_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_oneMonth"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_professional_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locator.locator_filter_wealthSegmentdd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_welthsegment_1b"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_emailalert_checkbox"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_house_hold_save_close"
    And I wait "testdata.testdata_time_8" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_Wealthsegment8_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_auto_Wealthsegment8"
    And I wait "testdata.testdata_time_8" milliseconds
   



@test132
Scenario:Verify user is able to see filter result wealth segment as Billionaire Wealth Market: >$1b in Peoples's profile screeen
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I refresh
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_welthsegment_1b_profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

@test132
Scenario:Verify the user is able to see filter result wealth segment as Billionaire Wealth Market: >$1b in profile on event's screen
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_welthsegment_1b_profile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test132
Scenario:Verify user is able to see filter result wealth segment is Billionaire Wealth Market: >$1b  in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    #And I wait "testdata.testdata_time_20" milliseconds
    #And I refresh
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_welthsegment_1b_profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds





@test132
Scenario:Verify user is able to see wealth segment as Billionaire Wealth Market: >$1b  on the top of the  listing after selecting wealth segment from dropdown 
    And I click on "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_wealthsegment"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_welthsegment_1b_dd"

@test132
Scenario:Verify user is able to see both wealth segment asBillionaire Wealth Market: >$1b  in insight and people screen are same where group by dropdown selected as wealth segment   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_welthsegment_1b_dd" in "locators.locator_company_count_verify"

@test132
Scenario:Verify user is able to see people screen while clicking on wealth segment (Billionaire Wealth Market: >$1b) in the insight screen 
    And I should see field "locators.locatorpeopletab"


@test132
Scenario:Verify user is able to delete created filter for Billionaire Wealth Market: >$1b
    And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_Wealthsegment8_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_autoWealthsegment8_edit"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_delete"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_delete_ok_popup"
    And I wait "testdata.testdata_time_5" milliseconds


