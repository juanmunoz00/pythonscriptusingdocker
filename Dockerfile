FROM python:3

ADD test.py /home/test.py
ADD test1.py /home/test1.py

CMD ["/home/test.py"]
ENTRYPOINT ["python"]
