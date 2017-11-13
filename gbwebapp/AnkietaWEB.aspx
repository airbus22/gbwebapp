<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AnkietaWEB.aspx.cs" Inherits="gbwebapp.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        </div>
        <p>
            <asp:Label ID="lbl1" runat="server" Text="test"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="1" />
            <asp:Button ID="Button2" runat="server" Text="2" />
            <asp:Button ID="Button3" runat="server" Text="3" />
            <asp:Button ID="Button4" runat="server" Text="4" />
            <asp:Button ID="Button5" runat="server" Text="5" />
            <asp:Button ID="Button6" runat="server" Text="6" />
            <asp:Button ID="Button7" runat="server" Text="7" />
            <asp:Button ID="Button8" runat="server" Text="8" />
            <asp:Button ID="Button9" runat="server" Text="9" />
            <asp:Button ID="Button10" runat="server" Text="10" />
            <asp:Button ID="Button11" runat="server" Text="11" />
            <asp:Button ID="Button12" runat="server" Text="12" />
            <asp:Button ID="Button13" runat="server" Text="13" />
            <asp:Button ID="Button14" runat="server" Text="14" />
            <asp:Button ID="Button15" runat="server" Text="15" />
            <asp:Button ID="Button16" runat="server" Text="16" />
            <asp:Button ID="Button17" runat="server" Text="17" />
            <asp:Button ID="Button18" runat="server" Text="18" />
            <asp:Button ID="Button19" runat="server" Text="19" />
            <asp:Button ID="Button20" runat="server" Text="20" />
            <asp:Button ID="Button21" runat="server" Text="21" />
            <asp:Button ID="Button22" runat="server" Text="22" />
            <asp:Button ID="Button23" runat="server" Text="100" />
            <asp:Button ID="Button24" runat="server" Text="999" />
            <asp:Button ID="Button25" runat="server" Text="10000" />
        </p>
        <p>
            Podaj liczbę pytań wchodzących w skład ankiety:</p>
        <p>
            &nbsp;<asp:TextBox ID="tbx1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="GenerujAnkiete_btn" runat="server" OnClick="GenerujAnkiete_btn_Click" Text="GENERUJ" />
        &nbsp;&nbsp;&nbsp;
            <asp:Label ID="liczbaPytan_walidacja_lbl" runat="server" ForeColor="Red"></asp:Label>
        &nbsp;&nbsp;&nbsp; <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="tbx1" ErrorMessage="Akceptowane wartości sa z przedziału 0 - 999"></asp:RangeValidator>
        </p>
        <p style="margin-left: 440px">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="tbx1" runat="server" ValidationExpression="\d+" ErrorMessage="należy podawać wyłącznie cyfry!"></asp:RegularExpressionValidator>
        </p>
        <p style="margin-left: 440px">
            &nbsp;</p>
        <p style="margin-left: 440px">
            <asp:Label ID="p1_lbl" runat="server"></asp:Label>
        </p>
        <p style="margin-left: 440px">
            <asp:Label ID="p2_lbl" runat="server"></asp:Label>
        </p>
        <p style="margin-left: 440px">
            <asp:Label ID="p3_lbl" runat="server"></asp:Label>
        </p>
        <p style="margin-left: 440px">
            <asp:Label ID="p4_lbl" runat="server"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
