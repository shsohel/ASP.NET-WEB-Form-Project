<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Main.Master" AutoEventWireup="true" CodeBehind="EmployeeAttendence.aspx.cs" Inherits="HRManagement.Pages.EmployeeAttendence" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h3> Assign Employee Attendence </h3>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="AttnID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            AttnID:
            <asp:Label ID="AttnIDLabel1" runat="server" Text='<%# Eval("AttnID") %>' />
            <br />
            EmpID:
            <asp:TextBox ID="EmpIDTextBox" runat="server" Text='<%# Bind("EmpID") %>' />
            <br />
            StartTime:
            <asp:TextBox ID="StartTimeTextBox" runat="server" Text='<%# Bind("StartTime") %>' />
            <br />
            EndTime:
            <asp:TextBox ID="EndTimeTextBox" runat="server" Text='<%# Bind("EndTime") %>' />
            <br />
            Remarks:
            <asp:TextBox ID="RemarksTextBox" runat="server" Text='<%# Bind("Remarks") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            EmpID:
            <asp:TextBox ID="EmpIDTextBox" runat="server" Text='<%# Bind("EmpID") %>' />
            <br />
            StartTime:
            <asp:TextBox ID="StartTimeTextBox" runat="server" Text='<%# Bind("StartTime") %>' />
            <br />
            EndTime:
            <asp:TextBox ID="EndTimeTextBox" runat="server" Text='<%# Bind("EndTime") %>' />
            <br />
            Remarks:
            <asp:TextBox ID="RemarksTextBox" runat="server" Text='<%# Bind("Remarks") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            AttnID:
            <asp:Label ID="AttnIDLabel" runat="server" Text='<%# Eval("AttnID") %>' />
            <br />
            EmpID:
            <asp:Label ID="EmpIDLabel" runat="server" Text='<%# Bind("EmpID") %>' />
            <br />
            StartTime:
            <asp:Label ID="StartTimeLabel" runat="server" Text='<%# Bind("StartTime") %>' />
            <br />
            EndTime:
            <asp:Label ID="EndTimeLabel" runat="server" Text='<%# Bind("EndTime") %>' />
            <br />
            Remarks:
            <asp:Label ID="RemarksLabel" runat="server" Text='<%# Bind("Remarks") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Emp_DailyAttendence] WHERE [AttnID] = @original_AttnID AND (([EmpID] = @original_EmpID) OR ([EmpID] IS NULL AND @original_EmpID IS NULL)) AND (([StartTime] = @original_StartTime) OR ([StartTime] IS NULL AND @original_StartTime IS NULL)) AND [EndTime] = @original_EndTime AND (([Remarks] = @original_Remarks) OR ([Remarks] IS NULL AND @original_Remarks IS NULL))" InsertCommand="INSERT INTO [Emp_DailyAttendence] ([EmpID], [StartTime], [EndTime], [Remarks]) VALUES (@EmpID, @StartTime, @EndTime, @Remarks)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Emp_DailyAttendence] ORDER BY [EmpID]" UpdateCommand="UPDATE [Emp_DailyAttendence] SET [EmpID] = @EmpID, [StartTime] = @StartTime, [EndTime] = @EndTime, [Remarks] = @Remarks WHERE [AttnID] = @original_AttnID AND (([EmpID] = @original_EmpID) OR ([EmpID] IS NULL AND @original_EmpID IS NULL)) AND (([StartTime] = @original_StartTime) OR ([StartTime] IS NULL AND @original_StartTime IS NULL)) AND [EndTime] = @original_EndTime AND (([Remarks] = @original_Remarks) OR ([Remarks] IS NULL AND @original_Remarks IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_AttnID" Type="Int32" />
            <asp:Parameter Name="original_EmpID" Type="Int32" />
            <asp:Parameter Name="original_StartTime" Type="DateTime" />
            <asp:Parameter Name="original_EndTime" Type="DateTime" />
            <asp:Parameter Name="original_Remarks" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="EmpID" Type="Int32" />
            <asp:Parameter Name="StartTime" Type="DateTime" />
            <asp:Parameter Name="EndTime" Type="DateTime" />
            <asp:Parameter Name="Remarks" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="EmpID" Type="Int32" />
            <asp:Parameter Name="StartTime" Type="DateTime" />
            <asp:Parameter Name="EndTime" Type="DateTime" />
            <asp:Parameter Name="Remarks" Type="String" />
            <asp:Parameter Name="original_AttnID" Type="Int32" />
            <asp:Parameter Name="original_EmpID" Type="Int32" />
            <asp:Parameter Name="original_StartTime" Type="DateTime" />
            <asp:Parameter Name="original_EndTime" Type="DateTime" />
            <asp:Parameter Name="original_Remarks" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />

    <br />

</asp:Content>
