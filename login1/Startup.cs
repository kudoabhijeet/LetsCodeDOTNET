using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(login1.Startup))]
namespace login1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
