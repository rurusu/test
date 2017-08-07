using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TestVersion2.Startup))]
namespace TestVersion2
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
