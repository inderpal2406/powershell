# PS script to accept 2 numbers from user and compare them

Clear-Host   # clear screen

Write-output "This script will accept two numbers and campare them."

# Accept user input

[int]$number_1=Read-Host "Enter the first number "
[int]$number_2=Read-Host "Enter the second number "

if ($number_1 -gt $number_2){
    Write-Output "`n$number_1 is greater than $number_2"
} elseif ($number_1 -lt $number_2){
    Write-Output "`n$number_1 is less than $number_2"
} else{
    Write-Output "`nBoth numbers are equal"
}

Write-Output "`nEnd of script :)"