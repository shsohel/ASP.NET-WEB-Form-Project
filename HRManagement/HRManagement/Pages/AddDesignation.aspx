<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Main.Master" AutoEventWireup="true" CodeBehind="AddDesignation.aspx.cs" Inherits="HRManagement.Pages.AddDesignation1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 186px
        }

        .auto-style2 {
            width: 186px;
            height: 21px;
        }

        .newStyle1 {
        }
        .newStyle2 {
            border-color: #000080;
        }
        .newStyle3 {
            background-color: #FFFFCC;
            color: #0000CC;
        }
        .newStyle4 {
            font-size: small;
            font-weight: bold;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            border-spacing: 0px;
            color: #293955;
            background-color: #CCFFCC;
        }
        table {
            background-color: #E8E8E8;
            font-family: Georgia, "Times New Roman", Times, serif;
            font-size: small;
            font-weight: bold;
            border: thin groove #008000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <br />
    <h3 class="text-center">Add  Designation with Gridview Update Panel </h3>
    <br />
    <div runat="server" align="center">

        <table class="newStyle4" runat="server" align="center">
            <tr>
                <td style="width: 33px">&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style1">&nbsp; Designation Name :&nbsp;&nbsp;</td>
                <td style="width: 331px">
                    <asp:TextBox ID="txtDesignation" runat="server" Width="309px" Style="margin-left: 3px"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RFVDes" runat="server" ControlToValidate="txtDesignation" ErrorMessage="Designation Name Required!!!" ForeColor="Red"> </asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 33px; height: 21px;"></td>
                <td class="auto-style2"></td>
                <td style="height: 21px; width: 331px;"></td>
                <td style="height: 21px">&nbsp;</td>
                <td style="height: 21px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 33px">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td style="width: 331px; text-align: right;">
                    <asp:Button ID="btnSave" runat="server" Style="margin-bottom: 0" Text="Add " CssClass="btn btn-primary" OnClick="btnSave_Click" />
                </td>
                <td>

                    <asp:Label ID="lblMessage" runat="server"></asp:Label>

                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    <br />
    <div class="DVDesignation" runat="server" align="center">
        <asp:GridView ID="GVDesignation" runat="server" HeaderStyle-BorderColor="SkyBlue" HeaderStyle-ForeColor="White" AlternatingRowStyle-BackColor="Yellow" HeaderStyle-BackColor="ForestGreen" Width="744px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Outset" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="false">

            <Columns>
                <asp:BoundField DataField="DegID" HeaderText=" Designation ID " />
                <asp:BoundField DataField="ForDegID" HeaderText=" Alternate ID " />
                <asp:BoundField DataField="DegName" HeaderText=" Designation Name " />
            </Columns>
        </asp:GridView>
    </div>

    <p>
    </p>
</asp:Content>
