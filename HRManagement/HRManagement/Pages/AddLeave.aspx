<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Main.Master" AutoEventWireup="true" CodeBehind="AddLeave.aspx.cs" Inherits="HRManagement.Pages.AddLeave" %>

<%@ Register Src="~/UserControls/AddLeaveUserControl.ascx" TagPrefix="uc1" TagName="AddLeaveUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <uc1:AddLeaveUserControl runat="server" id="AddLeaveUserControl" />
</asp:Content>
