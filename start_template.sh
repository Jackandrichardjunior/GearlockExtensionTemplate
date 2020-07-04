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

ExtensionName="Extension"
# This will be Outputted in the figlets and about section

RunAfterClick="no"
# Set this to "yes", if you want to start an action suddenly when a key is pressed. If you set this to "no". The User needs to press Enter Key after inputting
# Use the functions to execute scripts that you made/or that you have from a Open-Source project

InputBox="Your Choice : "
# This the text to be shown before inputting text (e.g Your Option >, Choice :


# Defining Functions
function optone() 
{

echo "Enabling Bypass"
sleep 1
echo "Enabled Bypass"
# Remove the above line and Place the code to be executed when the user selects Option 1

}
function opttwo()
{

echo "Disabled Bypass"

# Remove the above line and Place the code to be executed when the user selects Option 2

}

function helpmenu()
{
clear
figlet "${ExtensionName}"
echo " By ${YELLOW}${Author}${RC} "
echo "
"
echo "

Put some information about your extension

"
# Remove the above line and Place the code to be executed when the user selects Option 3

}


# Start of the Script

MainMenu() {
# Change the option name in Main Menu
# These will be displayed to the user
clear
figlet "${ExtensionName}"
echo " By ${YELLOW}${Author}${RC} "
echo "
"
echo "[1] Enable"
echo "[2] Disable"
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
helpmenu
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
