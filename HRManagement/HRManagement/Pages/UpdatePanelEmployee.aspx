<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Main.Master" AutoEventWireup="true" CodeBehind="UpdatePanelEmployee.aspx.cs" Inherits="HRManagement.Pages.UpdateEmployee" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h3> Update Panel Test on Employee Information </h3>



    <br />

    <div >
            <asp:DropDownList ID="ddlName" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlName_SelectedIndexChanged"></asp:DropDownList>
            <br />
          
</div>
    <br />
    <div>



        <asp:GridView ID="grdEmployee" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="734px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

        </asp:GridView>

    </div>


</asp:Content>
