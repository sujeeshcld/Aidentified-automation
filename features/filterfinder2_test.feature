Feature: To test M2 scenarios

@test131
Scenario: Verifying the successful login.
    When I go to "/user/login"
    And I wait "testdata.testdata_time_20" milliseconds
    And I enter "testdata.testdata_username" in "locators.locator_username"
    And I enter "testdata.testdata_password" in "locators.locator_password"
    And I click on "locators.locator_signIn"
    And I wait "testdata.testdata_time_20" milliseconds 
    And I wait "testdata.testdata_time_20" milliseconds 


@test131
Scenario: Verify the user is able to see new Prospect finder filter screen
    And I click on "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds 
    #And I should see field "locators.locator_prospectfilter"

     
@test131
Scenario: Verify the user is able to open  Prospect finder filter screen
    #And I click on "locators.locator_prospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_AddNewprospectfilter"


@test131
Scenario:Verify user is able to see both,male and female options in sex's dropdown
    And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_sexM_filterName" in "locators.locator_prospectprofile_name"
    And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_3" milliseconds
    And I hover on "locators.locator_filter_sex_dropdown_icon"
    And I wait "testdata.testdata_time_2" milliseconds
    And I should see field "locators.locator_filter_sex_dropdown_male"
    And I should see field "locators.locator_filter_sex_dropdown_female"
    And I should see field "locators.locator_filter_sex_dropdown_both"

    
@test131
Scenario:Verify user is able to filter by sex ,where sex as male
    And I clicked "locators.locator_filter_sex_dropdown_male"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_emailalert_checkbox"
    And I wait "testdata.testdata_time_2" milliseconds
    And I click on "locators.locator_house_hold_save_close"
    And I wait "testdata.testdata_time_8" milliseconds
    And I wait "testdata.testdata_time_8" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_male_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_auto_male"
    And I wait "testdata.testdata_time_8" milliseconds

@test131
Scenario:Verify user is able to see search result as M in profile
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_10" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_filter_sex_M_in_profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_10" milliseconds

     

@test131
Scenario:Verify the user is able to see sex as M in people profile 
    And I clicked "locators.locator_prospect_profiletab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_filter_sex_M_in_profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds




    
@test131
Scenario:Verify the user is able to see default filter name in event's table 
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see "testdata.testdata_sexM_filterName" in "locators.locator_prospectprofile_filter_default_dropdown"
    And I wait "testdata.testdata_time_5" milliseconds



@test131
Scenario:Verify the user is able to open and verify state value in profile of event's screen
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_filter_sex_M_in_profile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds





@test131
Scenario:Verify user is able to clear selected sex from dropdown by clicking on reset attribute button
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_male_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_genderM_edit"
    And I wait "testdata.testdata_time_5" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_house_hold_clearall"
    And I wait "testdata.testdata_time_2" milliseconds
    And I check "locators.locator_filter_sex_valuein_textbox_male" not present    
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_genderM_delete"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_delete_ok_popup"
    And I wait "testdata.testdata_time_5" milliseconds



    
@test131
Scenario:Verify user is able to filter by sex ,where sex as Female
    And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_sexF_filterName" in "locators.locator_prospectprofile_name"
    And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_3" milliseconds
    And I hover on "locators.locator_filter_sex_dropdown_icon"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_sex_dropdown_female"
    And I clicked "locators.locator_emailalert_checkbox"
    And I wait "testdata.testdata_time_2" milliseconds
    And I click on "locators.locator_house_hold_save_close"
    And I wait "testdata.testdata_time_8" milliseconds
    And I wait "testdata.testdata_time_8" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_female_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_auto_Female"
    And I wait "testdata.testdata_time_8" milliseconds


@test131
Scenario:Verify user is able to see search result as F in profile
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_10" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_filter_sex_F_in_profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_10" milliseconds

     

@test131
Scenario:Verify the user is able to see sex as M in people profile 
    And I clicked "locators.locator_prospect_profiletab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_filter_sex_F_in_profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds




    
@test131
Scenario:Verify the user is able to see default filter name in event's table 
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see "testdata.testdata_sexF_filterName" in "locators.locator_prospectprofile_filter_default_dropdown"
    And I wait "testdata.testdata_time_5" milliseconds



