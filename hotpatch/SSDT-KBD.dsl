// Lenovo ThinkPad L440 Keyboard Map.

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "L440", "_KBD", 0)
{
#endif
    External (_SB.PCI0.LPCB.EC, DeviceObj)
    External (_SB.PCI0.LPCB.KBD, DeviceObj)

    Scope (_SB.PCI0.LPCB.EC)
    {
        Method (_Q1C, 0, NotSerialized) // Brightness Up
        {
            Notify (KBD, 0x0406)
        }
        Method (_Q1D, 0, NotSerialized) // Brightness Down
        {
            Notify (KBD, 0x0405)
        }
        Method (_Q28, 0, NotSerialized) // F4 Microphone Mute - Siri (SysPrefs>Siri>Keyboard Shortcut)
        {
            Notify (KBD, 0x033E)
        }
        Method (_Q19, 0, NotSerialized) // Projector - Video/Mirror Toggle
        {
            Notify (KBD, 0x046E)
        }
        Method (_Q2A, 0, NotSerialized) // F8 Radio On/Off - Notification Center (SysPrefs>Keyboard>Shortcuts)
        {
            Notify (KBD, 0x0342)
        }
        Method (_Q66, 0, NotSerialized) // F16 Settings - System Preferences (SysPrefs>Keyboard>Shortcuts)
        {
            Notify (KBD, 0x0367)
        }
        Method (_Q67, 0, NotSerialized) // F17 (Cortana) - Spotlight Search (SysPrefs>Keyboard>Shortcuts)
        {
            Notify (KBD, 0x0368)
        }
        Method (_Q68, 0, NotSerialized) // F18 App Switcher - Mission Control (SysPrefs>Keyboard>Shortcuts)
        {
            Notify (KBD, 0x0369)
        }
        Method (_Q69, 0, NotSerialized) // F19 Start Menu - Launchpad (SysPrefs>Keyboard>Shortcuts)
        {
            Notify (KBD, 0x036A)
        }
    }
    Scope (_SB.PCI0.LPCB.KBD)
    {
        // Select specific configuration in VoodooPS2Trackpad.kext
        Method(_DSM, 4)
        {
            If (!Arg2) { Return (Buffer() { 0x03 } ) }
            Return (Package()
            {
                "RM,oem-id", "LENOVO",
                "RM,oem-table-id", "Thinkpad_Clickpad",
            })
        }
        // Overrides (the example data here is default in the Info.plist)
        Name(RMCF, Package()
        {
            "Synaptics TouchPad", Package()
            {
                "BogusDeltaThreshX", 800,
                "BogusDeltaThreshY", 800,
                "Clicking", ">y",
                "DragLockTempMask", 0x40004,
                "DynamicEWMode", ">n",
                "FakeMiddleButton", ">n",
                "HWResetOnStart", ">y",
                //"ForcePassThrough", ">y",
                //"SkipPassThrough", ">y",
                "PalmNoAction When Typing", ">y",
                "ScrollResolution", 800,
                "SmoothInput", ">y",
                "UnsmootInput", ">y",
                "Thinkpad", ">y",
                "EdgeBottom", 0,
                "FingerZ", 30,
                "MaxTapTime", 100000000,
                "MouseMultiplierX", 2,
                "MouseMultiplierY", 2,
                "MouseScrollMultiplierX", 2,
                "MouseScrollMultiplierY", 2,
                //"TrackpointScrollYMultiplier", 1, //Change this value to 0xFFFF in order to inverse the vertical scroll direction of the Trackpoint when holding the middle mouse button.
                //"TrackpointScrollXMultiplier", 1, //Change this value to 0xFFFF in order to inverse the horizontal scroll direction of the Trackpoint when holding the middle mouse button.
            },
            "Keyboard", Package()
            {
                "Custom PS2 Map", Package()
                {
                    Package() { },
                    "e037=64", // PrtSc=F13
                },
            },  
        })
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF
