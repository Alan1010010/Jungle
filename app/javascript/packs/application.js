import "bootstrap";
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";
import moment from "moment"
import fullCalendar from "fullcalendar"

flatpickr("#user_plant_last_watered", {
  dateFormat: "d/m/Y",
  maxDate: "today",
  // Allow input for html5 form validation
  allowInput: true
});
const calendar = document.querySelector('#calendar')
if (calendar) {
  const events = JSON.parse(calendar.dataset.events)
  $('#calendar').fullCalendar({
    events: events.map((item) => {
      return {
        title: `Water ${item[0]}`,
        start: item[1]
      }
    })
  });
}

var slideIndex = 0;
// carousel();

// function carousel() {
//   var i;
//   var x = document.getElementsByClassName("mySlides");
//   for (i = 0; i < x.length; i++) {
//     x[i].style.display = "none";
//   }
//   slideIndex++;
//   if (slideIndex > x.length) {slideIndex = 1}
//   x[slideIndex-1].style.display = "block";
//   setTimeout(carousel, 5000);
// }
