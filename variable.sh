#!/bin/bash

# APP_NAME="MyApp"
# ENVIRONMENT="production"

# echo "Application Name: $APP_NAME"
# echo "Environment: $ENVIRONMENT"


# # here we create a variable called APP_NAME and assign it the value "MyApp". We also create another variable called ENVIRONMENT and assign it the value "production". We then use the echo command to print the values of these variables to the console.

# echo "Enter your application name:"
# read APP_NAME
# echo "Enter your environment:"
# read ENVIRONMENT

# echo "Application Name: $APP_NAME"
# echo "Environment: $ENVIRONMENT"

# better  way 

# echo "Enter your application name:"
# read -r APP_NAME
# echo "Enter your environment:"
# read -r ENVIRONMENT

# echo "Application Name: $APP_NAME"
# echo "Environment: $ENVIRONMENT"


# !/bin/bash

HOST=$(hostname)
USER=$(whoami)
CURRENT_DIR=$(pwd)
DATE=$(date)

echo "=========================="
echo "      SERVER INFO"
echo "=========================="

echo "Hostname: $HOST"
echo "User: $USER"
echo "Directory: $CURRENT_DIR"
echo "Date: $DATE"

