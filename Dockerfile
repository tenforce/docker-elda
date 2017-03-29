FROM tenforce/tomcat

LABEL maintainer "Bert Van Nuffelen <bert.van.nuffelen@tenforce.com>"

ARG version=1.3.23

ADD contexts /contexts
RUN rm /contexts/example.xml

RUN wget -O /webapps/elda-common.war http://repository.epimorphics.com/com/epimorphics/lda/elda-common/$version/elda-common-$version.war
RUN wget -O /webapps/elda-assets.war http://repository.epimorphics.com/com/epimorphics/lda/elda-assets/$version/elda-assets-$version.war

# overwrite defaults
ADD myconfig /config
