FROM python:latest
COPY . /
RUN pip install -r requirements.txt
RUN pip install flask_restful
RUN pip install virtualenv virtualenvwrapper 
# RUN python3 -m venv venv
RUN export FLASK_APP=main.py
EXPOSE 5000
ENTRYPOINT [ "python" ]
CMD ["main.py"]