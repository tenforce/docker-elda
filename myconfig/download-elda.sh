#!/bin/bash

wget http://repository.epimorphics.com/com/epimorphics/lda/elda-common/1.3.18/elda-common-1.3.18.war
mv elda-common-1.3.18.war /webapps/elda-common.war
wget http://repository.epimorphics.com/com/epimorphics/lda/elda-assets/1.3.18/elda-assets-1.3.18.war
mv elda-assets-1.3.18.war /webapps/elda-assets.war



