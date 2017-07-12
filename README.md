# Statement

I have two sets `1__scatter_xyz.dat` and `2__scatter_xyz.dat` of scattered points.

These points are defined by 3 coordinates: `x`, `y`, `z`

`1__scatter_xyz.dat` 

`2__scatter_xyz.dat` 

(both files are available in this repository)

These two sets of scattered points intersect in a region:

    gnuplot>  splot "1__scatter_xyz.dat" using 3:1:2 with points lt 1 title "1", "2__scatter_xyz.dat" using 3:1:2 with points lt 1 lc 2 title "2"
    
    gnuplot> set xlabel 'x'
    gnuplot> set ylabel 'y'
    gnuplot> set zlabel 'z'

![Data flow](https://github.com/DavidCdeB/surf/blob/master/Images/surf.png)

The crossing between the surface of `set 1` with the surface of `set 2` will define a line / curve, that plotted in a 2D `y`-`x`diagram, will give us the phase boundary between these two sets.

I would like to plot in a 2D `y`-`x`diagram this line / curve that arises from the crossing of both surfaces.


# The way I thought on how to attack this problem

We can define a new function, `w = z_{1} - z_{2}`.
The crossing between these two surfaces will be the points where `w = (z_{1} - z_{2}) = 0`.
I could then define two regions:


a) A region where `w = 0`

b) A region where `w \neq 0`


If I plot these two values of `w` in a 2D `y`-`x`diagram :

![Data flow](https://github.com/DavidCdeB/surf/blob/master/Images/ppp.png)

I could then define that this line / curve is the phase boundary between these two sets:


a) The region where `w = 0` is where both sets coexist together

b) The region where `w \neq 0` is where both sets do not coexist together

# Why I cannot progress with this solution

If we just remove the blank lines on the `.dat` files and sort `x`- wise:

    sed '/^\s*$/d' 1__scatter_xyz.dat | grep -v "^#" | sort -k1 -n > 1__scatter_xyz_sort_x_wise.dat
    
    sed '/^\s*$/d' 2__scatter_xyz.dat | grep -v "^#" | sort -k1 -n > 2__scatter_xyz_sort_x_wise.dat

If you look at both `x_wise.dat` files, there is overlapping data:
`set 1` goes from a `y` of -4.41 to 10.85, and `set 2` goes from 8.06 to 17.64. The array of `y` is different on both sets. However, the array of `x` is the same: from 10 to 2000 with a step of 20.1.

Thus, set 1 and set 2 have the same array of `x_{j}`: from 10 to 2000 in a step of 20.1.
However, both sets do not have the same array of `y`s: there is an array `y_{i}^{1}` for `set 1` and an array `y_{i}^{2}` for `set 2`.

In other words,

![Data flow](https://github.com/DavidCdeB/surf/blob/master/Images/zz.png)

Thus, imagine that I find a point where both surfaces have the same value of `z`.
This point will be defined by `x_{j}`, `y_{i}^{1}` and `y_{i}^{2}` instead of two unique coordinates. 

More efficient ideas are more than welcome.


# A possible solution: 1st step

Because the problem is that the `x` values are not "sampled" at the same points in the two sets,
I think that what I would need to do is to reconstruct the two 2D functions/surfaces `z_{1}(x,y)` and `z_{2}(x,y)` based on these unevenly spaced points, i.e. interpolate between the measured points. For this we could use the [scipy.interpolate.griddata functionality](https://docs.scipy.org/doc/scipy-0.18.1/reference/generated/scipy.interpolate.griddata.html)

In the example posted in that link, I have to use the `np.mgrid` function, where both `x` and `y` have to have the same length. The problem is that, as explained above, this is not the case in this problem.
