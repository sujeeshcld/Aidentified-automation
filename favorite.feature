Feature: To test M2 scenarios

@test13
Scenario: Verify the successful login.
    When I go to "/user/login"
    And I wait "testdata.testdata_time_20" milliseconds
    And I enter "testdata.testdata_username" in "locators.locator_username"
    And I enter "testdata.testdata_password" in "locators.locator_password"
    And I click on "locators.locator_signIn"
    And I wait "testdata.testdata_time_20" milliseconds 
    And I wait "testdata.testdata_time_20" milliseconds 


@test13
Scenario: Verify user is able to add to favorites from RI screen
    And I clicked "locators.locator_RI_time_all"
    And I wait "testdata.testdata_time_20" milliseconds
    And I wait "testdata.testdata_time_20" milliseconds
    And I enter "testdata.testdata_fav_search_name" in "locators.locator_search_moneymotion"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_addtofavoritebtn"
    And I wait "testdata.testdata_time_8" milliseconds


@test13
Scenario: Verify user is able see remove from favorite button while clicking on add to favorite button
    And I should see field "locators.locator_removefromfavoritebtn"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds
    
@test13
Scenario: Verify user is able remove added favorite by cliking on remove icon on the Ri screen(click on remove button which appear only when mouse is hovering on list).
    And I mouse hover on "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_4" milliseconds
    And I clicked "locators.locator_remove_fav_button_RIscreen"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario: Verify user is able to see changed favorite details (removed) from profile screen
    And I clicked "locators.locator_M2_people_rollup_firstrow"
    And I wait "testdata.testdata_time_8" milliseconds
    And I should see field "locators.locator_addtofavoritebtn"
    And I clicked "locators.locator_addtofavoritebtn"
    And I wait "testdata.testdata_time_8" milliseconds
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds


@test13
Scenario: Verify user is able to sort by name in favorite sceen and check whether result is in ascending order or not
    And I click on "locators.locator_myfavorite_tab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_sort_name_in_fav"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check sort order in ascending order "locators.locator_fav_name_sort"



@test13
Scenario: Verify user is able to sort by title in favorite sceen and check whether result is in ascending order or not
    And I clicked "locators.locator_sort_title_in_fav"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check sort order in ascending order "locators.locator_fav_title_sort"


@test13
Scenario: Verify user is able to sort by company in favorite sceen and check whether result is in ascending order or not
    And I clicked "locators.locator_sort_company_fav"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check sort order in ascending order "locators.locator_fav_company_sort"


@test13
Scenario: Verify user is able to sort by state in favorite sceen and check whether result is in ascending order or not
    And I clicked "locators.locator_sort_state_fav"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check sort order in ascending order "locators.locator_fav_state_sort"


@test13
Scenario: Verify user is able to sort by age in favorite sceen and check whether result is in ascending order or not
    And I clicked "locators.locator_sort_Age_fav"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check sort order in ascending order "locators.locator_fav_Age_sort"


@test13
Scenario: Verify user is able to sort by event in favorite sceen and check whether result is in ascending order or not
    And I clicked "locators.locator_sort_event_fav"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check sort order in ascending order "locators.locator_fav_event_sort"


@test13
Scenario: Verify user is able to sort by age in favorite sceen and check whether result is in ascending order or not
    And I mouse hover on "locators.locator_favo_value_filter"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_sort_Valuet_fav"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check sort dollar in ascending order "locators.locator_fav_value_sort"


@test13
Scenario: Verifying user is see added favorites list in the favorite tab by searching by name 

    And I clicked "locators.locator_fav_search_by_name"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_fav_search_name" in "locators.locator_search_fav_byname"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_searchbutton_in_fav"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_Fav_firstrow"


@test13
Scenario: Verifying user is see added favorites list  in the favorite tab by searching by company name
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_fav_search_by_companyname"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_fav_search_cmpnyname" in "locators.locator_search_fav_bycompanyname"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_fav_company_search"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_Fav_firstrow"


@test13
Scenario: Verifying user is see added favorites list in the favorite tab by searching by title 
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_fav_search_by_title"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_fav_search_title" in "locators.locator_search_fav_bytitle"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_fav_title_search"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_Fav_firstrow"

