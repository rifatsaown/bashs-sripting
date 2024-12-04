# Linux Fundamentals

Welcome to this detailed guide on Linux commands! From basic to advanced, this blog provides everything you need to manage Linux systems effectively.


## **User Management**

### Check Current User
```bash
whoami
```

### List Logged-in Users
```bash
who
```

### List All Users
```bash
cat /etc/passwd
```
Explanation:
- Displays all users with details like username, user ID, group ID, home directory, and shell.

### Change User
```bash
su - <username>
```

### Add, Modify, and Delete Users
```bash
sudo useradd <username>
sudo useradd -m -s <shellname> -c <comment> <username> # Add user with options
sudo passwd <username> # Set password for user
sudo usermod -l <newusername> <oldusername> # Rename user
sudo usermod -d /new/home/path -m <username> # Change home directory
sudo userdel -r <username> # Remove user and home directory
```

---

## **File and Directory Management**

### Check Current Directory
```bash
pwd
```

### Navigate Directories
```bash
cd [path]
cd ..  # Go up one level
cd -   # Switch to the previous directory
```

### List Directory Contents
```bash
ls -l
ls -la # Show hidden files
```

### Create and Remove Directories
```bash
mkdir [options] <directory_name>
mkdir [options] directory_name1 directory_name2
rm -rf <directory_name>
```

### Copy and Move Files
```bash
cp -r <source> <destination>
mv <source> <destination>
```
- Use `rm -rf` to remove directories recursively (use with caution).

### Copy Files
```bash
cp file1 file2 [target_path]
```

### Move and Rename Files
```bash
mv old_name.txt new_name.txt
```

### View File Contents
```bash
cat <file_name>
less <file_name>
more <file_name>
```

### Create Files
```bash
touch <file_name>
echo "content" > <file_name>
```

---

## **File Permissions and Ownership**

### Change Ownership
```bash
sudo chown <username>:<groupname> <file_or_directory>
```

### Modify Permissions
```bash
chmod 754 <file_or_directory>
```
- **User**: `7` (rwx), **Group**: `5` (r-x), **Others**: `4` (r--).

### View Permissions
```bash
ls -l <file_or_directory>
```

---

## **Archiving and Compression**

### Tar Commands
```bash
tar -czvf archive.tar.gz <files_or_directories>
tar -xzvf archive.tar.gz
```

### Zip and Unzip
```bash
zip archive.zip <file1> <file2> # Create zip archive
unzip archive.zip
```

### Compress with Gzip
```bash
gzip <file>
gunzip <file.gz>
```

---

## **Search and Filter**

### Search Files
```bash
find [path] [options] expression
find <path> -name <filename> # Search by name
```

### Search with Grep
```bash
grep [options] keyword [file]
```

### Locate Files
```bash
locate <file_name> # Search for files
updatedb  # Refresh locate database
```

### View Differences Between Files
```bash
diff <file1> <file2>
```

---

## **Process Management**

### View Running Processes
```bash
ps aux # List all processes
top # Display real-time system information
htop  # (if installed) Interactive process viewer
```

### Kill Processes
```bash
kill <PID> # Send SIGTERM
killall <process_name> # Kill all processes by name
```

### Check and Set Process Priorities
```bash
nice -n <priority> <command> # Set process priority
renice <priority> -p <PID> # Change priority of running process
```

---

## **Networking**

### Check Network Configuration
```bash
ifconfig # Display network configuration
ip a # (or) ip addr show
```

### Test Network Connectivity
```bash
ping <hostname_or_IP>
```

### Download Files
```bash
wget <URL>
curl -O <URL>
```

### Check Open Ports
```bash
netstat -tuln # List open ports
ss -tuln # (or) ss -tuln
```

---
## **Essential Commands**

### Create Files
```bash
touch [path_and_file_name]
```

### View File Type
```bash
file [file_name]
```

### Display File Contents
```bash
cat file_name
```

### Modify File Attributes
```bash
chattr +i filename   # Make immutable
chattr -i filename   # Remove immutable flag
```

---

## **System Monitoring**

### Disk Usage
```bash
df -h
du -sh <directory>
```

### Memory Usage
```bash
free -h
vmstat
```

### System Uptime
```bash
uptime
```

### System Logs
```bash
tail -f /var/log/syslog
```

---

## **9. Package Management**

### Debian-Based Systems
```bash
sudo apt update
sudo apt install <package_name>
sudo apt remove <package_name>
```

### Red Hat-Based Systems
```bash
sudo yum install <package_name>
sudo yum remove <package_name>
```

---

## **Advanced Commands**

### Create Symbolic and Hard Links
```bash
ln -s <target_file> <link_name> # Create symbolic link
ln <target_file> <link_name>    # Create hard link
```

### Schedule Tasks with Cron
```bash
crontab -e
```

Example cron job to run a script daily at midnight:
```bash
0 0 * * * /path/to/script.sh
```

### Manage File Attributes
```bash
chattr +i <file>  # Make file immutable
lsattr <file>     # View attributes
```

### Check System Information
```bash
uname -a
cat /etc/os-release
```

### Monitor Real-Time Logs
```bash
dmesg
journalctl -f
```
