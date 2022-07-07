:begin
CREATE INDEX FOR (node:Person) ON (node.born);
CREATE INDEX FOR (node:Movie) ON (node.released);
CREATE CONSTRAINT ON (node:Person) ASSERT (node.name) IS UNIQUE;
CREATE CONSTRAINT ON (node:Movie) ASSERT (node.title) IS UNIQUE;
CREATE CONSTRAINT ON (node:`UNIQUE IMPORT LABEL`) ASSERT (node.`UNIQUE IMPORT ID`) IS UNIQUE;
:commit
CALL db.awaitIndexes(300);
:begin
UNWIND [{_id:257, properties:{bitLength:8, paramType:"CODED-CONST", longname:"Service ID", semantic:"SERVICE-ID", byte:0, defaultValue:"0x10", bit:0, type:"PDU", shortname:"PA_ServiID"}}, {_id:258, properties:{bitLength:8, paramType:"VALUE", longname:"diagnostic session type", semantic:"SUBFUNCTION", defaultValue:"default session", byte:1, isWeakLink:true, bit:0, type:"PDU", shortname:"PA_DiagnSessiType"}}, {_id:265, properties:{bitLength:8, paramType:"CODED-CONST", longname:"Service ID", semantic:"SERVICE-ID", byte:0, defaultValue:"0x50", bit:0, type:"PDU", shortname:"PA_ServiID"}}, {_id:266, properties:{bitLength:8, paramType:"VALUE", longname:"diagnostic session type", semantic:"SUBFUNCTION", defaultValue:"default session", byte:1, isWeakLink:true, bit:0, type:"PDU", shortname:"PA_DiagnSessiType"}}, {_id:267, properties:{paramType:"VALUE", bitLength:16, longname:"P2", byte:2, type:"PDU", bit:0, shortname:"PA_P2"}}, {_id:271, properties:{paramType:"VALUE", bitLength:16, longname:"P2 Star", byte:4, type:"PDU", bit:0, shortname:"PA_P2Star"}}, {_id:273, properties:{paramType:"MATCHING-REQUEST-PARAM", bitLength:8, longname:"diagnostic session type check", semantic:"SUBFUNCTION", byte:1, type:"PDU", bit:0, shortname:"PA_DiagnSessiTypeCheck"}}, {_id:275, properties:{bitLength:8, paramType:"CODED-CONST", longname:"Negative Service ID", defaultValue:"0x7F", byte:0, bit:0, type:"PDU", shortname:"PA_NegatServiID"}}, {_id:276, properties:{bitLength:8, paramType:"PHYS-CONST", longname:"Request Service ID", byte:0, defaultValue:"Diagnostic Session Control", type:"PDU", bit:0, shortname:"PA_RequeServiID"}}, {_id:280, properties:{paramType:"VALUE", bitLength:8, longname:"NRC (interpreted)", byte:2, type:"PDU", bit:0, shortname:"PA_NRCInter"}}, {_id:284, properties:{bitLength:8, paramType:"MATCHING-REQUEST-PARAM", longname:"Request Service ID Check", byte:1, bit:0, type:"PDU", shortname:"PA_RequeServiIDCheck"}}, {_id:285, properties:{bitLength:8, paramType:"NRC-CONST", longname:"NRC Const", byte:2, type:"PDU", bit:0, shortname:"PA_NRCConst"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:ParameterProvider;
UNWIND [{_id:171, properties:{longname:"Vehicle Information for CAN", shortname:"VI_VehicInforForCAN"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:VehicleDefinition;
UNWIND [{_id:177, properties:{longname:"Functional Group Powertrain", shortname:"FG_FunctGroupPower"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:ECUGroup;
UNWIND [{_id:201, properties:{longname:"CP_Baudrate", protocolSet:"ISO_11898_2_DWCAN", cpType:"STANDARD", defaultValue:"0x0007A120", shortname:"CP_Baudrate", cpUsage:"ECU-COMM", paramClass:"BUSTYPE"}}, {_id:202, properties:{longname:"CP_BitSamplePoint", protocolSet:"ISO_11898_2_DWCAN", cpType:"STANDARD", defaultValue:"0x00000050", shortname:"CP_BitSamplePoint", cpUsage:"TESTER", paramClass:"BUSTYPE"}}, {_id:203, properties:{longname:"CP_SessionTimingOverride", protocolSet:"ISO_14229_3", cpType:"OPTIONAL", shortname:"CP_SessionTimingOverride", cpUsage:"TESTER", paramClass:"TIMING"}}, {_id:204, properties:{longname:"CP_SessionTimingOverride_P2Max_High", protocolSet:"ISO_14229_3", cpType:"OPTIONAL", defaultValue:"0x00", shortname:"CP_SessionTimingOverride_P2Max_High", cpUsage:"TESTER", paramClass:"TIMING"}}, {_id:205, properties:{longname:"CP_SessionTimingOverride_P2Max_Low", protocolSet:"ISO_14229_3", cpType:"OPTIONAL", defaultValue:"0x00", shortname:"CP_SessionTimingOverride_P2Max_Low", cpUsage:"TESTER", paramClass:"TIMING"}}, {_id:206, properties:{longname:"CP_SessionTimingOverride_P2Star_High", protocolSet:"ISO_14229_3", cpType:"OPTIONAL", defaultValue:"0x00", shortname:"CP_SessionTimingOverride_P2Star_High", cpUsage:"TESTER", paramClass:"TIMING"}}, {_id:207, properties:{longname:"CP_SessionTimingOverride_P2Star_Low", protocolSet:"ISO_14229_3", cpType:"OPTIONAL", defaultValue:"0x00", shortname:"CP_SessionTimingOverride_P2Star_Low", cpUsage:"TESTER", paramClass:"TIMING"}}, {_id:208, properties:{longname:"CP_SessionTimingOverride_SessionNumber", protocolSet:"ISO_14229_3", cpType:"OPTIONAL", defaultValue:"0x0000", shortname:"CP_SessionTimingOverride_SessionNumber", cpUsage:"TESTER", paramClass:"TIMING"}}, {_id:209, properties:{longname:"CP_CanTransmissionTime", protocolSet:"ISO_14229_3", cpType:"OPTIONAL", defaultValue:"0x000186A0", shortname:"CP_CanTransmissionTime", cpUsage:"TESTER", paramClass:"TIMING"}}, {_id:210, properties:{longname:"CP_ChangeSpeedCtrl", protocolSet:"ISO_14229_3", cpType:"OPTIONAL", defaultValue:"disabled", shortname:"CP_ChangeSpeedCtrl", cpUsage:"TESTER", paramClass:"COM"}}, {_id:211, properties:{longname:"CP_BlockSize", protocolSet:"ISO_15765_2", cpType:"STANDARD", defaultValue:"0x00000000", shortname:"CP_BlockSize", cpUsage:"TESTER", paramClass:"COM"}}, {_id:212, properties:{longname:"CP_UniqueRespIdTable", protocolSet:"ISO_15765_2", cpType:"STANDARD", shortname:"CP_UniqueRespIdTable", cpUsage:"ECU-COMM", paramClass:"UNIQUE_ID"}}, {_id:213, properties:{longname:"CP_CanPhysReqExtAddr", protocolSet:"ISO_15765_2", cpType:"STANDARD", defaultValue:"0x00000000", shortname:"CP_CanPhysReqExtAddr", cpUsage:"ECU-COMM", paramClass:"UNIQUE_ID"}}, {_id:214, properties:{longname:"CP_CanPhysReqFormat", protocolSet:"ISO_15765_2", cpType:"STANDARD", defaultValue:"normal segmented 11-bit transmit with FC", shortname:"CP_CanPhysReqFormat", cpUsage:"ECU-COMM", paramClass:"UNIQUE_ID"}}, {_id:215, properties:{longname:"CP_CanPhysReqId", protocolSet:"ISO_15765_2", cpType:"STANDARD", defaultValue:"0x000007E0", shortname:"CP_CanPhysReqId", cpUsage:"ECU-COMM", paramClass:"UNIQUE_ID"}}, {_id:216, properties:{longname:"CP_CanRespUSDTExtAddr", protocolSet:"ISO_15765_2", cpType:"STANDARD", defaultValue:"0x00000000", shortname:"CP_CanRespUSDTExtAddr", cpUsage:"ECU-COMM", paramClass:"UNIQUE_ID"}}, {_id:217, properties:{longname:"CP_CanRespUSDTFormat", protocolSet:"ISO_15765_2", cpType:"STANDARD", defaultValue:"normal segmented 11-bit receive with FC", shortname:"CP_CanRespUSDTFormat", cpUsage:"ECU-COMM", paramClass:"UNIQUE_ID"}}, {_id:218, properties:{longname:"CP_CanRespUSDTId", protocolSet:"ISO_15765_2", cpType:"STANDARD", defaultValue:"0x000007E8", shortname:"CP_CanRespUSDTId", cpUsage:"ECU-COMM", paramClass:"UNIQUE_ID"}}, {_id:219, properties:{longname:"CP_CanRespUUDTExtAddr", protocolSet:"ISO_15765_2", cpType:"STANDARD", defaultValue:"0x00000000", shortname:"CP_CanRespUUDTExtAddr", cpUsage:"ECU-COMM", paramClass:"UNIQUE_ID"}}, {_id:220, properties:{longname:"CP_CanRespUUDTFormat", protocolSet:"ISO_15765_2", cpType:"STANDARD", defaultValue:"normal unsegmented 11-bit receive", shortname:"CP_CanRespUUDTFormat", cpUsage:"ECU-COMM", paramClass:"UNIQUE_ID"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:ProtocolParameter;
UNWIND [{_id:221, properties:{longname:"CP_CanRespUUDTId", protocolSet:"ISO_15765_2", cpType:"STANDARD", defaultValue:"0xFFFFFFFF", shortname:"CP_CanRespUUDTId", cpUsage:"ECU-COMM", paramClass:"UNIQUE_ID"}}, {_id:222, properties:{longname:"CP_ECULayerShortName", protocolSet:"ISO_15765_2", cpType:"STANDARD", defaultValue:"None", shortname:"CP_ECULayerShortName", cpUsage:"ECU-COMM", paramClass:"UNIQUE_ID"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:ProtocolParameter;
UNWIND [{_id:190, properties:{addressLength:4, longname:"BL_Software_ToFlash", size:4, format:"BINARY", type:"EXTERN-FLASHDATA", shortname:"FD_BLSoftwToFlash"}}, {_id:191, properties:{addressLength:4, longname:"App_Software_ToFlash", size:4, format:"BINARY", type:"EXTERN-FLASHDATA", shortname:"FD_AppSoftwToFlash"}}, {_id:192, properties:{addressLength:4, longname:"Data_Software_ToFlash", size:4, format:"BINARY", type:"EXTERN-FLASHDATA", shortname:"FD_DataSoftwToFlash"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:FlashDataDescription;
UNWIND [{_id:181, properties:{longname:"BL_Flash_Session", shortname:"SES_BLFlashSessi"}}, {_id:182, properties:{longname:"App_Flash_Session", shortname:"SES_AppFlashSessi"}}, {_id:183, properties:{longname:"Data_Flash_Session", shortname:"SES_DataFlashSessi"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:MemorySection;
UNWIND [{_id:270, properties:{longname:"Time", shortname:"Time", timeExp:1}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:PhysicalDimension;
UNWIND [{_id:173, properties:{longname:"Vehicle Connector CAN", physicalLinkType:"ISO_11898_2_DWCAN", shortname:"VC_VehicConneCAN"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:PhysicalChannel;
UNWIND [{_id:256, properties:{longname:"Diagnostic Session Control", shortname:"REQ_DiagnSessiContr"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:RequestProvider;
UNWIND [{_id:224, properties:{longname:"Baud", displayName:"Bd", shortname:"Baud"}}, {_id:226, properties:{longname:"Per Cent", displayName:"%", shortname:"PerCent"}}, {_id:228, properties:{longname:"Micro-Second", displayName:"µs", shortname:"MicroSecond"}}, {_id:269, properties:{longname:"Milli-Second", displayName:"ms", siOffset:0.0, siFactor:0.001, shortname:"MilliSecond"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Unit;
UNWIND [{_id:4, properties:{name:"Diagnostic Session Control Positive Response"}}, {_id:8, properties:{name:"Diagnostic Session Control Negative Response"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Response;
UNWIND [{_id:223, properties:{bitLength:32, longname:"IDENTICAL_UINT32_Baud", isHighLowByteOrder:true, dataType:"A_UINT32", physicalDataType:"A_UINT32", type:"STANDARD-LENGTH-TYPE", encoding:"None", shortname:"IDENTICAL_UINT32_Baud", conversion:"Identical"}}, {_id:225, properties:{bitLength:32, longname:"IDENTICAL_UINT7_0_100_PerCent", isHighLowByteOrder:true, dataType:"A_UINT32", physicalDataType:"A_UINT32", type:"STANDARD-LENGTH-TYPE", encoding:"None", shortname:"IDENTICAL_UINT7_0_100_PerCent", conversion:"Identical"}}, {_id:227, properties:{bitLength:8, longname:"LINEAR_UINT8_UINT32_256000x_MicroSecond", isHighLowByteOrder:true, dataType:"A_UINT32", physicalDataType:"A_UINT32", enumerator:"256000.0x", type:"STANDARD-LENGTH-TYPE", encoding:"None", shortname:"LINEAR_UINT8_UINT32_256000x_MicroSecond", denominator:"1.0", conversion:"Linear"}}, {_id:229, properties:{bitLength:8, longname:"LINEAR_UINT8_UINT32_1000x_MicroSecond", isHighLowByteOrder:true, dataType:"A_UINT32", physicalDataType:"A_UINT32", enumerator:"1000.0x", type:"STANDARD-LENGTH-TYPE", encoding:"None", shortname:"LINEAR_UINT8_UINT32_1000x_MicroSecond", denominator:"1.0", conversion:"Linear"}}, {_id:230, properties:{bitLength:16, longname:"IDENTICAL_UINT7_HEX", displayRadix:"HEX", isHighLowByteOrder:true, dataType:"A_UINT32", physicalDataType:"A_UINT32", type:"STANDARD-LENGTH-TYPE", encoding:"None", shortname:"IDENTICAL_UINT7_HEX", conversion:"Identical"}}, {_id:231, properties:{bitLength:32, longname:"IDENTICAL_UINT32_MicroSecond", isHighLowByteOrder:true, dataType:"A_UINT32", physicalDataType:"A_UINT32", type:"STANDARD-LENGTH-TYPE", encoding:"None", shortname:"IDENTICAL_UINT32_MicroSecond", conversion:"Identical"}}, {_id:232, properties:{bitLength:32, longname:"TEXTTABLE_UINT1_Disabled_Enabled", isHighLowByteOrder:true, dataType:"A_UINT32", physicalDataType:"A_UNICODE2STRING", type:"STANDARD-LENGTH-TYPE", encoding:"None", shortname:"TEXTTABLE_UINT1_Disabled_Enabled", conversion:"Texttable"}}, {_id:235, properties:{bitLength:32, longname:"IDENTICAL_UINT8_HEX", displayRadix:"HEX", isHighLowByteOrder:true, dataType:"A_UINT32", physicalDataType:"A_UINT32", type:"STANDARD-LENGTH-TYPE", encoding:"None", shortname:"IDENTICAL_UINT8_HEX", conversion:"Identical"}}, {_id:236, properties:{bitLength:32, longname:"TEXTTABLE_UINT6_CanReqFormat", isHighLowByteOrder:true, dataType:"A_UINT32", physicalDataType:"A_UNICODE2STRING", type:"STANDARD-LENGTH-TYPE", encoding:"None", shortname:"TEXTTABLE_UINT6_CanReqFormat", conversion:"Texttable"}}, {_id:241, properties:{bitLength:32, longname:"IDENTICAL_UINT29_HEX", displayRadix:"HEX", isHighLowByteOrder:true, dataType:"A_UINT32", physicalDataType:"A_UINT32", type:"STANDARD-LENGTH-TYPE", encoding:"None", shortname:"IDENTICAL_UINT29_HEX", conversion:"Identical"}}, {_id:242, properties:{bitLength:32, longname:"TEXTTABLE_UINT4_4_15_CanRespUSDTFormat", isHighLowByteOrder:true, dataType:"A_UINT32", physicalDataType:"A_UNICODE2STRING", type:"STANDARD-LENGTH-TYPE", encoding:"None", shortname:"TEXTTABLE_UINT4_4_15_CanRespUSDTFormat", conversion:"Texttable"}}, {_id:247, properties:{bitLength:32, longname:"IDENTICAL_UINT32_HEX_CanRespId", displayRadix:"HEX", isHighLowByteOrder:true, dataType:"A_UINT32", physicalDataType:"A_UINT32", type:"STANDARD-LENGTH-TYPE", encoding:"None", shortname:"IDENTICAL_UINT32_HEX_CanRespId", conversion:"Identical"}}, {_id:248, properties:{bitLength:32, longname:"TEXTTABLE_UINT4_0_10_CanRespUUDTFormat", isHighLowByteOrder:true, dataType:"A_UINT32", physicalDataType:"A_UNICODE2STRING", type:"STANDARD-LENGTH-TYPE", encoding:"None", shortname:"TEXTTABLE_UINT4_0_10_CanRespUUDTFormat", conversion:"Identical"}}, {_id:253, properties:{termination:"END-OF-PDU", longname:"IDENTICAL_ASCII_1_128_END_OF_PDU", dataType:"A_ASCIISTRING", minLength:1, physicalDataType:"A_UNICODE2STRING", encoding:"ISO-8859-1", type:"MIN-MAX-LENGTH-TYPE", shortname:"IDENTICAL_ASCII_1_128_END_OF_PDU", maxLength:128, conversion:"Identical"}}, {_id:254, properties:{bitLength:32, longname:"IDENTICAL_UINT8", isHighLowByteOrder:true, dataType:"A_UINT32", physicalDataType:"A_UINT32", type:"STANDARD-LENGTH-TYPE", encoding:"None", shortname:"IDENTICAL_UINT8", conversion:"Identical"}}, {_id:259, properties:{bitLength:32, longname:"TEXT TABLE Diagnostic Session Types", isHighLowByteOrder:true, dataType:"A_UINT32", physicalDataType:"A_UNICODE2STRING", type:"STANDARD-LENGTH-TYPE", encoding:"None", shortname:"DOP_TEXTTABLEDiagnSessiTypes", conversion:"Texttable"}}, {_id:268, properties:{bitLength:16, longname:"2 Byte IDENTICAL UINT ms", isHighLowByteOrder:true, dataType:"A_UINT32", physicalDataType:"A_UINT32", type:"STANDARD-LENGTH-TYPE", encoding:"None", shortname:"2ByteIDENTICALUINTms", conversion:"Identical"}}, {_id:272, properties:{bitLength:16, longname:"2 Byte UINT LINEAR _10x plus 0_ UINT ms", isHighLowByteOrder:true, dataType:"A_UINT32", physicalDataType:"A_UINT32", enumerator:"10.0x", type:"STANDARD-LENGTH-TYPE", encoding:"None", shortname:"2ByteUINTLINEAR_10xplus0_UINTms", denominator:"1.0", conversion:"Linear"}}, {_id:277, properties:{bitLength:8, longname:"TEXT TABLE UDS Services", isHighLowByteOrder:true, dataType:"A_UINT32", physicalDataType:"A_UNICODE2STRING", type:"STANDARD-LENGTH-TYPE", encoding:"None", shortname:"DOP_TEXTTABLEUDSServi", conversion:"Texttable"}}, {_id:281, properties:{bitLength:8, longname:"negativeResponseCode", isHighLowByteOrder:true, dataType:"A_UINT32", physicalDataType:"A_UNICODE2STRING", type:"STANDARD-LENGTH-TYPE", encoding:"None", shortname:"NRC_DOP", conversion:"Texttable"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:DataTransformation;
UNWIND [{_id:287, properties:{bitLength:8, longname:"LINEAR_UINT8_UINT32_10000x_MicroSecond", isHighLowByteOrder:true, dataType:"A_UINT32", physicalDataType:"A_UINT32", enumerator:"10000.0x", type:"STANDARD-LENGTH-TYPE", encoding:"None", shortname:"LINEAR_UINT8_UINT32_10000x_MicroSecond", denominator:"1.0", conversion:"Linear"}}, {_id:288, properties:{bitLength:8, longname:"LINEAR_UINT8_UINT32_2560000x_MicroSecond", isHighLowByteOrder:true, dataType:"A_UINT32", physicalDataType:"A_UINT32", enumerator:"2560000.0x", type:"STANDARD-LENGTH-TYPE", encoding:"None", shortname:"LINEAR_UINT8_UINT32_2560000x_MicroSecond", denominator:"1.0", conversion:"Linear"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:DataTransformation;
UNWIND [{_id:255, properties:{longname:"Diagnostic Session Control", semantic:"session", addressing:"FUNCTIONAL-OR-PHYSICAL", transmissionMode:"SEND-AND-RECEIVE", isExecutable:true, shortname:"DS_DiagnSessiContr"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:ServiceProvider;
UNWIND [{_id:264, properties:{longname:"Diagnostic Session Control", type:"positive", shortname:"PRE_DiagnSessiContr"}}, {_id:274, properties:{longname:"Diagnostic Session Control", type:"negative", shortname:"NR_DiagnSessiContr"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:ResponseProvider;
UNWIND [{_id:179, properties:{longname:"Engine Control Module - V0001", shortname:"EV_EnginContrModulV0001"}}, {_id:180, properties:{longname:"Engine Control Module - V0002", shortname:"EV_EnginContrModulV0002"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:ECU;
UNWIND [{_id:174, properties:{longname:"CANH", pinType:"HI", pinNumber:"6", shortname:"VCP_CANH"}}, {_id:175, properties:{longname:"CANL", pinType:"LOW", pinNumber:"14", shortname:"VCP_CANL"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Pin;
UNWIND [{_id:3, properties:{name:"Diagnostic Session Type"}}, {_id:5, properties:{name:"Diagnostic Session Type"}}, {_id:6, properties:{name:"P2"}}, {_id:7, properties:{name:"P2Max"}}, {_id:9, properties:{name:"Negative Response Code"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Parameter;
UNWIND [{_id:176, properties:{longname:"ISO 14229-3 on ISO 15765-2", shortname:"PR_ISO142293OnISO157652"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:ProtocolSet;
UNWIND [{_id:233, properties:{value:"Disabled", key:"0x00000000"}}, {_id:234, properties:{value:"Enabled", key:"0x00000001"}}, {_id:237, properties:{value:"normal unsegmented 11-bit transmit", key:"0x00000000"}}, {_id:238, properties:{value:"normal unsegmented 29-bit transmit", key:"0x00000002"}}, {_id:239, properties:{value:"normal segmented 11-bit transmit w/o FC", key:"0x00000004"}}, {_id:240, properties:{value:"normal segmented 11-bit transmit with FC", key:"0x00000005"}}, {_id:243, properties:{value:"normal segmented 11-bit receive w/o FC", key:"0x00000004"}}, {_id:244, properties:{value:"normal segmented 11-bit receive with FC", key:"0x00000005"}}, {_id:245, properties:{value:"normal segmented 29-bit receive w/o FC", key:"0x00000006"}}, {_id:246, properties:{value:"normal segmented 29-bit receive with FC", key:"0x00000007"}}, {_id:249, properties:{value:"normal unsegmented 11-bit receive", key:"0x00000000"}}, {_id:250, properties:{value:"normal unsegmented 29-bit receive", key:"0x00000002"}}, {_id:251, properties:{value:"extended unsegmented 11-bit receive", key:"0x00000008"}}, {_id:252, properties:{value:"extended unsegmented 29-bit receive", key:"0x0000000A"}}, {_id:260, properties:{ti:"TI_session_01", value:"default session", key:"0x01"}}, {_id:261, properties:{ti:"TI_session_02", value:"programming session", key:"0x02"}}, {_id:262, properties:{ti:"TI_session_03", value:"extended diagnostic session", key:"0x03"}}, {_id:263, properties:{ti:"TI_session_04", value:"safety system diagnostic session", key:"0x04"}}, {_id:278, properties:{value:"Diagnostic Session Control", key:"0x10"}}, {_id:279, properties:{value:"Read Data By Identifier", key:"0x22"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Value;
UNWIND [{_id:282, properties:{value:"generalReject", key:"0x10"}}, {_id:283, properties:{value:"serviceNotSupported", key:"0x11"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Value;
UNWIND [{_id:193, properties:{displayName:"CAN Acknowledgement Error", displayCode:"U0600-00", troubleCode:"0xC60000"}}, {_id:194, properties:{displayName:"Battery Voltage Low", displayCode:"U0700-00", troubleCode:"0xC70000"}}, {_id:195, properties:{displayName:"Invalid Coding", displayCode:"U0800-00", troubleCode:"0xC80000"}}, {_id:196, properties:{displayName:"Left Front Wheel Speed Sensor - Signal Erratic", displayCode:"C0031-2F", troubleCode:"0x40312F"}}, {_id:197, properties:{displayName:"Left Front Wheel Speed Sensor - Signal Compare Failure", displayCode:"C0031-62", troubleCode:"0x403162"}}, {_id:198, properties:{displayName:"Wheel Speed Signal Left Front Rationality", displayCode:"C0501-00", troubleCode:"0x450100"}}, {_id:199, properties:{displayName:"Left Front Wheel Pressure Phase Monitoring - Rerformance or incorrect Operation", displayCode:"C1046-92", troubleCode:"0x504692"}}, {_id:200, properties:{displayName:"All DTCs", troubleCode:"0xFFFFFF"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:DTCDefinition;
UNWIND [{_id:1, properties:{name:"Diagnostic Session Control"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Service;
UNWIND [{_id:187, properties:{longname:"BL_Blk_1", type:"BOOTLOADER", shortname:"DB_BLBlk1"}}, {_id:188, properties:{longname:"App_Blk1", type:"APPLICATION", shortname:"DB_AppBlk1"}}, {_id:189, properties:{longname:"Data_Blk1", type:"DATASET", shortname:"DB_DataBlk1"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:FlashDataBlock;
UNWIND [{_id:2, properties:{name:"Diagnostic Session Control Request"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Request;
UNWIND [{_id:172, properties:{longname:"UDS on CAN ECU ECM", shortname:"LL_UDSOnCANECUECM"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:CommunicationChannel;
UNWIND [{_id:184, properties:{longname:"ECUMemBLBlk1", compressedSize:"0x5000", size:"0x5000", startAddress:"0xC0002000", shortname:"SEG_ECUMemBLBlk1"}}, {_id:185, properties:{longname:"ECUMemAppBlk1", compressedSize:"0x15A0DD", size:"0x1E0000", startAddress:"0x80020000", encryptionCompressMethodType:"A_BYTEFIELD", shortname:"SEG_ECUMemAppBlk1", encryptionCompressMethod:"0x10"}}, {_id:186, properties:{longname:"ECUMemDataBlk1", compressedSize:"0x6B8A3", size:"0x160000", startAddress:"0x82000000", encryptionCompressMethodType:"A_BYTEFIELD", shortname:"SEG_ECUMemDataBlk1", encryptionCompressMethod:"0x10"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:MemorySegment;
:commit
:begin
UNWIND [{start: {_id:172}, end: {_id:176}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES]->(end) SET r += row.properties;
UNWIND [{start: {_id:176}, end: {_id:211}, properties:{}}, {start: {_id:176}, end: {_id:203}, properties:{}}, {start: {_id:176}, end: {_id:209}, properties:{}}, {start: {_id:176}, end: {_id:210}, properties:{}}, {start: {_id:176}, end: {_id:201}, properties:{}}, {start: {_id:176}, end: {_id:202}, properties:{}}, {start: {_id:176}, end: {_id:212}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONTAINS]->(end) SET r += row.properties;
UNWIND [{start: {_id:2}, end: {_id:3}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONSISTS_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:264}, end: {_id:265}, properties:{}}, {start: {_id:264}, end: {_id:266}, properties:{}}, {start: {_id:264}, end: {_id:267}, properties:{}}, {start: {_id:264}, end: {_id:271}, properties:{}}, {start: {_id:264}, end: {_id:273}, properties:{}}, {start: {_id:274}, end: {_id:275}, properties:{}}, {start: {_id:274}, end: {_id:276}, properties:{}}, {start: {_id:274}, end: {_id:280}, properties:{}}, {start: {_id:274}, end: {_id:284}, properties:{}}, {start: {_id:274}, end: {_id:285}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONSISTS_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:4}, end: {_id:5}, properties:{}}, {start: {_id:4}, end: {_id:6}, properties:{}}, {start: {_id:4}, end: {_id:7}, properties:{}}, {start: {_id:8}, end: {_id:9}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONSISTS_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:173}, end: {_id:174}, properties:{}}, {start: {_id:173}, end: {_id:175}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONSISTS_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:177}, end: {_id:200}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONTAINS]->(end) SET r += row.properties;
UNWIND [{start: {_id:264}, end: {_id:4}, properties:{}}, {start: {_id:274}, end: {_id:8}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IMPLEMENTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:232}, end: {_id:233}, properties:{}}, {start: {_id:232}, end: {_id:234}, properties:{}}, {start: {_id:236}, end: {_id:237}, properties:{}}, {start: {_id:236}, end: {_id:238}, properties:{}}, {start: {_id:236}, end: {_id:239}, properties:{}}, {start: {_id:236}, end: {_id:240}, properties:{}}, {start: {_id:242}, end: {_id:243}, properties:{}}, {start: {_id:242}, end: {_id:244}, properties:{}}, {start: {_id:242}, end: {_id:245}, properties:{}}, {start: {_id:242}, end: {_id:246}, properties:{}}, {start: {_id:248}, end: {_id:249}, properties:{}}, {start: {_id:248}, end: {_id:250}, properties:{}}, {start: {_id:248}, end: {_id:251}, properties:{}}, {start: {_id:248}, end: {_id:252}, properties:{}}, {start: {_id:259}, end: {_id:260}, properties:{}}, {start: {_id:259}, end: {_id:261}, properties:{}}, {start: {_id:259}, end: {_id:262}, properties:{}}, {start: {_id:259}, end: {_id:263}, properties:{}}, {start: {_id:277}, end: {_id:278}, properties:{}}, {start: {_id:277}, end: {_id:279}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONSISTS_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:281}, end: {_id:282}, properties:{}}, {start: {_id:281}, end: {_id:283}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONSISTS_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:203}, end: {_id:204}, properties:{}}, {start: {_id:203}, end: {_id:205}, properties:{}}, {start: {_id:203}, end: {_id:206}, properties:{}}, {start: {_id:203}, end: {_id:207}, properties:{}}, {start: {_id:203}, end: {_id:208}, properties:{}}, {start: {_id:212}, end: {_id:213}, properties:{}}, {start: {_id:212}, end: {_id:214}, properties:{}}, {start: {_id:212}, end: {_id:215}, properties:{}}, {start: {_id:212}, end: {_id:216}, properties:{}}, {start: {_id:212}, end: {_id:217}, properties:{}}, {start: {_id:212}, end: {_id:218}, properties:{}}, {start: {_id:212}, end: {_id:219}, properties:{}}, {start: {_id:212}, end: {_id:220}, properties:{}}, {start: {_id:212}, end: {_id:221}, properties:{}}, {start: {_id:212}, end: {_id:222}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONSISTS_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:181}, end: {_id:184}, properties:{}}, {start: {_id:182}, end: {_id:185}, properties:{}}, {start: {_id:183}, end: {_id:186}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONSISTS_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:258}, end: {_id:259}, properties:{}}, {start: {_id:267}, end: {_id:268}, properties:{}}, {start: {_id:276}, end: {_id:277}, properties:{}}, {start: {_id:280}, end: {_id:281}, properties:{}}, {start: {_id:271}, end: {_id:272}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES]->(end) SET r += row.properties;
UNWIND [{start: {_id:171}, end: {_id:172}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONSISTS_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:179}, end: {_id:181}, properties:{}}, {start: {_id:179}, end: {_id:182}, properties:{}}, {start: {_id:179}, end: {_id:183}, properties:{}}, {start: {_id:180}, end: {_id:181}, properties:{}}, {start: {_id:180}, end: {_id:182}, properties:{}}, {start: {_id:180}, end: {_id:183}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES]->(end) SET r += row.properties;
UNWIND [{start: {_id:192}, end: {_id:189}, properties:{}}, {start: {_id:190}, end: {_id:187}, properties:{}}, {start: {_id:191}, end: {_id:188}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONSISTS_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:201}, end: {_id:223}, properties:{}}, {start: {_id:204}, end: {_id:227}, properties:{}}, {start: {_id:205}, end: {_id:229}, properties:{}}, {start: {_id:208}, end: {_id:230}, properties:{}}, {start: {_id:209}, end: {_id:231}, properties:{}}, {start: {_id:210}, end: {_id:232}, properties:{}}, {start: {_id:213}, end: {_id:235}, properties:{}}, {start: {_id:214}, end: {_id:236}, properties:{}}, {start: {_id:215}, end: {_id:241}, properties:{}}, {start: {_id:216}, end: {_id:235}, properties:{}}, {start: {_id:217}, end: {_id:242}, properties:{}}, {start: {_id:218}, end: {_id:247}, properties:{}}, {start: {_id:219}, end: {_id:235}, properties:{}}, {start: {_id:220}, end: {_id:248}, properties:{}}, {start: {_id:221}, end: {_id:247}, properties:{}}, {start: {_id:222}, end: {_id:253}, properties:{}}, {start: {_id:211}, end: {_id:254}, properties:{}}, {start: {_id:207}, end: {_id:287}, properties:{}}, {start: {_id:206}, end: {_id:288}, properties:{}}, {start: {_id:202}, end: {_id:225}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES]->(end) SET r += row.properties;
UNWIND [{start: {_id:179}, end: {_id:180}, properties:{}}, {start: {_id:180}, end: {_id:179}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:SIBLING]->(end) SET r += row.properties;
UNWIND [{start: {_id:269}, end: {_id:270}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES]->(end) SET r += row.properties;
UNWIND [{start: {_id:256}, end: {_id:257}, properties:{}}, {start: {_id:256}, end: {_id:258}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONSISTS_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:172}, end: {_id:179}, properties:{}}, {start: {_id:172}, end: {_id:180}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES]->(end) SET r += row.properties;
UNWIND [{start: {_id:180}, end: {_id:193}, properties:{}}, {start: {_id:179}, end: {_id:194}, properties:{}}, {start: {_id:180}, end: {_id:194}, properties:{}}, {start: {_id:179}, end: {_id:195}, properties:{}}, {start: {_id:180}, end: {_id:195}, properties:{}}, {start: {_id:179}, end: {_id:196}, properties:{}}, {start: {_id:180}, end: {_id:196}, properties:{}}, {start: {_id:179}, end: {_id:197}, properties:{}}, {start: {_id:180}, end: {_id:197}, properties:{}}, {start: {_id:179}, end: {_id:198}, properties:{}}, {start: {_id:180}, end: {_id:198}, properties:{}}, {start: {_id:179}, end: {_id:199}, properties:{}}, {start: {_id:180}, end: {_id:199}, properties:{}}, {start: {_id:179}, end: {_id:193}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONTAINS]->(end) SET r += row.properties;
UNWIND [{start: {_id:179}, end: {_id:177}, properties:{}}, {start: {_id:180}, end: {_id:177}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:BELONGS_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:223}, end: {_id:224}, properties:{}}, {start: {_id:225}, end: {_id:226}, properties:{}}, {start: {_id:229}, end: {_id:228}, properties:{}}, {start: {_id:231}, end: {_id:228}, properties:{}}, {start: {_id:272}, end: {_id:269}, properties:{}}, {start: {_id:268}, end: {_id:269}, properties:{}}, {start: {_id:287}, end: {_id:228}, properties:{}}, {start: {_id:288}, end: {_id:228}, properties:{}}, {start: {_id:227}, end: {_id:228}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES]->(end) SET r += row.properties;
UNWIND [{start: {_id:179}, end: {_id:1}, properties:{}}, {start: {_id:180}, end: {_id:1}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONTAINS]->(end) SET r += row.properties;
UNWIND [{start: {_id:255}, end: {_id:264}, properties:{}}, {start: {_id:255}, end: {_id:274}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONSISTS_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:1}, end: {_id:2}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONSISTS_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:255}, end: {_id:1}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IMPLEMENTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:172}, end: {_id:213}, properties:{value:"0x0"}}, {start: {_id:172}, end: {_id:214}, properties:{value:"normal segmented 11-bit transmit with FC"}}, {start: {_id:172}, end: {_id:215}, properties:{value:"0x7E0"}}, {start: {_id:172}, end: {_id:216}, properties:{value:"0x0"}}, {start: {_id:172}, end: {_id:217}, properties:{value:"normal segmented 11-bit receive with FC"}}, {start: {_id:172}, end: {_id:218}, properties:{value:"0x7E8"}}, {start: {_id:172}, end: {_id:219}, properties:{value:"0x0"}}, {start: {_id:172}, end: {_id:220}, properties:{value:"normal unsegmented 11-bit receive"}}, {start: {_id:172}, end: {_id:221}, properties:{value:"0xFFFFFFFF"}}, {start: {_id:172}, end: {_id:222}, properties:{value:"None"}}, {start: {_id:172}, end: {_id:212}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:OVERWRITES]->(end) SET r += row.properties;
UNWIND [{start: {_id:258}, end: {_id:3}, properties:{}}, {start: {_id:266}, end: {_id:5}, properties:{}}, {start: {_id:267}, end: {_id:6}, properties:{}}, {start: {_id:271}, end: {_id:7}, properties:{}}, {start: {_id:280}, end: {_id:9}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IMPLEMENTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:176}, end: {_id:255}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONSISTS_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:256}, end: {_id:2}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IMPLEMENTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:255}, end: {_id:256}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONSISTS_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:186}, end: {_id:189}, properties:{}}, {start: {_id:184}, end: {_id:187}, properties:{}}, {start: {_id:185}, end: {_id:188}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONSISTS_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:172}, end: {_id:173}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONSISTS_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:1}, end: {_id:4}, properties:{}}, {start: {_id:1}, end: {_id:8}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONSISTS_OF]->(end) SET r += row.properties;
:commit
:begin
MATCH (n:`UNIQUE IMPORT LABEL`)  WITH n LIMIT 20000 REMOVE n:`UNIQUE IMPORT LABEL` REMOVE n.`UNIQUE IMPORT ID`;
:commit
:begin
DROP CONSTRAINT ON (node:`UNIQUE IMPORT LABEL`) ASSERT (node.`UNIQUE IMPORT ID`) IS UNIQUE;
:commit
