using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(prjMvcDemo.Startup))]
namespace prjMvcDemo
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
