let infos = document.querySelectorAll(".info")
   for (let info of infos) {
    info.style.cursor = 'pointer';
   info.style.textDecoration = "underline";
   info.addEventListener('click', (e) => {
     window.location.href = `/${e.target.getAttribute("value")}/${e.target.text}`
     //await fetch('/playerInfo', { method: 'POST' })
   })
   }