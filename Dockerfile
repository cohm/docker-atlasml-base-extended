FROM atlasml/ml-base:latest

# here we add commands to install any additional packages needed, which for an Ubuntu-based image could look something like this:

#RUN apt update
#RUN apt -y install python3-pip

#RUN python3 -m pip install --upgrade pip

#RUN python3 -m pip install jupyter # install jupyter

# Run jupyter
#CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8080", "--allow-root"]
