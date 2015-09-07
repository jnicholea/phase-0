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

