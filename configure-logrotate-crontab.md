# Configure logrotate without root access

In ubuntu server

* Create `/home/$USER/logrotate`  

`mkdir /home/$USER/logrotate`  

* Create `/home/$USER/logrotate/my.conf` configuration file with `logrotate` directive as you need  

* Create `/home/$USER/logrotate/cronjob` to run logrotate everyday at 2:30AM (as this example)  

```bash
30 2 * * * /usr/sbin/logrotate -s /home/user/logrotate/status /home/user/logrotate/my.conf > /dev/null 2>&1
```

* Check the configuration file syntax

```bash
logrotate -d /home/user/logrotate/my.conf
```

* Configure `crontab` to run `logrotate` (**Warning:** This removes existing entries in your crontab. Use `crontab -e` to manually add the line from step 3 to an existing crontab):  

```bash
crontab /home/user/logrotate/cronjob 
```

After this command, `logrotate` will rotate files as described in `/home/$USER/logrotate/my.conf` and save log file status in `/home/$USER/logrotate/status`  

Use:  

```bash
crontab -r   # remove crontab activities for user
crontab -l   # to list crontab activity for user
crontab -e   # edit user crontab entries
```

