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
    And I wait "testdata.testdata_time_5" milliseconds 
    And I click on "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 




@test13
Scenario:Verify user is able to create filter to check event  count where  selected event is IPO Filing
    And I enter "testdata.testdata_eventname_name" in "locators.locator_prospectprofile_name"
    And I wait "testdata.testdata_time_5" milliseconds
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_filter_default_click"
    And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    ##And I click on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_oneMonth"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locator.locator_filter_event_type_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_event_type_ipo_filing"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds
    

@test13
Scenario:Verify user is able to see filter result event as IPO Filing in Peoples's profile screeen
    
     And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    #And I refresh
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_Ipo_in_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario:Verify the user is able to see filter result event as IPO Filing in profile on event's screen
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_Ipo_in_Profile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario:Verify user is able to see filter result event is IPO Filing  in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    #And I refresh
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_Ipo_in_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds





@test13
Scenario:Verify user is able to see event as IPO Filing  on the top of the  listing after selecting event from dropdown 
    And I click on "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_event_in_event_dd"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_event_in_event_IPO_filing"

@test13
Scenario:Verify user is able to see both event as IPO Filing  in insight and people screen are same where group by dropdown selected as event   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_event_in_event_IPO_filing" in "locators.locator_company_count_verify"

@test13
Scenario:Verify user is able to see people screen while clicking on event (IPO Filing) in the insight screen 
    And I should see field "locators.locatorpeopletab"



####



@test13
Scenario:Verify user is able to create filter to check event  count where  selected event is IPO 
      And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I clicked "locators.locator_saved_event_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    ##And I click on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_oneMonth"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locator.locator_filter_event_type_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_event_type_ipo"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds
    

@test13
Scenario:Verify user is able to see filter result event as ipo in Peoples's profile screeen
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    #And I refresh
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_Ipo_in_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario:Verify the user is able to see filter result event as ipo in profile on event's screen
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_Ipo_in_Profile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario:Verify user is able to see filter result event is IPO   in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    #And I refresh
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_Ipo_in_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds





@test13
Scenario:Verify user is able to see event as IPO  on the top of the  listing after selecting ipo from dropdown 
    And I click on "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_event_in_event_dd"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_event_in_event_IPO"

@test13
Scenario:Verify user is able to see both eventas ipo  in insight and people screen are same where group by dropdown selected as event   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_event_in_event_IPO" in "locators.locator_company_count_verify"

@test13
Scenario:Verify user is able to see people screen while clicking on event (ipo) in the insight screen 
    And I should see field "locators.locatorpeopletab"




#######15032021.




####



@test13
Scenario:Verify user is able to create filter to check event  count where  selected event is IPO Lock-Up Expiring Soon
      And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I clicked "locators.locator_saved_event_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    ##And I click on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locator.locator_filter_event_type_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_eventtype_exp_soon"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds
    

@test13
Scenario:Verify user is able to see filter result event as (IPO Lock-Up Expiring Soon) in Peoples's profile screeen
     And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    #And I refresh
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_lockup_expsoon_in_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario:Verify the user is able to see filter result event as (IPO Lock-Up Expiring Soon) in profile on event's screen
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_lockup_expsoon_in_Profile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario:Verify user is able to see filter result event is (IPO Lock-Up Expiring Soon)   in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    #And I refresh
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_lockup_expsoon_in_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds





@test13
Scenario:Verify user is able to see event as (IPO Lock-Up Expiring Soon)  on the top of the  listing after selecting event from dropdown 
    And I click on "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_event_in_event_dd"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_event_in_event_expsoon"

@test13
Scenario:Verify user is able to see both eventas (IPO Lock-Up Expiring Soon)  in insight and people screen are same where group by dropdown selected as event   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_event_in_event_expsoon" in "locators.locator_company_count_verify"

@test13
Scenario:Verify user is able to see people screen while clicking on event (IPO Lock-Up Expiring Soon)in the insight screen 
    And I should see field "locators.locatorpeopletab"





@test13
Scenario:Verify user is able to create filter to check event  count where  selected event is (IPO Lock-Up Expired)
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_saved_event_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
   # And I click on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locator.locator_filter_event_type_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_eventtype_exp"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds
    

