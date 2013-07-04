#!/usr/bin/env PYTHONIOENCODING=utf-8 python2.7

import sys
import pystache
import yaml

uread = lambda x: unicode(x.read().decode('utf-8'))
print pystache.render(uread(sys.stdin), yaml.load(uread(open(sys.argv[1]))))
