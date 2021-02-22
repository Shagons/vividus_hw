Scenario: Log In
Given I am on the main application page
When I click on element located `By.xpath(//a[@href='/login'])`
When I enter `shagons@mail.ru` in field located `By.xpath(//*[@id="user"])`
When I click on element located `By.xpath(//*[@id="login"])`
When I enter `Ba12na34nas56` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="login-submit"])`
Then the page title is equal to 'Log in to continue - Log in with Atlassian account'