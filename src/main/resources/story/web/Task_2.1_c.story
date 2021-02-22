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

Scenario: API board creation
Given I am on the main application page
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/?key=2ef198e04101da71e5829e928155c0fd&token=9f1600085abe05f4b3c615db3af83325b43e89759250739e0305f5e51d6185e0&name=HomeWorkBoard1'
Then the response code is equal to '200'