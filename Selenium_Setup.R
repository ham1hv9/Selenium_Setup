# selenium Setup
# Download and install Java
# https://www.azul.com/core-post-download/?endpoint=zulu&uuid=de590fb6-5fbe-40ba-b571-073a88db681f

# Load Required Packages
library('RSelenium')
library(wdman)
library(netstat)

# Install Selenium and browser drivers
wdman::selenium()

# Check if and where Selenium and driver are installed
selenium_object <- selenium(check = F, retcommand = T )

# List Version of Chrome driver on PC 
binman::list_versions("Chromedriver")

# Install latest Chrome Driver
wdman::selenium(chromever = "latest")


# Location of Chrome Driver
# -Dwebdriver.chrome.driver=\"C:\\Users\\ham0hv9\\AppData\\Local\\binman\\binman_chromedriver\\win32\\116.0.5845.96/chromedriver.exe\"

# Running Selenium on Google.Chrome
remote_driver <- rsDriver(browser = c("chrome", "firefox", "phantomjs", "internet explorer"),
                          version = "latest",
                          verbose =  TRUE,  
                          port    = free_port() )


# Close The Selenium Server
remote_driver$server$stop()
##----------------------------------###
# Install latest Firefox Driver
wdman::selenium(firefox = "latest")

# Running Selenium on FireFox
remote_driver <- rsDriver(browser =  "firefox", 
                          verbose =  TRUE,  
                          port    = free_port() )


# Close The Selenium Server
remote_driver$server$stop()




