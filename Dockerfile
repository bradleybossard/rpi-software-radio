#TODO(bradleybossard): This is still a work in progress.
# Last time I ran it, it froze the pi.

# Build
# docker build --rm -t rpi-pifm .
#
# Run (not sure what --cap-add and --device do yet, they are used on rpi-gpio project
#
# docker run --rm --cap-add SYS_RAWIO --device /dev/mem rpi-pifm

FROM hypriot/rpi-python

RUN apt-get update

ADD ./pifm.tar.gz /root/

WORKDIR /root/

CMD ["./pifm sound.wav 99.9"]
