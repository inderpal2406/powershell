# LOOPS

Clear-Host  # clear screen

# While loop

$i=1

while ($i -le 10){
    Write-Output "Value of `$i in current iterations is : $i"
    #$i+=1  # same as $i=$i+1
    $i++    # both ways work
}

Write-Output "Loop was terminated. This is statement outside while loop."
Write-Output "Current value of `$i is : $i"

# Printing multiples of 5 till 100

$i=0

while ($i -le 100){
    Write-Output $i
    $i+=5    # if we remove increment statement, it'll become an infinite loop
}

# if condition of while loop is never true, statements inside it will never be executed
# this is because condition is checked before execution in while loop
# if we want the statements inside loop to be executed at least once irrespective of condition, then we can use do-while loop
# in do while loop condition is checked after first iteration of statements inside loop
# of course do-while will be executed again and again if condition is true

# Do-While loop

$i=0

do {
    Write-Output "`$i = $i"
} while ($i -ne 0)

# For Loop

Write-Output "FOR LOOP"

for ($i=1; $i -le 10; $i++){
    Write-Output "`$i = $i"
}

# Applying concept of iterations on collections

$students=@("student 1","student 2","student 3")

for ($i=0; $i -lt $students.count; $i++){
    Write-Output $students[$i]
}

# Printing same above array in reverse order

for ($i=$students.Count-1; $i -ge 0; $i--){   # works with ($i=($students.Count-1); $i -ge 0; $i--)
    Write-Output $students[$i]
}

# foreach{} loop

foreach ($name in $students){
    Write-Output "Hello, I am $name"
}

# same above approaches can be used to iterate over an array list

# iterate over a hash table

$student_hash=@{
    "student 1"="Inderpal Singh"
    "student 2"="Omkar Solaskar"
    "student 3"="Sarabjit Singh"
}

foreach ($key_number in $student_hash.keys){
    $message="Student data:    $key_number    : " + $student_hash[$key_number]
    Write-Output $message
}

