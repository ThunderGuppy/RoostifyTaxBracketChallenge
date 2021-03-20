Tested with ruby 2.6.1p33

Calculate with:
ruby ./calculator.rb [filename]

Input file should have each desired value on a new line.  tax_input.txt has been provided as an example.



Regarding question #2:

Scaling to increase brackets is simple with the provided code.  It would be easy to modify the program to accept a second file included with the input that defined the brackets and then parsed that into BRACKETS before computing taxes.

Scaling for a BILLION user inputs is trickier, and not terribly viable with such a simple probgram as this.  Depending on how the input data is stored/provided, I think that parallelizing the process would be crucial.