<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<a href = "../../index.jsp">Back to main menu</a>

<br/>
<br/>

<h1>Book List</h1>

<c:if test="${!empty listBooks}">
    <table class = "tg">
    <tr>
        <th width="80">ID</th>
        <th width="120">Title</th>
        <th width="120">Author</th>
        <th width="120">Price</th>
        <th width="60">Edit</th>
        <th width="60">Delete</th>

    </tr>
        <c:forEach items ="${listBooks}" var = "books">
        <tr>
            <td>${book.id}</td>
            <td>${book.bookTitle}</td>
            <td>${book.bookAuthor}</td>
            <td>${book.price/100}${book.price%100}</td>
            <td><a href = "<c:url value='/edit/${book.id}'/>">Edit</a></td>
            <td><a href = "<c:url value='/remove/${book.id}'/>">Delete</a></td>

            </tr>
        </c:forEach>

    </table>

</c:if>
<h1>Add a book</h1>
"<c:url var = "addAction" value="/books/add">
    <form:form action = "${addAction}" commandName="book">
        <table>
            <c:if test="${!empty book.bookTitle}"/>
                    <tr>
                        <td>
                            <form:label path="id">
                                <spring:message var="ID"/>
                            </form:label>
                        </td>
                        <td>
                            <form:input path="id" readonly="true" size = "8" disabled="true"/>
                            <form:hidden path="id">
                            </form:hidden>
                        </td>
                    </tr>
            <tr>
                <td>
                        <form:label path="bookTitle">
                                <spring:message var="Title"/>
                            </form:label>

    </td>
    <td>
            <form:input path="bookTitle"/>
    </td>
            <tr>
                <td>
                    <form:label path="bookAuthor">
                        <spring:message var="Author"/>
                    </form:label>
                </td>
            <td>
                    <form:input path="bookAuthor"/>
            </td>
        </tr>
            <tr>
                <td>
                    <form:label path="price">
                        <spring:message var="Price"/>
                    </form:label>
                </td>
                <td>
                        <form:input path="price"/>
                </td>
            </tr>
            <tr>
            <td colspan="2">
                <c:if test="${!empty book.bookTitle}">
                        <input type="submit"
                               value="<spring:message var="Edit book"/>"/>
                </c:if>
                <c:if test="${!empty book.bookTitle}">
                    <input type="submit"
                           value="<spring:message var="Add book"/>"/>
                </c:if>
            </td>
            </tr>



        </table>
    </form:form>

</c:url>

</body>
</html>
