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

f = h5.File("truss_Static.h5.feioutput","r")
t = f["/time"][:]

u = f["/Model/Nodes/Generalized_Displacements"][5,:]
plt.close("all")
plt.figure()
plt.plot(t,u)
plt.xlabel('time / step')
plt.ylabel('Displacement [m]')
plt.grid()
plt.savefig('Displacement_vs_step_Static.pdf')
f.close()


f = h5.File("truss_Shake.h5.feioutput","r")
t = f["/time"][:]

u = f["/Model/Nodes/Generalized_Displacements"][5,:]
plt.close("all")
plt.figure()
plt.plot(t,u)
plt.xlabel('time / step')
plt.ylabel('Displacement [m]')
plt.grid()
plt.savefig('Displacement_vs_step_Shake.pdf')
f.close()


f = h5.File("truss_Static_Stage.h5.feioutput","r")
t = f["/time"][:]

u_static = f["/Model/Nodes/Generalized_Displacements"][5,:]
plt.close("all")
plt.figure()
plt.plot(t,u_static)
plt.xlabel('time / step')
plt.ylabel('Displacement [m]')
plt.grid()
plt.savefig('Displacement_vs_step_Static_Stage.pdf')
f.close()


f = h5.File("truss_Shake_Stage.h5.feioutput","r")
t = f["/time"][:]

u_shake = f["/Model/Nodes/Generalized_Displacements"][5,:]
plt.close("all")
plt.figure()
plt.plot(t,u_shake)
plt.xlabel('time / step')
plt.ylabel('Displacement [m]')
plt.grid()
plt.savefig('Displacement_vs_step_Shake_Stage.pdf')
f.close()
