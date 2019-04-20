using PlotlyJS

function circunferencia(angulo, raioFonte, r)
    # Calculando o centro da circunferencia
    cx = raioFonte * cos(angulo)
    cy = raioFonte * sin(angulo)

    # Calculando as coordenadas dos pontos da circunferencia
    θ = linspace(0, 2π, 100)
    X = cx + r.*cos.(θ)
    Y = cy + r.*sin.(θ)

    trace = scatter(x=X, y=Y, mode="lines")
end

function minhaCardiode()
    θ = linspace(0, 2π, 50)
    r = sqrt.(2 .* (1 .- sin.(θ)))
    circs = [ circunferencia(i, 1, j) for (i,j) in zip(θ, r) ]
end

plot(minhaCardiode())
