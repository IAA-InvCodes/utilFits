# UtilFits

## Description 

This repository contains an script for add headers to a group of fits files or a file. The script use a program included in this repository that add header to a FITS file using the specifications of the library. 


## Requeriments 

### Libraries

The following libraries and tools must be installed in your system: 

- [CFITSIO](https://heasarc.gsfc.nasa.gov/fitsio/) (Minor version tested 3.3.4.0)
  
There are many differents ways to install them depending of OS what we are using. In our case we have been using Ubuntu 18.04 as OS, and these are the command to install each library, if you are in the same situation. For other OS, it's in your hands install the specific libraries.


CFITSIO:

```
sudo apt-get update -y 
sudo apt-get install libcfitsio*
```

## Instalation

In order to deploy the application, it must first be compiled on the target machine. To do this, you must use the command line option 'make' from same directory where the source code is located. So, the first thing is to position ourselves in the utilFits.

* Compile 
```
make 
```
* Clean objects files and executable files. 
```
make clean
```

* Put right permissions on bash file
```
chmod a+wr addFitsHeader.sh
```


## Usage

The script works with these arguments: 

```
 [PATH DIRECTORY FITS FILES] [VALUE CTYPE1] [VALUE CTYPE2] [VALUE CTYPE3] [VALUE CTYPE4]
```

First argument is the path to the directory or a file where the headers will be added. 
The rest of arguments correspond with the values of headers to add in CTYPE1, CTYPE2, CTYPE3 and CTYPE4. 





