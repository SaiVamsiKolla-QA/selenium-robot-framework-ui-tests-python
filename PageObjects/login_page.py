from selenium.webdriver.common.by import By
from robot.api.deco import keyword
from PageObjects.base_page import BasePage

class LoginPage(BasePage):
    # Locators
    USERNAME_INPUT = (By.ID, "user-name")
    PASSWORD_INPUT = (By.ID, "password")
    LOGIN_BUTTON = (By.ID, "login-button")
    ERROR_MESSAGE = (By.CSS_SELECTOR, "[data-test='error']")

    def __init__(self):
        super().__init__()

    @keyword
    def enter_username(self, username):
        """Enter username in the username field"""
        self.input_text(self.USERNAME_INPUT, username)

    @keyword
    def enter_password(self, password):
        """Enter password in the password field"""
        self.input_text(self.PASSWORD_INPUT, password)

    @keyword
    def click_login_button(self):
        """Click the login button"""
        self.click_element(self.LOGIN_BUTTON)

    @keyword
    def login(self, username, password):
        """Perform login with given credentials"""
        self.enter_username(username)
        self.enter_password(password)
        self.click_login_button()

    @keyword
    def is_error_message_displayed(self):
        """Check if error message is displayed"""
        return self.is_element_visible(self.ERROR_MESSAGE)

    @keyword
    def get_error_message(self):
        """Get the error message text"""
        return self.get_text(self.ERROR_MESSAGE)

    @keyword
    def verify_on_login_page(self):
        """Verify that we are on the login page"""
        return self.is_element_visible(self.LOGIN_BUTTON) 