#Numpy
import numpy as np
import matplotlib.pyplot as plt
a = np.array([0, 1, 2, 3, 4])
type(a) #numpy.ndarray
a.size # 5
a.ndim #1
a.shape #(5,)

b = a[1:4]

u = np.array([1, 0])
v = np.array([0, 1])
z = u+v

#Dot product
np.dot(u, v)

#Universal Function
a.mean()
a.max()
np.pi

#apply function to np
x = np.array([0, np.pi/2, np.pi])
y = np.sin(x) #[0, 1, 0]

np.linspace(-2, 2, num=5)

x0 = np.linspace(0, 2*np.pi, 100)
y0 = np.sin(x0)

plt.plot(x0, y0)
plt.show()

a = [[11, 12, 13], [21, 22, 23], [31, 32, 33]]
A = np.array(a)
A.ndim #2
A.shape #(3, 3)
A.size #9 totoal num of element
