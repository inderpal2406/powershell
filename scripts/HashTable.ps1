# HASHTABLE

Clear-Host

$simple_hash=@{
    "key1"="value1";
    "key2"="value2";
    "key3"="value3"
}

$simple_hash

# Second HashTable

$ip_hashtable=@{
    "10.116.196.233"="LWUKWVST12";
    "10.116.196.172"="LWUKLVST19";
    "10.116.196.192"="LWUKLVST17"
}

$ip_hashtable

# get all properties and methods

$ip_hashtable | Get-Member

# number of items

$ip_hashtable.count

# get all keys

$ip_hashtable.keys

# get all values

$ip_hashtable.values

# get value by key

$ip_hashtable["10.116.196.192"]

# hashtables are not of fixed size like arrays

$ip_hashtable.IsFixedSize

# Add a new pair to the hashtable, if we try to add duplicate key, we 'll get an error, however 2 different keys can have same value

$ip_hashtable.Add("127.0.0.0","localhost")

$ip_hashtable

# remove a key-value pair

$ip_hashtable.Remove("127.0.0.0")

$ip_hashtable

# storing in order (we didn't get ordered output)

[hashtable]$hash=[ordered]@{
    "Name_3"="inder";
    "Name_2"="omkar";
    "Name_1"="sarab"
}

$hash

# Practical usage

$student_data=@{
    "student_1"=@{"name"="Inderpal Singh";"Age"=27};
    "student_2"=@{"name"="Omkar Solaskar";"Age"=28};
    "student_3"=@{"name"="Sarabjit Singh";"Age"=26}
}

$student_data
$student_data.student_1
$student_data["student_2"]

# get help

Get-Help about_Hash_Tables -ShowWindow

