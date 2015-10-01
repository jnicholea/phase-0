
   // Initial Solution

 var sum = function(list1, list2){
      var listLength = function(array) {
        var count = 0;
        for (var i = 0; i < array.length; i++) {
          count += i;
          return count;
      }
      
      var sum1 = listLength(list1);
      var sum2 = listLength(list2);
      
      return (sum1, sum2);
          
    
      mean(sum1, sum2);
      median(first, second);
    };
   };

   var mean = function(list1, list2){
      var length1 = list1.length;
      var length2 = list2.length;

      var mean1 = (sum1 / length1);
      var mean2 = (sum2 / length2);
     
      median(length1);
      median(length2);

      return (mean1, mean2);

   };

   var median = function(list1, list2){

    var sortFunction = function(array){
      sortFunction.sort(function(a, b){return a-b});
    };
    
    var list1Sorted = sortFunction(list1);
    var list2Sorted = sortFunction(list2);

      var evenOrOdd = function(lengthOfList){
        if (x % 2 === 0)
          return true;
        else
          return false;
      }; 
  

      var median1 = evenOrOdd(length1);
      var median2 = evenOrOdd(length2);

      //I cannot figure out what the pseudocode is asking me to do at this point. The point is to complete the hunt for the median and return the result - Jenna
      // var findMedian = function(evenOddResult){
      //   if evenOddResult === true


      //  };

  };

  var finalOutput = function(){
    return (sum1, mean1, median1, sum2, mean2, median2)
  };


var first = [2, 4, 6, 8];
var second = [1, 3, 5];
console.log(sum(first, second));

