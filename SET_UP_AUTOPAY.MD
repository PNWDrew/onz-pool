Autopay based on instructions by trnpally. >>>Vote for him!<<<

Assuming you followed guides to set up the node and basic payout is functional.

Step 1

Login in vps, using your username and go to your pool script folder

You are going to create and edit a file

    nano autopay.sh

type in new file

    python3 liskpool.py -y

    bash payments.sh

crtl-o to save and then crtl-x to exit

Step 2

    sudo chmod +x autopay.sh
    
(to make it executable)

Step 3

Login in as root or use sudo if your user has sudo power

--As root:

    crontab -e

--As user with sudo power

    sudo crontab -e
    
We are going to create a new line at the bottom of the file, see notes in file for time format. Time is server time. This may not be your local time. Use date command to see server time

For  Daily

    30 11 * * * cd /home/YOURUSERNAME/POOLDIRECTORY/ && bash ./autopay.sh

(so this would payout everyday at 11:30 am server time)

For Weekly

    30 11 * * 3 cd /home/YOURUSERNAME/POOLDIRECTORY/ && bash ./autopay.sh

(so this would payout every Wednesday at 11:30am server time, you can change 
the 3 to anything 1=Monday #2=Tuesday 3=Wednesday 4=Thursday 5=Friday 6=Saturday 7=Sunday)

Control-o to save and control-x to exit
Now your Pool is auto payout. The cron job will execute the autopay.sh script you made at the time you specify. You will not see this in terminal if you are watching.

Enjoy
