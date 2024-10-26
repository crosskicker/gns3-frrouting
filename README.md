# FRRouting with GNS3

## Overview

In this project you will find a Dockerfile to build a clean frrouting image to use in GNS3, you can directly pull the image from my docker repo. This Dockerfile is espacially for a gns3 use case ! If you want to have image with a clean FRRouting configuration for just a Docker use case ( as in project with Docker compose ) go to my other repository.

It's the latest version of FRRouting, to configure different protocoles you just need to enter in router configuration with "vtysh" command, for the next respect the configuration of FRR.

https://docs.frrouting.org/en/stable-10.1/overview.html

This version of FRRouting doesn't have many .conf file but just a single one "frr.conf"

The router configuration can be saved be saved with "write memory" ( thanks to volumes configure in Dockerfile ) so the memory isn't volatile.

## Download GNS3

**(Skip this part if you already have GNS3)**

https://www.gns3.com/software/download

## Generate or Pull the image

`docker build --no-cache -t frr-image .  `

OR

`docker pull crosskicker/frr-image:latest`

## Import in GNS3

Click on "Edit" -> Click on "Preferences" ->

![Texte alternatif](./images/step2.png)

Click on "Docker container" -> "New" :

![Texte alternatif](./images/step3.png)

Select the right image (frr-image that you downloaded) :

![Texte alternatif](./images/step4.png)

Select the numbers of network inerfaces :

![Texte alternatif](./images/step5.png)

Just click on next until click on finish and that's it

(ESPACIALLY don't add a "Start command")

## Start the frr-router

Start your container graphically in GNS3 :

![Texte alternatif](./images/step6.png)

Open a terminal to configure your router (container)

ex :` telnet localhost 5029`

![Texte alternatif](./images/step7.png)

Run the command "vtysh" in the router CLI to start router configuration

`vtysh`
