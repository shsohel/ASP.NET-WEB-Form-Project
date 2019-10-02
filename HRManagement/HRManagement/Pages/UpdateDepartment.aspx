<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Main.Master" AutoEventWireup="true" CodeBehind="UpdateDepartment.aspx.cs" Inherits="HRManagement.Pages.UpdateDepartment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h3> Update Department </h3>
    <div class="center-block">
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="DeptID" DataSourceID="SqlDataSource1" Width="436px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="DeptID" HeaderText="DeptID" InsertVisible="False" ReadOnly="True" SortExpression="DeptID" />
                <asp:BoundField DataField="DeptName" HeaderText="DeptName" SortExpression="DeptName" />
                <asp:BoundField DataField="DeptType" HeaderText="DeptType" SortExpression="DeptType" />
                <asp:BoundField DataField="DeptDesc" HeaderText="DeptDesc" SortExpression="DeptDesc" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Departments] WHERE [DeptID] = @DeptID" InsertCommand="INSERT INTO [Departments] ([DeptName], [DeptType], [DeptDesc]) VALUES (@DeptName, @DeptType, @DeptDesc)" SelectCommand="SELECT * FROM [Departments]" UpdateCommand="UPDATE [Departments] SET [DeptName] = @DeptName, [DeptType] = @DeptType, [DeptDesc] = @DeptDesc WHERE [DeptID] = @DeptID">
            <DeleteParameters>
                <asp:Parameter Name="DeptID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="DeptName" Type="String" />
                <asp:Parameter Name="DeptType" Type="String" />
                <asp:Parameter Name="DeptDesc" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="DeptName" Type="String" />
                <asp:Parameter Name="DeptType" Type="String" />
                <asp:Parameter Name="DeptDesc" Type="String" />
                <asp:Parameter Name="DeptID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
