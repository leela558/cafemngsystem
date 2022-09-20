<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="con1.aspx.cs" Inherits="cafemangement.con1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style>
        address{
            text-align:center;


        }
    </style>
<body>
    <form id="form1" runat="server">
        <div>
            <h2><%: Title %></h2>
    <h3>Your contact page.</h3>
    <address>
        Head Branch<br />
        Madhapur <br />
        <abbr title="Phone">P:</abbr>
        7539514588
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support.cafeeeee@gmail.com">Support.cafeeeee@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing.cafeeeee@example.com">Marketing.cafeeeee@example.com</a>
    </address>
        </div>
    </form>
</body>
</html>
