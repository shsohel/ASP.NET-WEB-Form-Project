using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using System.Web.ModelBinding;
using HRManagement.Models;


namespace HRManagement.Pages
{
    public partial class RoleManagement : System.Web.UI.Page
    {
        ApplicationUserManager userManager;
        ApplicationRoleManager roleManager;
        protected void Page_Load(object sender, EventArgs e)
        {
            userManager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            roleManager = Context.GetOwinContext().Get<ApplicationRoleManager>();
        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<ApplicationUser> grdUsers_GetData()
        {
            return userManager.Users;
        }

        // The id parameter should match the DataKeyNames value set on the control
        // or be decorated with a value provider attribute, e.g. [QueryString]int id
        public object dvUsers_GetItem([Control] string grdUsers)
        {
            if (grdUsers == null)
            {
                return new ApplicationUser();
            }
            return (from i in userManager.Users
                    where i.Id == grdUsers
                    select i).SingleOrDefault();
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void dvUsers_UpdateItem(string id)
        {
            ApplicationUser user = (from u in userManager.Users
                                    where u.Id == id
                                    select u).SingleOrDefault();
            TryUpdateModel(user);
            user.UserName = user.Email;
            IdentityResult result = userManager.Update(user);
            if (result.Succeeded)
            {
                Reload();
            }
        }

        public void dvUsers_InsertItem()
        {
            ApplicationUser user = new ApplicationUser();
            TryUpdateModel(user);
            user.UserName = user.Email;
            IdentityResult result = userManager.Create(user);
            if (result.Succeeded)
            {
                Reload();
            }
        }

        private void Reload()
        {
            grdUsers.DataBind();
            grdRoles.DataBind();
            ddlUsers.DataBind();
            lstRoles.DataBind();
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void dvUsers_DeleteItem(string id)
        {
            ApplicationUser user = (from u in userManager.Users
                                    where u.Id == id
                                    select u).SingleOrDefault();
            TryUpdateModel(user);
            user.UserName = user.Email;
            IdentityResult result = userManager.Delete(user);
            if (result.Succeeded)
            {
                Reload();
            }
        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<IdentityRole> grdRoles_GetData()
        {
            return roleManager.Roles;
        }

        // The id parameter should match the DataKeyNames value set on the control
        // or be decorated with a value provider attribute, e.g. [QueryString]int id
        public object dvRoles_GetItem([Control] string grdRoles)
        {
            if (grdRoles == null)
            {
                return new IdentityRole();
            }
            return (from i in roleManager.Roles
                    where i.Id == grdRoles
                    select i).SingleOrDefault();
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void dvRoles_UpdateItem(string id)
        {
            IdentityRole role = (from r in roleManager.Roles
                                 where r.Id == id
                                 select r).SingleOrDefault();
            TryUpdateModel(role);
            IdentityResult result = roleManager.Update(role);
            if (result.Succeeded)
            {
                Reload();
            }
        }

        public void dvRoles_InsertItem()
        {
            IdentityRole role = new IdentityRole();
            TryUpdateModel(role);
            IdentityResult result = roleManager.Create(role);
            if (result.Succeeded)
            {
                Reload();
            }
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void dvRoles_DeleteItem(string id)
        {
            IdentityRole role = (from r in roleManager.Roles
                                 where r.Id == id
                                 select r).SingleOrDefault();
            TryUpdateModel(role);
            IdentityResult result = roleManager.Delete(role);
            if (result.Succeeded)
            {
                Reload();
            }
        }

        // Add Roles To The User
        protected void btnAddRoles_Click(object sender, EventArgs e)
        {
            string userId = ddlUsers.SelectedValue;
            foreach (ListItem item in lstRoles.Items)
            {
                // If role is selected and user is not in it, Add Role in user
                if (item.Selected)
                {
                    if (!userManager.IsInRole(userId, item.Text))
                    {
                        userManager.AddToRole(userId, item.Text);
                    }
                }
                // If role is not selected and user is in it, remove role from the user
                else
                {
                    if (userManager.IsInRole(userId, item.Text))
                    {
                        userManager.RemoveFromRole(userId, item.Text);
                    }
                }
            }
            grdUsers.DataBind();
        }

        // Helper method
        public string ListRoles(ICollection<IdentityUserRole> userRoles)
        {
            IdentityRole role;
            var names = new List<string>();

            foreach (var ur in userRoles)
            {
                role = (from r in roleManager.Roles
                        where r.Id == ur.RoleId
                        select r).SingleOrDefault();
                names.Add(role.Name);
            }
            return string.Join(", ", names);
        }

        // Provide for formatting GridView controls with Bootstrap design
        //protected void GridView_PreRender(object sender, EventArgs e)
        //{
        //    GridView grid = (GridView)sender;
        //    if(grid.HeaderRow !=null)
        //    {
        //        grid.HeaderRow.TableSection = TableRowSection.TableHeader;
        //    }
        //}

        protected void grdUsers_PreRender(object sender, EventArgs e)
        {
            GridView grid = (GridView)sender;
            if (grid.HeaderRow != null)
            {
                grid.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
        }

        protected void grdRoles_PreRender(object sender, EventArgs e)
        {
            GridView grid = (GridView)sender;
            if (grid.HeaderRow != null)
            {
                grid.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
        }
    }
}