# README #

This script was designed to format and generate a CSV from a text file containing the full command string and output from mmulti.

Example:

./mmult -t -b -N 2500 -i 25 -j 25 -k 12
49.508201
./mmult -t -b -N 2500 -i 25 -j 25 -k 25
48.095336
./mmult -t -b -N 2500 -i 25 -j 25 -k 50
56.181246 

### What is this repository for? ###

* It contains a scrip that does CSV formatting for input into excel or matlab.
* V1, R1

### How do I get set up? ###

* Install csvtools (sudo apt-get install csvtool) or the yum source if using RHEL or Amazon linux. 
* to run from the local directory - ./mmultiformater.sh $1 ($1 being the input.txt file or whatever its called) 
* Ensure the input does not have an empty line at the top.
* Only .txt input is allowed

### Dependencies ###

* sudo apt-get install csvtool 

### Ouput ###

* Output file is output.csv



