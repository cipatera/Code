let infos = document.querySelectorAll(".info")
   for (let info of infos) {
    info.style.cursor = 'pointer';
   info.style.textDecoration = "underline";
   info.addEventListener('click', (e) => {
     window.location.href = `/${e.target.getAttribute("value")}/${e.target.text}`
     //await fetch('/playerInfo', { method: 'POST' })
   })
   }

let filterBtn = document.querySelector('.filter-btn')
let filter = document.querySelector('.filter')
filter.style.display = 'none';
let filterSubmit = document.querySelector('.filter-submit')
let players = document.querySelectorAll('.players')
let starts = document.querySelectorAll('.start')
let ends = document.querySelectorAll('.end')
console.log(players[0].style.display)

filterBtn.addEventListener('click', (e) => {
 filter.style.display = filter.style.display === 'none' ? 'block' : 'none';
 // UPDATE OPTIONS FOR SERLECT
})
$(document).ready(function() {
    $("#gfg").on("keyup", function() {
        var value = $(this).val().toLowerCase();
        $("#geeks tr").filter(function() {
            $(this).toggle($(this).text()
            .toLowerCase().indexOf(value) > -1)
        });
    });
});
filterSubmit.addEventListener('click', (e) => {
  
  console.log("New filters!")
  let input = document.querySelector('.year-select').value
  console.log(input)
  for (let i = 0; i < players.length; i++) {
    if (+starts[i].innerHTML > +input || +ends[i].innerHTML < +input) {
      players[i].style.display = 'none';
      console.log("Inside")
    }
    else {
      // make sure its displayed
      players[i].style.display === 'initial';
      console.log("Outside")

    }
  }
  // for loop over players where you check the same indec of starts and ends to see if it lies in the range of input text
})