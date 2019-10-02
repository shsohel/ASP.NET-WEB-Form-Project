using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;

//Friendly Url
using Microsoft.AspNet.FriendlyUrls;

namespace HRManagement
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Permanent;

            //Friendly Url 
            routes.EnableFriendlyUrls(settings);


            //Default Route
            routes.MapPageRoute(
                routeName: "RoutePage",
                routeUrl: "",
                physicalFile: "~/Pages/MyRoutePage.aspx"
                );
        }
    }
}
