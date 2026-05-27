<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="lw_2.WebForm2" %>
<%@ MasterType VirtualPath="~/Site1.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="StyleSheet1.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="3" FinishCompleteButtonText="Получить ответ!" Height="186px" OnFinishButtonClick="Wizard_FinishButtonClick1" Width="1037px" BackColor="#E6E2D8" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Font-Names="Times New Roman" Font-Size="X-Large" ClientIDMode="Predictable">
        <HeaderStyle BackColor="#666666" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
        <NavigationButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#1C5E55" />
        <SideBarButtonStyle ForeColor="White" />
        <SideBarStyle BackColor="#1C5E55" Font-Size="0.9em" VerticalAlign="Top" />
        <StepStyle BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" />
    <WizardSteps>
        <asp:WizardStep runat="server" title="Операнд №1">
            <asp:Label ID="Label2" runat="server" Text="Первый операнд" BorderColor = "#c0c0c0"></asp:Label>
            &nbsp;:<asp:TextBox ID="TextBox1" runat="server" Width="221px" Height="20px"></asp:TextBox>
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Неотр." />
            
        </asp:WizardStep>
        <asp:WizardStep runat="server" title="Операнд №2">
            <asp:Label ID="Label3" runat="server" Text="Второй операнд" Font-Size="18pt"></asp:Label>
            &nbsp;:<asp:TextBox ID="TextBox2" runat="server" Width="181px" Height="18px"></asp:TextBox>
            <br />
        </asp:WizardStep>
        <asp:WizardStep runat="server" Title="Операция">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" BackColor="#FFFFC0" Width="150px">
                <asp:ListItem>+</asp:ListItem>
                <asp:ListItem>-</asp:ListItem>
                <asp:ListItem>*</asp:ListItem>
                <asp:ListItem>/</asp:ListItem>
            </asp:RadioButtonList>
        </asp:WizardStep>
        <asp:WizardStep runat="server" Title="Результат">
           <center> <asp:Label ID="Label1" runat="server" Text="Нажми кнопку, и смотри выше!"></asp:Label></center>
        </asp:WizardStep>
    </WizardSteps>
</asp:Wizard>
<asp:TreeView ID="TreeView1" runat="server" ImageSet="BulletedList2" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged1" ShowExpandCollapse="False" Font-Names="Times New Roman" Font-Size="Large">
    <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
    <Nodes>
        <asp:TreeNode Text="Калькулятор" Value="Калькулятор">
            <asp:TreeNode Text="Операнд №1" Value="Операнд №1"></asp:TreeNode>
            <asp:TreeNode Text="Операнд №2" Value="Операнд №2"></asp:TreeNode>
            <asp:TreeNode Text="Операция" Value="Операция"></asp:TreeNode>
            <asp:TreeNode Selected="True" Text="Результат" Value="Результат"></asp:TreeNode>
        </asp:TreeNode>
    </Nodes>
    <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
    <ParentNodeStyle Font-Bold="False" />
    <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
</asp:TreeView>
    </body>
</asp:Content>
