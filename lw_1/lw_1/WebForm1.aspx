<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="lw_1.WebForm1" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 315px;
            height: 356px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
        <div>
            Лабораторная работа №1</div>
        <asp:Label ID="Label1" runat="server" Text="Число 1"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br /><asp:CustomValidator runat="server" ControlToValidate="TextBox1" ServerValidationFunction ="EmpIDServerValidate" ClientValidationFunction ="EmpIDClientValidate" ErrorMessage ="Нечётное число" OnServerValidate="Unnamed2_ServerValidate"></asp:CustomValidator>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Число 2"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br /><asp:CompareValidator runat ="server" Display="Dynamic" ControlToValidate ="TextBox2" ValueToCompare ="1000" ErrorMessage = "Больше числа 1000" Type ="Integer" Operator ="LessThanEqual"></asp:CompareValidator>
        <br />
        Условие для первого операнда :<br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Неотрицательность" />
        <br />
        Выберите операцию :<br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="79px">
            <asp:ListItem>+</asp:ListItem>
            <asp:ListItem>-</asp:ListItem>
            <asp:ListItem>*</asp:ListItem>
            <asp:ListItem>/</asp:ListItem>
        </asp:RadioButtonList>
        <center><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Выполнить действие!</asp:LinkButton><br />
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Вывести результат!</asp:LinkButton></center>
        <br />
    </form>
</body>
</html>
