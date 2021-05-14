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
Scenario: Verify user is able to filter by name in the prospect finder-people screen and verify data in profile screen.
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_filterby_name_marc" in "locators.locator_fullname_filter_prospectfinder"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_fullname_filter_prospectfinder_result"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario: Verify user is able to filter by name in the prospect finder-insight screen and verify data in profile screen.
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is able to filter by name in the prospect finder-event screen and verify data in profile screen.
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_fullname_filter_prospectfinder_result"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds




@test13
Scenario: Verify user is able to  clear full name filter by clicking on clear button.
    #And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filterbox_name" not present  
    And I wait "testdata.testdata_time_3" milliseconds



@test13
Scenario: Verify user is able to filter bycity name in the prospect finder-people screen and verify data in profile screen.
    And I clicked "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_city_name_mobile" in "locators.locator_homecity_prospectfinder_input"
    And I wait "testdata.testdata_time_5" milliseconds
     And I clicked "locators.lcator_homecity_mobile_dd"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_cityname_filter_mobile_result"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is able to filter by city name in the prospect finder-insight screen and verify data in profile screen.
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is able to filter by city name  in the prospect finder-event screen and verify data in profile screen.
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_cityname_filter_mobile_result"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds




@test13
Scenario: Verify user is able to  clear full name filter by clicking on clear button.
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filterbox_homecityname" not present  
    And I wait "testdata.testdata_time_3" milliseconds
########

@test13
Scenario: Verify user is able minimize maximize household attributes section
    And I hover on "locators.locator_householdattribute_minimize"
    And I wait "testdata.testdata_time_8" milliseconds
    And I hover on "locators.locator_householdattribute_minimize"
    And I wait "testdata.testdata_time_8" milliseconds
   


@test13
Scenario: Verify user is able to filter by state name in the prospect finder-people screen and verify data in profile screen.
    And I click on "locators.locator_filter_by_state"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_filter_state_AlabamaAL"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_sidefilter_sateresult"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is able to filter by state name in the prospect finder-insight screen and verify data in profile screen.
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_sidefilter_sateresult"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is able to filter by state name  in the prospect finder-event screen and verify data in profile screen.
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I clicked "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_sidefilter_sateresult"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds




@test13
Scenario: Verify user is able to  clear state filter by clicking on clear button.
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filterbox_statename" not present  
    And I wait "testdata.testdata_time_3" milliseconds
  

@test13
Scenario: Verify user is able to  Household attributes by clicking on Advanced search button.
    And I clicked "locators.locator_household_adv_max"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_sidefilter_Streetaddressinput"

    
@test13
Scenario: Verify user is able to filter by home address name in the prospect finder-people screen and verify data in profile screen.
    And I enter "testdata.testdata_city_name_NewYork" in "locators.locator_sidefilter_Streetaddressinput"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_Newyork_select"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_div_northpolconfirm"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is able to filter by home address name in the prospect finder-insight screen and verify data in profile screen.
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is able to filter by home address name  in the prospect finder-event screen and verify data in profile screen.
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_prospectfile_event_firstRow"
    And I wait "testdata.testdata_time_5" milliseconds




@test13
Scenario: Verify user is able to  clear home address name filter by clicking on clear button.
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filterbox_streetaddressname" not present  
    And I wait "testdata.testdata_time_3" milliseconds


    #######

    
@test13
Scenario: Verify user is able to filter by home city name in the prospect finder-people screen and verify data in profile screen.
    And I enter "testdata.testdata_city_name_NewYork" in "locators.locator_sidefilter_cityaddressinput"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_Newyork_select_city"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_div_cityNYconfirm"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is able to filter by home city name in the prospect finder-insight screen and verify data in profile screen.
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_div_cityNYconfirm"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is able to filter by home city name  in the prospect finder-event screen and verify data in profile screen.
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_div_cityNYconfirm"
    And I wait "testdata.testdata_time_5" milliseconds




@test13
Scenario: Verify user is able to  clear home city name filter by clicking on clear button.
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filterbox_sStateaddressname" not present  
    And I wait "testdata.testdata_time_3" milliseconds
       
@test13
Scenario: Verify user is able to filter by household interest in the prospect finder-people screen and verify data in profile screen.
    And I hover on "locators.locator_filter_Household_inter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_filter_Household_inter_baseball"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filter_Household_inter_baseballs"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is able to filter by household interest in the prospect finder-insight screen and verify data in profile screen.
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_filterbox_baseball"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is not able to see filter by household interest result in profile screen.
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I check "locators.locator_filterbox_baseball" not present  
    And I wait "testdata.testdata_time_5" milliseconds




