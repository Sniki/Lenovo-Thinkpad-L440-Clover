// Lenovo ThinkPad L440 Keyboard Map.

DefinitionBlock("", "SSDT", 2, "L440", "_KBD", 0)
{
    External (_SB.PCI0.LPCB.H_EC, DeviceObj)
    External (_SB.PCI0.LPCB.KBD, DeviceObj)
    External (_SB.PCI0.LPCB.H_EC.XQ1C, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ1D, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ28, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ19, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ2A, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ66, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ67, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ68, MethodObj)
    External (_SB.PCI0.LPCB.H_EC.XQ69, MethodObj)
    
    Scope (_SB.PCI0.LPCB.H_EC)
    {
        Method (_Q1C, 0, NotSerialized) // (F15) Brightness Up
        {
            If (_OSI ("Darwin"))
            {
                Notify (KBD, 0x0406)
            }
            Else
            {
                \_SB.PCI0.LPCB.H_EC.XQ1C ()
            }
        }
        Method (_Q1D, 0, NotSerialized) // (F14) Brightness Down
        {
            If (_OSI ("Darwin"))
            {
                Notify (KBD, 0x0405)
            }
            Else
            {
                \_SB.PCI0.LPCB.H_EC.XQ1D ()
            }
        }
        Method (_Q28, 0, NotSerialized) // (F4) Microphone Mute - Siri
        {
            If (_OSI ("Darwin"))
            {
                Notify (KBD, 0x033E)
            }
            Else
            {
                \_SB.PCI0.LPCB.H_EC.XQ28 ()
            }
        }
        Method (_Q19, 0, NotSerialized) // Projector - Video/Mirror Toggle
        {
            If (_OSI ("Darwin"))
            {
                Notify (KBD, 0x046E)
            }
            Else
            {
                \_SB.PCI0.LPCB.H_EC.XQ19 ()
            }
        }
        Method (_Q2A, 0, NotSerialized) // (F8) Radio On/Off - Notification Center (SysPrefs>Keyboard>Shortcuts)
        {
            If (_OSI ("Darwin"))
            {
                Notify (KBD, 0x0342)
            }
            Else
            {
                \_SB.PCI0.LPCB.H_EC.XQ2A ()
            }
        }
        Method (_Q66, 0, NotSerialized) // (F16) Settings - System Preferences (SysPrefs>Keyboard>Shortcuts)
        {
            If (_OSI ("Darwin"))
            {
                Notify (KBD, 0x0367)
            }
            Else
            {
                \_SB.PCI0.LPCB.H_EC.XQ66 ()
            }
        }
        Method (_Q67, 0, NotSerialized) // (F17) (Cortana) - Spotlight Search (SysPrefs>Keyboard>Shortcuts)
        {
            If (_OSI ("Darwin"))
            {
                Notify (KBD, 0x0368)
            }
            Else
            {
                \_SB.PCI0.LPCB.H_EC.XQ67 ()
            }
        }
        Method (_Q68, 0, NotSerialized) // (F18) App Switcher - Mission Control (SysPrefs>Keyboard>Shortcuts)
        {
            If (_OSI ("Darwin"))
            {
                Notify (KBD, 0x0369)
            }
            Else
            {
                \_SB.PCI0.LPCB.H_EC.XQ68 ()
            }
        }
        Method (_Q69, 0, NotSerialized) // (F19) Start Menu - Launchpad (SysPrefs>Keyboard>Shortcuts)
        {
            If (_OSI ("Darwin"))
            {
                Notify (KBD, 0x036A)
            }
            Else
            {
                \_SB.PCI0.LPCB.H_EC.XQ69 ()
            }
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
                "UnsmoothInput", ">y",
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
}
