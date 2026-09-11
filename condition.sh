# if [condition]; then
#     # Code to execute if the condition is true
# else
#     # Code to execute if the condition is false


# if → then → commands → fi // its mean block complete

# Operator	Meaning
# -eq	equal
# -ne	not equal
# -gt	greater than
# -ge	greater than or equal
# -lt	less than
# -le	less than or equal


#!/bin/bash
# AGE=20

# if [ "$AGE" -ge 18 ]; then 
#     echo "ADULT"
# else 
#     echo "NOT adult"
# fi

# #!/bin/bash



# real use case  ----------->

# ENVIRONMENT="production"

# if  [[ "$ENVIRONMENT" == "production" ]]; then
#     echo "Server ios running in production mode"
# else
#     echo "Server is running in development mode"
# fi


# File conditions ---------->

# Operator	Meaning
# -f	    regular file exists
# -d	    directory exists
# -e	    something exists
# -r	    readable
# -w	    writable
# -x	    executable

if [ -f "Dockerfile" ]; then
    echo "File is found"
else 
    echo "file not found"
fi

if [ -d "/var/www" ]; then
    echo "Directory exists"
else
    echo "Directory does not exist"
fi

ENV="prod"
PORT=9090

if [[ "$ENV" == "prod" && "$PORT" -eq 8080 ]]; then
    echo "Server is running in production mode on port $PORT"
else
    echo "Server is not running in production mode on port $PORT"
fi


if [[ "$ENV" == "prod" && ("$PORT" -eq 8080 || "$PORT" -eq 9090 ) ]]; then
    echo "Server is running in production mode on port $PORT"
else
    echo "Server is not running in production mode on port $PORT"
fi



if command -v git  ; then  # here command -v git  check git is installed or not
    echo "Docker is installed"
else
    echo "Docker is not installed"
fi


if command -v docker  ; then  # here command -v docker  check docker  is installed or not
    echo "Docker is installed"
else
    echo "Docker is not installed"
fi

echo "Hello" > /dev/null   #  /dev/null is black hole , its not show .

echo "Hello" > /dev/null > test.txt  #  /dev/null is black hole , its not show . here we redirect the output to test.txt file and also redirect the error to /dev/null

# 0 → stdin   → input
# 1 → stdout  → normal output
# 2 → stderr  → error output

if command -v docker  > /dev/null 2>&1 ; then  # here command -v docker  check docker  is installed or not and redirect the output to /dev/null and also redirect the error to /dev/null
    echo "Docker is installed"
else
    echo "Docker is not installed"
fi