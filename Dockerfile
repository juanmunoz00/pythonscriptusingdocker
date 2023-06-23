#Base de la imagen
FROM python:3

#Update de repositorio de librerias de python
RUN apt-get update && apt-get install -y --no-install-recommends \     
	unixodbc-dev \     
	unixodbc \     
	libpq-dev

#Librerias mas comunes en Python
RUN pip install matplotlib
RUN pip install pandas
RUN pip install scipy
RUN pip install numpy
RUN pip install seaborn
RUN pip install pyodbc
RUN pip install sklearn
RUN pip install xlwt 
RUN pip install xlrd
RUN pip install alive_progress
RUN pip install progressbar
RUN pip install openpyxl

#Opcional: archivos a copiarle al contenedor para su ejecucion cuando este viva
ADD test.py /home/test.py
ADD test1.py /home/test1.py

#Comando inicial del contenedor.
#Por default ejecutrara el archivo test.py a menos que se especifique lo contrario
CMD ["/home/test.py"]
ENTRYPOINT ["python"]