@test13
Scenario: Verify user is able to  clear household interest filter by clicking on clear button.
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filterbox_baseball" not present  
    And I wait "testdata.testdata_time_3" milliseconds

    ##

@test13
Scenario: Verify user is able to  see 2 input box while selecting between for zip in the people screen.
    And I hover on "locators.locator_age_filter_bwn_selectedin_dd"
    And I wait "testdata.testdata_time_4" milliseconds
    And I clicked "locators.locator_age_filter_bwn_select_dd"
    And I wait "testdata.testdata_time_3" milliseconds
    And I should see field "locators.locator_age_filter_bwn_select_dd_min"
    And I should see field "locators.locator_age_filter_bwn_select_dd_max"



         
@test13
Scenario: Verify user is able to filter by between zip in the prospect finder-people screen and verify data in profile screen.
    And I enter "testdata.testdata_filterzip1" in "locators.locator_age_filter_bwn_select_dd_min"
        And I enter "testdata.testdata_filterzip2" in "locators.locator_age_filter_bwn_select_dd_max"

    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filterbox_betweenzip"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is able to filter by between zip in the prospect finder-insight screen and verify data in profile screen.
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_filterbox_betweenzip"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is not able to see filter by between zip result in profile screen.
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filterbox_betweenzip"
    And I wait "testdata.testdata_time_5" milliseconds




@test13
Scenario: Verify user is able to  clear between zip filter by clicking on clear button.
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filterbox_exactzip" not present  
    And I wait "testdata.testdata_time_3" milliseconds


@test13
Scenario: Verify user is able to  see single input box while selecting exact for zip in the people screen.
    And I hover on "locators.locator_age_filter_bwn_selectedin_dd"
    And I wait "testdata.testdata_time_4" milliseconds
    And I clicked "locators.locator_age_filter_exact_select_dd"
    And I wait "testdata.testdata_time_3" milliseconds
    And I should see field "locators.locator_age_filter_exact_select_dd_exact"

    

         
@test13
Scenario: Verify user is able to filter by exact zip in the prospect finder-people screen and verify data in profile screen.
    And I enter "testdata.testdata_filterzip1" in "locators.locator_age_filter_exact_select_dd_exact"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filterbox_exactzip"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is able to filter by exact zip in the prospect finder-insight screen and verify data in profile screen.
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_filterbox_exactzip"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is not able to see filter by exact zip result in profile screen.
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filterbox_betweenzip"
    And I wait "testdata.testdata_time_5" milliseconds




@test13
Scenario: Verify user is able to  clear exact zip filter by clicking on clear button.
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filterbox_exactzip" not present  
    And I wait "testdata.testdata_time_3" milliseconds
#####

@test13
Scenario: Verify user is able see female and male options inside the sex dropdown in the prospect finder-people screen.
    And I hover on "locators.locator_sex_inputin_people_filter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_sex_male_people_filter"
    And I should see field "locators.locator_sex_female_people_filter"


@test13
Scenario: Verify user is able to filter by sex as male in the prospect finder-people screen and verify data in profile screen.
    And I clicked "locators.locator_sex_male_people_filter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_M_in_peopleprofiles"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is able to filter by sex as male in the prospect finder-insight screen and verify data in profile screen.
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_filterbox_sexm"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is able to filter by sex as male in the prospect finder-event screen and verify data in profile screen.
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filterbox_sexm"
    And I wait "testdata.testdata_time_5" milliseconds




@test13
Scenario: Verify user is able to  clear  filter  sex as male by clicking on clear button.
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filterbox_sexm" not present  
    And I wait "testdata.testdata_time_3" milliseconds




@test13
Scenario: Verify user is able to filter by sex as male in the prospect finder-people screen and verify data in profile screen.
    And I hover on "locators.locator_chiledu_inputin_people_filter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_sex_chiledu_people_filter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filterbox_chiledu1m"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is able to filter by sex as male in the prospect finder-insight screen and verify data in profile screen.
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_filterbox_chiledu1m"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is able to filter by sex as male in the prospect finder-event screen and verify data in profile screen.
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filterbox_chiledu1m"
    And I wait "testdata.testdata_time_5" milliseconds




@test13
Scenario: Verify user is able to  clear  filter  sex as male by clicking on clear button.
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filterbox_chiledu1m" not present  
    And I wait "testdata.testdata_time_3" milliseconds

#####26042021
    
@test1312
Scenario: Verify user is able see exact and between options inside the age dropdown in the prospect finder-people screen.
    And I hover on "locators.locator_age_inputin_people_filter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_AGE_between_people_filter"
    And I should see field "locators.locator_AGE_exact_people_filter"

