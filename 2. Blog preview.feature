Feature: Blog preview

Actions on blog post previews

Scenario: User goes to blog post 
Given User is on the home page
When User presses article preview
Then User should be redirected to the article details

Scenario: Unregistered user clicks heart icon 
Given User is on the home page
When User clicks heart icon
Then User should be redirected to "sign up" page

Scenario: Registered user clicks heart icon 
Given User is on the home page (global feed)
When User clicks heart icon
Then The number next to the heart icon should be changed by one
And Button should become a filled color (green)

Scenario: Registered user clicks post author icon 
Given User is in the global feed section on the home page
When User clicks post author icon
Then User should be redirected to the user's profile

Scenario: Unregistered user clicks post author icon 
Given User is on the home page
When User clicks post author icon
Then User should be redirected to the user's profile

Scenario:  User clicks one of the tags on the right side of the page 
When User clicks one of the tags on the right side of the page
Then The user should be redirected to sections with blog posts tagged with the indicated tag
