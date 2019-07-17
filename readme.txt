How to use the automatic grader, via an example:
Let us say that the class is assigned to write two functions, one which squares a number and one which calculates the determinant of a matrix. 
It is crucial that the class uses standardized function names. They should also include a variable 'name' in their code to which they assign a string with their own name; this is for writing to the gradebook. So in principal it might be easiest to just give them their assignment as 
####
name = 'REPLACE WITH YOUR NAME'

def square():
    #CODE GOES HERE
    
def determinant():
    #CODE GOES HERE
    
####
Then all of the student assignments should be collected into one cocalc folder. In this example we have three students, each with their own .sage file. 
The grader will need to create two auxillary files, located in the *same* folder as the student assignments; one is an answer key and one is the tester file. The answer key should have correct implementations of our functions, and the functions should be named *identical* to the students but with a 'key_' prepended. So our key would look like
####
def key_square(a):
    return(a^2)
def key_determinant(a):
    return(a.det())
####
The tester script describes how to generate the test cases for each problem and then how to compare the student functions with the key functions. (More detailed explanation is in the tester.txt comments)
Then all one has to do is open a terminal and run ./task.sh 
The bash script then iterates thru the student files. For each one it creates a temporary file which concatenates student.sage with key.txt and tester.txt into one program.
This temp file is then run; the tester code generates random examples of input (or hardcoded, specific examples of input) and tests the output of 'square' vs 'key_square' and then 'determinant' vs 'key_determinant'. It then keeps track of the students scores for each function and writes to a 'grades.txt' file. 
