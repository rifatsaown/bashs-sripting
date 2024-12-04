# Linux Fundamentals

Welcome to the comprehensive guide on Linux basics! This blog covers essential commands and concepts to help you navigate and manage Linux systems efficiently.

---

## **User Management**

### Check the Current User
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

### Create a User
```bash
sudo useradd <username>
sudo useradd -m -s <shellname> -c <comment> <username>
```

### Modify Users
```bash
sudo usermod -s <shellname> <username>       # Change shell
sudo usermod -d /new/home/path -m <username> # Change home directory
sudo usermod -l <newusername> <oldusername> # Change username
```

### Delete a User
```bash
sudo userdel -r <username>
```

---

## **File and Directory Management**

### Change Directory
```bash
cd [path_or_directory]
```
Examples:
- `cd ..` - Move up one directory.
- `cd -` - Switch to the previous directory.

### List Directory Contents
```bash
ls -l
ls -la
```

### Create Directories
```bash
mkdir [options] directory_name1 directory_name2
```

### Remove Files and Directories
```bash
rm [options] file_or_directory
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

---

## **File Permissions and Ownership**

### Change Ownership
```bash
sudo chown <username>:<groupname> <file_or_directory>
```

### Change Permissions
```bash
sudo chmod 754 <file_or_directory>
```
- **User**: `7` (rwx), **Group**: `5` (r-x), **Others**: `4` (r--).

### View Permissions
```bash
ls -l <file_or_directory>
```

---

## **Archiving and Compression**

### Zip and Unzip
```bash
zip [options] zip_file_name file1 file2
unzip [options] zip_file_name
```

### Tar Command
```bash
tar -cfz archive.tar.gz file1 file2
tar -xvzf archive.tar.gz
```

---

## **Search and Filter**

### Search Files
```bash
find [path] [options] expression
```

### Search with Grep
```bash
grep [options] keyword [file]
```

### Locate Files
```bash
locate [options] [keyword]
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

## **Links in Linux**

### Soft Links
```bash
ln -s target_file link_name
```

### Hard Links
```bash
ln target_file link_name
```
