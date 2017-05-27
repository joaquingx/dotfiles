import subprocess

command = ['/usr/bin/checkupdates']
p = subprocess.Popen(command, stdout=subprocess.PIPE)
text = p.stdout.read()
updatelist  = text.splitlines()
number_of_updates = len(updatelist)

print("" + " " + str(number_of_updates))
