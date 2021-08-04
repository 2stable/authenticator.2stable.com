function filterXXX() {
    var table = document.getElementById("myTable");
    var input = document.getElementById("myInput").value;
    var rows = table.getElementsByTagName("tr");
    var results = document.getElementById("displayResults");

    for (var index = 0; index < rows.length; index++) {
        var row = rows[index];

        var header = row.getElementsByTagName("th")[0];
        var value = header.textContent || header.innerText;

        if (value.toUpperCase().indexOf(input.toUpperCase()) > -1) {
            row.style.display = "";
        } else {
            row.style.display = "none";
        }
        results.innerHTML = "Results for: " + input;
    }
}