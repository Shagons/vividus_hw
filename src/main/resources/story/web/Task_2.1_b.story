Description: Task #2.1.b:Trello;

Scenario: Sign Up
Given I am on the main application page
When I enter `<generateEmail>` in field located `By.xpath(//form[@class='row my-5']//input[@type='email'])`
When I click on element located `By.xpath(//form[@class='row my-5']//button[@type='submit'])`
When I enter `<generateName>` in field located `By.xpath(//input[@id='displayName'])`
When I enter `<generatePassword>` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//*[@id='signup-submit'])`
Examples:
{transformer=FORMATING}
|generateEmail|generateName|generatePassword|
|#{generate(Internet.safeEmailAddress)}|#{generate(Name.firstName)}|#{generate(regexify '[qwerty123456]{8}')}|
|#{generate(Internet.safeEmailAddress)}|#{generate(Name.firstName)}|#{generate(regexify '[qwerty123456]{8}')}|
|#{generate(Internet.safeEmailAddress)}|#{generate(Name.firstName)}|#{generate(regexify '[qwerty123456]{8}')}|
|#{generate(Internet.safeEmailAddress)}|#{generate(Name.firstName)}|#{generate(regexify '[qwerty123456]{8}')}|
|#{generate(Internet.safeEmailAddress)}|#{generate(Name.firstName)}|#{generate(regexify '[qwerty123456]{8}')}|