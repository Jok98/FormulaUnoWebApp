<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="search-bar.css">
</head>
<body>
       <div class="wrapper">
      <div class="search-input">
        <form id="form" action="search" method="get">
        <select name="ricerca" id="ricerca">
		  <option value="piloti">Piloti</option>
		  <option value="circuiti">Circuiti</option>
		  <option value="scuderie">Scuderie</option>
		</select>
        <input id="searchText" type="text" onchange="searchBar()" placeholder="Type to search..">
        <div class="autocom-box">
          <!-- here list are inserted from javascript -->
        </div>
        </form>
        <label></label>
        <div class="icon"><i class="fas fa-search"></i></div>
      </div>
    </div>
    <script type="text/javascript">
    	function searchBar() {
			var select = document.getElementById('ricerca');
			var text = select.options[select.selectedIndex].value;
// 			console.log(text);
			var searchText = document.getElementById('searchText').value;
// 			console.log(searchText);]
			var form = document.getElementById("form");
	        form.submit();
		}
    </script>
    </body>
</html>