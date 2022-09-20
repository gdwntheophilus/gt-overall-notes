//querying
from(bucket: "mybucket")
    |> range(start: 456789056789, stop: 456789056789)
    |> filter(fn: (r) => r["_measurement"] == "average_temperature")
    |> filter(fn: (r) => r["_field"] == "open")
    |> limit(n: 3)
    |> filter(fn: (r) => r._value > 80)
    |> filter(
        fn: (r) =>
            if r["location"] == "india" then
                r._value > 80
            else
                r._value <= 80,
    )
    |> yield(name: "last 3")

//aggregating
from(bucket: "mybucket")
    |> range(start: 456789056789, stop: 456789056789)
    |> filter(fn: (r) => r["_measurement"] == "average_temperature")
    |> filter(fn: (r) => r["_field"] == "open")
    |> limit(n: 3)
    |> filter(fn: (r) => r._value > 80)
    |> filter(
        fn: (r) =>
            if r["location"] == "india" then
                r._value > 80
            else
                r._value <= 80,
    )
    |> mean()
    |> yield(name: "mean")