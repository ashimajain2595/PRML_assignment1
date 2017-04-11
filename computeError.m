function E = computeError(W, X, ytr1)

E = (X*W - ytr1)'*(X*W - ytr1)/2;