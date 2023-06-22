FROM python:3

#RUN apt-get update && apt-get install -y --no-install-recommends \     
#	unixodbc-dev \     
#	unixodbc \     
#	libpq-dev

ADD test.py /home/test.py
ADD test1.py /home/test1.py

CMD ["/home/test.py"]
ENTRYPOINT ["python"]
