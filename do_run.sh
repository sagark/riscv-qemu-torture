#!/bin/bash

# run the torture tester for this many days
# you will get a daily notification of tests passing and an instant notification
# if something fails, if you have pushbulletmessage installed
DAYS=7

notifytest ()
{
pushbulletmessage day"$1"torture-$HOSTNAME started && make cnight && pushbulletmessage day"$1"torture-$HOSTNAME SUCCESS || pushbulletmessage day"$1"torture-$HOSTNAME FAILED
}


RUN=1
while [ $RUN -le $DAYS ]; do
    notifytest $RUN
    let RUN=RUN+1
done
