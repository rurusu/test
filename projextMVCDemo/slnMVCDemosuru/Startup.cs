using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(slnMVCDemosuru.Startup))]
namespace slnMVCDemosuru
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
