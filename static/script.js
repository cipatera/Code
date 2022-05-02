const myFunction = () => {
  const trs = document.querySelectorAll(`#myTable tr:not(.header)`)
  const filter = document.querySelector('#myInput').value
  const regex = new RegExp(escape(filter), 'i')
  const isFoundInTds = td => regex.test(td.innerHTML)
  const isFound = childrenArr => childrenArr.some(isFoundInTds)
  const setTrStyleDisplay = ({ style, children }) => {
    style.display = isFound([
      ...children // <-- filter Columns
    ]) ? '' : 'none'
  }
  
  trs.forEach(setTrStyleDisplay)
}

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
