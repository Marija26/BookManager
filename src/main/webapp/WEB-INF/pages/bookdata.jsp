<html>
<head>
    <title></title>
</head>
<body>


<h1>Book Details</h1>

    <table class = "tg">
        <tr>
            <th width="80">ID</th>
            <th width="120">Name</th>
            <th width="120">Author</th>
            <th width="120">Price</th>
        </tr>
            <tr>
                <td>${book.id}</td>
                <td>${book.bookTitle}</td>
                <td>${book.bookAuthor}</td>
                <td>${book.price/100}${book.price%100}</td>


            </tr>
        </table>
</body>
</html>