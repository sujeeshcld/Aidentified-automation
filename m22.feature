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
Scenario: Verify the user is able to see new Prospect finder filter screen
    And I click on "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds 
    #And I should see field "locators.locator_prospectfilter"

     
@test13
Scenario: Verify the user is able to open  Prospect finder filter screen
    #And I click on "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_AddNewprospectfilter"



@test13
Scenario: Verify the user is able to see error validation message while saving a propect filter without entering name 
    And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_prospectprofile_save"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I should see field "locators.locator_prospectfilter_name_missing"



      
@test13
Scenario:Verify user is able to create filter where degree is second, and company is google.
    And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_groupby" in "locators.locator_prospectprofile_name"
    And I clicked "locators.locator_filter_default_click"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    #And I clicked "locators.locator_Saved_filter_Relationship_2nd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I mouse hover on "locator.locator_filter_company_name"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I enter "testdata.testdata_company_name" in "locators.locator_filter_company_name"
    And I wait "testdata.testdata_time_5" milliseconds  
    And I clicked "locators.locator_filter_company_first_options"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds


    
@test13
Scenario:Verify user is able to see both people count in insight and people screen are same where group by dropdown selected as company   
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_10" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_company"
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_company_count" in "locators.locator_company_count_verify"


@test13
Scenario:Verify user is able to see people screen while clicking on people count on the insight screen 
    And I should see field "locators.locator_prospectfilter"

#
#
#
#
#


@test13
Scenario: Verify user is able to create filter where degree is second, and sex as male
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_group_by_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
        And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    #And I clicked "locators.locator_Saved_filter_Relationship_2nd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locators.locator_filter_sex_dropdown_icon"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_sex_dropdown_male"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario:Verify user is able to see both female count in insight and people screen are same where group by dropdown selected as sex .   
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_10" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds 
    #And I should see field "locators.locator_group_by_insight_DD_Sex"
    And I clicked "locators.locator_group_by_insight_DD_Sex"
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_male_count" in "locators.locator_company_count_verify"


@test13
Scenario:Verify user is able to see people screen while clicking on male count in the insight   
    And I should see field "locators.locator_prospectfilter"


@test13
Scenario: Verify user is able to create filter where degree is second, and sex as male
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_group_by_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    #And I clicked "locators.locator_Saved_filter_Relationship_2nd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locators.locator_filter_sex_dropdown_icon"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_sex_dropdown_female"
    And I wait "testdata.testdata_time_2" milliseconds
        And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario:Verify user is able to see both female count in insight and people screen are same where group by dropdown selected as sex .   
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_10" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_Sex"
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_female_count" in "locators.locator_company_count_verify"


@test13
Scenario:Verify user is able to see people screen while clicking on female count in the insight   
    And I should see field "locators.locator_prospectfilter"

######16

@test13
Scenario: Verify user is able to create filter where degree is second, and children education as elementary
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_group_by_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    #And I clicked "locators.locator_Saved_filter_Relationship_2nd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locator.locator_filter_children_edu_DD"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_children_edu_Elementery"
    And I wait "testdata.testdata_time_2" milliseconds 
        And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds 
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario:Verify user is able to see both elementary count in insight and people screen are same where group by dropdown selected as children education .   
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_10" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds  
    And I clicked "locators.locator_group_by_insight_DD_chil_edu"
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_elementary_count" in "locators.locator_company_count_verify"


@test13
Scenario:Verify user is able to see people screen while clicking on elementary count in the insight   
    And I should see field "locators.locator_prospectfilter"


@test13
Scenario: Verify user is able to create filter where degree is second, and children education as middle school
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_group_by_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    #And I clicked "locators.locator_Saved_filter_Relationship_2nd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locator.locator_filter_children_edu_DD"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_children_edu_midleSchool"
    And I wait "testdata.testdata_time_2" milliseconds 
        And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds 
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario:Verify user is able to see both middle school count in insight and people screen are same where group by dropdown selected as children education  .   
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_10" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_chil_edu"
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_middleschool_count" in "locators.locator_company_count_verify"


@test13
Scenario:Verify user is able to see people screen while clicking on middle school count in the insight   
    And I should see field "locators.locator_prospectfilter"





@test13
Scenario: Verify user is able to create filter where degree is second, and children education as high school
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_group_by_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    #And I clicked "locators.locator_Saved_filter_Relationship_2nd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locator.locator_filter_children_edu_DD"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_children_edu_highSchool"
    And I wait "testdata.testdata_time_2" milliseconds 
        And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds 
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario:Verify user is able to see both high school count in insight and people screen are same where group by dropdown selected as children education .   
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_10" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_chil_edu"
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_Highchool_count" in "locators.locator_company_count_verify"


