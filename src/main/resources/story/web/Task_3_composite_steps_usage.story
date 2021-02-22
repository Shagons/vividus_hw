Description: Task #3: Move several checks to composite steps

Scenario: Create users with composite steps
Given I am on the main application page
When I create new users
When I click on element located `By.xpath(//*[@id='signup-submit'])`

Scenario: Log In with composite steps
Given I am on the main application page
When I click on element located `By.xpath(//a[@href='/login'])`
When I log in as registered user
When I click on element located `By.xpath(//*[@id="login-submit"])`
Then the page title is equal to 'Log in to continue - Log in with Atlassian account'