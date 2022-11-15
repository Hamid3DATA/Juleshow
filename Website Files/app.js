const dates = {date1:"Dec 24, 2022 00:00:00", date2:"Dec 21, 2022 00:00:00"}

const timer1 = function() {

  


  var countDownDate = new Date(dates.date1).getTime();

  var time = 0

  // Update the count down every 1 second
  var x = setInterval(function() {

    if (time == 9) {
      clearInterval(x);
      timer2();
    }

    // Get today's date and time
    var now = new Date().getTime();

    // Find the distance between now and the count down date
    var distance = countDownDate - now;

    // Time calculations for days, hours, minutes and seconds
    var days = Math.floor(distance / (1000 * 60 * 60 * 24));
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);

    // Display the result in the element with id="demo1"

    document.getElementById("to_what").innerHTML = "Til Jul";

    document.getElementById("demo1").innerHTML = days;

    document.getElementById("demo2").innerHTML = hours;

    document.getElementById("demo3").innerHTML = minutes;

    document.getElementById("demo4").innerHTML = seconds;

    // If the count down is finished, write some text
    if (distance < 0) {
      clearInterval(x);
      document.getElementById("to_what").innerHTML = "God Jul!";
    }
    time = time + 1
  }, 1000);
};


const timer2 = function() {

  var time = 0

  var countDownDate = new Date(dates.date2).getTime();

  // Update the count down every 1 second
  var x = setInterval(function() {

    if (time == 9) {
      clearInterval(x);
      timer1();
    }

    // Get today's date and time
    var now = new Date().getTime();

    // Find the distance between now and the count down date
    var distance = countDownDate - now;

    // Time calculations for days, hours, minutes and seconds
    var days = Math.floor(distance / (1000 * 60 * 60 * 24));
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);

    // Display the result in the element with id="demo1"

    document.getElementById("to_what").innerHTML = "Til Juleferie";

    document.getElementById("demo1").innerHTML = days;

    document.getElementById("demo2").innerHTML = hours;

    document.getElementById("demo3").innerHTML = minutes;

    document.getElementById("demo4").innerHTML = seconds;

    // If the count down is finished, write some text
    if (distance < 0) {
      clearInterval(x);
      document.getElementById("to_what").innerHTML = "God Juleferie!";
    }
  
    time = time + 1  
  }, 1000);


}

timer1()

