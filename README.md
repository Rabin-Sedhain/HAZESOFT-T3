# HAZESOFT-T3

Task-- create a tarball of specified directory taken as argument while running the backup script and name it with the timestamp.

-Step 1:
# Check whether the backup destination is present or not . If not present create one using mkdir command.

-Step 2:
# Specify the name of the tarball to be created. Here $1 is the argument passed by user while executing the bash script. and basename gives the name of the directory which is used while naming the tarball.

-Step 3:
# Archiving the directory using tar command and options -c, -z , -v, -f which creates , compresses, shows process and specifies the filename of the tarball respectively

-Step 4:
# Check status of the tar command . The variable "$?" indicates the state of last executed command and if it is 0 then the task is compleated otherwise the task is failed.

Execution

Simply run the bash script with one argument ie directory to backup

for eg 

---  ./backup.sh /etc/nginx


################################################################################################



