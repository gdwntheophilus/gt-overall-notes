// basic structure
|> from(bucket: "bucket1")
|> function1
|> function2
|> another function or a custom function

f = (tables=<-) => tables |> functionOperations
    |> from(bucket: "bucket1")
    |> function1
    |> function2 
    |> f

//example
f = (x) => x
f(x:1)
f(x:1.1)
f(x:true)

//applying filters
filter(fn: (r) => r["measurement"] == "measurement1")