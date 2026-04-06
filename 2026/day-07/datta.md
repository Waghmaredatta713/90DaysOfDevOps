🧪 Hands-on Task (What to Run + What to Write)
🔍 1. Find Largest Log Files
du -sh /var/log/* 2>/dev/null | sort -h | tail -5
✅ What this does:
du -sh → Shows size of each file/folder
2>/dev/null → Hides permission errors
sort -h → Sorts by size (human readable)
tail -5 → Shows top 5 largest files
🧠 Example Output (your system will differ):
10M  /var/log/syslog
25M  /var/log/auth.log
50M  /var/log/kern.log
80M  /var/log/cloud-init.log
120M /var/log/dpkg.log
✍️ What to write in notes:
Observation: dpkg.log is the largest log file
I learned: Large log files can consume disk space and may need cleanup
⚙️ 2. View System Configuration
cat /etc/hostname
✅ What this does:
Displays system hostname (server name)
🧠 Example Output:
ip-172-31-10-25
✍️ What to write:
Observation: Hostname is ip-172-31-10-25
I learned: Hostname helps identify the server in a network
🏠 3. Check Home Directory
ls -la ~
✅ What this does:
-l → detailed list
-a → includes hidden files
~ → current user's home
🧠 Example Output:
drwxr-xr-x  5 ubuntu ubuntu 4096 Apr 6 .
drwxr-xr-x  3 root   root   4096 Apr 6 ..
-rw-r--r--  1 ubuntu ubuntu  220 .bash_logout
-rw-r--r--  1 ubuntu ubuntu 3771 .bashrc
-rw-r--r--  1 ubuntu ubuntu  807 .profile
✍️ What to write:
Observation: Found hidden files like .bashrc, .profile
I learned: Hidden files store user configurations



Step 1: systemctl status nginx  
Why: Check service state and initial error  

Step 2: journalctl -u nginx -n 50  
Why: Identify root cause from logs  

Step 3: systemctl is-enabled nginx  
Why: Verify auto-start configuration  

Step 4: nginx -t  
Why: Validate configuration syntax  

Step 5: ss -tulnp | grep :80  
Why: Check if port is already in use  

Step 6: systemctl restart nginx  
Why: Restart service after fixing issue  

Step 7: systemctl status nginx  
Why: Confirm service is running

What I learned: First check status, then logs, then configuration, then fix and restart.



⚡Step 1: top  
Why: Monitor real-time CPU usage  

Step 2: ps aux --sort=-%cpu | head -10  
Why: Identify top CPU-consuming processes  

Step 3: top -p <PID>  
Why: Track specific process behavior  

Step 4: ps -fp <PID>  
Why: Get detailed process information  

Step 5: kill -15 <PID>  
Why: Stop problematic process safely  

Step 6: top  
Why: Verify CPU usage is reduced



Step 1: systemctl status docker  
Why: Check service state and recent logs  

Step 2: journalctl -u docker -n 50  
Why: View recent logs for error diagnosis  

Step 3: journalctl -u docker -f  
Why: Monitor logs in real-time  

Step 4: systemctl restart docker  
Why: Restart service and verify logs



🔐 Scenario 4: File Permissions Issue
Step 1: ls -l /home/user/backup.sh  
Why: Check current file permissions  

Step 2: chmod +x /home/user/backup.sh  
Why: Add execute permission to the script  

Step 3: ls -l /home/user/backup.sh  
Why: Verify execute permission is added  

Step 4: ./backup.sh  
Why: Run the script after fixing permissions  

What I learned: A script must have execute (x) permission to run.
