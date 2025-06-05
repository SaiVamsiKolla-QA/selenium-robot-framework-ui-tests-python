from robot.libraries.BuiltIn import BuiltIn
from robot.api.deco import keyword
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import TimeoutException, NoSuchElementException

class BasePage:
    def __init__(self):
        self.seleniumlib = BuiltIn().get_library_instance('SeleniumLibrary')
        self.driver = self.seleniumlib.driver
        self.timeout = 10

    @keyword
    def find_element(self, locator):
        """Find an element with explicit wait"""
        try:
            element = WebDriverWait(self.driver, self.timeout).until(
                EC.presence_of_element_located(locator)
            )
            return element
        except TimeoutException:
            raise NoSuchElementException(f"Element {locator} not found")

    @keyword
    def click_element(self, locator):
        """Click an element with explicit wait"""
        element = WebDriverWait(self.driver, self.timeout).until(
            EC.element_to_be_clickable(locator)
        )
        element.click()

    @keyword
    def input_text(self, locator, text):
        """Input text into an element with explicit wait"""
        element = self.find_element(locator)
        element.clear()
        element.send_keys(text)

    @keyword
    def get_text(self, locator):
        """Get text from an element with explicit wait"""
        element = self.find_element(locator)
        return element.text

    @keyword
    def is_element_visible(self, locator):
        """Check if element is visible"""
        try:
            WebDriverWait(self.driver, self.timeout).until(
                EC.visibility_of_element_located(locator)
            )
            return True
        except TimeoutException:
            return False

    @keyword
    def wait_until_element_visible(self, locator):
        """Wait until element is visible"""
        WebDriverWait(self.driver, self.timeout).until(
            EC.visibility_of_element_located(locator)
        )

    @keyword
    def wait_until_element_not_visible(self, locator):
        """Wait until element is not visible"""
        WebDriverWait(self.driver, self.timeout).until(
            EC.invisibility_of_element_located(locator)
        ) 