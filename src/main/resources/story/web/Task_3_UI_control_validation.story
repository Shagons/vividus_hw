Description: Task #3: UI controls validation

Scenario: Log In with composite steps
Given I am on the main application page
When I click on element located `By.xpath(//a[@href='/login'])`
When I log in as registered user
When I click on element located `By.xpath(//*[@id="login-submit"])`
Then the page title is equal to 'Log in to continue - Log in with Atlassian account'

Scenario: UI control validation #1
When I wait until element located `By.xpath(//button[text()='View all closed boards'])` appears
When I find = '1' elements by By.xpath(//button[text()='View all closed boards']) and for each element do
|step|
|When I click on element located `By.xpath(//button[text()='View all closed boards'])`|
|Then the number of elements found by the xpath '//*[text()='All Boards']' is equal to '1'|

Scenario: UI control validation #2
When I wait until element located `By.xpath(//*[text()='Settings' and @class='_3qwe2tMMFonNvf _2P-NazJFBDpMac'])` appears
When I find >= '1' elements by By.xpath(//*[text()='Settings' and @class='_3qwe2tMMFonNvf _2P-NazJFBDpMac']) and for each element do
|step|
|When I click on element located `By.xpath(//*[text()='Settings' and @class='_3qwe2tMMFonNvf _2P-NazJFBDpMac'])`|
|Then the number of elements found by the xpath '//*[text()='Upgrade']' is equal to '1'|