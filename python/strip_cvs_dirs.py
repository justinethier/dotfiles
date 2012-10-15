"""
Recursively delete all CVS subdirectories
"""

import shutil
import os

tree = os.walk('.')
for directory in tree:
    parts = directory[0].split("\\")
    if parts[-1] == "CVS":
        print("rm " + directory[0])
        shutil.rmtree(directory[0])

