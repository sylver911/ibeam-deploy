FROM voyz/ibeam:latest

ENV IBEAM_INPUTS_DIR=/srv/inputs
EXPOSE 5000

CMD ["ibeam"]
