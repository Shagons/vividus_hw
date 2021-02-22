Description: Task #2.1.c:Trello;

Scenario: Log In
Given I am on the main application page
When I click on element located `By.xpath(//a[@href='/login'])`
When I enter `shagons@mail.ru` in field located `By.xpath(//*[@id="user"])`
When I wait until element located `By.xpath(//*[@id="password"])` disappears
When I click on element located `By.xpath(//*[@id="login"])`
When I enter `Ba12na34nas56` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="login-submit"])`
Then the page title is equal to 'Log in to continue - Log in with Atlassian account'

Scenario: User profile verification
When I wait until element located `By.xpath(//button[@title='Yahor (yahor19)' and @type='button'])` appears
When I click on element located `By.xpath(//button[@title='Yahor (yahor19)' and @type='button'])`
When I click on element located `By.xpath(//*[@href='/yahor19/profile'])`
Then the page title is equal to 'Profile | Trello'
Then the text 'yahor19' exists