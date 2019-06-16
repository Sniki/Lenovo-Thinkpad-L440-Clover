// for testing including all SSDTs with NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "L440", "_L440", 0)
{
    #define NO_DEFINITIONBLOCK
    #include "SSDT-XOSI.dsl"
    #include "SSDT-DEHCI.dsl"
    #include "SSDT-USB.dsl"
    #include "SSDT-KBD.dsl"
    #include "SSDT-IMEI.dsl"
    #include "SSDT-ALS0.dsl"
    #include "SSDT-PNLF.dsl"
    #include "SSDT-LPC.dsl"
    #include "SSDT-GPRW.dsl"
    #include "SSDT-ALC3232.dsl"
}
//EOF