@test131
Scenario:Verify the user is able to open and verify state value in profile of event's screen
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_filter_sex_F_in_profile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds





@test131
Scenario:Verify user is able to clear selected sex from dropdown by clicking on reset attribute button
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
     And I mouse hover on "locators.locator_filter_default_click_auto_female_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_genderF_edit"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_house_hold_clearall"
    And I wait "testdata.testdata_time_2" milliseconds
    And I check "locators.locator_filter_sex_valuein_textbox_Female" not present    
    And I clicked "locators.locator_saved_prospectfilefilter_genderF_delete"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_delete_ok_popup"
    And I wait "testdata.testdata_time_5" milliseconds

##########################
##########################09/02/2021

@test131
Scenario:Verify user is able to see male,female and all option are available under Marital Status's dropdown
   And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_Maritalstatus_M" in "locators.locator_prospectprofile_name"
    And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_4" milliseconds
    And I hover on "locators.locator_filter_marital_status_DD"
    And I wait "testdata.testdata_time_2" milliseconds
    And I should see field "locators.locator_filter_marital_status_Married"
    And I should see field "locators.locator_filter_marital_status_Single"
    And I should see field "locators.locator_filter_marital_status_All"

    

 
@test131
Scenario:Verify user is able to filter by marital status where value is Married
    And I clicked "locators.locator_filter_marital_status_Married"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_emailalert_checkbox"
    And I wait "testdata.testdata_time_2" milliseconds
    And I click on "locators.locator_house_hold_save_close"
    And I wait "testdata.testdata_time_8" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_married_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_auto_married"
    And I wait "testdata.testdata_time_8" milliseconds



@test131
Scenario:Verify the user is able to see filter name in in relationship intelligence's  filter dropdown 
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    And I should see "testdata.testdata_Maritalstatus_M" in "locators.location_verify_filtername_inmoneymotionscreen"

 
@test131
Scenario:Verify user is able to see filter result as married in RI's profile screeen
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_filter_profile_maritalstatus_married"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

@test131
Scenario:Verify user is able to see filter result as married in Peoples's profile screeen
    And I clicked "locators.locator_prospect_profiletab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_filter_profile_maritalstatus_married"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds




    
@test131
Scenario:Verify the user is able to see all state name are Northport in event's table 
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see "testdata.testdata_Maritalstatus_M" in "locators.locator_prospectprofile_filter_default_dropdown"
    And I wait "testdata.testdata_time_5" milliseconds
##



@test131
Scenario:Verify the user is able to open and verify state value in profile of event's screen
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_filter_profile_maritalstatus_married"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


###########################################
 
@test131
Scenario:Verify user is able to delete filter for married 
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_married_hover"
    And I wait "testdata.testdata_time_2" milliseconds
        And I clicked "locators.locator_saved_prospectfilefilter_married_edit"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_genderF_delete"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_delete_ok_popup"
    And I wait "testdata.testdata_time_5" milliseconds


@test131
Scenario:Verify user is able to create  filter by marital status where value is single
    And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_Maritalstatus_single" in "locators.locator_prospectprofile_name"
    And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_4" milliseconds
        And I clicked "locators.locator_emailalert_checkbox"
    And I wait "testdata.testdata_time_2" milliseconds
    And I hover on "locators.locator_filter_marital_status_DD"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_marital_status_Single"
    And I wait "testdata.testdata_time_2" milliseconds

    And I click on "locators.locator_house_hold_save_close"
    And I wait "testdata.testdata_time_8" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_single_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_auto_single"
    And I wait "testdata.testdata_time_8" milliseconds

 
@test131
Scenario:Verify user is able to see filter result single in profile
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_filter_profile_maritalstatus_single"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

@test131
Scenario:Verify user is able to see filter result as married in Peoples's profile screeen
    And I clicked "locators.locator_prospect_profiletab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_filter_profile_maritalstatus_single"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds




    
@test131
Scenario:Verify the user is able to see default filter name in event screen
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see "testdata.testdata_Maritalstatus_single" in "locators.locator_prospectprofile_filter_default_dropdown"
    And I wait "testdata.testdata_time_5" milliseconds



