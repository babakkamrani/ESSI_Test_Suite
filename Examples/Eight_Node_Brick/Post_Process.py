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

f = h5.File("Eight_Node_Brick_Triaxial_VMPP_confinement.h5.feioutput","r")
t = f["/time"][:]

u = f["/Model/Nodes/Generalized_Displacements"][21,:]
plt.close("all")
plt.figure()
plt.plot(t,u)
plt.title('Eight Node Brick Triaxial VMPP confinement Stage') 
plt.xlabel('time / step')
plt.ylabel('Vertical Displacement of top [m]')
plt.grid()
plt.savefig('Eight_Node_Brick_Triaxial_VMPP_confinement.pdf')
f.close()

f = h5.File("Eight_Node_Brick_Triaxial_VMPP_shear.h5.feioutput","r")
t = f["/time"][:]

u = f["/Model/Nodes/Generalized_Displacements"][21,:]
plt.close("all")
plt.figure()
plt.plot(t,u)
plt.title('Eight Node Brick Triaxial VMPP shear Stage') 
plt.xlabel('time / step')
plt.ylabel('Vertical Displacement of top [m]')
plt.grid()
plt.savefig('Eight_Node_Brick_Triaxial_VMPP_shear.pdf')
f.close()




f = h5.File("Eight_Node_Brick_Triaxial_VMIH_confinement.h5.feioutput","r")
t = f["/time"][:]

u = f["/Model/Nodes/Generalized_Displacements"][21,:]
plt.close("all")
plt.figure()
plt.plot(t,u)
plt.title('Eight Node Brick Triaxial VMIH confinement Stage') 
plt.xlabel('time / step')
plt.ylabel('Vertical Displacement of top [m]')
plt.grid()
plt.savefig('Eight_Node_Brick_Triaxial_VMIH_confinement.pdf')
f.close()

f = h5.File("Eight_Node_Brick_Triaxial_VMIH_shear.h5.feioutput","r")
t = f["/time"][:]

u = f["/Model/Nodes/Generalized_Displacements"][21,:]
plt.close("all")
plt.figure()
plt.plot(t,u)
plt.title('Eight Node Brick Triaxial VMIH shear Stage') 
plt.xlabel('time / step')
plt.ylabel('Vertical Displacement of top [m]')
plt.grid()
plt.savefig('Eight_Node_Brick_Triaxial_VMIH_shear.pdf')
f.close()





f = h5.File("Eight_Node_Brick_Triaxial_VMKH_confinement.h5.feioutput","r")
t = f["/time"][:]

u = f["/Model/Nodes/Generalized_Displacements"][21,:]
plt.close("all")
plt.figure()
plt.plot(t,u)
plt.title('Eight Node Brick Triaxial VMKH confinement Stage') 
plt.xlabel('time / step')
plt.ylabel('Vertical Displacement of top [m]')
plt.grid()
plt.savefig('Eight_Node_Brick_Triaxial_VMKH_confinement.pdf')
f.close()

f = h5.File("Eight_Node_Brick_Triaxial_VMKH_shear.h5.feioutput","r")
t = f["/time"][:]

u = f["/Model/Nodes/Generalized_Displacements"][21,:]
plt.close("all")
plt.figure()
plt.plot(t,u)
plt.title('Eight Node Brick Triaxial VMKH shear Stage') 
plt.xlabel('time / step')
plt.ylabel('Vertical Displacement of top [m]')
plt.grid()
plt.savefig('Eight_Node_Brick_Triaxial_VMKH_shear.pdf')
f.close()

#Drucker Prager ...

f = h5.File("Eight_Node_Brick_Triaxial_DPPP_confinement.h5.feioutput","r")
t = f["/time"][:]

u = f["/Model/Nodes/Generalized_Displacements"][21,:]
plt.close("all")
plt.figure()
plt.plot(t,u)
plt.title('Eight Node Brick Triaxial DPPP confinement Stage') 
plt.xlabel('time / step')
plt.ylabel('Vertical Displacement of top [m]')
plt.grid()
plt.savefig('Eight_Node_Brick_Triaxial_DPPP_confinement.pdf')
f.close()

f = h5.File("Eight_Node_Brick_Triaxial_DPPP_shear.h5.feioutput","r")
t = f["/time"][:]

u = f["/Model/Nodes/Generalized_Displacements"][21,:]
plt.close("all")
plt.figure()
plt.plot(t,u)
plt.title('Eight Node Brick Triaxial DPPP shear Stage') 
plt.xlabel('time / step')
plt.ylabel('Vertical Displacement of top [m]')
plt.grid()
plt.savefig('Eight_Node_Brick_Triaxial_DPPP_shear.pdf')
f.close()


