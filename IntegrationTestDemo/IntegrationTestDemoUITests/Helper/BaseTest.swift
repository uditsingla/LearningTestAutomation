import XCTest

class BaseTest: XCTestCase {
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
        
        let loginPage = LoginPage(app: app)
        WaitHelper.waitForElementToAppear(loginPage.usernameTextField)
    }
    
    override func tearDown() {
        super.tearDown()
    }
}