import numpy as np
import sys
#from matplotlib.pyplot import (plot, scatter, colorbar, figure, subplot, hold, legend, title, xlabel, ylabel, grid, clf, close, imshow)
import matplotlib.pyplot as plt
#from scipy.interpolate import griddata
from scipy.optimize import curve_fit
#hell yeah
def func(y, a0, a1, a2):
     return a0 + a1 * y + a2*y**2 

y_data, z_data, x_data  = np.loadtxt('./10K.dat').T

popt, pcov = curve_fit(func, y_data, z_data)
plt.plot(y_data, func(y_data, *popt), 'r-', label='fit')

print 'popt = ', popt
print 'pcov = ', pcov

#figure()

plt.scatter(y_data, z_data)
x_mesh = np.linspace(-6, 10, 200)
#plt.plot(x_mesh, -9.41492103e+02 +  1.47345011e-02*x_mesh + -8.87035634e-05*x_mesh**2 ) # This if you want to plot the function
plt.xlabel('P (GPa)')
plt.ylabel('G / F. unit (GPa)')
plt.title("Solid 1 \n 10 K")
plt.legend()
plt.show()
