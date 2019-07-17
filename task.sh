#!/bin/bash
touch grades.txt    #Creates a grade file. The format of this file will be alternating lines of names and grades, with a students name directly above their grade
for f in *.sage     #iterate thru sage files
do
echo $f
touch 'modified'$f  #create a temp file which merges a students function, the solution, and the tester
cat $f >> modified$f
cat key.txt >> modified$f
cat tester.txt >> modified$f
sage modified$f  #runs the temp file 
rm modified$f #removes the temp file to save on memory
rm modified$f.py
done
