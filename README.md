# RubyProject
Learning a new Object-Oriented Language to understand if I can mess around in Ruby Docs and programs
## Input
The single input file will be in three parts. Each part will be separated by one blank (empty) line.
Your program must not assume any maximum number of athletes, events, or registrations.
Strings are whitespace separated; this may include ANY combination of spaces or tab
characters. Do not assume any specific separator.
### Part 1 Athlete ids and name
o There will be an arbitrary number of athlete information lines in this part. Each line will
contain the following:
§ The first string will be the athlete’s id. Do not assume a particular number of
characters for the id. Assume there will be no spaces in the id.
§ All following strings will constitute the athlete’s full name. Do not assume any
order within a name (e.g., first name first, last name first, etc.) Preserve the names
exactly as they are, including spaces.
§ An athlete’s name may have any number of words, spaces and punctuation.
o Part 1 ends with one blank line (no spaces or tab on the line).
### Part 2 Event numbers and names
o There will be an arbitrary number of event info lines in this part. Each line will contain
the following:
§ The first string is the event number. It may be of any length of characters. Assume
there are no spaces in the event number.
§ The rest of the line will be the complete event name. The name may contain a
description, a distance, or other specifiers. Preserve the complete name exactly
as it is given; you may convert multiple spaces to a single space.
o Part 2 ends with one blank line (no spaces or tab on the line).
### Part 3 Athlete ids / event number pairs to represent that an athlete is participating in that event.
Each line contains exactly two strings.
o There will be an arbitrary number of athlete participation information lines in this part.
Each line will contain the following:
§ The first string will be the athlete id. If the athlete id was not previously read in,
output an error message, but continue processing.
§ The second string will be the event number. If the event number was not
previously read in, output an error message, but continue processing.
o There will be no other content on these lines.

## Output
Output will be to standard output (e.g., using puts). Output must include at least these two sections:
• A list of each athlete with the full name(s) of the events in which they are participating.
o Optional: the count for the number of events each student is participating in.
• A list of each event (event name) with the full list of athlete name(s) participating.
o Optional: the count for the number of athletes in each event.

## Design
Your program will read its input directly from a single text file named “register.txt”. Your program
must read directly from a file with this exact name (all lower case) in the same folder as your
program. Do not query the user for the filename or anything else. Do not include any path or
folder information in your program. The input file will be in the same folder as your program.
Your program must create at least two classes, one class for athlete information and the other for
event information. Each class must have at least two methods in addition to its initializer.
You must read the input file exactly once.
You must include a header in the program source identifying the assignment/course/instructor,
yourself, and the date. See the Submission Guidelines on the Syllabus for additional help.
