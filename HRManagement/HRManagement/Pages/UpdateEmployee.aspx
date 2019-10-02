<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Main.Master" AutoEventWireup="true" CodeBehind="UpdateEmployee.aspx.cs" Inherits="HRManagement.Pages.UpdateEmployee1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <h3 style="text-align: center"> Update Employee Information </h3>
    <br />

    <div class="center-block">

        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="EmpID" DataSourceID="SqlDataSource1" Width="400px">
            <EditItemTemplate>
                EmpID:
                <asp:Label ID="EmpIDLabel1" runat="server" Text='<%# Eval("EmpID") %>' />
                <br />
                EmpFirstName:
                <asp:TextBox ID="EmpFirstNameTextBox" runat="server" Text='<%# Bind("EmpFirstName") %>' />
                <br />
                EmpLastName:
                <asp:TextBox ID="EmpLastNameTextBox" runat="server" Text='<%# Bind("EmpLastName") %>' />
                <br />
                Gender:
                <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                <br />
                MaritalStatus:
                <asp:TextBox ID="MaritalStatusTextBox" runat="server" Text='<%# Bind("MaritalStatus") %>' />
                <br />
                CellPhone:
                <asp:TextBox ID="CellPhoneTextBox" runat="server" Text='<%# Bind("CellPhone") %>' />
                <br />
                DOB:
                <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                BloodGroup:
                <asp:TextBox ID="BloodGroupTextBox" runat="server" Text='<%# Bind("BloodGroup") %>' />
                <br />
                Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                JoiningDate:
                <asp:TextBox ID="JoiningDateTextBox" runat="server" Text='<%# Bind("JoiningDate") %>' />
                <br />
                TerminationDate:
                <asp:TextBox ID="TerminationDateTextBox" runat="server" Text='<%# Bind("TerminationDate") %>' />
                <br />
                EmImage:
                <asp:TextBox ID="EmImageTextBox" runat="server" Text='<%# Bind("EmImage") %>' />
                <br />
                DeptID:
                <asp:TextBox ID="DeptIDTextBox" runat="server" Text='<%# Bind("DeptID") %>' />
                <br />
                DesignationId:
                <asp:TextBox ID="DesignationIdTextBox" runat="server" Text='<%# Bind("DesignationId") %>' />
                <br />
                IsActive:
                <asp:CheckBox ID="IsActiveCheckBox" runat="server" Checked='<%# Bind("IsActive") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                EmpFirstName:
                <asp:TextBox ID="EmpFirstNameTextBox" runat="server" Text='<%# Bind("EmpFirstName") %>' />
                <br />
                EmpLastName:
                <asp:TextBox ID="EmpLastNameTextBox" runat="server" Text='<%# Bind("EmpLastName") %>' />
                <br />
                Gender:
                <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                <br />
                MaritalStatus:
                <asp:TextBox ID="MaritalStatusTextBox" runat="server" Text='<%# Bind("MaritalStatus") %>' />
                <br />
                CellPhone:
                <asp:TextBox ID="CellPhoneTextBox" runat="server" Text='<%# Bind("CellPhone") %>' />
                <br />
                DOB:
                <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                BloodGroup:
                <asp:TextBox ID="BloodGroupTextBox" runat="server" Text='<%# Bind("BloodGroup") %>' />
                <br />
                Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                JoiningDate:
                <asp:TextBox ID="JoiningDateTextBox" runat="server" Text='<%# Bind("JoiningDate") %>' />
                <br />
                TerminationDate:
                <asp:TextBox ID="TerminationDateTextBox" runat="server" Text='<%# Bind("TerminationDate") %>' />
                <br />
                EmImage:
                <asp:TextBox ID="EmImageTextBox" runat="server" Text='<%# Bind("EmImage") %>' />
                <br />
                DeptID:
                <asp:TextBox ID="DeptIDTextBox" runat="server" Text='<%# Bind("DeptID") %>' />
                <br />
                DesignationId:
                <asp:TextBox ID="DesignationIdTextBox" runat="server" Text='<%# Bind("DesignationId") %>' />
                <br />
                IsActive:
                <asp:CheckBox ID="IsActiveCheckBox" runat="server" Checked='<%# Bind("IsActive") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                EmpID:
                <asp:Label ID="EmpIDLabel" runat="server" Text='<%# Eval("EmpID") %>' />
                <br />
                EmpFirstName:
                <asp:Label ID="EmpFirstNameLabel" runat="server" Text='<%# Bind("EmpFirstName") %>' />
                <br />
                EmpLastName:
                <asp:Label ID="EmpLastNameLabel" runat="server" Text='<%# Bind("EmpLastName") %>' />
                <br />
                Gender:
                <asp:Label ID="GenderLabel" runat="server" Text='<%# Bind("Gender") %>' />
                <br />
                MaritalStatus:
                <asp:Label ID="MaritalStatusLabel" runat="server" Text='<%# Bind("MaritalStatus") %>' />
                <br />
                CellPhone:
                <asp:Label ID="CellPhoneLabel" runat="server" Text='<%# Bind("CellPhone") %>' />
                <br />
                DOB:
                <asp:Label ID="DOBLabel" runat="server" Text='<%# Bind("DOB") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                BloodGroup:
                <asp:Label ID="BloodGroupLabel" runat="server" Text='<%# Bind("BloodGroup") %>' />
                <br />
                Address:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                JoiningDate:
                <asp:Label ID="JoiningDateLabel" runat="server" Text='<%# Bind("JoiningDate") %>' />
                <br />
                TerminationDate:
                <asp:Label ID="TerminationDateLabel" runat="server" Text='<%# Bind("TerminationDate") %>' />
                <br />
                EmImage:
                <asp:Label ID="EmImageLabel" runat="server" Text='<%# Bind("EmImage") %>' />
                <br />
                DeptID:
                <asp:Label ID="DeptIDLabel" runat="server" Text='<%# Bind("DeptID") %>' />
                <br />
                DesignationId:
                <asp:Label ID="DesignationIdLabel" runat="server" Text='<%# Bind("DesignationId") %>' />
                <br />
                IsActive:
                <asp:CheckBox ID="IsActiveCheckBox" runat="server" Checked='<%# Bind("IsActive") %>' Enabled="false" />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Employees] WHERE [EmpID] = @original_EmpID AND [EmpFirstName] = @original_EmpFirstName AND [EmpLastName] = @original_EmpLastName AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([MaritalStatus] = @original_MaritalStatus) OR ([MaritalStatus] IS NULL AND @original_MaritalStatus IS NULL)) AND (([CellPhone] = @original_CellPhone) OR ([CellPhone] IS NULL AND @original_CellPhone IS NULL)) AND [DOB] = @original_DOB AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([BloodGroup] = @original_BloodGroup) OR ([BloodGroup] IS NULL AND @original_BloodGroup IS NULL)) AND [Address] = @original_Address AND [JoiningDate] = @original_JoiningDate AND (([TerminationDate] = @original_TerminationDate) OR ([TerminationDate] IS NULL AND @original_TerminationDate IS NULL)) AND (([EmImage] = @original_EmImage) OR ([EmImage] IS NULL AND @original_EmImage IS NULL)) AND (([DeptID] = @original_DeptID) OR ([DeptID] IS NULL AND @original_DeptID IS NULL)) AND (([DesignationId] = @original_DesignationId) OR ([DesignationId] IS NULL AND @original_DesignationId IS NULL)) AND (([IsActive] = @original_IsActive) OR ([IsActive] IS NULL AND @original_IsActive IS NULL))" InsertCommand="INSERT INTO [Employees] ([EmpFirstName], [EmpLastName], [Gender], [MaritalStatus], [CellPhone], [DOB], [Email], [BloodGroup], [Address], [JoiningDate], [TerminationDate], [EmImage], [DeptID], [DesignationId], [IsActive]) VALUES (@EmpFirstName, @EmpLastName, @Gender, @MaritalStatus, @CellPhone, @DOB, @Email, @BloodGroup, @Address, @JoiningDate, @TerminationDate, @EmImage, @DeptID, @DesignationId, @IsActive)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Employees]" UpdateCommand="UPDATE [Employees] SET [EmpFirstName] = @EmpFirstName, [EmpLastName] = @EmpLastName, [Gender] = @Gender, [MaritalStatus] = @MaritalStatus, [CellPhone] = @CellPhone, [DOB] = @DOB, [Email] = @Email, [BloodGroup] = @BloodGroup, [Address] = @Address, [JoiningDate] = @JoiningDate, [TerminationDate] = @TerminationDate, [EmImage] = @EmImage, [DeptID] = @DeptID, [DesignationId] = @DesignationId, [IsActive] = @IsActive WHERE [EmpID] = @original_EmpID AND [EmpFirstName] = @original_EmpFirstName AND [EmpLastName] = @original_EmpLastName AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([MaritalStatus] = @original_MaritalStatus) OR ([MaritalStatus] IS NULL AND @original_MaritalStatus IS NULL)) AND (([CellPhone] = @original_CellPhone) OR ([CellPhone] IS NULL AND @original_CellPhone IS NULL)) AND [DOB] = @original_DOB AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([BloodGroup] = @original_BloodGroup) OR ([BloodGroup] IS NULL AND @original_BloodGroup IS NULL)) AND [Address] = @original_Address AND [JoiningDate] = @original_JoiningDate AND (([TerminationDate] = @original_TerminationDate) OR ([TerminationDate] IS NULL AND @original_TerminationDate IS NULL)) AND (([EmImage] = @original_EmImage) OR ([EmImage] IS NULL AND @original_EmImage IS NULL)) AND (([DeptID] = @original_DeptID) OR ([DeptID] IS NULL AND @original_DeptID IS NULL)) AND (([DesignationId] = @original_DesignationId) OR ([DesignationId] IS NULL AND @original_DesignationId IS NULL)) AND (([IsActive] = @original_IsActive) OR ([IsActive] IS NULL AND @original_IsActive IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_EmpID" Type="Int32" />
                <asp:Parameter Name="original_EmpFirstName" Type="String" />
                <asp:Parameter Name="original_EmpLastName" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_MaritalStatus" Type="String" />
                <asp:Parameter Name="original_CellPhone" Type="String" />
                <asp:Parameter Name="original_DOB" Type="DateTime" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_BloodGroup" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_JoiningDate" Type="DateTime" />
                <asp:Parameter Name="original_TerminationDate" Type="DateTime" />
                <asp:Parameter Name="original_EmImage" Type="String" />
                <asp:Parameter Name="original_DeptID" Type="Int32" />
                <asp:Parameter Name="original_DesignationId" Type="Int32" />
                <asp:Parameter Name="original_IsActive" Type="Boolean" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EmpFirstName" Type="String" />
                <asp:Parameter Name="EmpLastName" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="MaritalStatus" Type="String" />
                <asp:Parameter Name="CellPhone" Type="String" />
                <asp:Parameter Name="DOB" Type="DateTime" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="BloodGroup" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="JoiningDate" Type="DateTime" />
                <asp:Parameter Name="TerminationDate" Type="DateTime" />
                <asp:Parameter Name="EmImage" Type="String" />
                <asp:Parameter Name="DeptID" Type="Int32" />
                <asp:Parameter Name="DesignationId" Type="Int32" />
                <asp:Parameter Name="IsActive" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="EmpFirstName" Type="String" />
                <asp:Parameter Name="EmpLastName" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="MaritalStatus" Type="String" />
                <asp:Parameter Name="CellPhone" Type="String" />
                <asp:Parameter Name="DOB" Type="DateTime" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="BloodGroup" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="JoiningDate" Type="DateTime" />
                <asp:Parameter Name="TerminationDate" Type="DateTime" />
                <asp:Parameter Name="EmImage" Type="String" />
                <asp:Parameter Name="DeptID" Type="Int32" />
                <asp:Parameter Name="DesignationId" Type="Int32" />
                <asp:Parameter Name="IsActive" Type="Boolean" />
                <asp:Parameter Name="original_EmpID" Type="Int32" />
                <asp:Parameter Name="original_EmpFirstName" Type="String" />
                <asp:Parameter Name="original_EmpLastName" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_MaritalStatus" Type="String" />
                <asp:Parameter Name="original_CellPhone" Type="String" />
                <asp:Parameter Name="original_DOB" Type="DateTime" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_BloodGroup" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_JoiningDate" Type="DateTime" />
                <asp:Parameter Name="original_TerminationDate" Type="DateTime" />
                <asp:Parameter Name="original_EmImage" Type="String" />
                <asp:Parameter Name="original_DeptID" Type="Int32" />
                <asp:Parameter Name="original_DesignationId" Type="Int32" />
                <asp:Parameter Name="original_IsActive" Type="Boolean" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>