@test13
Scenario:Verify user is able to see people screen while clicking on female count in the high school   
    And I should see field "locators.locator_prospectfilter"






@test13
Scenario: Verify user is able to create filter where degree is second, and children education as pre elementary
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_group_by_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    #And I clicked "locators.locator_Saved_filter_Relationship_2nd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locator.locator_filter_children_edu_DD"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_children_edu_preElementery"
    And I wait "testdata.testdata_time_2" milliseconds  
        And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario:Verify user is able to see both pre elementary count in insight and people screen are same where group by dropdown selected as children education .   
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_10" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds  
    And I clicked "locators.locator_group_by_insight_DD_chil_edu"
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_Preelementary_count" in "locators.locator_company_count_verify"


@test13
Scenario:Verify user is able to see people screen while clicking on pre elementary count in the insight   
    And I should see field "locators.locator_prospectfilter"







@test13
Scenario: Verify user is able to create filter where degree is second, and state as alabama
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_group_by_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    #And I clicked "locators.locator_Saved_filter_Relationship_2nd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I click on "locators.locator_filter_by_state"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_state_AlabamaAL"
    And I wait "testdata.testdata_time_5" milliseconds  
        And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario:Verify user is able to see only state as alabama in insight screen when selecitng sate from dropdown
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_10" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_state"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_StateAL_count"


@test13
Scenario:Verify user is able to see both state count in insight and people screen are same where group by dropdown selected as state .   
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_StateAL_count" in "locators.locator_company_count_verify"


@test13
Scenario:Verify user is able to see people screen while clicking on state count in the insight   
    And I should see field "locators.locator_prospectfilter"


######################################17


@test13
Scenario: Verify user is able to create filter where degree is second, and company head count is 1 to 10
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_group_by_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    #And I clicked "locators.locator_Saved_filter_Relationship_2nd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I hover on "locator.locator_cmpny_head_count_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_cmpny_head_count_dd_1to10"
    And I wait "testdata.testdata_time_2" milliseconds 
        And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds 
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario:Verify user is able to see only head count 1 to 10 after selecting head count option from dropdown in the insight screen
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_10" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_head_count"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I check "locators.locator_headcount11to50" not present    

@test13
Scenario:Verify user is able to see both company head count in insight and people screen are same where group by dropdown selected as head count .   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_headcount1to10" in "locators.locator_company_count_verify"


@test13
Scenario:Verify user is able to see people screen while clicking on company header count count in the insight   
    And I should see field "locators.locator_prospectfilter"



###2
@test13
Scenario: Verify user is able to create filter where degree is second, and company head count is 11 to 50
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_group_by_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I hover on "locator.locator_cmpny_head_count_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_cmpny_head_count_dd_11to50"
    And I wait "testdata.testdata_time_2" milliseconds  
        And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario:Verify user is able to see only head count 11 to 50 after selecting head count option from dropdown in the insight screen
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_10" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_head_count"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I check "locators.locator_headcount1to10" not present    

@test13
Scenario:Verify user is able to see both company head count(11 to 50) in insight and people screen are same where group by dropdown selected as head count .   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_headcount11to50" in "locators.locator_company_count_verify"



###2
@test13
Scenario: Verify user is able to create filter where degree is second, and company head count is 51 to 100
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_group_by_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I hover on "locator.locator_cmpny_head_count_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_cmpny_head_count_dd_51to100"
    And I wait "testdata.testdata_time_2" milliseconds  
        And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds
    
@test13
Scenario:Verify user is able to see only head count 51 to 100 after selecting head count option from dropdown in the insight screen
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_10" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_head_count"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I check "locators.locator_headcount1to10" not present    

@test13
Scenario:Verify user is able to see both company head count(51 to 100) in insight and people screen are same where group by dropdown selected as head count .   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_headcount51to100" in "locators.locator_company_count_verify"





###2
@test13
Scenario: Verify user is able to create filter where degree is second, and company head count is 101 to 250
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_group_by_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I hover on "locator.locator_cmpny_head_count_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_cmpny_head_count_dd_101to250"
    And I wait "testdata.testdata_time_2" milliseconds  
        And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario:Verify user is able to see only head count 101 to 250 after selecting head count option from dropdown in the insight screen
   And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_10" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds  
    And I clicked "locators.locator_group_by_insight_DD_head_count"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I check "locators.locator_headcount1to10" not present    

