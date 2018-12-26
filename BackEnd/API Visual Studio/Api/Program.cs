using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;

namespace Api
{
    /// <summary>
    /// 
    /// </summary>
    public static class Program
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="args"></param>
        public static void Main(string[] args)
        {
            BuildWebHost(args).Run();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="args"></param>
        /// <returns></returns>
        public static IWebHost BuildWebHost(string[] args) =>
           WebHost.CreateDefaultBuilder(args)
               .UseSetting("detailedErrors", "true")
               .UseStartup<Startup>()
               .ConfigureAppConfiguration((builderContext, config) =>
               {
                   var env = builderContext.HostingEnvironment;

                   config.AddJsonFile("appsettings.json", optional: false, reloadOnChange: true)
                       .AddJsonFile($"appsettings.{env.EnvironmentName}.json", optional: true, reloadOnChange: true);
               })
               .CaptureStartupErrors(true)
               .UseIISIntegration()
               .Build();
    }
}
