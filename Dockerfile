FROM atlasml/ml-base:latest

# Update pip first
RUN python3 -m pip install --upgrade pip

# Install correct versions of PyTorch, cuda and PyTorch Gemetric with dependencies
RUN python3 -m pip install --user  torch==1.5.0
RUN python3 -m pip install --user torch-scatter==latest+cpu -f https://pytorch-geometric.com/whl/torch-1.5.0.html
RUN python3 -m pip install --user torch-sparse==latest+cpu -f https://pytorch-geometric.com/whl/torch-1.5.0.html
RUN python3 -m pip install --user torch-cluster==latest+cu102 -f https://pytorch-geometric.com/whl/torch-1.5.0.html
RUN python3 -m pip install --user torch-spline-conv==latest+cu102 -f https://pytorch-geometric.com/whl/torch-1.5.0.html
RUN python3 -m pip install --user torch-geometric

# Install dask for parallel computing
RUN python3 -m pip install --user "dask[dataframe]"

# Install imblearn for handling imbalanced datasets
RUN python3 -m pip install --user imbalanced-learn==0.5.0

# Run jupyter
#CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8080", "--allow-root"]