@test13
Scenario:Verify user is able to see both company head count(101 to 250) in insight and people screen are same where group by dropdown selected as head count .   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_headcount101to250" in "locators.locator_company_count_verify"




###2
@test13
Scenario: Verify user is able to create filter where degree is second, and company head count is 251 to 500
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_group_by_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I hover on "locator.locator_cmpny_head_count_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_cmpny_head_count_dd_251to500"
    And I wait "testdata.testdata_time_2" milliseconds  
        And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario:Verify user is able to see only head count 251 to 500 after selecting head count option from dropdown in the insight screen
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_10" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_head_count"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I check "locators.locator_headcount1to10" not present    

@test13
Scenario:Verify user is able to see both pre elementary count in insight and people screen are same where group by dropdown selected as children education .   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_headcount251to500" in "locators.locator_company_count_verify"




###2
@test13
Scenario: Verify user is able to create filter where degree is second, and company head count is 501 to 1000
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_group_by_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I hover on "locator.locator_cmpny_head_count_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_cmpny_head_count_dd_501to1000"
    And I wait "testdata.testdata_time_2" milliseconds  
        And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario:Verify user is able to see only head count 501 to 1000 after selecting head count option from dropdown in the insight screen
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_10" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_head_count"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I check "locators.locator_headcount1to10" not present    

@test13
Scenario:Verify user is able to see both pre elementary count in insight and people screen are same where group by dropdown selected as children education .   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_headcount501to1000" in "locators.locator_company_count_verify"





###2
@test13
Scenario: Verify user is able to create filter where degree is second, and company head count is 1001 to 5000
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_group_by_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I hover on "locator.locator_cmpny_head_count_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_cmpny_head_count_dd_1001to5000"
    And I wait "testdata.testdata_time_2" milliseconds 
        And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds 
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario:Verify user is able to see only head count 1001 to 5000 after selecting head count option from dropdown in the insight screen
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_10" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_head_count"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I check "locators.locator_headcount1to10" not present    

@test13
Scenario:Verify user is able to see both pre elementary count in insight and people screen are same where group by dropdown selected as children education .   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_headcount1001to5000" in "locators.locator_company_count_verify"




###2
@test13
Scenario: Verify user is able to create filter where degree is second, and company head count is 5001 to 10000
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_group_by_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I hover on "locator.locator_cmpny_head_count_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_cmpny_head_count_dd_5001to10000"
    And I wait "testdata.testdata_time_2" milliseconds
        And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds  
    And I clicked "locators.locator_Saved_filter_save"

@test13
Scenario:Verify user is able to see only head count 5001 to 10000 after selecting head count option from dropdown in the insight screen
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_10" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_head_count"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I check "locators.locator_headcount1to10" not present    

@test13
Scenario:Verify user is able to see both pre elementary count in insight and people screen are same where group by dropdown selected as children education .   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_headcount5001to10000" in "locators.locator_company_count_verify"


@test13
Scenario:Verify user is able to see people screen while clicking on pre elementary count in the insight   
    And I should see field "locators.locator_prospectfilter"



###2
@test13
Scenario: Verify user is able to create filter where degree is second, and company head count is 10000
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_group_by_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I hover on "locator.locator_cmpny_head_count_dd"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_cmpny_head_count_dd_10000plus"
    And I wait "testdata.testdata_time_2" milliseconds
        And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds  
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario:Verify user is able to see only head count 10000 plus after selecting head count option from dropdown in the insight screen
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_10" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_head_count"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I check "locators.locator_headcount1to10" not present    

@test13
Scenario:Verify user is able to see both pre elementary count in insight and people screen are same where group by dropdown selected as children education .   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_headcount10000plus" in "locators.locator_company_count_verify"






###2
@test13
Scenario:Verify user is able to createfilter by city as northport and only state as northport should be available when selecting head count option from dropdown
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_group_by_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I enter "testdata.testdata_exactcity_northport" in "locators.locator_filter_exact_homecity"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_ExactCity_in_dropdowns"
    And I wait "testdata.testdata_time_5" milliseconds
        And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario:Verify user is able to see only city as northport after selecting head count option from dropdown in the insight screen
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_10" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_homecity_dd"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I check "locators.locator_newyork_count" not present    


