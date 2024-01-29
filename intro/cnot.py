import numpy as np
cnot = [[1,0,0,0], 
        [0,1,0,0],
        [0,0,0,1],
        [0,0,1,0]]

cnot = np.matrix(cnot)
for i in range(4):
    v = np.zeros(4)
    v[i] = 1
    print(v)
    print(cnot@v)
