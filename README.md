**Nume: Ciulinca Andra Stefania**
**Grupă: 314CA**

## Metode Numerice Matriceale

### Markov is coming ...
* For this task i opened a text file and read the first line to get the dimensions of the maze then read the rest of the lines to fill in the maze matrix
* The get_adjacency_matrix function takes the labyrinth matrix as input and returns the adjacency matrix for the corresponding Markov chain.It iterates through each element in Labyrinth, and for each element it checks if it is possible to move up, down, left, or right. If a move is valid, the function updates the corresponding entry in the adjacency matrix to 1.
* For perform_iterative function i adapted the Jacobi implementation presented at lab
* The heuristic_greedy function starts with the provided start_position, and then iteratively moves to the neighboring cell with the highest probability of winning (as given by the probabilities vector) until it reaches the WIN state
* The decoded_path matrix is initialized with zeros and then filled in with the decoded positions for each element of the path vector. The WIN state (which has index lines*cols + 1) is ignored, as it does not correspond to a position in the maze.

###  Linear Regression
* The prepare_for_regression function iterates through each element in InitialMatrix and updates the corresponding element in FeatureMatrix with 1 or 0 depending on the string or keeps the integer. The function also keeps the column index after adding the elemet in FeatureMatrix
* For the cost function i implemented the given formulas in octave

###  MNIST 101
* The load_dataset function loads the .mat file using the load function and stores the contents in the data variable. The feature matrix is extracted from the X field of data and stored in the X variable. The target values are extracted from the y field of data and stored in the y variable.
* The split_dataset function  shuffles the examples randomly using the randperm function, then splits the examples into training and testing sets based on the value of percent. The training set consists of the first percent fraction of the shuffled examples, while the testing set consists of the remaining examples.