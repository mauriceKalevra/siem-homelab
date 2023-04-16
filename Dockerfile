FROM python

COPY index.html .

CMD python -m http.server 1337 --directory . 