@test13
Scenario:Verify user is able to see filter result event as (IPO Lock-Up Expired) in Peoples's profile screeen
     And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    #And I refresh
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_lockup_exp_in_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario:Verify the user is able to see filter result event as (IPO Lock-Up Expired) in profile on event's screen
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_lockup_exp_in_Profile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario:Verify user is able to see filter result event is (IPO Lock-Up Expired)   in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    #And I refresh
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_lockup_exp_in_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds





@test13
Scenario:Verify user is able to see event as (IPO Lock-Up Expired)  on the top of the  listing after selecting event from dropdown 
    And I click on "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_event_in_event_dd"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_event_in_event_exped"

@test13
Scenario:Verify user is able to see both eventas (IPO Lock-Up Expired)  in insight and people screen are same where group by dropdown selected as event   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_event_in_event_exped" in "locators.locator_company_count_verify"

@test13
Scenario:Verify user is able to see people screen while clicking on event (IPO Lock-Up Expired) in the insight screen 
    And I should see field "locators.locatorpeopletab"







@test13
Scenario:Verify user is able to create filter to check event  count where  selected event is (Insider Stock Sale )
      And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I clicked "locators.locator_saved_event_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    #And I click on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locator.locator_filter_event_type_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_eventtype_insidestocksales"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds
    

@test13
Scenario:Verify user is able to see filter result event as (Insider Stock Sale ) in Peoples's profile screeen
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    #And I refresh
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_lockup_insidestocksales_in_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario:Verify the user is able to see filter result event as (Insider Stock Sale ) in profile on event's screen
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_lockup_insidestocksales_in_Profile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario:Verify user is able to see filter result event is (Insider Stock Sale )   in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    #And I refresh
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_lockup_insidestocksales_in_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds





@test13
Scenario:Verify user is able to see event as (Insider Stock Sale )  on the top of the  listing after selecting event from dropdown 
    And I click on "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_event_in_event_dd"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_event_in_event_insidestocksales"

@test13
Scenario:Verify user is able to see both eventas (Insider Stock Sale )  in insight and people screen are same where group by dropdown selected as event   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_event_in_event_insidestocksales" in "locators.locator_company_count_verify"

@test13
Scenario:Verify user is able to see people screen while clicking on event (Insider Stock Sale ) in the insight screen 
    And I should see field "locators.locatorpeopletab"



##

@test13
Scenario:Verify user is able to create filter to check event  count where  selected event is (Insider Stock Acquisition )
      And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I clicked "locators.locator_saved_event_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    #And I click on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locator.locator_filter_event_type_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_eventtype_Insider_Stock_Acquisition"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds
    

@test13
Scenario:Verify user is able to see filter result event as (Insider Stock Acquisition ) in Peoples's profile screeen
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    #And I refresh
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_lockup_Insider_Stock_Acquisition_in_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario:Verify the user is able to see filter result event as (Insider Stock Acquisition ) in profile on event's screen
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_lockup_Insider_Stock_Acquisition_in_Profile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario:Verify user is able to see filter result event is (Insider Stock Acquisition )   in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    #And I refresh
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_lockup_Insider_Stock_Acquisition_in_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds





@test13
Scenario:Verify user is able to see event as (Insider Stock Acquisition)  on the top of the  listing after selecting event from dropdown 
    And I click on "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_event_in_event_dd"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_event_in_event_Insider_Stock_Acquisition"

@test13
Scenario:Verify user is able to see both eventas (Insider Stock Acquisition)  in insight and people screen are same where group by dropdown selected as event   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_event_in_event_Insider_Stock_Acquisition" in "locators.locator_company_count_verify"

@test13
Scenario:Verify user is able to see people screen while clicking on event (Insider Stock Acquisition) in the insight screen 
    And I should see field "locators.locatorpeopletab"




@test13
Scenario:Verify user is able to create filter to check event  count where  selected event is (Insider Stock Purchase)
      And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I clicked "locators.locator_saved_event_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    #And I click on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locator.locator_filter_event_type_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_eventtype_Insider_Stock_Purchase"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds
    

@test13
Scenario:Verify user is able to see filter result event as (Insider Stock Purchase) in Peoples's profile screeen
     And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    #And I refresh
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_lockup_Insider_Stock_Purchase_in_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario:Verify the user is able to see filter result event as (Insider Stock Purchase) in profile on event's screen
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_lockup_Insider_Stock_Purchase_in_Profile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario:Verify user is able to see filter result event is (Insider Stock Purchase)   in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    #And I refresh
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_lockup_Insider_Stock_Purchase_in_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds





