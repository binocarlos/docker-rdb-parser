FROM quarry/python

RUN pip install rdbtools
ADD ./convert.sh /usr/bin/rdbconvert
RUN chmod a+x /usr/bin/rdbconvert

ENTRYPOINT ["/usr/bin/rdbconvert"]