##

@test13
Scenario: Verifying user is able to see reset button of state dropdown in favorite screen is disabled before selecting a state from it
    And I clicked "locators.locator_state_filter_in_fav"
    And I wait "testdata.testdata_time_5" milliseconds
    #And I should see field "locators.locator_reset_disabled" as disabled

@test13
Scenario: Verifying user is able to see reset button of state dropdown in favorite screen is enabled after selecting a state from it
    And I clicked "locators.locator_state_filter_in_fav_CA_select"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_state_CA_chacked"
    And I wait "testdata.testdata_time_2" milliseconds 

@test13
Scenario: Verifying user is able to see all state in favorite screen are CA when selecting Ca from list
    And I clicked "locators.locator_fav_state_search_ok"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_Fav_firstrow"

    
@test13
Scenario: Verifying user is able to see state Ca is unchecked while clicking on reset button in the favorite screen
    And I clicked "locators.locator_state_filter_in_fav"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_fav_state_search_reset"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check "locators.locator_state_CA_chacked" not present  


@test13
Scenario: Verifying user is able to see education filter result in favorate screen
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_fav_search_by_school"
    And I wait "testdata.testdata_time_5" milliseconds
    And I enter "testdata.testdata_fava_school_Granada_Hills" in "locators.locator_search_fav_bySchool"
    And I wait "testdata.testdata_time_2" milliseconds 
    And I clicked "locators.locator_fav_education_search"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_Fav_firstrow"


@test13
Scenario: Verifying user is able to reset education filter in the favorite screen
    And I clicked "locators.locator_fav_search_by_school"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_fav_education_search_reset"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check "locators.locator_state_CA_chacked" not present


@test13
Scenario: Verifying user is able to see reset button of event  in favorite screen is disabled before selecting a event from it
     And I mouse hover on "locators.locator_favo_value_filter"
    And I clicked "locators.locator_event_filter_in_fav"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_reset_disabled" as disabled

@test13
Scenario: Verifying user is able to see reset button of event  in favorite screen is enabled after selecting a event from it
    And I clicked "locators.locator_state_filter_in_fav_stockaquasition_select"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_state_event_chacked"
    And I wait "testdata.testdata_time_2" milliseconds 

@test13
Scenario: Verify user is able to see all event in favorite screen are inside stock aqasition when selecting inside stock aqasition from list
    And I clicked "locators.locator_fav_search_Ok"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_Fav_firstrow"

@test13
Scenario: Verify user is able to see  event in profile  screen is inside stock aqasition 
    And I clicked "locators.locator_Fav_firstrow"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_insider_stock_acuasitioninfav"
    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario: Verify user is able to see event name inside stock aqasition is unchecked while cliking on reset button in the favorite screen
    #And I clicked "locators.locator_event_filter_in_fav"
    And I wait "testdata.testdata_time_5" milliseconds
    #And I clicked "locators.locator_fav_event_search_reset"
    And I wait "testdata.testdata_time_5" milliseconds
    #And I check "locators.locator_state_event_chacked" not present  


@test13
Scenario: Verify user is able to see reset button of value  in favorite screen is disabled before selecting a value from it
    And I clicked "locators.locator_favo_value_filter"
    And I wait "testdata.testdata_time_5" milliseconds
    #And I should see field "locators.locator_reset_disabled" as disabled

@test13
Scenario: Verify user is able to see reset button of value  in favorite screen is enabled after selecting a value from it
    And I clicked "locators.locator_filter_in_fav_value_select0to25m"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_value_in_fav_checked"
    And I wait "testdata.testdata_time_2" milliseconds 

@test13
Scenario: Verify user is able to see all value in favorite screen are between 0 to 25 M  when selecting 0 to 25 M from list
    And I clicked "locators.locator_fav_search_Ok"
    And I wait "testdata.testdata_time_5" milliseconds
    And I should see field "locators.locator_Fav_firstrow"


