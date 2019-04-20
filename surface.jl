using PlotlyJS

lin = linspace(-2pi, 2pi, 100)

z = [[ (sin(sqrt(i^2 + j^2)) / sqrt(i^2+j^2)) for i in lin ] for j in lin]

grafico = surface(x=lin, y=lin, z=z, colorscale="Viridis")

plot([grafico])
