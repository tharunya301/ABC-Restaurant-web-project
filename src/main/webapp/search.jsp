<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Search Services - ABC Restaurant</title>
  <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
<header>
  <h1>Search Our Services</h1>
</header>
<section>
  <form action="search" method="get">
    <label for="searchTerm">Enter your search term:</label>
    <input type="text" id="searchTerm" name="searchTerm" placeholder="e.g., Catering, Wi-Fi" required><br>

    <input type="submit" value="Search">
  </form>
</section>
<section>
  <h2>Search Results:</h2>
  <!-- The search results will be displayed here -->
  <div id="searchResults">
    <%
      String searchTerm = request.getParameter("searchTerm");
      if (searchTerm != null) {
        // Example: You would perform a search in the database and display the results
        out.println("<p>Displaying search results for: " + searchTerm + "</p>");
        // Sample results
        out.println("<ul>");
        out.println("<li>Catering Service: Available in all branches</li>");
        out.println("<li>Free Wi-Fi: Available in selected branches</li>");
        out.println("</ul>");
      }
    %>
  </div>
</section>
</body>
</html>
