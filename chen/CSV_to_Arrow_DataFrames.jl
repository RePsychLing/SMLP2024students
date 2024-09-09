using Arrow, CSV, DataFrames
df = CSV.read("HN_subset.csv", DataFrame; normalizenames=true, downcast=true, pool=true)
afn = Arrow.write("HN_subset.arrow", df)

