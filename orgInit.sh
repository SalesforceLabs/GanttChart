#!/bin/bash

sfdx force:org:create -f config/project-scratch-def.json -a ADK --setdefaultusername -d 1

#add pckg IDs to Idnum
#sfdx force:package:install --package 04t(Idnum) -w 20 

#sfdx force:mdapi:deploy --deploydir mdapi-source/app-config

#sfdx force:mdapi:deploy --deploydir mdapi-source/data-config

#sfdx force:mdapi:deploy --deploydir mdapi-source/org-config

sfdx force:source:push 

#sfdx assign permission sets

#sfdx force:apex:execute -f config/create-demo-data-setup.apex


sfdx force:org:open
