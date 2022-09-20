$ influx backup --bucket "mybucket" ./mybackup
$ influx restore --bucket "mybucket" -new-bucket "my-new-bucket" ./mybackup