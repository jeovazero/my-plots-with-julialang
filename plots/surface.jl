using PlotlyJS

lin = range(-2π, stop=2π, length=100)

z = [[ (sin(sqrt(i^2 + j^2)) / sqrt(i^2+j^2)) for i in lin ] for j in lin]

grafico = surface(x=lin, y=lin, z=z, colorscale="Viridis")

plot([grafico])
