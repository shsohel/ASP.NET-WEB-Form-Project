<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Main.Master" AutoEventWireup="true" CodeBehind="AddDepartment.aspx.cs" Inherits="HRManagement.Pages.AddDepartment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .newStyle1 {
            background-color: #E4B9B9;
            border-style: inset;
            border-width: thin;
            float: none;
            border-collapse: collapse;
            table-layout: auto;
        }
        .newStyle2 {
            background-color: #ADADAD;
            background-repeat: repeat;
            font-weight: 700;
        }
        .newStyle3 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: small;
            font-weight: bold;
            font-variant: normal;
            color: #000000;
        }
        .newStyle4 {
            border-color: #D43F3A;
        }
        .newStyle5 {
            background-color: #FFFFFF;
        }
        .newStyle6 {
            text-indent: inherit;
            border: medium outset #269ABC;
        }
        input {
            border-color: #FFCCFF;
        }
        table {
            font-family: Georgia, "Times New Roman", Times, serif;
            font-size: small;
            font-weight: bold;
            border-color: #5BC0DE;
        }
        td {
            background-color: #E8E8E8;
        }
        .newStyle7 {
            border-color: #555555;
        }
        table {
            border-color: #46B8DA;
            border-width: thin;
            text-align: center;
        }
        .auto-style1 {
            border-color: #555555;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="newStyle6" align="center">
        <tr>
            <td style="width: 33px" class="newStyle7">&nbsp;&nbsp;&nbsp; </td>
            <td class="newStyle7">&nbsp;Department Name :&nbsp;&nbsp;</td>
            <td style="width: 331px" class="newStyle7">
                <asp:TextBox ID="txtDeprtName" runat="server" Width="309px" Style="margin-left: 3px" CssClass="newStyle7"></asp:TextBox></td>
            <td class="newStyle7">
                <asp:RequiredFieldValidator ID="RFVDep" runat="server" ControlToValidate="txtDeprtName" ErrorMessage="Department Name Required!!!" ForeColor="Red"> </asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 33px; height: 21px;" class="newStyle7"></td>
            <td class="newStyle7">Depaprtment Type:</td>
            <td style="height: 21px; width: 331px;" class="newStyle7">
                <asp:TextBox ID="txtDeptype" runat="server" Width="309px" Style="margin-left: 3px" CssClass="newStyle7"></asp:TextBox></td>

            <td style="height: 21px" class="newStyle7">
                <asp:RequiredFieldValidator ID="RFVDep1" runat="server" ControlToValidate="txtDeptype" ErrorMessage="Department Type Required!!!" ForeColor="Red"> </asp:RequiredFieldValidator>
            </td>
            <td style="height: 21px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 33px; height: 21px;" class="newStyle7">&nbsp;</td>
            <td class="newStyle7">Department Description:</td>
            <td style="height: 21px; width: 331px;" class="newStyle7">
                <asp:TextBox ID="txtDepDescription" runat="server" Width="309px" Style="margin-left: 3px" CssClass="newStyle7"></asp:TextBox></td>
            <td style="height: 21px" class="newStyle7">&nbsp;</td>
            <td style="height: 21px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 33px; height: 21px;" class="newStyle7">&nbsp;</td>
            <td class="newStyle7">&nbsp;</td>
            <td style="height: 21px; width: 331px;" class="auto-style1">
                <asp:CheckBox ID="cbAgree" runat="server" BorderColor="White" Text="Yes, I am Agree." />
            </td>
            <td style="height: 21px" class="newStyle7">&nbsp;</td>
            <td style="height: 21px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 33px" class="newStyle7">&nbsp;</td>
            <td class="newStyle7">&nbsp;</td>
            <td style="width: 331px; text-align: right;" class="newStyle7">
                <asp:Button ID="btnSave" runat="server" Style="margin-bottom: 0" Text="Add" CssClass="btn btn-primary" OnClick="btnSave_Click" />
            </td>
            <td class="newStyle7">

                <asp:Label ID="lblMessage" runat="server"></asp:Label>

            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />

    <div runat="server" class="center-block" align="center">

        <asp:DetailsView ID="DetailsView1" AllowPaging="True" runat="server" Height="50px" Width="752px" AutoGenerateRows="False" DataKeyNames="DeptID" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="DeptID" HeaderText="Department ID" InsertVisible="False" ReadOnly="True" SortExpression="DeptID" />
                <asp:BoundField DataField="DeptName" HeaderText="Department Name" SortExpression="DeptName" />
                <asp:BoundField DataField="DeptType" HeaderText="Department Type" SortExpression="DeptType" />
                <asp:BoundField DataField="DeptDesc" HeaderText="Description" SortExpression="DeptDesc" />
            </Fields>
        </asp:DetailsView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Departments]"></asp:SqlDataSource>

    </div>

            </asp:Content>
