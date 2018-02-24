Autopay based on instructions by trnpally. 
Added antihopping instructions by pnwdrew who would never have figured autopay out on his own.

To do Autopayouts using liskpool

Step 1

Login in vps, using your username 
go to your pool script folder

Going to create and edit a file

  nano autopay.sh

type in new file

  python3 liskpool.py -y

  bash payments.sh

crtl + o to save and then exit

Step 2

  sudo chmod +x autopay.sh
  (to made it executable)

Step 3

Login in Using Root
or use sudo if your user has sudo power

  crontab -e

We are going to create a new line at the bottom of the file

For  Daily

30 11 * * * cd /home/YOURUSERNAME/POOLDIRECTORY/ && bash ./autopay.sh

(so this would payout everyday at 11:30 am server time)

For Weekly

30 11 * * 3 cd /home/YOURUSERNAME/POOLDIRECTORY/ && bash ./autopay.sh

(so this would payout every Wednesday at 11:30am server time, you can change 
the 3 to anything 1=Monday #2=Tuesday 3=Wednesdy 4=Thursday 5=Friday 6=Satuday 7=Sunday)

Control-o to save and control -x 
Now your Pool is auto payout.
Enjoy
