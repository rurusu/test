using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(slnMVCDemoVer_2.Startup))]
namespace slnMVCDemoVer_2
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
