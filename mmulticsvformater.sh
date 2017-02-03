#/bin/bash
#-
#--mmultcsvformater.sh
#-
#--This script takes the output and arguments of mmult and formats them into a csv.
#-
#--Please ensure the first line has data (mmulti with arguments).
#-
#--Written by John Klockenkemper for Josh Griffy.
#-
#--<3
#-

# $1 is a global variable for the filename

#Make a copy of the original file
cp $1 temp.txt
#Remove mmult -t -b -N from the input file.
sed -e 's/mmult -t -b -N//g' -i temp.txt
#Remove -i from the input file.
sed -e 's/-i//g' -i temp.txt
#Remove -J from the input file.
sed -e 's/-j//g' -i temp.txt
#remove -k from the input file.
sed -e 's/-k//g' -i temp.txt
#read and cut './' from the lines and echo to the arguments file.
sed -n 'p;n' $1 | tr -d "./" > arguments.txt
#read and append the time to its own time.csv file.
sed -n 2~2p $1 > time.csv
#Clean up the leading whitespace
sed "s/^[ \t]*//" -i arguments.txt
#Clean up double whitespace and add a comma
sed 's/ \{1,\}/,/g' -i arguments.txt
#copy arguments.txt to output.csv
cp arguments.txt arguments.csv
#Combine the time as the 5th CSV column
csvtool paste arguments.csv time.csv > output.csv
#clean up the inputs
rm arguments.txt
rm arguments.csv
rm time.csv
rm temp.txt
