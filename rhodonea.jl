using PlotlyJS

function rosas(d, n)
    k = n/d

    θ = linspace(-8π, 8π, 800)
    r = sin(k * θ)

    x = r.*cos(θ)
    y = r.*sin(θ)

    trace = scatter(x=x,y=y, mode="lines")

    layout = Layout(title="n=$n d=$d")

    plot([ trace ], layout)
end

p = [
        rosas(1, 2) rosas(2, 3);
        rosas(4, 5) rosas(5, 6)
    ]
