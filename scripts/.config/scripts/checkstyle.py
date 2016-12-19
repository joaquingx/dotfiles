import os
import sys

os.system('java -jar checkstyle-7.1.2-all.jar -c /google_checks.xml %s'
        %(sys.argv[1]))
