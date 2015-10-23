#TODO(bradleybossard): This is still a work in progress.
# Last time I ran it, it froze the pi.

FROM hypriot/rpi-python

RUN apt-get update

ADD ./pifm.tar.gz /root/

WORKDIR /root/

CMD ["./pifm sound.wav 99.9"]
