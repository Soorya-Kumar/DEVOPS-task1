# DEVOPS-task1




IN TERMINAL

#navigate to the file level1p1.sh level1p2.sh level2.sh

#make them executable using the command chmod +x (filename)

TO EXECUTE THE CRONJOB

crontab -e    #open crontab using the command  

00 18 * * * cd (/path)

#replace the path using the path to the file level1p2.sh
#the above cmd sets the cronjob to run every day at 6 00 pm
#press ctrl+x and y to save the modfication and exit the crontab

