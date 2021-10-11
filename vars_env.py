import os
import sys

sys.path.insert(1, "/opt/root/lib")
os.environ["ROOTSYS"]="/opt/root"
os.environ["PATH"]=os.environ["ROOTSYS"]+"/bin:"+os.environ["PATH"]
os.environ["PYTHONPATH"]=os.environ["ROOTSYS"]+"/lib:"+os.environ["PYTHONPATH"]
os.environ["CLING_STANDARD_PCH"]="none"