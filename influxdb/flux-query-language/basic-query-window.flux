//multiepl yields
data =
    from(bucket: "mybucket")
        |> range(start: 456789056789, stop: 456789056789)
        |> filter(fn: (r) => r["_measurement"] == "average_temperature")
        |> filter(fn: (r) => r["_field"] == "open")
        |> limit(n: 3)
        |> filter(fn: (r) => r._value > 80)
        |> window(every: 12m)
        //here is the mean function
        |> mean()
        |> yield(name: "mean")