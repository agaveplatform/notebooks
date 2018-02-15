# Agave Platform Training Notebooks

This repository contains notebooks for the Agave's AP series of trainings and tutorials. The initial version of the repository contains only Jupyter notebooks, and target the [agaveplatform/jupyter-notebook:latest](https://hub.docker.com/r/agaveplatform/jupyter-notebook/). as the target execution environment, though they will generally run in any Jupyter server with one of the Agave SDK or CLI installed. 

## Prerequisites  

To run the notebooks, you need a Jupyter server with the Agave [CLI](https://github.com/agaveplatform/agave-cli, Python ([agavepy](https://github.com/TACC/agavepy)) or R ([rAgave](https://github.com/agaveplatform/r-sdk)) SDK installed. If you would like to run the notebooks using the [Agave Jupyter Notebook Server](https://github.com/agaveplatform/jupyter-notebook) Docker image, you will need the following:  

* Docker >= 1.11
* Docker compose >= 1.7

## Running

```
git clone https://github.com/agaveplatform/notebooks agave-notebooks
cd agave-notebooks
export AGAVE_USERNAME=<your username>
stty -echo; read "AGAVE_PASSWORD"; stty echo
export AGAVE_TENANT=agave.prod
docker-compose up -d
```

You can connect to the notebook server at http://<docker host>:8888. You will login using your Agave password.

For detailed information about configuring and cutomizing the Agave Jupyter Notebook Server, please see the [project repository](https://github.com/agaveplatform/jupyter-notebook).

## References  

* [Agave Platform](https://agaveapi.co/)  
* [Agave Jupyter Server](https://github.com/agaveplatform/jupyter-notebook)  
* [Jupyter website](http://jupyter.org)
* [Agave RStudio Server](https://github.com/agaveplatform/rstudio)  
* [RStudio webite](https://www.rstudio.com/)  

## License

The Agave Platform and rAgave are licensed under the [BSD 3-Clause license](LICENSE).
