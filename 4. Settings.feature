Feature: Settings

All actions regarding the settings sector

Scenario: User is able to change "URL of profile picture"
Given User is signed in and in settings
When User changes "URL of profile picture" field
And User presses "Update Settings" button
Then URL of profile should be changed

Scenario: User is able to change "Username"
Given User is signed in and in settings
When User changes "Username" field
And User presses "Update Settings" button
Then Username should be changed

Scenario: User is able to insert informations in "Short bio about you" field 
Given User is signed in and in the settings
When User is inserting informations in "Short bio about you" field
And User presses "Update Settings" button
Then "Short bio about you" should be changed

Scenario: User is able to change informations in "Email" field
Given User is signed in and in settings
When User is changing informations in "Email" field
And User clicks "Update Settings" button
Then Email of profile should be changed

Scenario: User is able to change informations in "New Password" field
Given User is signed in and in settings
When User is inserting informations in "New Password" field
And User clicks "Update Settings" button
Then Password should be changed

Scenario: User is unable to change email to one already in use (negative) 
Given User is signed in and in settings
When User changes information in "Email" field
And User clicks "Update Settings" button
Then Page should refresh
And Email should not be changed

Scenario: User is unable to change username to one already in use (negative) 
Given User is signed in and in settings
When User changes information in "Username" field
And User clicks "Update Settings" button
Then Page should refresh
And Username should not change

Scenario: User is able to log out of the site 
Given User is signed in and in settings
When User clicks "Or click here to logout" button
Then User should be logged out
