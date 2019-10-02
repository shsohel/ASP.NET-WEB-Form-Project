<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Main.Master" AutoEventWireup="true" CodeBehind="UpdateDesignation.aspx.cs" Inherits="HRManagement.Pages.UpdateDesignation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .newStyle1 {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h3> Update Designation </h3>
    <br />
   <div class="center-block">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="newStyle1" DataKeyNames="DegID" DataSourceID="SqlDataSource1" Width="440px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="DegID" HeaderText="DegID" InsertVisible="False" ReadOnly="True" SortExpression="DegID" />
            <asp:BoundField DataField="ForDegID" HeaderText="ForDegID" ReadOnly="True" SortExpression="ForDegID" />
            <asp:BoundField DataField="DegName" HeaderText="DegName" SortExpression="DegName" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [HrDesignation] WHERE [DegID] = @DegID" InsertCommand="INSERT INTO [HrDesignation] ([ForDegID], [DegName]) VALUES (@ForDegID, @DegName)" SelectCommand="SELECT * FROM [HrDesignation]" UpdateCommand="UPDATE [HrDesignation] SET [ForDegID] = @ForDegID, [DegName] = @DegName WHERE [DegID] = @DegID">
        <DeleteParameters>
            <asp:Parameter Name="DegID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ForDegID" Type="String" />
            <asp:Parameter Name="DegName" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ForDegID" Type="String" />
            <asp:Parameter Name="DegName" Type="String" />
            <asp:Parameter Name="DegID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
    <br />
       </div> 
</asp:Content>
