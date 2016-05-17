<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
    
    <!-- Ch12SQL Gateway index.jsp -- this is the one we are altering -->
    
<h1>The SQL Gateway</h1>
<p>Enter an SQL statement and click the Execute button.</p>
    <form action="sqlGateway" method="post"><!-- action must be sqlGateway to tie it to the servble-->
        <input type="hidden" name="action" value="display_user">        

        <label class="pad_top">Database Url:</label><!-- takes in url of the database.-->
        <input type="text" name="dbUrl" value="${user.dbUrl}">
       

        <label class="pad_top">User Name:</label><!-- takes in the username for the database.-->
        <input type="text" name="userName" value="${user.userName}">
        

        <label class="pad_top">Password:</label><!-- takes in the password for the database.-->
        <input type="text" name="password" value="${user.password}">
        <br> 
        
        <label class="pad_top">Table Name:</label><!-- takes in the table name for the database.-->
        <input type="text" name="tableName" value="${user.tablename}">
        <br>

        <label>&nbsp;</label><!-- submit button-->
        <input type="submit" value="Join Now" class="margin_left">
    </form>



<p><b>SQL result:</b></p>
${sqlResult}

</body>
</html>