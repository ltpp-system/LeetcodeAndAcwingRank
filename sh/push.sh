#!/bin/bash
git add .;
echo -n "Please enter the update message and press Enter:"
read update_message
if [ -z "$update_message" ]; then
    echo "The update message cannot be empty. Please rerun the script and provide a valid update message."
    echo "Press Enter to exit...";
    read -n 1;
    exit 1
fi
git commit -m "feat:$update_message";
git push github main;
echo -e "\e[32mgithub push finish\e[0m";
git push ltpp main;
echo -e "\e[32mltpp push finish\e[0m";
echo "Press Enter to continue...";
read -n 1;