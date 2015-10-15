// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM


//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
  bodyElement = $('body')


//RELEASE 4: Event Listener
  // Add the code for the event listener here

  $('#welcome').css({"color": "blue", "border": "black solid 2px", "opacity": ".5"});
  $('.mascot h1:first-child').html("Bobolinks");



//RELEASE 5: Experiment on your own


$(document).ready(function(){
    $('img').on('mouseover', function(e){
    	e.preventDefault()
    	$(this).attr('src', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaaAME820h40_zosxcRZluoXnCNsrmVG9dowyz0RCKo5Ta3oWxjxXGOw')
    });
    $('img').on('mouseleave', function(e){
    	e.preventDefault()
    $(this).attr('src', 'devbootcamp-logo-new.png')
    });
});



})  // end of the document.ready function: do not remove or write DOM manipulation below this.

//REFLECTION

// - What is jQuery?
//     - A Javascript library. Makes it easier to use Javascript on your websites.
// - What does jQuery do for you?
//     - Takes tasks that are difficult to write with Javascript and puts them into a format that’s much easier to write
// - What did you learn about the DOM while working on this challenge?
//     - How to access elements on the DOM using JQuery. I got the confidence I needed to add some Jquery to my resume site, which I’m very excited about.