@test13
Scenario:Verify user is able to see event as (Insider Stock Purchase)  on the top of the  listing after selecting event from dropdown 
    And I click on "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_event_in_event_dd"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_event_in_event_Insider_Stock_Purchase"

@test13
Scenario:Verify user is able to see both eventas (Insider Stock Purchase)  in insight and people screen are same where group by dropdown selected as event   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_event_in_event_Insider_Stock_Purchase" in "locators.locator_company_count_verify"

@test13
Scenario:Verify user is able to see people screen while clicking on event (Insider Stock Purchase) in the insight screen 
    And I should see field "locators.locatorpeopletab"



######17_03_2021




@test13
Scenario:Verify user is able to create filter to check event  count where  selected event is (Insider Stock Purchase)
      And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I clicked "locators.locator_saved_event_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    #And I click on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locator.locator_filter_event_type_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_eventtype_Company_Acquired"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds
    

@test13
Scenario:Verify user is able to see filter result event as (Company Acquired) in Peoples's profile screeen
     And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    #And I refresh
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_lockup_Company_Acquired_in_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario:Verify the user is able to see filter result event as (Company Acquired) in profile on event's screen
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_lockup_Company_Acquired_in_Profile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario:Verify user is able to see filter result event is (Company Acquired) in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    #And I refresh
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_lockup_Company_Acquired_in_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds





@test13
Scenario:Verify user is able to see event as (Company Acquired) on the top of the listing after selecting event from dropdown 
    And I click on "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_event_in_event_dd"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_event_in_event_Company_Acquired"

@test13
Scenario:Verify user is able to see both eventas (Company Acquired)  in insight and people screen are same where group by dropdown selected as event   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_event_in_event_Company_Acquired" in "locators.locator_company_count_verify"

@test13
Scenario:Verify user is able to see people screen while clicking on event (Company Acquired) in the insight screen 
    And I should see field "locators.locatorpeopletab"




@test13
Scenario:Verify user is able to create filter to check event  count where  selected event is (Investment Received)
      And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I clicked "locators.locator_saved_event_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locator.locator_filter_event_type_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_eventtype_Investment_Received"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds
    

@test13
Scenario:Verify user is able to see filter result event as (Investment Received) in Peoples's profile screeen
     And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    #And I refresh
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_lockup_Investment_Received_in_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario:Verify the user is able to see filter result event as (Investment Received) in profile on event's screen
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_lockup_Investment_Received_in_Profile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario:Verify user is able to see filter result event is (Investment Received)   in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    #And I refresh
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_lockup_Investment_Received_in_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds





@test13
Scenario:Verify user is able to see event as (Investment Received)  on the top of the  listing after selecting event from dropdown 
    And I click on "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_event_in_event_dd"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_event_in_event_Investment_Received"

@test13
Scenario:Verify user is able to see both eventas (Investment Received)  in insight and people screen are same where group by dropdown selected as event   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_event_in_event_Investment_Received" in "locators.locator_company_count_verify"

@test13
Scenario:Verify user is able to see people screen while clicking on event (Investment Received) in the insight screen 
    And I should see field "locators.locatorpeopletab"





@test13
Scenario:Verify user is able to create filter to check event  count where  selected event is (Unicorn Status Achieved)
      And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I clicked "locators.locator_saved_event_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locator.locator_filter_event_type_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_eventtype_Unicorn_Status_Achieved"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds
    

@test13
Scenario:Verify user is able to see filter result event as (Unicorn Status Achieved) in Peoples's profile screen
     And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    #And I refresh
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_lockup_Unicorn_Status_Achieved_in_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario:Verify the user is able to see filter result event as (Unicorn Status Achieved) in profile on event's screen
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_lockup_Unicorn_Status_Achieved_in_Profile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario:Verify user is able to see filter result event is (Unicorn Status Achieved) in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    #And I refresh
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_lockup_Unicorn_Status_Achieved_in_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds





@test13
Scenario:Verify user is able to see event as (Unicorn Status Achieved)  on the top of the  listing after selecting event from dropdown 
    And I click on "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_event_in_event_dd"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_event_in_event_Unicorn_Status_Achieved"

