<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<body>
<h2>
    list of category is
</h2>
<c:forEach items="${category}" var="category">
    <p>${category.type} - ${category.origin}</p>
</c:forEach>
</body>

</html>

