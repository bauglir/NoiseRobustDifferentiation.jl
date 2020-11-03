# Script to demonstrate large-scale example from paper Rick Chartrand, 
# Numerical differentiation of noisy, nonsmooth data," ISRN
# Applied Mathematics, Vol. 2011, Article ID 164564, 2011.

using NoiseRobustDifferentiation
using CSV, DataFrames

file = CSV.File("./data/large_demo_data.csv")
df = DataFrame(file)

## Smoother example
TVRegDiff(df.largescaledata, 40, 1e-1, scale="large", preconditioner="amg_rs",
    ε=1e-8, plot_flag=true, diag_flag=true)

## Less smooth example
TVRegDiff(df.largescaledata, 40, 1e-3, scale="large", preconditioner="amg_rs", 
    ε=1e-6, plot_flag=true, diag_flag=true)

