Description: Task #2.2.d:Trello;

GivenStories: precondition/sign_in.story

Scenario: User profile visual check 
When I wait until element located `By.xpath(//button[@title='Yahor (yahor19)' and @type='button'])` appears
When I click on element located `By.xpath(//button[@title='Yahor (yahor19)' and @type='button'])`
When I click on element located `By.xpath(//*[@href='/yahor19/profile'])`
When I COMPARE_AGAINST baseline with `Profile`

Scenario: Create board visual check
Given I am on the main application page
When I click on element located `By.xpath(//*[@class='_3qwe2tMMFonNvf _2P-NazJFBDpMac' and text()='Members'])`
When I click on element located `By.xpath(//*[@data-test-id='profileImage'])`
When I COMPARE_AGAINST baseline with `members`

Scenario: Team Table visual check
Given I am on the main application page
When I click on element located `By.xpath(//*[@class='_3qwe2tMMFonNvf _2P-NazJFBDpMac' and text()='Team table'])`
When I wait until element located `By.xpath(//*[text()='Start 14-day free trial'])` appears
When I COMPARE_AGAINST baseline with `Team Table` ignoring:
|ELEMENT								|
|By.xpath(//*[@class='_2HoZh0PKRL4mMJ'])|

Scenario: Team visual check
Given I am on the main application page
When I click on element located `By.xpath(//*[@aria-label='Create Board or Team'])`
When I click on element located `By.xpath(//*[text()='Create team'])`
When I click on element located `By.xpath(//*[@class='_3okPZ1UgyOorbL'])`
When I COMPARE_AGAINST baseline with `team`

Scenario: Settings visual check
Given I am on the main application page
When I click on element located `By.xpath(//*[@class='_3qwe2tMMFonNvf _2P-NazJFBDpMac' and text()='Settings'])`
When I wait until element located `By.xpath(//*[@alt='Add to Slack'])` appears
When I COMPARE_AGAINST baseline with `settings`