@test131
Scenario:Verify the user is able to open and verify state value in profile of event's screen
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_filter_profile_maritalstatus_single"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

####################12_01_2021
 
@test131
Scenario:Verify user is able to filter by marital status where value is All
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_single_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_single_edit"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_house_hold_clearall"
    And I wait "testdata.testdata_time_2" milliseconds
    And I hover on "locators.locator_filter_marital_status_DD"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_marital_status_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I click on "locators.locator_house_hold_save_close"
    And I wait "testdata.testdata_time_5" milliseconds

    
 
@test131
Scenario:Verify user is able to reset marital status by clicking  on reset attribute button
    And I mouse hover on "locators.locator_filter_default_click_auto_single_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_single_edit"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_house_hold_clearall"
    And I wait "testdata.testdata_time_2" milliseconds
    And I should see field "locators.locator_filter_marital_status_All"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_delete"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_delete_ok_popup"
    And I wait "testdata.testdata_time_5" milliseconds



#####

    
@test131
Scenario:Verify user is able to see a drop down is opening while clicking on children education ranges.
    And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_child_edu" in "locators.locator_prospectprofile_name"
    And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds  
    And I hover on "locator.locator_filter_children_edu_DD"
    And I wait "testdata.testdata_time_8" milliseconds  
    And I should see field "locators.locator_filter_children_edu_preElementery"
    And I should see field "locators.locator_filter_children_edu_Elementery"
    And I should see field "locators.locator_filter_children_edu_midleSchool"
    And I should see field "locators.locator_filter_children_edu_highSchool"



@test131
Scenario:Verify user is able to select values of children education ranges and also able to remove by each close option
    And I clicked "locators.locator_filter_children_edu_preElementery"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_children_edu_Elementery"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_children_edu_midleSchool"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_children_edu_highSchool"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I should see field "locators.locator_filter_children_edu_preElementery_close"
    And I should see field "locators.locator_filter_children_edu_Elementery_close"
    And I should see field "locators.locator_filter_children_edu_middleSchool_close"
    And I should see field "locators.locator_filter_children_edu_highSchool_close"
    And I clicked "locators.locator_filter_children_edu_preElementery_close"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_children_edu_Elementery_close"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_children_edu_middleSchool_close"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_children_edu_highSchool_close"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I wait "testdata.testdata_time_2" milliseconds  
    And I check "locators.locator_filter_children_edu_preElementery_close" not present    
    And I check "locators.locator_filter_children_edu_Elementery_close" not present    
    And I check "locators.locator_filter_children_edu_middleSchool_close" not present    
    And I check "locators.locator_filter_children_edu_highSchool_close" not present    






@test131
Scenario:Verify user is able to select values of children education ranges and also able to remove all by clicking on reset attribute button   
    And I clicked "locators.locator_filter_children_edu_preElementery"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_children_edu_Elementery"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_children_edu_midleSchool"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_children_edu_highSchool"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_house_hold_clearall"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I check "locators.locator_filter_children_edu_preElementery_close" not present    
    And I check "locators.locator_filter_children_edu_Elementery_close" not present    
    And I check "locators.locator_filter_children_edu_middleSchool_close" not present    
    And I check "locators.locator_filter_children_edu_highSchool_close" not present 
    And I clicked "locators.locator_backtofilter"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_delete_ok_popup"
    And I wait "testdata.testdata_time_5" milliseconds




#######
#####10022021
@test131
Scenario:Verify user is able to create filter with children education as pre elementary
    And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_child_edu1" in "locators.locator_prospectprofile_name"
    And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_4" milliseconds 
        And I clicked "locators.locator_emailalert_checkbox"
    And I wait "testdata.testdata_time_2" milliseconds
    And I hover on "locator.locator_filter_children_edu_DD"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_children_edu_preElementery"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_moneyinmotion_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    #And I click on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_8" milliseconds 
    And I clicked "locators.locator_house_hold_save_close"
    And I wait "testdata.testdata_time_8" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_edu1_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_auto_edu1"
    And I wait "testdata.testdata_time_8" milliseconds


@test131
Scenario:Verify user is able to see filter result children education as pre elementary in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    And I enter "testdata.testdata_child_profile_father" in "locators.locator_MM_inner_search"
    And I wait "testdata.testdata_time_20" milliseconds

    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_preElementary_on_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds




