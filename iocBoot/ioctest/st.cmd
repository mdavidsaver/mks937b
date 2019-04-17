#!../../bin/linux-x86_64/vac

epicsEnvSet("EPICS_DB_INCLUDE_PATH", "$(PWD)/../../db:.")
epicsEnvSet("STREAM_PROTOCOL_PATH", "$(PWD)/../../protocol")

dbLoadDatabase("../../dbd/vac.dbd",0,0)
vac_registerRecordDeviceDriver(pdbbase) 

drvAsynSerialPortConfigure("pump1","/dev/ttyS0",0,0,0)
asynSetOption("pump1", -1, "baud", "9600")

#asynSetTraceMask("pump1",0,0x3f)
#asynSetTraceIOMask("pump1",0,2)

dbLoadRecords("mks937b.template","device=VTST,port=pump1,address=001")
dbLoadRecords("mks937bPirg.template","channel=1,device=VTST:1,port=pump1,address=001")

iocInit()
