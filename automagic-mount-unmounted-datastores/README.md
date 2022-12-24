# [Quick script] - Automatically scan for unmounted VMFS datastores and mount them

[Associated](https://blog.masterwayz.nl/quick-script-automatically-scan-for-unmounted-vmfs-datastores-and-mount-them/) blog post.

Pretty much what it does is it scans for unmounted VMFS datastores and puts that into a file (line 3). Then on line 4 I have a filter to just take the UUID and put that into another file. On line 6 we take those UUIDs and mount them persistently. Line 8 and 9 are cleaning up.
