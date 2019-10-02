<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Main.Master" AutoEventWireup="true" CodeBehind="RoleManagement.aspx.cs" Inherits="HRManagement.Pages.RoleManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1 >User's and Role's Management</h1>
    <div class="row">
        <div class="col-sm-12 table-responsive">
            <h2 class="fa fa-user-circle-o" > User's</h2>
            <asp:GridView ID="grdUsers" runat="server" DataKeyNames="Id" AutoGenerateColumns="false" SelectMethod="grdUsers_GetData" ItemType="HRManagement.Models.ApplicationUser" CssClass="table table-hover table-bordered table-striped table-condensed" OnPreRender="grdUsers_PreRender">
                <Columns>
                    <asp:BoundField HeaderText="User Name" DataField="UserName" />
                    <asp:BoundField HeaderText="Email" DataField="Email" />
                    <asp:TemplateField HeaderText="Roles">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# ListRoles(Item.Roles) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowSelectButton="true" />
                </Columns>
            </asp:GridView>
        </div>
        <div class="col-sm-6">
            <asp:DetailsView ID="dvUsers" runat="server" DataKeyNames="Id" AutoGenerateRows="false" CssClass="table table-bordered table-condensed table-hover table-responsive table" SelectMethod="dvUsers_GetItem" UpdateMethod="dvUsers_UpdateItem" InsertMethod="dvUsers_InsertItem" DeleteMethod="dvUsers_DeleteItem">
                <Fields>
                    <asp:BoundField HeaderText="Email" DataField="Email" />
                    <asp:CommandField ShowEditButton="true" ShowInsertButton="true" ShowDeleteButton="true" />
                </Fields>
            </asp:DetailsView>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-6">
            <h2>Roles</h2>
            <asp:GridView ID="grdRoles" runat="server" DataKeyNames="Id" AutoGenerateColumns="false" SelectMethod="grdRoles_GetData" CssClass="table table-bordered table-condensed table-hover table-responsive" OnPreRender="grdRoles_PreRender">
                <Columns>
                    <asp:BoundField HeaderText="Role Name" DataField="Name" />
                    <asp:CommandField ShowSelectButton="true" />
                </Columns>
            </asp:GridView>
            <asp:DetailsView ID="dvRoles" runat="server" DataKeyNames="Id" AutoGenerateRows="false" CssClass="table table-bordered table-condensed table-hover table-responsive" SelectMethod="dvRoles_GetItem" UpdateMethod="dvRoles_UpdateItem" InsertMethod="dvRoles_InsertItem" DeleteMethod="dvRoles_DeleteItem">
                <Fields>
                    <asp:BoundField HeaderText="Role Name" DataField="Name" />
                    <asp:CommandField ShowEditButton="true" ShowInsertButton="true" ShowDeleteButton="true"  ShowSelectButton="true"/>
                </Fields>
            </asp:DetailsView>
        </div>
        <div class="col-sm-6">
            <h2>Add Roles To User</h2>
            <div class="form-group">
                <label>Select a User : </label>
                <asp:DropDownList ID="ddlUsers" runat="server" SelectMethod="grdUsers_GetData" DataValueField="Id" DataTextField="UserName" CssClass="form-control">

                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label>Add one or more roles : </label>
                <asp:ListBox ID="lstRoles" runat="server" SelectionMode="Multiple" SelectMethod="grdRoles_GetData" DataValueField="Id" DataTextField="Name" CssClass="form-control">

                </asp:ListBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnAddRoles" runat="server" Text="Add Roles" CssClass="btn btn-default" OnClick="btnAddRoles_Click"  />
            </div>
        </div>
    </div>
</asp:Content>
