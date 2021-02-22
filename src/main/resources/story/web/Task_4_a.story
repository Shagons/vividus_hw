Description: Task #4_a: Known issues

Scenario: Log In with composite steps
Given I am on the main application page
When I click on element located `By.xpath(//a[@href='/login'])`
When I log in as registered user
When I click on element located `By.xpath(//*[@id="login-submit"])`
Then the page title is equal to 'Log in to continue - Log in with Atlassian account'

Scenario: Known issues #1
When I wait until element located `By.xpath(//*[text()='Settings' and @class='_3qwe2tMMFonNvf _2P-NazJFBDpMac'])` appears
When I click on element located `By.xpath(//*[text()='Settings' and @class='_3qwe2tMMFonNvf _2P-NazJFBDpMac'])`
Then number of elements found by `By.xpath(//*[text()='Settings' and @class='_3qwe2tMMFonNvf _2P-NazJFBDpMac'])` is = `10`

Scenario: Team Table visual check
Given I am on the main application page
When I click on element located `By.xpath(//*[@class='_3qwe2tMMFonNvf _2P-NazJFBDpMac' and text()='Team table'])`
When I COMPARE_AGAINST baseline with `Team Table` ignoring:
|ELEMENT								|
|By.xpath(//*[@class='_2HoZh0PKRL4mMJ'])|