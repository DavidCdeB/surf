# 
import re
import os
import glob
import numpy as np
import subprocess


### Extracting EL from EOS output:

path='./'
template = os.path.join(path, 'compilation_EOS.out')

for fname in glob.glob(template):
  print fname
  f = open(fname, 'r')
  f.next()
  volumes = []
  energies = []
  for line in f:
                   both = line.splitlines()
                   print 'both = ', both

                   for i in both:
                       both_splitted = i.split()
                       print 'both_splitted = ', both_splitted
#                      print 'both_splitted[1] =', both_splitted[1]
                       volumes.append(both_splitted[0])
                       energies.append(both_splitted[1])

# print 'volumes = ', volumes
# print 'energies = ', energies

print 'volumes = ', volumes
print 'energies = ', energies


VOLUME_EOS = volumes 
EL_EOS = energies

#type(VOLUME_EOS) = ', type(VOLUME_EOS)

