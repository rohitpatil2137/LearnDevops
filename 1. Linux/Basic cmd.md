# A. File and Directory Management
1. **`ls`**: List files and directories.
   - Example: `ls -l` (Lists files in long format with details).
2. **`cd`**: Change the current directory.
   - Example: `cd /var/log` (Changes to the `/var/log` directory).
3. **`cp`**: Copy files or directories.
   - Example: `cp file.txt backup.txt` (Copies `file.txt` to `backup.txt`).
4. **`mv`**: Move or rename files or directories.
   - Example: `mv file.txt /home/user/` (Moves `file.txt` to `/home/user/`).
5. **`rm`**: Remove files or directories.
   - Example: `rm file.txt` (Removes `file.txt`).
6. **`mkdir`**: Create directories.
   - Example: `mkdir new_folder` (Creates a directory named `new_folder`).
7. **`touch`**: Create an empty file or update a file's timestamp.
   - Example: `touch newfile.txt` (Creates `newfile.txt` or updates its timestamp).
8. **`find`**: Search for files and directories.
   - Example: `find /home -name "*.txt"` (Finds all `.txt` files under `/home`).

# B. File Content Management
9. **`cat`**: Concatenate and display file contents.
   - Example: `cat file.txt` (Displays the contents of `file.txt`).
10. **`less` / `more`**: View file contents one page at a time.
    - Example: `less file.txt` (Views `file.txt` content one page at a time).
11. **`head`**: Display the beginning of a file.
    - Example: `head -n 10 file.txt` (Shows the first 10 lines of `file.txt`).
12. **`tail`**: Display the end of a file.
    - Example: `tail -n 10 file.txt` (Shows the last 10 lines of `file.txt`).
13. **`grep`**: Search for patterns in files.
    - Example: `grep "error" logfile.txt` (Searches for the word "error" in `logfile.txt`).
14. **`awk`**: Process and analyze text in files.
    - Example: `awk '{print $1}' file.txt` (Prints the first column from `file.txt`).
15. **`sed`**: Edit files on-the-fly.
    - Example: `sed 's/old/new/g' file.txt` (Replaces all occurrences of "old" with "new" in `file.txt`).

# C. File Permissions and Ownership
16. **`chmod`**: Change file permissions.
    - Example: `chmod 755 script.sh` (Sets the permissions of `script.sh` to `755`).
17. **`chown`**: Change file owner and group.
    - Example: `chown user:group file.txt` (Changes the owner to `user` and group to `group`).
18. **`chgrp`**: Change the group ownership of a file.
    - Example: `chgrp admins file.txt` (Changes the group of `file.txt` to `admins`).

# D. Networking
19. **`ping`**: Test connectivity to another host.
    - Example: `ping google.com` (Pings `google.com` to check connectivity).
20. **`netstat`**: Display network connections and statistics.
    - Example: `netstat -tuln` (Displays active network connections and listening ports).
21. **`curl` / `wget`**: Transfer data to or from a server.
    - Example: `curl -O http://example.com/file.txt` (Downloads `file.txt` from `example.com`).
22. **`ssh`**: Securely connect to a remote host.
    - Example: `ssh user@remotehost` (Connects to `remotehost` as `user`).
23. **`scp`**: Securely copy files between hosts.
    - Example: `scp file.txt user@remotehost:/path/` (Copies `file.txt` to `remotehost`).

# E. Process Management
24. **`ps`**: Display currently running processes.
    - Example: `ps aux` (Shows all running processes with detailed information).
25. **`top` / `htop`**: Monitor system resource usage in real-time.
    - Example: `top` (Displays real-time system resource usage).
26. **`kill`**: Terminate processes.
    - Example: `kill 1234` (Terminates the process with PID `1234`).
27. **`killall`**: Terminate processes by name.
    - Example: `killall firefox` (Terminates all processes named `firefox`).
28. **`nohup`**: Run a command immune to hangups.
    - Example: `nohup long-running-task &` (Runs `long-running-task` in the background).

# F. System Monitoring and Information
29. **`df`**: Report file system disk space usage.
    - Example: `df -h` (Shows disk space usage in human-readable format).
30. **`du`**: Estimate file space usage.
    - Example: `du -sh /home/user` (Shows the total size of `/home/user`).
31. **`free`**: Display memory usage.
    - Example: `free -m` (Displays memory usage in megabytes).
32. **`uname`**: Print system information.
    - Example: `uname -a` (Displays all system information).
33. **`uptime`**: Show how long the system has been running.
    - Example: `uptime` (Displays system uptime and load averages).
34. **`dmesg`**: Display kernel messages.
    - Example: `dmesg | less` (Views kernel messages with `less`).

# G. Disk and Filesystem Management
35. **`mount` / `umount`**: Mount and unmount filesystems.
    - Example: `mount /dev/sda1 /mnt` (Mounts `/dev/sda1` to `/mnt`).
36. **`fsck`**: Check and repair filesystems.
    - Example: `fsck /dev/sda1` (Checks and repairs `/dev/sda1`).
37. **`fdisk`**: Partition a hard disk.
    - Example: `fdisk /dev/sda` (Partitions the disk `/dev/sda`).
38. **`mkfs`**: Create a filesystem on a partition.
    - Example: `mkfs.ext4 /dev/sda1` (Formats `/dev/sda1` with the ext4 filesystem).

# H. Service Management
39. **`systemctl`**: Control and manage system services.
    - Example: `systemctl status apache2` (Shows the status of the `apache2` service).
40. **`service`**: Start, stop, and manage services (older systems).
    - Example: `service nginx restart` (Restarts the `nginx` service).

# I. Log Management
41. **`journalctl`**: View logs from the systemd journal.
    - Example: `journalctl -xe` (Displays recent system log entries with extended information).
42. **`tail -f`**: Continuously monitor log files in real-time.
    - Example: `tail -f /var/log/syslog` (Displays new entries in `/var/log/syslog` in real-time).

# J. Job Scheduling
43. **`crontab`**: Schedule periodic jobs using cron.
    - Example: `crontab -e` (Edits the crontab file to schedule jobs).
44. **`at`**: Schedule one-time jobs to run in the future.
    - Example: `at 09:00` (Schedules a command to run at 09:00).

# K. Security and Access Control
45. **`sudo`**: Execute a command as another user, typically as root.
    - Example: `sudo apt-get update` (Runs `apt-get update` with root privileges).
46. **`passwd`**: Change user passwords.
    - Example: `passwd user` (Changes the password for `user`).
47. **`iptables`**: Configure and manage firewall rules.
    - Example: `iptables -A INPUT -p tcp --dport 22 -j ACCEPT` (Allows SSH connections on port 22).
48. **`ufw`**: Uncomplicated Firewall, a simpler interface for iptables (Ubuntu).
    - Example: `ufw enable` (Enables the Uncomplicated Firewall).

# L. File Transfer
49. **`rsync`**: Synchronize files and directories between two locations.
    - Example: `rsync -av source/ destination/` (Synchronizes `source/` with `destination/`).
50. **`ftp`**: File Transfer Protocol client to transfer files between a local and remote host.
    - Example: `ftp ftp.example.com` (Connects to `ftp.example.com`).

# M. Resource Management
51. **`ulimit`**: Control user resource limits.
    - Example: `ulimit -n 1024` (Sets the maximum number of open file descriptors to 1024).
52. **`nice` / `renice`**: Adjust the priority of a running process.
    - Example: `nice -n 10 command` (Runs `command` with a priority of 10).
