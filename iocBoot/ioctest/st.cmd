#!../../bin/linux-x86_64/vac

#- You may have to change vac to something else
#- everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase("../../dbd/vac.dbd",0,0)
vac_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("../../db/vac.db","user=mdavidsaver")

iocInit()

## Start any sequence programs
#seq sncvac,"user=mdavidsaver"
