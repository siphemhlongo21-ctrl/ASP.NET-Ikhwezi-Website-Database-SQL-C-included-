using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Khwezi_Final_Website__Titans.Startup))]
namespace Khwezi_Final_Website__Titans
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
