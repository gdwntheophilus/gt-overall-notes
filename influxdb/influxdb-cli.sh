##########################################################################################
# cli setup
##########################################################################################
export INFLUXD_HOST=xxxxxx.com
export INFLUX_TOKEN=yyyyyyy
export INFLUX_ORG=zzz

# influx configuration
$ influx config
$ influx config create -n "my-auth" -u "host-url" -o "org-name" -t "token"
$ influx config list
$ influx config my-auth

#listing resources
$ influx bucket list
$ influx dashboard list
$ influx task list
$ influx telegrafs
$ influx stacks
$ influx secrets list

# writing data
$ influx bucket create -n "my-bucket"
$ echo "mydata,mytag=foo myfield1=value" | influx write --bucket "my-bucket"
$ echo "mydata,mytag=foo myfield1=value" > mydata.flux
$ influx write --bucket "my-bucket" --file mydata.flux
# from csv
$ influx write --bucket "my-bucket" --file mydata.flux --format csv

# querint data
$ influx query "buckets()"
$ echo "buckets()" | influx query 
$ echo "buckets()" > myquery.flux 
$ influx query --file myquery.flux
# formatted outout
$ influx query --file myquery.flux --raw


# create secrets
$ influx secret update --key "mykey" --value "myupdated-value"