@test13
Scenario:Verify user is able to see both state count in insight and people screen are same where group by dropdown selected as children education .   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_hnorthport_count" in "locators.locator_company_count_verify"



########18

@test13
Scenario: Verify user is able to create filter where degree is second, zip code between 11768 and 11770
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_group_by_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I hover on "locators.locator_filter_Zip_dropdown_iocn"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_filter_zip_dropdown_between"
    And I wait "testdata.testdata_time_3" milliseconds
    And I enter "testdata.testdata_filterzip1" in "locators.locator_filter_zip_between_inputbox1st"
    And I enter "testdata.testdata_filterzip2" in "locators.locator_filter_zip_between_inputbox2nd"
    And I wait "testdata.testdata_time_3" milliseconds
    And I hover on "locators.locator_filter_sex_dropdown_icon"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_sex_dropdown_male"
    And I wait "testdata.testdata_time_2" milliseconds
        And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_Saved_filter_save"

@test13
Scenario:Verify user is able to see only zipcode from 11768 to 11770 after selecting zip count option from dropdown in the insight screen
And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_10" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds  
    And I clicked "locators.locator_group_by_insight_DD_ZIP"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_insightzip_11768"
    And I should see field "locators.locator_insightzip_11769"
    And I should see field "locators.locator_insightzip_11770"
    And I check "locators.locator_insightzip_11765" not present    

@test13
Scenario:Verify user is able to see both zip code count in insight and people screen are same where group by dropdown selected as zip code.   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_insightzip_11768" in "locators.locator_company_count_verify"


@test13
Scenario:Verify user is able to see people screen while clicking on zip code count in the insight   
    And I should see field "locators.locator_prospectfilter"



@test13
Scenario: Verify user is able to create filter where degree is second, zip code is exact 11768 
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_group_by_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I hover on "locators.locator_filter_Zip_dropdown_iocn"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_filter_zip_dropdown_Exact"
    And I wait "testdata.testdata_time_3" milliseconds
    And I enter "testdata.testdata_filterzip1" in "locators.locator_filter_zip_exact_inputbox"
    And I wait "testdata.testdata_time_3" milliseconds
    And I hover on "locators.locator_filter_sex_dropdown_icon"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_sex_dropdown_male"
    And I wait "testdata.testdata_time_2" milliseconds
        And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_Saved_filter_save"

@test13
Scenario:Verify user is able to see only zip code  11768  after selecting zip count option from dropdown in the insight screen
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_10" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_ZIP"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_insightzip_11768"
    And I check "locators.locator_insightzip_11770" not present    
    And I check "locators.locator_insightzip_11769" not present    

@test13
Scenario:Verify user is able to see both zip code count in insight and people screen are same where group by dropdown selected as zip code.   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_insightzip_11768" in "locators.locator_company_count_verify"


@test13
Scenario:Verify user is able to see people screen while clicking on zip code count in the insight   
    And I should see field "locators.locator_prospectfilter"


@test13
Scenario: Verify user is able to create filter where degree is second, industry as accounting
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_group_by_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds

    And I enter "testdata.testdata_industrynameAccounting" in "locators.locator_industry_name"
    And I wait "testdata.testdata_time_3" milliseconds

    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_industry_name_dd_select"
    And I wait "testdata.testdata_time_2" milliseconds
        And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
@test13
Scenario:Verify user is able to see only industry as accounting after selecting zip count option from dropdown in the insight screen
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_10" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_industry"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_insight_industry_Accounting"
    And I check "locators.locator_insight_industry_healthcare" not present    

@test13
Scenario:Verify user is able to see both industry count in insight and people screen are same where group by dropdown selected as industry.   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_insight_industry_Accounting" in "locators.locator_company_count_verify"


@test13
Scenario:Verify user is able to see people screen while clicking on Accounting count in the insight   
    And I should see field "locators.locator_prospectfilter"


@test13
Scenario: Verify user is able to create filter where degree is second, marital status as single.
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_group_by_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I hover on "locators.locator_filter_marital_status_DD"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_marital_status_Single"
    And I wait "testdata.testdata_time_2" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
        And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
@test13
Scenario:Verify user is able to see only marital status as single in the insight screen , after selecting marital status  option from dropdown 
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I wait "testdata.testdata_time_5" milliseconds
     And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_10" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_maritalStatus"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_insight_single_count"
    And I check "locators.locator_insight_married_count" not present    

@test13
Scenario:Verify user is able to see both single count in insight and people screen are same where group by dropdown selected as marital status.   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_insight_single_count" in "locators.locator_company_count_verify"


