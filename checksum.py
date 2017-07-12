import os
import re
import requests
import hashlib
import time

def checksum(file_name):
    md5 = hashlib.md5()
    with open(file_name, "rb") as f:
        for chunk in iter(lambda: f.read(2048), b""):
            md5.update(chunk)
    return md5.hexdigest()