@test13
Scenario:Verify user is able to see both eventas (Unicorn Status Achieved)  in insight and people screen are same where group by dropdown selected as event   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_event_in_event_Unicorn_Status_Achieved" in "locators.locator_company_count_verify"

@test13
Scenario:Verify user is able to see people screen while clicking on event (Unicorn Status Achieved) in the insight screen 
    And I should see field "locators.locatorpeopletab"

######18032021(viability##)

###########################


@test13
Scenario:Verify user is able to create filter to check viability  count where  selected viability is (Very High)
      And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I clicked "locators.locator_saved_event_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
   And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locator.locator_filter_viability_type_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_viability_type_very_high"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds
    

@test13
Scenario:Verify user is able to see filter result viability as (Very High) in Peoples's profile screen
     And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_very_high_in_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario:Verify user is able to see viability as (Very High)  on the top of the  listing after selecting viability from dropdown 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_insight_dd_viabilities"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_viability_count_as_veryheiigh"

@test13
Scenario:Verify user is able to see both viability (Very High) count in insight and people screen are same where group by dropdown selected as viability  
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_viability_count_as_veryheiigh" in "locators.locator_company_count_verify"

@test13
Scenario:Verify user is able to see people screen while clicking on the viability (Very high) from the insight screen 
    And I should see field "locators.locatorpeopletab"






@test13
Scenario:Verify user is able to create filter to check viability  count where  selected viability is (High)
      And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I clicked "locators.locator_saved_event_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
   And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locator.locator_filter_viability_type_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_viability_type_high"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds
    

@test13
Scenario:Verify user is able to see filter result viability as (High) in Peoples's profile screen
     And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_high_in_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario:Verify user is able to see viability as (High)  on the top of the  listing after selecting viability from dropdown 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_insight_dd_viabilities"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_viability_count_as_high"

@test13
Scenario:Verify user is able to see both viability (High) count in insight and people screen are same where group by dropdown selected as viability   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_viability_count_as_high" in "locators.locator_company_count_verify"

@test13
Scenario:Verify user is able to see people screen while clicking on the viability (High) from the insight screen 
    And I should see field "locators.locatorpeopletab"



@test13
Scenario:Verify user is able to create filter to check viability  count where  selected viability is (Neutral)
      And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I clicked "locators.locator_saved_event_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
     And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locator.locator_filter_viability_type_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_viability_type_Neutral"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds
    

@test13
Scenario:Verify user is able to see filter result viability as (Neutral) in Peoples's profile screen
     And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_Neutral_in_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario:Verify user is able to see viability as (Neutral)  on the top of the  listing after selecting viability from dropdown 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_insight_dd_viabilities"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_viability_count_as_Neutral"

@test13
Scenario:Verify user is able to see both viability (Neutral) count in insight and people screen are same where group by dropdown selected as viability 
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_viability_count_as_Neutral" in "locators.locator_company_count_verify"

@test13
Scenario:Verify user is able to see people screen while clicking on the viability (Neutral) from the insight screen 
    And I should see field "locators.locatorpeopletab"



@test13
Scenario:Verify user is able to create filter to check viability  count where  selected viability is (Low)
      And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I clicked "locators.locator_saved_event_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
     And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locator.locator_filter_viability_type_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_viability_type_Low"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds
    

@test13
Scenario:Verify user is able to see filter result viability as (Low) in Peoples's profile screen
     And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_Low_in_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario:Verify user is able to see viability as (Low)  on the top of the  listing after selecting viability from dropdown 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_insight_dd_viabilities"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_viability_count_as_Low"

@test13
Scenario:Verify user is able to see both viability (Low) count in insight and people screen are same where group by dropdown selected as viability 
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_viability_count_as_Low" in "locators.locator_company_count_verify"

@test13
Scenario:Verify user is able to see people screen while clicking on the viability (Low) from the insight screen 
    And I should see field "locators.locatorpeopletab"



@test13
Scenario:Verify user is able to create filter to check viability  count where  selected viability is (Very Low)
      And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I clicked "locators.locator_saved_event_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
     And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locator.locator_filter_viability_type_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_viability_type_Very_Low"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds
    

