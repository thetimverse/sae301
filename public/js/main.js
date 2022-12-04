/* CUSTOM SELECT */
var x, i, j, l, ll, selElmnt, a, b, c;
x = document.getElementsByClassName("select-wrapper");
l = x.length;
for (i = 0; i < l; i++) {
  selElmnt = x[i].getElementsByTagName("select")[0];
  ll = selElmnt.length;
  a = document.createElement("DIV");
  a.setAttribute("class", "select-selected");
  a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
  x[i].appendChild(a);
  b = document.createElement("DIV");
  b.setAttribute("class", "select-items select-hide");
  for (j = 1; j < ll; j++) {
    c = document.createElement("DIV");
    c.innerHTML = selElmnt.options[j].innerHTML;
    c.addEventListener("click", function(e) {

        var y, i, k, s, h, sl, yl;
        s = this.parentNode.parentNode.getElementsByTagName("select")[0];
        sl = s.length;
        h = this.parentNode.previousSibling;
        for (i = 0; i < sl; i++) {
          if (s.options[i].innerHTML == this.innerHTML) {
            s.selectedIndex = i;
            h.innerHTML = this.innerHTML;
            y = this.parentNode.getElementsByClassName("same-as-selected");
            yl = y.length;
            for (k = 0; k < yl; k++) {
              y[k].removeAttribute("class");
            }
            this.setAttribute("class", "same-as-selected");
            break;
          }
        }
        h.click();
    });
    b.appendChild(c);
  }
  x[i].appendChild(b);
  a.addEventListener("click", function(e) {
      /*when the select box is clicked, close any other select boxes,
      and open/close the current select box:*/
      e.stopPropagation();
      closeAllSelect(this);
      this.nextSibling.classList.toggle("select-hide");
      this.classList.toggle("select-arrow-active");
    });
}
function closeAllSelect(elmnt) {
  /*a function that will close all select boxes in the document,
  except the current select box:*/
  var x, y, i, xl, yl, arrNo = [];
  x = document.getElementsByClassName("select-items");
  y = document.getElementsByClassName("select-selected");
  xl = x.length;
  yl = y.length;
  for (i = 0; i < yl; i++) {
    if (elmnt == y[i]) {
      arrNo.push(i)
    } else {
      y[i].classList.remove("select-arrow-active");
    }
  }
  for (i = 0; i < xl; i++) {
    if (arrNo.indexOf(i)) {
      x[i].classList.add("select-hide");
    }
  }
}
/*if the user clicks anywhere outside the select box,
then close all select boxes:*/
document.addEventListener("click", closeAllSelect);

/* OPEN/CLOSE SEARCH */ 
var searchOpen = document.getElementById("search-open");
var searchIcon = document.getElementById("search-icon");

function showSearch() {
  if (searchOpen.style.display === 'none') {
        searchOpen.style.display = 'flex';
  } else {
        searchOpen.style.display = 'none';
  }
}

if(searchIcon) {
  searchIcon.addEventListener("click", showSearch);
}


// OPEN/CLOSE CB
function showCB() {
  var cbOpen = document.getElementById("cb-open");
        cbOpen.style.display = chkCard.checked ? "flex" : "none";
}


// BANNER COOKIE 
var closeCookie = document.getElementById("cookie-close");
var bannerCookie = document.getElementById("cookie-banner");

if(closeCookie) {
  closeCookie.addEventListener("click", function() {
    bannerCookie.style.display = 'none';
  })
}


// ALERT
var closeAlert = document.getElementById("alert-close");
var alertMessage = document.getElementById("alert_message");
var overlay = document.getElementById("overlay");

if(alertMessage){
    overlay.style.display = 'block';
    
    closeAlert.addEventListener("click", function() {
    alertMessage.style.display = 'none';
    overlay.style.display = "none";
  })
}


// MENU RESPONSIVE
let toggle = document.querySelector('.nav__toggle');
let body = document.querySelector('body');

toggle.addEventListener('click', function() {
    body.classList.toggle('open');
})

