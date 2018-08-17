from selenium import webdriver
from selenium.webdriver.chrome.options import Options


chrome_options = Options()
chrome_options.add_argument("--headless")
chrome_options.add_argument("--disable-dev-shm-usage")
chrome_options.add_argument("--no-sandbox")

driver = webdriver.Chrome(r'/opt/chrome/chromedriver', chrome_options=chrome_options)

driver.get("http://python.org")
print "page title: %s" % driver.title
