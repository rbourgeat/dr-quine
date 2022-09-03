import os
source_code = 'import os\nsource_code = %r\ndef main():\n\ti = %d\n\tif (os.path.exists("Sully_%%d.py" %% i)):\n\t\ti -= 1\n\tf = open("Sully_%%d.py" %% i, "w+")\n\tf.write(source_code %% (source_code, i))\n\tf.close()\n\tif (i > 0):\n\t\tos.system("python3 Sully_%%d.py" %% i)\nmain()'
def main():
	i = 5
	if (os.path.exists("Sully_%d.py" % i)):
		i -= 1
	f = open("Sully_%d.py" % i, "w+")
	f.write(source_code % (source_code, i))
	f.close()
	if (i > 0):
		os.system("python3 Sully_%d.py" % i)
main()
