from robot.libraries.BuiltIn import BuiltIn



selib = BuiltIn().get_library_instance("SeleniumLibrary")


def get_webdriver_instance():
    return selib.driver
def highlightele(element):
    driver = get_webdriver_instance()
    driver.execute_script("arguments[0].setAttribute('style', arguments[1])", element, "border: 4px solid green")
def navigateForward():
    driver=get_webdriver_instance()
    driver.forward()