f = h5.File("Eight_Node_Brick_Triaxial_DPIH_confinement.h5.feioutput","r")
t = f["/time"][:]

u = f["/Model/Nodes/Generalized_Displacements"][21,:]
plt.close("all")
plt.figure()
plt.plot(t,u)
plt.title('Eight Node Brick Triaxial DPIH confinement Stage') 
plt.xlabel('time / step')
plt.ylabel('Vertical Displacement of top [m]')
plt.grid()
plt.savefig('Eight_Node_Brick_Triaxial_DPIH_confinement.pdf')
f.close()

f = h5.File("Eight_Node_Brick_Triaxial_DPIH_shear.h5.feioutput","r")
t = f["/time"][:]

u = f["/Model/Nodes/Generalized_Displacements"][21,:]
plt.close("all")
plt.figure()
plt.plot(t,u)
plt.title('Eight Node Brick Triaxial DPIH shear Stage') 
plt.xlabel('time / step')
plt.ylabel('Vertical Displacement of top [m]')
plt.grid()
plt.savefig('Eight_Node_Brick_Triaxial_DPIH_shear.pdf')
f.close()


f = h5.File("Eight_Node_Brick_Triaxial_DPKH_confinement.h5.feioutput","r")
t = f["/time"][:]

u = f["/Model/Nodes/Generalized_Displacements"][21,:]
plt.close("all")
plt.figure()
plt.plot(t,u)
plt.title('Eight Node Brick Triaxial DPKH confinement Stage') 
plt.xlabel('time / step')
plt.ylabel('Vertical Displacement of top [m]')
plt.grid()
plt.savefig('Eight_Node_Brick_Triaxial_DPKH_confinement.pdf')
f.close()

f = h5.File("Eight_Node_Brick_Triaxial_DPKH_shear.h5.feioutput","r")
t = f["/time"][:]

u = f["/Model/Nodes/Generalized_Displacements"][21,:]
plt.close("all")
plt.figure()
plt.plot(t,u)
plt.title('Eight Node Brick Triaxial DPKH shear Stage') 
plt.xlabel('time / step')
plt.ylabel('Vertical Displacement of top [m]')
plt.grid()
plt.savefig('Eight_Node_Brick_Triaxial_DPKH_shear.pdf')
f.close()



#Sanisand

f = h5.File("Eight_Node_Brick_Triaxial_SS2004_confinement.h5.feioutput","r")
t = f["/time"][:]

u = f["/Model/Nodes/Generalized_Displacements"][21,:]
plt.close("all")
plt.figure()
plt.plot(t,u)
plt.title('Eight Node Brick Triaxial Sani Sand 2004 confinement Stage') 
plt.xlabel('time / step')
plt.ylabel('Vertical Displacement of top [m]')
plt.grid()
plt.savefig('Eight_Node_Brick_Triaxial_SS2004_confinement.pdf')
f.close()

f = h5.File("Eight_Node_Brick_Triaxial_SS2004_shear.h5.feioutput","r")
t = f["/time"][:]

u = f["/Model/Nodes/Generalized_Displacements"][21,:]
plt.close("all")
plt.figure()
plt.plot(t,u)
plt.title('Eight Node Brick Triaxial Sani Sand 2004 shear Stage') 
plt.xlabel('time / step')
plt.ylabel('Vertical Displacement of top [m]')
plt.grid()
plt.savefig('Eight_Node_Brick_Triaxial_SS2004_shear.pdf')
f.close()




f = h5.File("Eight_Node_Brick_Triaxial_SS2008_confinement.h5.feioutput","r")
t = f["/time"][:]

u = f["/Model/Nodes/Generalized_Displacements"][21,:]
plt.close("all")
plt.figure()
plt.plot(t,u)
plt.title('Eight Node Brick Triaxial Sani Sand 2008 confinement Stage') 
plt.xlabel('time / step')
plt.ylabel('Vertical Displacement of top [m]')
plt.grid()
plt.savefig('Eight_Node_Brick_Triaxial_SS2008_confinement.pdf')
f.close()

f = h5.File("Eight_Node_Brick_Triaxial_SS2008_shear.h5.feioutput","r")
t = f["/time"][:]

u = f["/Model/Nodes/Generalized_Displacements"][21,:]
plt.close("all")
plt.figure()
plt.plot(t,u)
plt.title('Eight Node Brick Triaxial Sani Sand 2008 shear Stage') 
plt.xlabel('time / step')
plt.ylabel('Vertical Displacement of top [m]')
plt.grid()
plt.savefig('Eight_Node_Brick_Triaxial_SS2008_shear.pdf')
f.close()