@test13
Scenario:Verify user is able to see filter result viability as (Very Low) in Peoples's profile screen
     And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_Very_Low_in_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario:Verify user is able to see viability as (Very Low)  on the top of the  listing after selecting viability from dropdown 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_insight_dd_viabilities"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_viability_count_as_Very_Low"

@test13
Scenario:Verify user is able to see both viability (Very Low) count in insight and people screen are same where group by dropdown selected as viability   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_viability_count_as_Very_Low" in "locators.locator_company_count_verify"

@test13
Scenario:Verify user is able to see people screen while clicking on the viability (Very Low) from the insight screen 
    And I should see field "locators.locatorpeopletab"


####19032021

@test13
Scenario:Verify user is able remove selected group by company viability  by clicking on close button in the people screen
    And I clicked "locators.locator_filteredit_viability_groupby_verylow_remove"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I check "locators.locator_filteredit_viability_groupby_verylow_remove" not present  

@test13
Scenario:Verify user is able remove saved filter by clicking on clear filter button in the peoples screen 
    And I clicked "locators.locator_filtername_clear_button"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I check "locators.locator__viability_verylow_remove" not present  

@test13
Scenario:Verify user is not able to see clear filter button as we removed filter name 
    And I wait "testdata.testdata_time_2" milliseconds 
    And I check "locators.locator_filtername_clear_button" not present    


@test13
Scenario:Verify user is not able to see default filter name on events and insights screen as clerared that in prevous step
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_3" milliseconds
    And I should see field "locators.locator_No_saved_filter_label"
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_3" milliseconds
    And I should see field "locators.locator_No_saved_filter_label"

@test13
Scenario:Verify user is able remove selected company viabilty by cliking on close button in the filter edit
    And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_saved_event_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_filteredit_viability_verylow_remove"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filteredit_viability_verylow_remove" not present  


@test13
Scenario:Verify user is able create filter for cheking the group by count and relationship path from profile screen
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
     And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locator.locator_filter_viability_type_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_viability_type_Very_Low"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds 
    

@test13
Scenario:Verify user is able to see a relationship path on the top of the  listing after selecting Relationship path from dropdown 
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_event_in_Relationship_path_dd"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_event_in_Relationship_path_1stcount"

@test13
Scenario:Verify user is able to see both relationship path count in insight and people screen are same  
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_event_in_Relationship_path_1stcount" in "locators.locator_company_count_verify"

@test13
Scenario:Verify user is able to see people screen while clicking on relationship path count in the insight screen 
    And I should see field "locators.locatorpeopletab" 




@test13
Scenario:Verify user is able to see filter result potential path details in Peoples's profile screen
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_potentialPath_details"
    And I wait "testdata.testdata_time_5" milliseconds




@test13
Scenario:Verify user is able to open tracking point dropdown and see details
    And I clicked "locators.locator_trackingpoint_dd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_trackingpoint_you_both_know"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

    
@test13
Scenario:Verify user is able to create filter to check household interest  count where  selected interest is (Baseball)
      And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I clicked "locators.locator_saved_event_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
     And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locator.locator_filter_Household_interests_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_Household_interests_Baseball"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds
    



@test13
Scenario:Verify user is able to see filter result household interest as Baseball in Peoples's profile screeen
     And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    #And I refresh
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_Baseballs_in_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario:Verify user is able to see household interest as Baseball  on the top of the  listing after selecting  household interest from dropdown 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_Householdinterest_in_event_dd"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_event_in_Householdinterest_Baseball"

@test13
Scenario:Verify user is able to see both  household interest count  in insight and people screen are same where group by dropdown selected as household interest   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_event_in_Householdinterest_Baseball" in "locators.locator_company_count_verify"

@test13
Scenario:Verify user is able to see people screen while clicking on household interest (Baseball) in the insight screen 
    And I should see field "locators.locatorpeopletab"

#####
#####
####
###
#####

@test13
Scenario:Verify user is able to create filter where  selected value is 0_50M 
      And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I clicked "locators.locator_saved_event_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
     And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_oneMonth"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locator.locator_filter_Value_type_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_Value_type_dd_0_50M"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds
    

@test13
Scenario:Verify the user is able to see filter result in event screen where value is between $0M and $50M 
 And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
        And I clicked "locators.locator_sortby_value"
    And I wait "testdata.testdata_time_8" milliseconds
        And I clicked "locators.locator_sortby_value"

    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I check profile age is between dollor "testdata.testdata_value_0M" and "testdata.testdata_value_50M" on "locators.locator_value_card"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds




