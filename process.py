log_file = open("um-server-01.txt")
# Opens a file and saves it to the variable 'log_file'


def sales_reports(log_file):
#defines the function 'sales_reports' that takes a single parameter 'log_file'
    for line in log_file:
#begins a for loop thats job is to iterate through 'log_file'
        line = line.rstrip()
#for each iteration of the loop, we're making sure to get rid of the trailing whitespace on each line
        day = line[0:3]
#declares a variable 'day' which, using slice notation, will hold the first three letters in the line
        if day == "Mon":
#an if statement asking if the variable 'day' equals "Tue"
            print(line)
#if the above if statement is true, the entire line will be printed


sales_reports(log_file)
#calls the 'sales_reports' function with the parameter 'log_file'.
# remember, 'log_file' is the variable declared on line one that holds the opened file. 


def print_melons(log_file):
    list_to_string = ''
    for line in log_file:
        line = line.rstrip().split(' ')
        if int(line[2]) > 10:
            list_to_string = ' '.join(line)
            print(list_to_string)

print_melons(log_file)