# PS script to calculate simple interest by accepting user input

Clear-Host  # clear screen

Write-Output "This script will calculate Simple Interest."

Read-Host "Press ENTER to continue"

# Take user input

[double]$principle=Read-Host "Enter principle amount "
[int]$months=Read-Host "Enter total number of months "
[double][validaterange(0,100)]$rate=Read-Host "Enter rate of interest "

# Convert months to years

$years=$months/12

# Calculate simple interest

$interest=$principle*$years*$rate/100

# Calculate total return money

$total_return=$principle+$interest

# Display output

Write-Output "`nSimple interest is : $interest"
Write-Output "Total return money is : $total_return"