@test131
Scenario:Verify user is able to see filter result children education as pre elementary in Peoples's profile screeen
    And I clicked "locators.locator_prospect_profiletab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_child_profile_father" in "locators.locator_searchname_prospectfinder"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_preElementary_on_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds




    
@test131
Scenario:Verify the user is able to see all state name are Northport in event's table 
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see "testdata.testdata_child_edu1" in "locators.locator_prospectprofile_filter_default_dropdown"
    And I wait "testdata.testdata_time_5" milliseconds



@test131
Scenario:Verify the user is able to see filter result children education as pre elementary in profile of event's screen
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_preElementary_on_Profile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds




    
    
@test131
Scenario:Verify user is able to delete filter for children education as pre elementary
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_edu1_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_auto_edu1_edit"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_delete"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_delete_ok_popup"
    And I wait "testdata.testdata_time_5" milliseconds

@test131
Scenario:Verify user is able to create filter with children education as pre elementary
    And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_child_edu2" in "locators.locator_prospectprofile_name"
    And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_4" milliseconds 
    And I wait "testdata.testdata_time_2" milliseconds
    And I hover on "locator.locator_filter_children_edu_DD"
    And I wait "testdata.testdata_time_5" milliseconds  
    And I clicked "locators.locator_filter_children_edu_Elementery"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_moneyinmotion_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    #And I click on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_emailalert_checkbox"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_house_hold_save_close"
    And I wait "testdata.testdata_time_8" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_edu2_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_auto_edu2"
    And I wait "testdata.testdata_time_8" milliseconds


@test131
Scenario:Verify user is able to see filter result children education as pre elementary in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    And I enter "testdata.testdata_child_profile_father1" in "locators.locator_MM_inner_search"
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_Elementary_on_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds




@test131
Scenario:Verify user is able to see filter result children education as pre elementary in Peoples's profile screeen
    And I clicked "locators.locator_prospect_profiletab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_child_profile_father1" in "locators.locator_searchname_prospectfinder"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_Elementary_on_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds




    
@test131
Scenario:Verify the user is able to see all state name are Northport in event's table 
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see "testdata.testdata_child_edu2" in "locators.locator_prospectprofile_filter_default_dropdown"
    And I wait "testdata.testdata_time_5" milliseconds



@test131
Scenario:Verify the user is able to see filter result children education as pre elementary in profile of event's screen
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_Elementary_on_Profile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds




    
@test131
Scenario:Verify user is able to delete filter for education as pre elementary
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_edu2_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_auto_edu2_edit"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_delete"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_delete_ok_popup"
    And I wait "testdata.testdata_time_5" milliseconds

@test131
Scenario:Verify user is able to create filter with children education as pre elementary
    And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_child_edu3" in "locators.locator_prospectprofile_name"
    And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_4" milliseconds 
    And I wait "testdata.testdata_time_2" milliseconds
    And I hover on "locator.locator_filter_children_edu_DD"
    And I wait "testdata.testdata_time_5" milliseconds  
    And I clicked "locators.locator_filter_children_edu_midleSchool"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_moneyinmotion_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    #And I click on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_emailalert_checkbox"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_house_hold_save_close"
    And I wait "testdata.testdata_time_8" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_edu3_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_auto_edu3"
    And I wait "testdata.testdata_time_8" milliseconds



@test131
Scenario:Verify user is able to see filter result children education as pre elementary in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    And I enter "testdata.testdata_child_profile_father2" in "locators.locator_MM_inner_search"
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_Middle_School_on_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds




@test131
Scenario:Verify user is able to see filter result children education as pre elementary in Peoples's profile screeen
    And I clicked "locators.locator_prospect_profiletab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_child_profile_father2" in "locators.locator_searchname_prospectfinder"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_Middle_School_on_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds




    
@test131
Scenario:Verify the user is able to see all state name are Northport in event's table 
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see "testdata.testdata_child_edu3" in "locators.locator_prospectprofile_filter_default_dropdown"
    And I wait "testdata.testdata_time_5" milliseconds