@test1312
Scenario: Verify user is able to  see 2 input box while selecting between for age in the people screen.
    And I clicked "locators.locator_AGE_between_people_filter"
    And I wait "testdata.testdata_time_3" milliseconds
    And I should see field "locators.locator_age_filter_bwn_select_dd_minage"
    And I should see field "locators.locator_age_filter_bwn_select_dd_maxage"



@test1312
Scenario: Verify user is able to  see only 1 input box while selecting exact for age in the people screen.
    And I hover on "locators.locator_age_inputin_people_filter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_AGE_exact_people_filter"

@test1312
Scenario: Verify user is able to see filter by exact age as 40 in the prospect finder-people screen and verify data in profile screen.
    And I hover on "locators.locator_AGE_exact_people_filter"
    And I wait "testdata.testdata_time_3" milliseconds
    And I enter "testdata.testdata_40" in "locators.locator_AGE_exact_people_filter_input"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filterbox_Age40"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test1312
Scenario: Verify user is able to see  filter by exact age as 40 in the prospect finder-insight screen and verify data in profile screen.
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_filterbox_Age40"
    And I wait "testdata.testdata_time_5" milliseconds



@test1312
Scenario: Verify user is able to see filter by exact age as 40 in the prospect finder-event screen and verify data in profile screen.
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filterbox_Age40"
    And I wait "testdata.testdata_time_5" milliseconds




@test1312
Scenario: Verify user is able to  clear  filter  exact age as 40 by clicking on clear button.
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filterbox_Age40" not present  
    And I wait "testdata.testdata_time_5" milliseconds




@test1312
Scenario: Verify user is able to see filter by age as between 40 and 60 in the prospect finder-people screen and verify data in profile screen.
   And I hover on "locators.locator_age_inputin_people_filter"
    And I wait "testdata.testdata_time_5" milliseconds
     And I hover on "locators.locator_AGE_exact_people_filter"
    And I wait "testdata.testdata_time_3" milliseconds
    And I enter "testdata.testdata_40" in "locators.locator_AGE_exact_people_filter_input"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filterbox_Age40"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test1312
Scenario: Verify user is able to filter byage as between 40 and 60  in the prospect finder-insight screen and verify data in profile screen.
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_filterbox_Age40"
    And I wait "testdata.testdata_time_5" milliseconds



@test1312
Scenario: Verify user is able to filter by age as between 40 and 60  in the prospect finder-event screen and verify data in profile screen.
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filterbox_Age40"
    And I wait "testdata.testdata_time_5" milliseconds




@test1312
Scenario: Verify user is able to  clear  filter  age as between 40 and 60  by clicking on clear button.
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filterbox_Age40" not present  
    And I wait "testdata.testdata_time_3" milliseconds
############################


@test13
Scenario: Verify user is able to filter by marital status as married in the prospect finder-people screen and verify data in profile screen.
    And I hover on "locators.locator_marital_dd_people_filter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_marital_dd_people_filter_married"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filterbox_marritalstatus_m"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is able to filter by status as married in the prospect finder-insight screen and verify data in profile screen.
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_filterbox_marritalstatus_m"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is able to filter by status as married in the prospect finder-event screen and verify data in profile screen.
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filterbox_marritalstatus_m"
    And I wait "testdata.testdata_time_5" milliseconds




@test13
Scenario: Verify user is able to  clear  filter  status as married by clicking on clear button.
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filterbox_marritalstatus_m" not present  
    And I wait "testdata.testdata_time_3" milliseconds


@test13
Scenario: Verify user is able to filter by marital status as single in the prospect finder-people screen and verify data in profile screen.
    And I hover on "locators.locator_marital_dd_people_filter"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_marital_dd_people_filter_single"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_prospectfile_people_firstRow"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filterbox_marritalstatus_s"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is able to filter by status as single in the prospect finder-insight screen and verify data in profile screen.
    And I clicked "locators.locator_insighttab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I should see field "locators.locator_filterbox_marritalstatus_s"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is able to filter by status as single in the prospect finder-event screen and verify data in profile screen.
    And I clicked "locators.locator_event_tab"
    And I wait "testdata.testdata_time_10" milliseconds
    And I should see field "locators.locator_filterbox_marritalstatus_s"
    And I wait "testdata.testdata_time_5" milliseconds




@test13
Scenario: Verify user is able to  clear  filter  status as single by clicking on clear button.
    And I clicked "locators.locatorpeopletab"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_prospect_findrer_clearbutton"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_filterbox_marritalstatus_s" not present  
    And I wait "testdata.testdata_time_3" milliseconds
