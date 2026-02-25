# Day 04 – Linux Processes & Services 

**Task**

Today’s goal is to practice Linux fundamentals with real commands.

You will create a short practice note by actually running basic commands and capturing what you see:

    Check running processes
    Inspect one systemd service
    Capture a small troubleshooting flow

---

## ps – Basic Process View

Command:
ps

This command shows processes running in the current terminal session.

Observation:
- bash → Current shell
- ps → The executed command

Without options, `ps` only shows processes related to the current session.

---

## ps aux – All Running Processes

Command:
ps aux


This shows all running processes in the system.

Observation:
- PID 1 is /sbin/init (systemd)
- Background kernel processes like kworker, rcu_sched, migration
- Most processes in S (Sleeping) state

Important columns:
- PID → Process ID
- %CPU → CPU usage
- %MEM → Memory usage
- STAT → Process state

---

## top – Live Monitoring

Command:
top


Shows real-time system performance.

Observation:
- Load average: 0.00 (system not busy)
- CPU idle ~100%
- Memory usage normal
- No zombie processes

---

## pgrep nginx

Command:
pgrep nginx

Confirms nginx is running correctly (master + worker processes).

---

## systemctl status ssh

Command:
systemctl status ssh


Shows:
- Service state: active (running)
- Main PID
- Start time
- Recent logs
- Port 22 listening

Also noticed some invalid login attempts (common on public servers).

---

## systemctl list-units

Command:
systemctl list-units

Shows active system services and their status.

---

## journalctl -u ssh

Command:
journalctl -u ssh


Shows:
- SSH start logs
- Login attempts
- Service restarts
- Invalid users

---

## tail -n 50 /var/log/syslog

Command:
tail -n 50 /var/log/syslog

Shows last 50 lines of system log including:
- Service logs
- Updates
- Background processes

---

## Mini Troubleshooting Flow (AWS)

If nginx is running but the website is not accessible:

1. systemctl status nginx
2. journalctl -xe
3. ss -tulnp
4. Check AWS Security Group:
   - Allow Port 80
   - Source: 0.0.0.0/0

---

## Why This Matters for DevOps

Hands-on practice builds speed and confidence.  
During production issues, there is no time to search for basic commands.  
Strong Linux fundamentals help reduce downtime and improve troubleshooting speed.

#90DaysOfDevOps #DevOpsKaJosh #TrainWithShubham
