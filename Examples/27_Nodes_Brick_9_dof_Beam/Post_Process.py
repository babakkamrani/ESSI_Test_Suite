# -*- coding: utf-8 -*-
"""
Created on Mon Feb 16 13:59:29 2015

@author: babak
"""

# This analysis file is specific for test_contact_01.fei
#
import h5py as h5
import scipy as sp
import matplotlib.pyplot as plt

f = h5.File("27nodebrick_DRM.h5.feioutput","r")
t = f["/time"][:]

u = f["/Model/Nodes/Generalized_Displacements"][1123,:]
plt.close("all")
plt.figure()
plt.plot(t,u)
plt.title('SDOF on top of Soil Stack Response') 
plt.xlabel('time / step')
plt.ylabel('Displacement of SDOF [m]')
plt.grid()
plt.savefig('SDOF.pdf')
f.close()