#!/usr/bin/bash

# Colors for better CLI visibility
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Print banner
echo -e "${BLUE}=== GitHub Repository Cloner ===${NC}"
echo

# Get username with validation
while true; do
    read -p "Enter your GitHub username: " username
    if [ -z "$username" ]; then
        echo -e "${RED}Error: Username cannot be empty${NC}"
        continue
    fi

    echo -e "\nVerifying username..."
    response=$(curl -s -o /dev/null -w "%{http_code}" "https://api.github.com/users/$username")

    if [ "$response" -eq 200 ]; then
        echo -e "${GREEN}✓ Username '$username' is valid!${NC}\n"
        break
    else
        echo -e "${RED}✗ Username '$username' does not exist on GitHub${NC}\n"
    fi
done

GITHUB_URL="github.com"
REPO_LIST=("bashs-sripting" "ic-devops-batch3")

# Display repositories to be cloned
echo -e "${BLUE}The following repositories will be cloned:${NC}"
for repo in "${REPO_LIST[@]}"; do
    echo "- $repo"
done
echo

clone_repos() {
    repo_name=$1
    echo -e "\n${BLUE}Cloning repository: $repo_name${NC}"

    if ! git clone "git@${GITHUB_URL}:${username}/${repo_name}.git" > /dev/null 2>&1; then
        rm -rf "$repo_name"
        echo -e "${RED}✗ Failed to clone repository: $repo_name${NC}"
    else
        echo -e "${GREEN}✓ Successfully cloned: $repo_name${NC}"
    fi
}

for repo in "${REPO_LIST[@]}"; do
    clone_repos "$repo"
done