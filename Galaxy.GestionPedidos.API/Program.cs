using Galaxy.GestionPedidos.Repositorios.Implementaciones;
using Galaxy.GestionPedidos.Repositorios.Interfaces;

var builder = WebApplication.CreateBuilder(args);

const string corConfiguration = "Blazor";
// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddCors(policy =>
{
    policy.AddPolicy(corConfiguration, config =>
    {
        config.AllowAnyOrigin()
            .AllowAnyHeader()
            .AllowAnyMethod();
    });
});


builder.Services.AddScoped<IProductoRepositorio, ProductoRepositorio>();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.UseCors(corConfiguration);

app.Run();
