using Microsoft.Extensions.Logging;
using WorldBackpacker.Components;
using WorldBackpacker.Components.Pages;
using WorldBackpacker.Data;
using Microsoft.Extensions.DependencyInjection;
using System.Security.Cryptography.Xml;
using WorldBackpacker.Services;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddRazorComponents()
    .AddInteractiveServerComponents();


builder.Services.AddScoped<GetRecommendedCitiesService>(sp =>
    new GetRecommendedCitiesService(connectionString: "Server=windows-ania\\MSSQLSERVER2;Database=vacation_cities;User Id=sa;Password=ania1111;TrustServerCertificate=True;MultipleActiveResultSets=True;"));
builder.Services.AddSingleton<LocationService>(sp =>
    new LocationService(connectionString: "Server=windows-ania\\MSSQLSERVER2;Database=vacation_cities;User Id=sa;Password=ania1111;TrustServerCertificate=True;MultipleActiveResultSets=True;"));
builder.Services.AddScoped<GetPreferenceService>();
builder.Services.AddSingleton<RecommendationService>();





var app = builder.Build();

if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error", createScopeForErrors: true);
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();
app.UseAntiforgery();

app.MapRazorComponents<App>()
    .AddInteractiveServerRenderMode();


app.Run();  