@test131
Scenario:Verify the user is able to see filter result children education as pre elementary in profile of event's screen
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_Middle_School_on_Profile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


  
@test131
Scenario:Verify user is able to delete filter with children education as pre elementary
       And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_edu3_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_auto_edu3_edit"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_delete"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_delete_ok_popup"
    And I wait "testdata.testdata_time_5" milliseconds


@test131
Scenario:Verify user is able to create filter with children education as pre elementary
    And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_child_edu4" in "locators.locator_prospectprofile_name"
    And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_4" milliseconds 
    And I wait "testdata.testdata_time_2" milliseconds
    And I hover on "locator.locator_filter_children_edu_DD"
    And I wait "testdata.testdata_time_5" milliseconds  
    And I clicked "locators.locator_filter_children_edu_highSchool"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_moneyinmotion_attribute_button"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    #And I click on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_household_attribute_button"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_emailalert_checkbox"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_house_hold_save_close"
    And I wait "testdata.testdata_time_8" milliseconds
    And I mouse hover on "locators.locator_filter_default_click_auto_edu4_hover"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click_auto_edu4"
    And I wait "testdata.testdata_time_8" milliseconds



@test131
Scenario:Verify user is able to see filter result children education as pre elementary in RI's profile screen
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    And I enter "testdata.testdata_child_profile_father3" in "locators.locator_MM_inner_search"
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_High_School_on_Profile"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds
    And I click on "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
  ##################
  #################
  #################
  ################  
@test13
Scenario:Verify the user is able to create filter with interest as Base ball
    And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_Interest" in "locators.locator_prospectprofile_name"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I hover on "locator.locator_filter_interests"
    And I wait "testdata.testdata_time_5" milliseconds  
    And I clicked "locators.locator_filter_interest_baseballs"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I clicked "locators.locator_filter_default_click"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_prospectprofile_save"
    And I wait "testdata.testdata_time_10" milliseconds 


    
@test13
Scenario:Verify the user is able to see default filter name in dropdown list of people screen.
    And I clicked "locators.locator_prospect_profiletab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see "testdata.testdata_Interest" in "locators.locator_prospectprofile_filter_default_dropdown"



@test13
Scenario:Verify the user is able to open and verify interest's filter value in profile of people screen
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_baseballIn_profile"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds





@test13
Scenario:Verify the user is able to reset and delete interest's filter by clicking of reset attribute button
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_interst_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_2" milliseconds
    And I check "locators.locator_verify_Relationship_reset" not present 
    And I clicked "locators.locator_prospectprofilfilter_close"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_interst_delete"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_delete_ok_popup"
    And I wait "testdata.testdata_time_5" milliseconds





####
@test13
Scenario:Verify user is able to see dropdown while entering company name 
    And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_Company" in "locators.locator_prospectprofile_name"
    And I clicked "locators.locator_filter_default_click"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I wait "testdata.testdata_time_5" milliseconds
    And I mouse hover on "locator.locator_filter_company_name"
    And I wait "testdata.testdata_time_2" milliseconds  
    And I enter "testdata.testdata_company_name" in "locators.locator_filter_company_name"
    And I wait "testdata.testdata_time_5" milliseconds  
    And I should see field "locators.locator_filter_company_first_options"


    
@test13
Scenario:Verify user is able to filter by company where company name as google 
    And I clicked "locators.locator_filter_company_first_options"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_filter_default_click"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_20" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_profile_company_google"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds




@test13
Scenario:Verify the user is able to see company default filter name in dropdown list of people screen.
    And I clicked "locators.locator_prospect_profiletab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see "testdata.testdata_Company" in "locators.locator_prospectprofile_filter_default_dropdown"



@test13
Scenario:Verify the user is able to open and verify company's filter value in profile of people screen
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_profile_company_google"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario:Verify the user is able to open and verify  company filter value in profile of event's screen
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_profile_company_google"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds





@test13
Scenario:Verify  user is able to  reset company by clicking on reset filter attribute
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_company_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check "locators.locator_profile_company_google_close" not present    
    And I clicked "locators.locator_prospectprofilfilter_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario:Verify user  is able to close company name by clicking on close button of selected company name
    And I clicked "locators.locator_saved_prospectfilefilter_company_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_profile_company_google_close"
    And I wait "testdata.testdata_time_2" milliseconds
    And I check "locators.locator_profile_company_google_close" not present 

     #####12022021
    
