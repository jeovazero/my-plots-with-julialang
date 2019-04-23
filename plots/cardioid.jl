using PlotlyJS

function circ(angulo, raioFonte, r)
    # circunference center
    cx = raioFonte * cos(angulo)
    cy = raioFonte * sin(angulo)

    # coordinates of circunference points
    θ = range(0, stop=2π, length=100)
    X = cx .+ r.*cos.(θ)
    Y = cy .+ r.*sin.(θ)

    trace = scatter(x=X, y=Y, mode="lines")
end

function cardiod()
    θ = range(0, stop=2π, length=50)
    r = sqrt.(2 .* (1 .- sin.(θ)))
    circs = [ circ(i, 1, j) for (i,j) in zip(θ, r) ]
end

cardiod() |> plot
