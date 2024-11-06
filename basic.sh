<<multi-comment 
#What is shell scripting
* Shell script consist of set of commands to perform a task.
* All the commands execute sequentially

#What is SHEBANG
#!/bin/bash  it tells OS that which interpreter you are using . And it is not mandatory
multi-comment

# what is your shell type
echo $0


#What are variables
name=Hello
echo $name


#Constant variables
readonly country="India"
echo $country


#Taking input from user
echo "What is your name?"
read name


##Another way of taking input
read -p "Your name is : " name


#IF_ELSE statememts
age=20
if [ $age -le 17 ]
then
    echo "You cannt vote"
else 
    echo "You can vote"
fi


#ELIF statementa
country="India"
if [ $country = "India" ]
then 
    echo "You are Indian"
elif [$country = "Nepal" ]
then 
    echo "You are from Nepal"
else
    echo "You are from earth"
fi


#SWITCH CASE
echo "Enter your choice"
echo "a = To see current date"
echo "b = To see current working directory"
echo "c = List all the files in current directory"

read choice
case $choice in
    a) date;;
    b) pwd;;
    c) ls;;
    *) echo "Enter valid choice"
esac


#FOR LOOP
for i in 1 2 3 4 5
do 
    echo "Number is $i"
done

#Another way to write for loop
for j in Hii Hello Namste
do 
    echo "$j"
done

for k in {1..20}
do  
    echo "$k"
done


#Read data from file
filepath="./hello.txt"

for item in $(cat $filepath)
do
    echo "$item"
done


#WHILE LOOP
count=1
num=5

while [ $count -le $num ]
do
    echo "Number is $count"
    ((count++))
done


#How to make functions
function myFun {
    echo "Hii, this is myFun"
}

myFun1() {
    echo "Hii, this is myFun1"
}

myFun   #calling a function
myFun1  #calling a function


#Passing arguments to funstion
addition() {
    local num1=$1
    local num2=$2
    let sum=$1+$2

    echo "Sum of $num1 and $num2 is $sum"
}

addition 1 2    #calling a function


























