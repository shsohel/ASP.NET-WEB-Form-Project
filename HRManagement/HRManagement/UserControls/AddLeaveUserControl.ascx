<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AddLeaveUserControl.ascx.cs" Inherits="HRManagement.UserControls.AddLeaveUserControl" %>
<style type="text/css">
    .auto-style1 {
        font-size: small;
    }
    .auto-style2 {
        font-size: medium;
    }
</style>
<br />


<div runat="server" align="center">
    <h3>Assign Leave Type </h3>

    <table class="auto-style2" runat="server" align="center">
        <tr>
            <td style="width: 33px">&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style1">&nbsp; Leave Type :&nbsp;&nbsp;</td>
            <td style="width: 331px">
                <asp:TextBox ID="txtLeaveType" runat="server" Width="309px" Style="margin-left: 3px"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RFLeave" runat="server" ControlToValidate="txtLeaveType" ErrorMessage="Leave Type Name Required!!!" ForeColor="Red"> *</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 33px; height: 21px;"></td>
            <td class="auto-style2">Leave Desc: </td>
            <td style="height: 21px; width: 331px;">
                <asp:TextBox ID="txtLeaveDes" runat="server" Width="309px" Style="margin-left: 3px"></asp:TextBox></td>
            <td style="height: 21px">
                <asp:RequiredFieldValidator ID="RFLeave0" runat="server" ControlToValidate="txtLeaveDes" ErrorMessage="Leave Description is Required!!!" ForeColor="Red">* </asp:RequiredFieldValidator>
                &nbsp;</td>
            <td style="height: 21px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 33px; height: 21px;">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td style="height: 21px; width: 331px; text-align: left;">
                <asp:CheckBox ID="cbAgree" runat="server" Text="Yes, I am Agree." />
            </td>
            <td style="height: 21px"></td>
            <td style="height: 21px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 33px; height: 21px;">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td colspan="2" rowspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            </td>
            <td style="height: 21px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 33px; height: 21px;">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
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

<div runat="server" align="center">
    <asp:ListView ID="lvLeave" runat="server" DataKeyNames="LeaveTypeID" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <span style="background-color: #FFFFFF; color: #284775;">Leave Type ID:
            <asp:Label ID="LeaveTypeIDLabel" runat="server" Text='<%# Eval("LeaveTypeID") %>' />
                <br />
                Leave Type:
            <asp:Label ID="LeaveTypeLabel" runat="server" Text='<%# Eval("LeaveType") %>' />
                <br />
                Leave Description:
            <asp:Label ID="LeaveDescriptionLabel" runat="server" Text='<%# Eval("LeaveDescription") %>' />
                <br />
                <br />
            </span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="background-color: #999999;">LeaveTypeID:
            <asp:Label ID="LeaveTypeIDLabel1" runat="server" Text='<%# Eval("LeaveTypeID") %>' />
                <br />
                LeaveType:
            <asp:TextBox ID="LeaveTypeTextBox" runat="server" Text='<%# Bind("LeaveType") %>' />
                <br />
                LeaveDescription:
            <asp:TextBox ID="LeaveDescriptionTextBox" runat="server" Text='<%# Bind("LeaveDescription") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br />
                <br />
            </span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">LeaveType:
            <asp:TextBox ID="LeaveTypeTextBox" runat="server" Text='<%# Bind("LeaveType") %>' />
                <br />
                LeaveDescription:
            <asp:TextBox ID="LeaveDescriptionTextBox" runat="server" Text='<%# Bind("LeaveDescription") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br />
                <br />
            </span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="background-color: #E0FFFF; color: #333333;">Leave Type ID:
            <asp:Label ID="LeaveTypeIDLabel" runat="server" Text='<%# Eval("LeaveTypeID") %>' />
                <br />
                Leave Type:
            <asp:Label ID="LeaveTypeLabel" runat="server" Text='<%# Eval("LeaveType") %>' />
                <br />
                Leave Description:
            <asp:Label ID="LeaveDescriptionLabel" runat="server" Text='<%# Eval("LeaveDescription") %>' />
                <br />
                <br />
            </span>
        </ItemTemplate>
        <LayoutTemplate>
            <div style="font-family: Verdana, Arial, Helvetica, sans-serif;" id="itemPlaceholderContainer" runat="server">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="background-color: #E2DED6; font-weight: bold; color: #333333;">LeaveTypeID:
            <asp:Label ID="LeaveTypeIDLabel" runat="server" Text='<%# Eval("LeaveTypeID") %>' />
                <br />
                LeaveType:
            <asp:Label ID="LeaveTypeLabel" runat="server" Text='<%# Eval("LeaveType") %>' />
                <br />
                LeaveDescription:
            <asp:Label ID="LeaveDescriptionLabel" runat="server" Text='<%# Eval("LeaveDescription") %>' />
                <br />
                <br />
            </span>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [EmLeaveType] WHERE [LeaveTypeID] = @LeaveTypeID" InsertCommand="INSERT INTO [EmLeaveType] ([LeaveType], [LeaveDescription]) VALUES (@LeaveType, @LeaveDescription)" SelectCommand="SELECT * FROM [EmLeaveType] ORDER BY [LeaveType]" UpdateCommand="UPDATE [EmLeaveType] SET [LeaveType] = @LeaveType, [LeaveDescription] = @LeaveDescription WHERE [LeaveTypeID] = @LeaveTypeID">
        <DeleteParameters>
            <asp:Parameter Name="LeaveTypeID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="LeaveType" Type="String" />
            <asp:Parameter Name="LeaveDescription" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="LeaveType" Type="String" />
            <asp:Parameter Name="LeaveDescription" Type="String" />
            <asp:Parameter Name="LeaveTypeID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>