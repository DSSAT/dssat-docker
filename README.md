# DSSAT for Docker

## Building
### Default
  1. Run ``docker build . -t dssat-csm``
 
### From a different version or tag:
  1. See the available [tags](https://github.com/DSSAT/dssat-csm-os/tags) (you can use any git commit, tag, etc for this)
  2. Pass the desired tag as ``DSSAT_GIT_TAG``: ``docker build . -t dssat-csm --build-arg DSSAT_GIT_TAG=v4.8.0.27 `` **(replace the tag with the desired one)**
  
  **Note:** you can combine both ``DSSAT_GIT_TAG`` and [DSSAT_GIT_REPO](#from-a-different-git-repository) arguments

### From a different GIT repository:
  1. Pass the desired repo URL as ``DSSAT_GIT_REPO``: ``docker build . -t dssat-csm --build-arg DSSAT_GIT_REPO=https://github.com/NathanPB/dssat-csm-os.git `` **(replace the URL with the desired one)**
  
  **Note:** you can combine both [DSSAT_GIT_TAG](#from-a-different-git-repository) and ``DSSAT_GIT_REPO`` arguments


### From your local sources
  Due Docker security measures you need to paste your source files into the `./src` directory, and then use the ``local.Dockerfile`` file to build from:
  1. Run ``docker build . -f local.Dockerfile -t dssat``

## Running
  If you followed the above steps your image should be tagged as ``dssat-csm`` (feel free to change this tag label).

  1. Change to the directory with your experimental files (XFile, etc.)
  2. Run the container:  ``docker run --rm -v ${PWD}:/data -w /data dssat-csm A <xfile name>`` or ``docker run --rm -v ${PWD}:/data -w /data dssat-csm B <batch file name>``
