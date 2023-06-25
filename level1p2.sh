echo "==============================" | cat > ./comp_log.txt
echo "        COMPUTER LOG " | cat >> ./comp_log.txt
echo "==============================" | cat >> ./comp_log.txt



upTime=$(uptime -p) # -p is for ease of reading
echo -e "Uptime: \n $upTime \n" | cat >> ./comp_log.txt


discUsage=$(df -H) # -H gives in easy human readable form
echo -e " Disc usage of computer: \n$discUsage \n" | cat >> ./comp_log.txt


utilisation=$(top -bn 1| head -n 5) #gives us the CPU usage / utilisation
echo -e "\n CPU usage of Computer:\n $utilisation \n" | cat >> ./comp_log.txt


mostExpensiveProcess=$(ps --sort=-%cpu) # list all process by cpu usage
echo -e "\n Most expensive processes: \n $mostExpensiveProcess \n" | cat >> ./comp_log.txt


openTCPports=$(ss -t | head -n 5 ) # -t gives us only the tcp ports and not the udp ports
echo -e "\n Open TCP ports: \n $openTCPports \n" | cat >> ./comp_log.txt

currentConnections=$(netstat --all | head -n 5)  #shows all active connections
echo -e "\n Current connections: \n $currentConnections \n" | cat >> ./comp_log.txt

runningProcesses=$(ps | head -n 5) #it shows the running process
echo -e "\n Processes: \n $runningProcesses \n" | cat >> ./comp_log.txt 

echo "==============================" | cat >> ./comp_log.txt

