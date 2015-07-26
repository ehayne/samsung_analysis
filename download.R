# download the zip, unzip it and put file into yout working directory

zip_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(zip_url, "data.zip", method="curl")

unzip("data.zip")