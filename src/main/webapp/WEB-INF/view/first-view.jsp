<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<body>
<h2>
    it works
</h2>
<c:forEach items="${categories}" var="category">
    <p>${category.type} - ${category.origin}</p>
</c:forEach>
</body>

</html>