@test13
Scenario:Verify the user is able to see filter result in Relationship intelligence screen where value is between $0M and $50M 
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    And I wait "testdata.testdata_time_20" milliseconds
          And I clicked "locators.locator_sortby_value"
    And I wait "testdata.testdata_time_8" milliseconds
        And I clicked "locators.locator_sortby_value"
            And I wait "testdata.testdata_time_8" milliseconds

    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I check profile age is between dollor "testdata.testdata_value_0M" and "testdata.testdata_value_50M" on "locators.locator_value_card"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds







##22012021

@test131
Scenario:Verify user is able to create filter where  selected value is 50_100M 
And I click on "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
      And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I clicked "locators.locator_saved_event_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
     And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_oneMonth"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locator.locator_filter_Value_type_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_Value_type_dd_50_100M"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds
    

@test131
Scenario:Verify the user is able to see filter result in event screen where value is between $50M and $100M 
 And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I check profile age is between dollor "testdata.testdata_value_50M" and "testdata.testdata_value_100M" on "locators.locator_value_card"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds




@test131
Scenario:Verify the user is able to see filter result in Relationship intelligence screen where value is between $50M and $100M 
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I check profile age is between dollor "testdata.testdata_value_50M" and "testdata.testdata_value_100M" on "locators.locator_value_card"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds




@test131
Scenario:Verify user is able to create filter where  selected value is 100_500M 
    And I click on "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_saved_event_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_oneMonth"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locator.locator_filter_Value_type_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_Value_type_dd_100_500M"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds
    

@test131
Scenario:Verify the user is able to see filter result in event screen where value is between $100M and $500M 
 And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I check profile age is between dollor "testdata.testdata_value_100M" and "testdata.testdata_value_500M" on "locators.locator_value_card"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds




@test131
Scenario:Verify the user is able to see filter result in Relationship intelligence screen where value is between $100M and $500M 
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I check profile age is between dollor "testdata.testdata_value_100M" and "testdata.testdata_value_500M" on "locators.locator_value_card"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test131
Scenario:Verify user is able to create filter where  selected value is 500_1B 
    And I click on "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I clicked "locators.locator_saved_event_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
     And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_oneMonth"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locator.locator_filter_Value_type_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_Value_type_dd_500_1B"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds
    

@test131
Scenario:Verify the user is able to see filter result in event screen where value is between $500M and $1B 
 And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I check profile age is between dollor "testdata.testdata_value_500M" and "testdata.testdata_value_1B" on "locators.locator_value_card"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds




@test131
Scenario:Verify the user is able to see filter result in Relationship intelligence screen where value is between $500M and $1B 
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I check profile age is between dollor "testdata.testdata_value_500M" and "testdata.testdata_value_1B" on "locators.locator_value_card"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds




@test131
Scenario:Verify user is able to create filter where  selected value is 1B +
    And I click on "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I clicked "locators.locator_saved_event_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
     And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_oneMonth"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locator.locator_filter_Value_type_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_Value_type_dd_1BPlus"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds
    

@test131
Scenario:Verify the user is able to see filter result in event screen where value is greater than $1B 
 And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I check profile age is between dollorB "testdata.testdata_value_0M" and "testdata.testdata_value_1B" on "locators.locator_value_card"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


    
@test131
Scenario:Verify the user is able to see default filter name in event's table .
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see "testdata.testdata_eventname_name" in "locators.locator_prospectprofile_filter_default_dropdown"
    And I wait "testdata.testdata_time_5" milliseconds


@test131
Scenario:Verify the user is able to see filter result in Relationship intelligence screen where value is greater than $1B 
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I check profile age is between dollorB "testdata.testdata_value_0M" and "testdata.testdata_value_1B" on "locators.locator_value_card"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds
    
@test131
Scenario:Verify  the user is able to see school filter name in in relationship intelligence's  filter dropdown 
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see "testdata.testdata_eventname_name" in "locators.location_verify_filtername_inmoneymotionscreen"


    

@test131
Scenario:Verify user is able to remove selected value 1B +  by clicking on remove button on edit 
    And I click on "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I clicked "locators.locator_saved_event_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_filter_value_1plus_remove"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filteredit_viability_groupby_verylow_remove" not present  








