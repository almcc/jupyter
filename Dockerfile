FROM python:3

COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

RUN mkdir /notebooks
WORKDIR /notebooks

RUN jt -t onedork -T -f firacode -cellw 100%

VOLUME /notebooks

CMD jupyter notebook --allow-root --no-browser --ip 0.0.0.0 --notebook-dir /notebooks
