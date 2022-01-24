## Here we will learn how we write feature file

1. Create a File inside feature folder and give the name according to feature for ex: login with extention feature for ex: login.feature

2. Now the Syntex which needs to be follow to add tests is mention below

  > Feature: Define the feature in the very first thing of file
  
    > Background: Mention steps which need to be execute before each scenario (Login to test site)
         > Given: I am on test page
         >  When: I click on login button
         >  Then: I should see login page
         >  When: I fill login cred and clock on sign-in
         >  Then: I should be logged-in

    > Scenario: Mention the scenario which you will be automating (mouse right click functionality settings)
      > Given: Mention your given contion here like (User is logged in)
      >  Whne: Mention your action( I click on control pannel if visible)
      >   But: Mention next step if previous step didnt meet expectations (I click on dashboard and then click on control pannel)
      >   And: Mention additional actions (I click on mouse settings inside control pannel)
      >  Then: Mention your assetions (I should see the settings to change the mouse right click functionality)

