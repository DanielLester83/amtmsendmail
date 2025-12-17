# amtmsendmail
Send an email using your Asus-Merlin Routers settings via command line

Installation:
copy the file to your routers \jffs folder
run chmod +x \jffs\amtmsendmail

Usage:
Via command line or ssh run \jffs\amtmsendmail "MESSAGE BODY" "EMAIL FROM HEADER" "EMAIL SUBJECT HEADER" 

Vorta Example: 
While this can be used in many ways,
I built this so that Vorta (The Borg Backup GUI) can run this shell command after a successful backup (return code 0). You can increase the odds of a successful return code by adding the "--critical" option. 
<code>tail -n 75 ~/LOCALLOGFILEPATH/vorta.log | sed 's/:/ /g' | sed "s/[\"\\:]/\\\\&/g" | sed -z 's/\n/\r\r/g' | xargs -0 -I {} ssh USERNAME@SERVERIPADDRESS /jffs/amtmsendmail "\"Repo - $(echo $repo_url | tr ':' ' ')$(echo -e '\r')Profile Slug - $(echo $profile_slug | tr ':' ' ')$(echo -e '\r')Return Code - $(echo $returncode | tr ':' ' ')$(echo -e '\r')$(echo -e '\r')"{}"\$(echo -e '\r')$(echo -e '\r')LOG MODIFIED LINES DOUBLE SPACED AND ANY COLONS WERE REPLACE WITH SPACE\" \"SUBJECT HEADER\" \"\"$(echo $profile_name | tr ':' ' ')\" Backup Complete\""</code>

In a later implementation on a steamdeck I had to change $(echo "\r") to $(echo -e "\r").

Added An AdguardHome Email Example: <link href="jffs/scripts/AdguardEmail.sh">AdguardEmail.sh</link>
