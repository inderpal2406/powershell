# Script to demonstrate a simple function

Clear-Host   # clear screen

# declare function

function Say-Hello{
    Write-Output "Hello, how are you?"
    Write-Output "How is life going on?"
    Write-Output "What do you want in life?"
}

# calling function

Say-Hello
Say-Hello
Say-Hello

# function which accepts parameters

function Add-Numbers{
    $sum=$args[0]+$args[1]
    Write-Output "Sum : $sum"
}

Add-Numbers 2 3   # each argument should be separated by a space

# so we can call Add-Numbers function whenever we want to add 2 numbers in the script

# passing an array as an argument to a function

function Say-Hello{
    foreach ($name in $args[0]){
        Write-Output "Hello, $name"
    }
}

$names=@("inder","omkar","sarab")

Say-Hello $names

# alternate way of declaring a function with parameters

function Say-Hello($friends){
    foreach ($name in $friends){
        Write-Output "Hello, $name"
    }
}

$names=@("inder","omkar","sarab")

Say-Hello $names

# another function which accepts arguments in other way

function Add-Numbers($num1,$num2){
    $sum=$num1+$num2
    return $sum
}

$number1=5
$number2=10
$total=Add-Numbers $number1 $number2    # Add-Numbers($number1,$number2) didn't give error but total was printed as 5 10
Write-Output "Sum of $number1 and $number2 is : $total"

# example function with named parameters

function Give-Introduction{
    param(
        [string]$name,
        [string]$profession="Student",   # assigning default value to $profession named parameter
        [int]$age
    )
    Write-Output "My name is $name. I am $age years old. My profession is $profession."
}

Give-Introduction -name "Inderpal Singh" -profession "Software Engineer" -age 27

Give-Introduction -name "Omkar Solaskar" -age 27


