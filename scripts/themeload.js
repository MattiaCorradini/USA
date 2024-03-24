let theme = document.getElementById("theme")

let nuovo = localStorage.getItem("theme") != null ? localStorage.getItem("theme") : "light"
theme.checked = nuovo == "light" ? true : false
localStorage.setItem("theme", nuovo)

theme.addEventListener("click", (event) => {
    console.log("ok")
    let attuale = localStorage.getItem("theme")
    console.log(attuale)
    if (attuale == "light")
        localStorage.setItem("theme", "sunset")
    else
        localStorage.setItem("theme", "light")

    location.reload()
})