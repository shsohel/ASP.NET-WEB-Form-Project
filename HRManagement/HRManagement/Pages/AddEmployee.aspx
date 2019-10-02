<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Main.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="HRManagement.Pages.AddEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 179px;
        }
        .auto-style2 {
            width: 342px;
        }
        .auto-style3 {
            width: 342px;
            text-align: right;
            height: 17px;
        }
        .auto-style4 {
            width: 179px;
            height: 17px;
        }
        .auto-style6 {
            width: 342px;
            text-align: left;
            height: 17px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h3 class="text-center"> Add New Employee Data </h3>
    <br />
    <div runat="server" class="center-block" >
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">Department Name: </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="comboBoxDept" runat="server" Width="143px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Designation Name: </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="comboBoxDes" runat="server" Width="147px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">First Name </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtEmpFirstName" runat="server" Width="330px"></asp:TextBox>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Last Name: </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtEmpLastName" runat="server" Width="330px"></asp:TextBox>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Gender: </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="comboBoxGender" runat="server" Width="147px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Marital Satatus</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="comboBoxMarital" runat="server" Width="147px">
                        <asp:ListItem>Single</asp:ListItem>
                        <asp:ListItem>Married</asp:ListItem>
                        <asp:ListItem>Devorced</asp:ListItem>
                        <asp:ListItem>Separtion</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Phone: </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtEmpPhone" runat="server" Width="330px" TextMode="Phone"></asp:TextBox>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Date of Birth:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtDOB" runat="server" Width="330px" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RFVDOB" runat="server" ControlToValidate="txtDOB" ErrorMessage="Date of Birth Must be Included!!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Email: </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtEmpEmail" runat="server" Width="330px" TextMode="Email"></asp:TextBox>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Blood Group:</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="CombEmpBloodGroup" runat="server" Width="147px">
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                        <asp:ListItem>O+</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Address: </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtEmpAddress" runat="server" Width="330px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Joining Date :</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtEmpJoinDate" runat="server" Width="330px" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Termination Date: </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtEmpTerDate" runat="server" Width="330px" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Is it Active : </td>
                <td class="auto-style2">
                    <asp:CheckBox ID="checkboxYes" runat="server" Text="Yes" OnCheckedChanged="checkboxYes_CheckedChanged" />
                    &nbsp;&nbsp;&nbsp;
                <asp:CheckBox ID="checkboxNo" runat="server" Text="No" OnCheckedChanged="checkboxNo_CheckedChanged" />
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Upload Photo: </td>
                <td class="auto-style2">
                    <asp:FileUpload ID="picUpload" runat="server" Width="337px" />
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style3">
                    <asp:Button ID="btnAddEmployee" runat="server" Text="Save" CssClass="btn btn-success" OnClick="btnAddEmployee_Click" />
                </td>
                <td class="auto-style6">
                    <asp:Label ID="lblMess" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>

    </div>

    <div runat="server" class="center-block">


        <asp:FormView ID="FVEmployee" runat="server" Width="943px" AllowPaging="True" DataKeyNames="EmpID" DataSourceID="SqlDataSource1">
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Employees] WHERE [EmpID] = @original_EmpID AND [EmpFirstName] = @original_EmpFirstName AND [EmpLastName] = @original_EmpLastName AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([MaritalStatus] = @original_MaritalStatus) OR ([MaritalStatus] IS NULL AND @original_MaritalStatus IS NULL)) AND (([CellPhone] = @original_CellPhone) OR ([CellPhone] IS NULL AND @original_CellPhone IS NULL)) AND [DOB] = @original_DOB AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([BloodGroup] = @original_BloodGroup) OR ([BloodGroup] IS NULL AND @original_BloodGroup IS NULL)) AND [Address] = @original_Address AND [JoiningDate] = @original_JoiningDate AND (([TerminationDate] = @original_TerminationDate) OR ([TerminationDate] IS NULL AND @original_TerminationDate IS NULL)) AND (([EmImage] = @original_EmImage) OR ([EmImage] IS NULL AND @original_EmImage IS NULL)) AND (([DeptID] = @original_DeptID) OR ([DeptID] IS NULL AND @original_DeptID IS NULL)) AND (([DesignationId] = @original_DesignationId) OR ([DesignationId] IS NULL AND @original_DesignationId IS NULL)) AND (([IsActive] = @original_IsActive) OR ([IsActive] IS NULL AND @original_IsActive IS NULL))" InsertCommand="INSERT INTO [Employees] ([EmpFirstName], [EmpLastName], [Gender], [MaritalStatus], [CellPhone], [DOB], [Email], [BloodGroup], [Address], [JoiningDate], [TerminationDate], [EmImage], [DeptID], [DesignationId], [IsActive]) VALUES (@EmpFirstName, @EmpLastName, @Gender, @MaritalStatus, @CellPhone, @DOB, @Email, @BloodGroup, @Address, @JoiningDate, @TerminationDate, @EmImage, @DeptID, @DesignationId, @IsActive)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Employees] ORDER BY [EmpID]" UpdateCommand="UPDATE [Employees] SET [EmpFirstName] = @EmpFirstName, [EmpLastName] = @EmpLastName, [Gender] = @Gender, [MaritalStatus] = @MaritalStatus, [CellPhone] = @CellPhone, [DOB] = @DOB, [Email] = @Email, [BloodGroup] = @BloodGroup, [Address] = @Address, [JoiningDate] = @JoiningDate, [TerminationDate] = @TerminationDate, [EmImage] = @EmImage, [DeptID] = @DeptID, [DesignationId] = @DesignationId, [IsActive] = @IsActive WHERE [EmpID] = @original_EmpID AND [EmpFirstName] = @original_EmpFirstName AND [EmpLastName] = @original_EmpLastName AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([MaritalStatus] = @original_MaritalStatus) OR ([MaritalStatus] IS NULL AND @original_MaritalStatus IS NULL)) AND (([CellPhone] = @original_CellPhone) OR ([CellPhone] IS NULL AND @original_CellPhone IS NULL)) AND [DOB] = @original_DOB AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([BloodGroup] = @original_BloodGroup) OR ([BloodGroup] IS NULL AND @original_BloodGroup IS NULL)) AND [Address] = @original_Address AND [JoiningDate] = @original_JoiningDate AND (([TerminationDate] = @original_TerminationDate) OR ([TerminationDate] IS NULL AND @original_TerminationDate IS NULL)) AND (([EmImage] = @original_EmImage) OR ([EmImage] IS NULL AND @original_EmImage IS NULL)) AND (([DeptID] = @original_DeptID) OR ([DeptID] IS NULL AND @original_DeptID IS NULL)) AND (([DesignationId] = @original_DesignationId) OR ([DesignationId] IS NULL AND @original_DesignationId IS NULL)) AND (([IsActive] = @original_IsActive) OR ([IsActive] IS NULL AND @original_IsActive IS NULL))">
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
