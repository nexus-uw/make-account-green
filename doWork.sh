#!/usr/bin/env bash

# Function to handle errors
handle_error() {
    echo "Error occurred in script at line: $1"
    exit 1
}

# Enable exit on error
set -e

# Clone the repository
git clone https://github.com/nexus-uw/make-account-green || handle_error ${LINENO}
cd make-account-green || handle_error ${LINENO}

# Generate a random number and save it to a file
echo $(( 1 + RANDOM % 10000000 )) > random_number.txt || handle_error ${LINENO}

# Stage the new file
git add random_number.txt || handle_error ${LINENO}

# Set Git user configuration
git config user.email "nexus-uw@users.noreply.github.com" || handle_error ${LINENO}
git config user.name "nexus-uw" || handle_error ${LINENO}

# Commit the changes
git commit -m 'added new random number' || handle_error ${LINENO}

# Push changes to the master branch
git push origin master --follow-tags || handle_error ${LINENO}

# Cleanup: Navigate back and remove the cloned directory
cd .. || handle_error ${LINENO}
rm -rf make-account-green || handle_error ${LINENO}
