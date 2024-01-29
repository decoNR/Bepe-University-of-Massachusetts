import numpy as np
import matplotlib.pyplot as plt

# Define the dimension of the quantum state
dimension = 16

# Generate a random complex vector for the quantum state
qubit_state = np.random.rand(dimension) + 1j * np.random.rand(dimension)
qubit_state /= np.linalg.norm(qubit_state)

# Calculate the probability amplitudes and probabilities
prob_amplitudes = np.abs(qubit_state)
probabilities = prob_amplitudes ** 2

# Create basis states labels
basis = [format(i, f'0{int(np.log2(dimension))}b') for i in range(dimension)]

# Create a bar plot to visualize the wavefunction
plt.bar(basis, probabilities)
plt.xlabel('Basis State')
plt.ylabel('Probability')
plt.title(f'Wavefunction of a {dimension}-Dimensional Quantum State')
plt.xticks(rotation=45)
plt.show()

