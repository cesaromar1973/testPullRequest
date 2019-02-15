# JOB 1
#Purpose: This is a bash one-liner to get the pids of all *ython* processes running on any machine. i.e. all jython, python, python2, python3, cython, etc.

#!/bin/bash
ps -ef | grep python





# JOB 2
#Purpose: My attempt to  CONT signal to any *ython process whose pid is a multiple of 2, and a STOP signal to any process with an odd pid

#!/bin/bash
ps | grep ython | cut -c1-5 | grep [24680]$ | xargs kill -CONT






# JOB 3
#Purpose: My attempt to create bash program to delete any file under the pwd that contains a string in the format "XX-XX-XX" where X is a numeric character.

#!/bin/bash

grep '[0-9]{1,4}'| xargs rm







#Job 4
#Purpose: The Following command and steps  My attempt to create bash program STOP all processes belonging to user "joseph"

#!/bin/bash
pkill -U Joseph