@test13
Scenario: Verify user is able to see value as between 0 to 25 M in profile screen   
    And I clicked "locators.locator_Fav_firstrow"
    And I wait "testdata.testdata_time_5" milliseconds
    #And I check profile value is between dollors "testdata.testdata_value_0M" and "testdata.testdata_value_50M" on "locators.locator_value_card"
###
##########################################
###########################################

    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds
    And I click on "locators.locator_Prospect_finder"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I click on "locators.locator_myfavorite_tab"
    And I wait "testdata.testdata_time_5" milliseconds 
    And I clicked "locators.locator_Fav_firstrow"
    And I wait "testdata.testdata_time_5" milliseconds

@test13
Scenario: Verify user is able to change event view to list view in  profile screen
    And I clicked "locators.locator_profile_list_view"
    And I wait "testdata.testdata_time_3" milliseconds
    And I check "locators.locator_profile_type_card_view" not present


@test13
Scenario: Verify user is able to sort by event in list view and card view on the profiles
    And I clicked "locators.locator_list_view_profile_event_sort"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check sort order in ascending order "locators.locator_list_view_profile_event_sort_check"

@test13
Scenario: Verify user is able to sort by value in list view and card view on the profiles
    And I clicked "locators.locator_list_view_profile_Value_sort"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check sort dollar in ascending order "locators.locator_list_view_profile_value_sort_check"

@test13
Scenario: Verify user is able to sort by date in list view and card view on the profiles
    And I clicked "locators.locator_list_view_profile_state_sort"
    And I wait "testdata.testdata_time_5" milliseconds
    And I clicked "locators.locator_list_view_profile_state_sort"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check sort order in ascending order "locators.locator_list_view_profile_state_sort_check"

@test13
Scenario: Verify user is able to see reset button is disabled before selecting  search by event checkbox on  list view and card view on the profiles
    And I clicked "locators.locator_event_filter_in_card"
    And I wait "testdata.testdata_time_2" milliseconds
    And I should see field "locators.locator_reset_disabled" as disabled

@test13
Scenario: Verify user is able to see reset button is enabled after selecting  search by event as stock acqusition on  list view and card view on the profiles
    And I clicked "locators.locator_stock_acusition_in_card_filter"
    And I wait "testdata.testdata_time_2" milliseconds
    And I clicked "locators.locator_reset_enabled"
    And I wait "testdata.testdata_time_2" milliseconds
    
@test13
Scenario: Verify user is able to see search result when  search by event as stock acqusition is selected
    And I clicked "locators.locator_stock_acusition_in_card_filter"
    And I should see field "locators.locator_result_stockAcqusition"

########################################
##################################
    ##########################################
    


@test13
Scenario: Verify user is able to sort by state in list view and card view on the profiles
    And I clicked "locators.locator_list_view_profile_state_sort"
    And I wait "testdata.testdata_time_5" milliseconds
    And I check sort order in ascending order "locators.locator_list_view_profile_state_sort_check"




@test13
Scenario: Verify user is able to change event view to card view in  profile screen
    And I clicked "locators.locator_profile_card_view"
    And I wait "testdata.testdata_time_3" milliseconds
    And I should see field "locators.locator_profile_type_card_view"

    And I clicked "locators.locator_profile_close"
    And I wait "testdata.testdata_time_5" milliseconds
    
@test13
Scenario: Verify user is able to see value 0 to 25 M is unchecked while cliking on reset button in the favorite screen
    #And I clicked "locators.locator_favo_value_filter"
    #And I clicked "locators.locator_fav_event_search_reset"
    And I wait "testdata.testdata_time_5" milliseconds
    #And I check "locators.locator_fav_event_search_reset" not present  


@test13
Scenario: Verify user is able to remove added list from favorite 
    And I mouse hover on "locators.locator_favorite_first_row"
    And I wait "testdata.testdata_time_4" milliseconds
    And I clicked "locators.locator_remove_fav_button_RIscreen"
    And I wait "testdata.testdata_time_5" milliseconds



@test13
Scenario: Verify user is not able to see removed favoriteunder favorite list
    And I check "locators.locator_fav_item_name" not present
    And I wait "testdata.testdata_time_4" milliseconds



