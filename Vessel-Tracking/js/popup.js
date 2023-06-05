function submit() {

  var MSSI = document.getElementById('mssi').value;
  var adr_url = "http://localhost/Vessel-Tracking/fetch.php?mssi="+MSSI;
var xhr= new XMLHttpRequest();
xhr.open('GET',adr_url,true);

  xhr.onload=function() {data = JSON.parse(xhr.responseText);
  
  


  if (data.errors) {
    var Error = JSON.stringify(data.errors[0].detail).replace(/["]/g, "");
    document.getElementById("details").innerHTML =
      '<div class="text-center"><i class="fa fa-close" style="font-size:7em;color:red" aria-hidden="true"></i><br><br>' +
      "<h>" +
      Error +
      "</h></div>";
  } else {
    var address_components = "";
    var geocode_lat = JSON.stringify(data[data.length - 1].LAT).replace(
      /["]/g,
      ""
    );
    var geocode_lon = JSON.stringify(data[data.length - 1].LON).replace(
      /["]/g,
      ""
    );
    var bounds = new google.maps.LatLngBounds();
    var marker, each;
    var flightPlanCoordinates = [];
    var icon_anchor = {
      url: "./img/anchor.png",
    };

    var icon_blob = {
      url: "./img/dot.png",
    };
    var count = data.length - 1;
    var map = new google.maps.Map(document.getElementById("details"), {
      zoom: 8,
      center: new google.maps.LatLng(geocode_lat, geocode_lon),
      mapTypeId: google.maps.MapTypeId.ROADMAP,
    });

    for (var each in data) {
      var time = data[each].TIMESTAMP.replace(/[T]/g, " ");
      var time = time.split(" ");
      var icn;
      address_components =
        "<tr>" +
        "<th scope='row'>" +
        time[0].replace(/[-]/g, "/") +
        "</th>" +
        "<td>" +
        time[1] +
        "</td>" +
        "<td>" +
        JSON.stringify(data[each].LAT).replace(/["]/g, "") +
        "</td>" +
        "<td>" +
        JSON.stringify(data[each].LON).replace(/["]/g, "") +
        "</td>" +
        "</tr>" +
        address_components;
      bounds.extend(
        new google.maps.LatLng(
          JSON.stringify(data[each].LAT).replace(/["_]/g, ""),
          JSON.stringify(data[each].LON).replace(/["]/g, "")
        )
      );
      flightPlanCoordinates.push({
        lat: Number(JSON.stringify(data[each].LAT).replace(/["]/g, "")),
        lng: Number(JSON.stringify(data[each].LON).replace(/["]/g, "")),
      });
      if (each == count) {
        console.log("Executes");
        icn = icon_anchor;
      } else {
        console.log("Executes2");
        icn = icon_blob;
      }
      var marker = new google.maps.Marker({
        position: new google.maps.LatLng(
          JSON.stringify(data[each].LAT).replace(/["_]/g, ""),
          JSON.stringify(data[each].LON).replace(/["]/g, "")
        ),
        map: map,
        icon: icn,
      });
    }
    map.fitBounds(bounds);
    var flightPath = new google.maps.Polyline({
      path: flightPlanCoordinates,
      geodesic: true,
      strokeColor: "#FF0000",
      strokeOpacity: 1.0,
      strokeWeight: 2,
    });
    flightPath.setMap(map);
    document.getElementById("checkpoints").innerHTML = address_components;
  }}
  xhr.send();
}

$(document).ready(function () {
  $(".search").click(function () {
    submit();
  });
});

document.onkeydown = function () {
  if (window.event.keyCode == "13") {
    submit();
  }
};
