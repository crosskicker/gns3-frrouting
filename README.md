## Download GNS3

**(Skip this part if you already have GNS3)**

## Generate or Pull the image

`docker build --no-cache -t frr-image .  `

OR

`docker pull /crosskicker/frr-image:latest`

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
