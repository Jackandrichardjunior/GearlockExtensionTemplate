function pausemode()
{
read -n 1 something
}
# Use this if you want to stop the process and Start after when the user press a button

function printspace()
{
echo "
"
}
# Call this function if you want to echo a blank line



# Important Variables

Author="Yourname"
# This will be displayed in the About section

ExtensionName="Sample"
# This will be Outputted in the figlets and about section

RunAfterClick="yes"
# Set this to "yes", if you want to start an action suddenly when a key is pressed. If you set this to "no". The User needs to press Enter Key after inputting
# Use the functions to execute scripts that you made/or that you have from a Open-Source project

InputBox="Your Choice: "
# This the text to be shown before inputting text (e.g Your Option >, Choice :


# Defining Functions
function optone() 
{

echo "You chose Option 1"
echo " I am from SupremeGamers"
# Remove the above line and Place the code to be executed when the user selects Option 1

}
function opttwo()
{

echo "You Chose Option 2"
# Remove the above line and Place the code to be executed when the user selects Option 2

}

function optthree()
{

echo "You chose option 3"
# Remove the above line and Place the code to be executed when the user selects Option 3

}


# Start of the Script

MainMenu() {
# Change the option name in Main Menu
# These will be displayed to the user
clear
figlet "${ExtensionName}"
echo " By ${YELLOW}${Author}${RC} "
echo "Welcome to my Sample Script"
echo "
"
echo "[1] Enable Settings"
echo "[2] Disable Settings"
echo "[3] Help"
echo "[4] Exit"
echo "
"
# Simple Reading input for the Menu

if [[ ${RunAfterClick} == yes ]]
then
read -n 1 -p "${InputBox}" mainmenuinput
else
read -p "${InputBox}" mainmenuinput
fi

case $mainmenuinput in

1)
# Define this function at the start
printspace
optone
printspace
echo "${GREEN}++ Press any Key to goto Main Menu${RC}"
pausemode
MainMenu
;;

2)
# Define this function at the start
printspace
opttwo
printspace
echo "${GREEN}++ Press any Key to goto Main Menu${RC}"
pausemode
MainMenu
;;

3)
# Define this function at the start
printspace
optthree
printspace
echo "${GREEN}++ Press any Key to goto Main Menu${RC}"
pausemode
MainMenu
;;

4)
printspace
echo "Exitting ${ExtensionName}"
exit
;;

*)
printspace
echo "${RED}++ Invaild Option${RC}"
pausemode
MainMenu
;;

esac
}

MainMenu
