Clear-Host

$names=@("inder","omkar","sarab")

Write-Output $names

# Write-Output "Length of array is : $names.length" # wrong output

Write-Output "Lenght of array is : " $names.Length  # output goes to next line

Write-Output "Array element at index 1 : " $names[1]

Write-Output "to access range of array elements from index 0 to 2 : " $names[0..2]

# declaring 2 separate arrays

$boys=@("boy1","boy2","boy3")

$girls=@("girl1","girl2","girl3")

$array_total=$boys+$girls

Write-Output "`nNew `$array_total is :" $array_total

Write-Output "Length of `$array_total is : " $array_total.Length

Write-Output "Index value of array element `"girl2`" is : " $array_total.IndexOf("girl2")

# Array list

$student_list=New-Object System.Collections.ArrayList
$student_list.Add("student1")
$student_list.AddRange(("student2","student3"))
$student_list 
$student_list | Get-Member  # to get list of operations/properties available for array list


