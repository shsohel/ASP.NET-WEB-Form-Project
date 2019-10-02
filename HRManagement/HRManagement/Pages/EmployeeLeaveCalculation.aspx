<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Main.Master" AutoEventWireup="true" CodeBehind="EmployeeLeaveCalculation.aspx.cs" Inherits="HRManagement.Pages.EmployeeLeaveCalculation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h4> Employee Leave Calculation</h4>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="EmpLeveID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            EmpLeveID:
            <asp:Label ID="EmpLeveIDLabel1" runat="server" Text='<%# Eval("EmpLeveID") %>' />
            <br />
            LeaveTypeID:
            <asp:TextBox ID="LeaveTypeIDTextBox" runat="server" Text='<%# Bind("LeaveTypeID") %>' />
            <br />
            EmpID:
            <asp:TextBox ID="EmpIDTextBox" runat="server" Text='<%# Bind("EmpID") %>' />
            <br />
            LeaveStartDate:
            <asp:TextBox ID="LeaveStartDateTextBox" runat="server" Text='<%# Bind("LeaveStartDate") %>' />
            <br />
            LeaveEndDate:
            <asp:TextBox ID="LeaveEndDateTextBox" runat="server" Text='<%# Bind("LeaveEndDate") %>' />
            <br />
            NumberOfDayLeave:
            <asp:TextBox ID="NumberOfDayLeaveTextBox" runat="server" Text='<%# Bind("NumberOfDayLeave") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            LeaveTypeID:
            <asp:TextBox ID="LeaveTypeIDTextBox" runat="server" Text='<%# Bind("LeaveTypeID") %>' />
            <br />
            EmpID:
            <asp:TextBox ID="EmpIDTextBox" runat="server" Text='<%# Bind("EmpID") %>' />
            <br />
            LeaveStartDate:
            <asp:TextBox ID="LeaveStartDateTextBox" runat="server" Text='<%# Bind("LeaveStartDate") %>' />
            <br />
            LeaveEndDate:
            <asp:TextBox ID="LeaveEndDateTextBox" runat="server" Text='<%# Bind("LeaveEndDate") %>' />
            <br />
            NumberOfDayLeave:
            <asp:TextBox ID="NumberOfDayLeaveTextBox" runat="server" Text='<%# Bind("NumberOfDayLeave") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            EmpLeveID:
            <asp:Label ID="EmpLeveIDLabel" runat="server" Text='<%# Eval("EmpLeveID") %>' />
            <br />
            LeaveTypeID:
            <asp:Label ID="LeaveTypeIDLabel" runat="server" Text='<%# Bind("LeaveTypeID") %>' />
            <br />
            EmpID:
            <asp:Label ID="EmpIDLabel" runat="server" Text='<%# Bind("EmpID") %>' />
            <br />
            LeaveStartDate:
            <asp:Label ID="LeaveStartDateLabel" runat="server" Text='<%# Bind("LeaveStartDate") %>' />
            <br />
            LeaveEndDate:
            <asp:Label ID="LeaveEndDateLabel" runat="server" Text='<%# Bind("LeaveEndDate") %>' />
            <br />
            NumberOfDayLeave:
            <asp:Label ID="NumberOfDayLeaveLabel" runat="server" Text='<%# Bind("NumberOfDayLeave") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Emp_LeaveCalculation] WHERE [EmpLeveID] = @EmpLeveID" InsertCommand="INSERT INTO [Emp_LeaveCalculation] ([LeaveTypeID], [EmpID], [LeaveStartDate], [LeaveEndDate], [NumberOfDayLeave]) VALUES (@LeaveTypeID, @EmpID, @LeaveStartDate, @LeaveEndDate, @NumberOfDayLeave)" SelectCommand="SELECT * FROM [Emp_LeaveCalculation]" UpdateCommand="UPDATE [Emp_LeaveCalculation] SET [LeaveTypeID] = @LeaveTypeID, [EmpID] = @EmpID, [LeaveStartDate] = @LeaveStartDate, [LeaveEndDate] = @LeaveEndDate, [NumberOfDayLeave] = @NumberOfDayLeave WHERE [EmpLeveID] = @EmpLeveID">
        <DeleteParameters>
            <asp:Parameter Name="EmpLeveID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="LeaveTypeID" Type="Int32" />
            <asp:Parameter Name="EmpID" Type="Int32" />
            <asp:Parameter Name="LeaveStartDate" Type="DateTime" />
            <asp:Parameter Name="LeaveEndDate" Type="DateTime" />
            <asp:Parameter Name="NumberOfDayLeave" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="LeaveTypeID" Type="Int32" />
            <asp:Parameter Name="EmpID" Type="Int32" />
            <asp:Parameter Name="LeaveStartDate" Type="DateTime" />
            <asp:Parameter Name="LeaveEndDate" Type="DateTime" />
            <asp:Parameter Name="NumberOfDayLeave" Type="Int32" />
            <asp:Parameter Name="EmpLeveID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />


    <br />

</asp:Content>
