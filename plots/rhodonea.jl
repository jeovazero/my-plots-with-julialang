using PlotlyJS

function rose(d, n)
    k = n/d

    θ = range(-8π, stop=8π, length=800)
    r = sin.(k .* θ)

    x = r.*cos.(θ)
    y = r.*sin.(θ)

    trace = scatter(x=x,y=y, mode="lines")

    layout = Layout(title="n=$n d=$d")

    plot([ trace ], layout)
end

p = [
        rose(1, 2) rose(2, 3);
        rose(4, 5) rose(5, 6)
    ]
