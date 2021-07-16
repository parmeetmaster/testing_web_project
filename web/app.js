function alertMessage(text) {
    alert(text)
}

window.logger = (flutter_value) => {
   console.log({ js_context: this, flutter_value });
}

function httpGet() {
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.open( "GET", "https://raw.githubusercontent.com/lutangar/cities.json/master/cities.json", false ); // false for synchronous request
    xmlHttp.send( null );
    return xmlHttp.responseText;
}