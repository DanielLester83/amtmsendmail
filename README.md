# amtmsendmail
Send an email using your Asus-Merlin Routers settings via command line

Installation:
copy the file to your routers \jffs folder
run chmod +x \jffs\amtmsendmail

Usage:
Via command line or ssh run \jffs\amtmsendmail "MESSAGE BODY" "EMAIL FROM HEADER" "EMAIL SUBJECT HEADER" 

Vorta Example: 
While this can be used in many ways,
I built this so that Vorta (The Borg Backup GUI) can run this shell command after a successful backup (return code 0). You can increase the odds of a successful return code by adding the "--error" option. 
<code> ssh Router@192.168.1.1 /jffs/amtmsendmail "\"Repo - $(echo $repo_url | tr ':' ' ')$(echo "\r")Profile Slug - $(echo $profile_slug | tr ':' ' ')$(echo "\r")Return Code - $(echo $returncode | tr ':' ' ')\" \"Vorta PC Backup\" \"\"$(echo $profile_name | tr ':' ' ')\" Backup Complete\""</code>
