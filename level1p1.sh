#to create a account for big brother (me)
sudo useradd -s /bin/bash -m -d /home/ME ME

if [ -f "user_info.txt" ]; then
cat "user_info.txt" | while read -r -a line;
	do
	Name=${line[0]}
       	#to create user for sibling and file website.txt
	sudo useradd -s /bin/bash -d /home/$Name -m $Name
        sudo touch /home/$Name/website.txt
        
        # Set read-only permissions for the sibling
        sudo chown "$Name" "/home/$Name"
        sudo chmod u=r /home/$Name
        sudo chown "$Name" "/home/$Name/website.txt"
        sudo chmod u=r /home/$Name/website.txt
        
        # Set permissions for yourself (big brother)
        sudo chgrp ME "/home/$Name"
        sudo chmod g=rwx "/home/$Name"
        sudo chgrp ME "/home/$Name/website.txt"
        sudo chmod g=rw "/home/$Name/website.txt"
       done
else
    read -p "The file user_info.txt does not exist. Do you want to create a new user? [Y/N]" userch
    if [ "$userch" == "Y" ]; then
        read -p "Enter username: " Name
        # Create a user account for the sibling and their website.txt file
        sudo useradd -s /bin/bash -m -d "/home/$Name" "$Name"
        sudo touch "/home/$Name/website.txt"
        
        # Set read-only permissions for the sibling
        sudo chown "$Name" "/home/$Name"
        sudo chmod u=r /home/$Name
        sudo chown "$Name" "/home/$Name/website.txt"
        sudo chmod u=r /home/$Name/website.txt
        
        # Set permissions for yourself (big brother)
        sudo chgrp ME "/home/$Name"
        sudo chmod g=rwx "/home/$Name"
        sudo chgrp ME "/home/$Name/website.txt"
        sudo chmod g=rw "/home/$Name/website.txt"
    fi
fi

