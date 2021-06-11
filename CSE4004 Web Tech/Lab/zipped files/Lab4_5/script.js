var pageCounter = 1;
var tableContainer = document.getElementById("stud-info");
var btn = document.getElementById("btn");

btn.addEventListener("click", function () {
  var ourRequest = new XMLHttpRequest();
  ourRequest.open("GET", "127.0.0.1/info.json");
  ourRequest.onload = function () {
    if (ourRequest.status >= 200 && ourRequest.status < 400) {
      var ourData = JSON.parse(ourRequest.responseText);
      renderHTML(ourData);
    } else {
      console.log("We connected to the server, but it returned an error.");
    }
  };

  ourRequest.onerror = function () {
    console.log("Connection error");
  };

  ourRequest.send();
  pageCounter++;
  if (pageCounter > 3) {
    btn.classList.add("hide-me");
  }
});

function renderHTML(data) {
  var htmlString = "";

  for (i = 0; i < data.length; i++) {
    htmlString += "<p>" + data[i].regNo + data[i].uname + data[i].pwd;

    htmlString += ".</p>";
  }

  tableContainer.insertAdjacentHTML("beforeend", htmlString);
}
