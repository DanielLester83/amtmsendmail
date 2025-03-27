# amtmsendmail
Send an email using your Asus-Merlin Routers settings via command line

Installation:
copy the file to your routers \jffs folder
run chmod +x \jffs\amtmsendmail

Usage:
Via command line or ssh run \jffs\amtmsendmail "MESSAGE BODY" "EMAIL FROM HEADER" "EMAIL SUBJECT HEADER" 

Vorta Example: 
While this can be used in many ways,
I built so that Vorta (The Borg Backup GUI) can run this shell command after a successful backup
<code> /jffs/amtmsendmail "repo: $repo_url\nslug: $profile_slug\nreturncode: $returncode" "Vorta - PC Backup" "$profile_name - Backup Complete" </code>
