Feature: User Login

Creating a user account

Scenario: Sign up 
Given User has an email address
When User enters username, email address and password
And The user clicks the "sign up" button
Then The user should create an account

Scenario: Sign in
Given User is registered
When User enters their email address and password
And User clicks the button "sign in"
Then The user should be logged in

Scenario: User sign in with invalid email (negative) 
When User fills out email field with non-existent email and password
And User presses the button "sign in"
Then User should not be logged in

Scenario:  User sign in with invalid password (negative) 
When User fills out password field with existing email and invalid password
And User presses the "sign in" button
Then User should not be logged in

Scenario:  User sign up with existing username and non-existent email (negative) 
When User fills out field with non-existent email and existing username
And User presses the "sign up" button
Then User should not be signed up

Scenario: User sign up with non-existent username and existing email (negative)
When User fills out field with existing email and non-existent username
And User fills out field with existing email and non-existent username
Then User should not be signed up

Scenario:  User clicks "need an account?" button 
Given User is in sign in page
When User clicks "Need an account?" button
Then User should be redirected to the registration page

Scenario: User clicks "have an account? " button 
Given User is in sign up page
When User clicks "Have an account?" button
Then User should be redirected to the sign in page
