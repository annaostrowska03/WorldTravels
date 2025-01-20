using WorldBackpacker.Components;
using WorldBackpacker.Services;


var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddRazorComponents()
    .AddInteractiveServerComponents();

builder.Services.AddRazorComponents()
    .AddInteractiveServerComponents();

// Load the connection string from appsettings.json
string connectionString = builder.Configuration.GetConnectionString("VacationCities");

// Register services and pass the connection string to the database
builder.Services.AddScoped<GetRecommendedCitiesService>(sp =>
    new GetRecommendedCitiesService(connectionString));
builder.Services.AddSingleton<LocationService>(sp =>
    new LocationService(connectionString));
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