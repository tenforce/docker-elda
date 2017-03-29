FROM tenforce/tomcat

LABEL maintainer "Bert Van Nuffelen <bert.van.nuffelen@tenforce.com>"

ADD contexts /contexts

RUN rm /contexts/example.xml
RUN wget -P /webapps/ http://repository.epimorphics.com/com/epimorphics/lda/elda-common/1.3.18/elda-common-1.3.18.war
RUN wget -P /webapps/ http://repository.epimorphics.com/com/epimorphics/lda/elda-assets/1.3.18/elda-assets-1.3.18.war

# overwrite defaults
ADD myconfig /config

# overwrite the default entrypoint 
ENTRYPOINT ["/config/run.sh"]

