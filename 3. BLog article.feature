Feature: Blog articles

All the actions required for the correct operation of blog articles

Scenario: User clicks "New article" button 
Given User is signed in
When User clicks "New article" button
Then User should be redirected to the section where he can create his article

Scenario: User is able to create article 
Given User is signed in and is on the "New article" page
When User fills in "Article title", "What's this article about?", "Write your article (in markdown)", "Enter tags"
And User clicks "Publish Article" button
Then User should be redirected to the newly created post

Scenario: User is able to open "Edit Article" page 
Given User is signed in and on a newly created post page
When User clicks one of the "Edit article" buttons
Then User should be redirected to a page where he can edit the article

Scenario:  User is able to make a comment 
Given User is signed in and on a newly created post page
When User enters text into the "Write a comment..." field
And User clicks "Post Comment" button
Then The comment should be published under the article

Scenario: User is able to delete a comment
Given User is signed in and on a newly created post page
When The user clicks a button in the form of a trash can
Then Comment should be deleted

Scenario: User is able to delete a post 
Given User is signed in and on a newly created post page
When User clicks the "Delete Article" button
Then User should delete his article

Scenario: User is able to edit post 
Given User is on the page of editing posts
When User changes article data ("Article title", "What's this article about?", "Write your article", "Enter tags")
And User clicks the "Publish Article" button
Then The edited article should be published

Scenario: User is able to click their username 
Given User is signed in and on a newly created post page
When User clicks on their username
Then User should be redirected to their profile