@test13
Scenario:Verify user is able to see people screen while clicking on single count on the insight screen  
    And I should see field "locators.locator_prospectfilter"



@test13
Scenario: Verify user is able to create filter where degree is second, marital status as married.
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_group_by_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I hover on "locators.locator_filter_marital_status_DD"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_marital_status_Married"
    And I wait "testdata.testdata_time_2" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
        And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
@test13
Scenario:Verify user is able to see only marital status as married in the insight screen , after selecting marital status  option from dropdown 
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
     And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_10" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_maritalStatus"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_insight_married_count"
    And I check "locators.locator_insight_single_count" not present    

@test13
Scenario:Verify user is able to see both married count in insight and people screen are same where group by dropdown selected as marital status.   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_insight_married_count" in "locators.locator_company_count_verify"


@test13
Scenario:Verify user is able to see people screen while clicking on married count on the insight screen  
    And I should see field "locators.locator_prospectfilter"



@test13
Scenario:Verify user is able to create filter to check previous company count, where degree is second, and company is google.
     And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_group_by_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I mouse hover on "locator.locator_filter_company_name"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I enter "testdata.testdata_company_name" in "locators.locator_filter_company_name"
    And I wait "testdata.testdata_time_5" milliseconds  
    And I clicked "locators.locator_filter_company_first_options"
    And I wait "testdata.testdata_time_2" milliseconds 
        And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds


    
@test13
Scenario:Verify user is able to see both previous companies count in insight and people screen are same where group by dropdown selected as company   
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_10" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_previouscompany"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I should see field "locators.locator_company_counts"

@test13
Scenario:Verify user is able to see both previous company count in insight and people screen are same where group by dropdown selected as industry.   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_company_counts" in "locators.locator_company_count_verify"


@test13
Scenario:Verify user is able to see people screen while clicking on google count on the insight screen  
    And I should see field "locators.locator_prospectfilter"

@test13
Scenario:Verify user is able to see previous company as google in career history on people - profile screen
    And I enter "testdata.testdata_previouscompany_name" in "locators.locator_people_name_filter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    #And I clicked "locators.locator_carrierhistory"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_previous_company_google"




    

@test13
Scenario:Verify user is able to create filter to check school count where degree is second, and school is North Haven High School.
     And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_group_by_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I mouse hover on "locator.locator_filter_professional_schoolname"
    And I enter "testdata.testdata_professional_school_name" in "locators.locator_filter_professional_schoolname"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_filter_professional_schoolnames_select"
    And I wait "testdata.testdata_time_3" milliseconds 
        And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds
@test13
Scenario:Verify user is able to see both previous companies count in insight and people screen are same where group by dropdown selected as company   
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_10" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_school"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I should see field "locators.locator_school_north_heven"

@test13
Scenario:Verify user is able to see both school count in insight and people screen are same where group by dropdown selected as school   
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_school_north_heven" in "locators.locator_company_count_verify"


@test13
Scenario:Verify user is able to see people screen while clicking on school count on the insight screen 
    And I should see field "locators.locator_prospectfilter"

####


    
@test13
Scenario:Verify user is able to create filter to check interest count where degree is second, and interest is Baseball.
     And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_group_by_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    #And I clicked "locators.locator_Saved_filter_Relationship_2nd"
    And I wait "testdata.testdata_time_2" milliseconds
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locator.locator_filter_interests"
    And I wait "testdata.testdata_time_5" milliseconds  
    And I clicked "locators.locator_filter_interest_baseballs"
    And I wait "testdata.testdata_time_2" milliseconds
        And I clicked "locators.locator_filter_mailalert"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds


    
@test13
Scenario:Verify user is able to see baseball count on the top of the interest listing after selecting household interst from fropdown 
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_10" milliseconds 
    And I hover on "locators.locator_group_by_insight_DD"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_group_by_insight_DD_householdinterest"
    And I wait "testdata.testdata_time_8" milliseconds 
    And I should see field "locators.locator_householdinterest_baseball"

@test13
Scenario:Verify user is able to see both baseball count in insight and people screen are same where group by dropdown selected as house hold interest  
    And I wait "testdata.testdata_time_20" milliseconds 
    And I should see same text in other screen "locators.locator_householdinterest_baseball" in "locators.locator_company_count_verify"


@test13
Scenario:Verify user is able to see people screen as selected while clicking on baseball count on the insight screen 
    And I should see field "locators.locatorpeopletab"



