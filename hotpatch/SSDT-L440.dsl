// for testing including all SSDTs with NO_DEFINITIONBLOCK

DefinitionBlock("", "SSDT", 2, "Sniki", "_L440", 0)
{
    #define NO_DEFINITIONBLOCK
    #include "SSDT-XOSI.dsl"
    #include "SSDT-LPC.dsl"
    #include "SSDT-KBD.dsl"
    #include "SSDT-DEHCI.dsl"
    #include "SSDT-USB.dsl"
    #include "SSDT-XWAK.dsl"
    #include "SSDT-XSEL.dsl"
    #include "SSDT-ESEL.dsl"
    #include "SSDT-GPRW.dsl"
    #include "SSDT-ALC3232.dsl"
}
