import numpy as np
import sys
#from matplotlib.pyplot import (plot, scatter, colorbar, figure, subplot, hold, legend, title, xlabel, ylabel, grid, clf, close, imshow)
import matplotlib.pyplot as plt
from scipy.interpolate import griddata



V_solid_1, P_solid_1, EL_solid_1, E0_solid_1, ET_solid_1, ENTROPY_solid_1, TS_solid_1, G_solid_1, T_solid_1  = np.loadtxt('./Files_Updated_v2/solid_1__sorted_as_P_wise.dat', skiprows = 1).T

V_solid_2, P_solid_2, EL_solid_2, E0_solid_2, ET_solid_2, ENTROPY_solid_2, TS_solid_2, G_solid_2, T_solid_2  = np.loadtxt('./Files_Updated_v2/solid_2__sorted_as_P_wise.dat', skiprows = 1).T

points_solid_1 = (P_solid_1, T_solid_1)
print points_solid_1

points_solid_2 = (P_solid_2, T_solid_2)
print points_solid_2

values_solid_1 = (G_solid_1)
print values_solid_1

values_solid_2 = (G_solid_2)
print values_solid_2

T_initial = 10.0
T_end = 2000.0
number_of_Ts = 100

P_initial = 8.0622
P_end = 10.8535
number_of_Ps = 100
 
grid_T, grid_P = np.meshgrid(np.linspace(T_initial, T_end, number_of_Ts), np.linspace(P_initial, P_end, number_of_Ps))


grid_Gibbs_solid_1 = griddata(points_solid_1, values_solid_1, (grid_T, grid_P), method='cubic')
grid_Gibbs_solid_2 = griddata(points_solid_2, values_solid_2, (grid_T, grid_P), method='cubic')

#sys.exit()


plt.subplot(221)

#sys.exit()


plt.imshow(grid_Gibbs_solid_1.T, extent=(0,1,0,1), origin='lower')
plt.title('Cubic')
plt.gcf().set_size_inches(6, 6)
plt.show()
