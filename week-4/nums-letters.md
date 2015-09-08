### What does puts do?
Puts takes whatever is written directly after it and writes it on the screen. If what is written is a mathematical equation the display will show the result of the calculation.

### What is an integer? What is a float?
An integer is a number that can be written without a decimal. A float is a number written with a decimal.

### What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
Floats can be divided into fractions of a whole, integers cannot. What does that mean when calculating using integers? Last year I acquired fifteeen cameras in the course of a year, and I want to figure out how many cameras I bought per months, on average. If I do the math using floats, 15/12, I'm told that I bought 1.25 cameras/month. But there was actually no point in time when I bought 1/4 of a camera. If I tell the program to calculate using integers the return will be that I bought 1 camera/month on average, which is an answer I like to see because rounding down makes my camera-buying obsession seem a little less out of control.

*Hours in a year*
``` ruby
p 365*24
```

*Minutes in a decade*
``` ruby
p 24*60*365*10
```

### How does Ruby handle addition, subtraction, multiplication, and division of numbers?
If it's an integer, calculations will return numbers without an decimal points and round down. If it's a float exact results will be displayed. 
### What is the difference between integers and floats?
Answered above
### What is the difference between integer and float division?
Answered above
### What are strings? Why and when would you use them?
Strings are not numbers are commands, they are collections of symbols that are treated as "things". They can be concatenated or parsed, but they can't be multiplied or divided. You can't divide "milk" by "salmon" but you can divide 10 by 5 because those are integers.
### What are local variables? Why and when would you use them?
Local variables are sort of like a nickname for integers or floats or strings. Imagine asking 100 people to write a paragraph-long response to a question, and then wanting to combine all of those paragraphs into one long document. If all of those are stored in a database and each one is assigned a variable you can quickly manipulate the data using "paragraph1" + "paragraph2" + "paragraph3" and having the computer do the combining for you, instead of manually going in and copying and pasting each paragraph individually.
### How was this challenge? Did you get a good review of some of the basics?
Yes. When I was struggling with my rspec tests it was actually because I was making the solution much more complicated than it needed to be. This challenge was a good entry into Ruby and a review of some basic principles. 

[Basic Math](./basic-math.rb)
[Defining Variables](./defining-variables.md)
[Simple String](./simple-string.rb)