@test13
Scenario:Verify user is able to see dropdown while clicking on title rank dropdown 
    And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_title_name" in "locators.locator_prospectprofile_name"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locator.locator_filter_title_rank_dd"
    And I wait "testdata.testdata_time_5" milliseconds  
    And I should see field "locators.locator_filter_title_rank_options"
    And I wait "testdata.testdata_time_2" milliseconds  





@test13
Scenario:Verify user is able to create filter where tite as  CEO
    And I clicked "locators.locator_filter_title_rank_options"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I enter "testdata.testdata_company_name" in "locators.locator_filter_company_name"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_filter_company_first_options"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_2" milliseconds


@test13
Scenario:Verify the user is able to see Title filter name in  in relationship intelligence's  filter dropdown 
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_10" milliseconds
    And I wait "testdata.testdata_time_20" milliseconds
    And I should see "testdata.testdata_title_name" in "locators.location_verify_filtername_inmoneymotionscreen"






@test13
Scenario:Verify user is able to  see title as ceo in profile on RI  screen

    And I wait "testdata.testdata_time_5" milliseconds
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_profile_title_CEO"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario:Verify the user is able to see  default title  filter name in dropdown list of people screen.
    And I clicked "locators.locator_prospect_profiletab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see "testdata.testdata_title_name" in "locators.locator_prospectprofile_filter_default_dropdown"



@test13
Scenario:Verify the user is able to open and verify title's filter value in profile of people screen
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_profile_title_CEO"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario:Verify the user is able to open and verify  title filter value in profile of event's screen
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_profile_title_CEO"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario:Verify user is able to reset title by clicking on reset filter attribute
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_CEO_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check "locators.locator_CEO_filter_close" not present    
    And I clicked "locators.locator_prospectprofilfilter_close"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_CEO_delete"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_delete_ok_popup"
    And I wait "testdata.testdata_time_5" milliseconds
########


@test13
Scenario:Verify user is able to filter by school  which is under Professional  Attributes section
    And I clicked "locators.locator_AddNewprospectfilter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_school_name" in "locators.locator_prospectprofile_name"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I hover on "locators.locator_filter_timeframedd"
    And I wait "testdata.testdata_time_2" milliseconds
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_timeframedd_All"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_default_click"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I enter "testdata.testdata_professional_school_name" in "locators.locator_filter_professional_schoolname"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_filter_professional_schoolnames_select"
    And I wait "testdata.testdata_time_3" milliseconds 
    And I clicked "locators.locator_Saved_filter_save"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario:Verify  the user is able to see school filter name in in relationship intelligence's  filter dropdown 
    And I clicked "locators.locator_Relationship_intelligence"
    And I wait "testdata.testdata_time_10" milliseconds
    And I wait "testdata.testdata_time_20" milliseconds
    And I should see "testdata.testdata_school_name" in "locators.location_verify_filtername_inmoneymotionscreen"




@test13
Scenario:Verify user is able see to school filter result on RI screen when school value as northhavenschool
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_2" milliseconds
    And I should see field "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_school_northhavenschool"


@test13
Scenario:Verify user is able to see school filter result on user profile when filter option as school   
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_school_northhavenschool"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds






@test13
Scenario:Verify the user is able to see  default school filter name in dropdown list of people screen.
    And I clicked "locators.locator_prospect_profiletab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see "testdata.testdata_school_name" in "locators.locator_prospectprofile_filter_default_dropdown"



@test13
Scenario:Verify the user is able to open and verify school's filter value in profile of people screen
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_school_northhavenschool"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario:Verify the user is able to open and verify  school filter value in profile of event's screen
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_school_northhavenschool"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario:Verify user is able to reset school by clicking on reset filter attribute
    And I clicked "locators.locatorfilter_tab"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_school_edit"
    And I wait "testdata.testdata_time_3" milliseconds
    And I clicked "locators.locator_verify_Relationship_reset"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check "locators.locator_CEO_filter_close" not present    
    And I clicked "locators.locator_prospectprofilfilter_close"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_saved_prospectfilefilter_school_delete"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_delete_ok_popup"
    And I wait "testdata.testdata_time_5" milliseconds
