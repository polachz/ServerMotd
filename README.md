# ServerMotd

Generates Message of the Day on Ubuntu 16.04 Server
Contains info about host, kernel, uptime, updates and resources

Here is example of the generated MOTD:

                          Welcome to server
                  Ubuntu 16.04.1 LTS  with 4.4.0-59-generic
                   Intel(R) Core(TM) i3-2100T CPU @ 2.50GHz

        Now is: Tue Jan 24 22:50:50 CET 2017
        --------------------------------------------------------------
        Uptime: 002 days, 12:39 hours | CPU Load:    0.00, 0.01, 0.00
        --------------------------------------------------------------
                 Used   Total    Free |          Used   Total    Free
        --------------------------------------------------------------
        Memory: 1170M   1967M    252M | Swap:      0M   3814M   3814M
        /root:   2.0G     35G     31G | /srv:    2.0G     35G     31G
        --------------------------------------------------------------
        0 packages can be updated.
        0 updates are security updates.
        --------------------------------------------------------------
                             !!!!! WARNING !!!!!
                  All connections are monitored and recorded
             EXIT IMMEDIATELY if you are not an authorized user!
        --------------------------------------------------------------

##Installation

* Clone to any directory
* Start **install.sh** as root

**Important notice**: Original Ubuntu motd scripts in /etc/update-motd.d/ must exist and stay preserved to grant correct functionality!!
