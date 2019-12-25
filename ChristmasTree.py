#
# By Wang Liao
# Dec 24,2019
import numpy as np 
import matplotlib.pyplot as plt 
np.random.seed(19680801) 
mu1, sigma1 = 100, 15 
mu2, sigma2 = 80, 15 
x1 = mu1 + sigma1 * np.random.randn(10000) 
n1, bins1, patches1 = plt.hist(x1, 50, density=True, facecolor='g', alpha=1) 
plt.title('Merry Christmas & Happy New Year') 
plt. axis('off') 
plt.show()
