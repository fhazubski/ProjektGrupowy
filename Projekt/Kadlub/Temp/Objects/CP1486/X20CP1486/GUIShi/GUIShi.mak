######################################################
#                                                    #
# Automatic generated Makefile for Visual Components #
#                                                    #
#                  Do NOT edit!                      #
#                                                    #
######################################################

VCC:=@'$(AS_BIN_PATH)/br.vc.pc.exe'
LINK:=@'$(AS_BIN_PATH)/BR.VC.Link.exe'
MODGEN:=@'$(AS_BIN_PATH)/BR.VC.ModGen.exe'
VCPL:=@'$(AS_BIN_PATH)/BR.VC.PL.exe'
VCHWPP:=@'$(AS_BIN_PATH)/BR.VC.HWPP.exe'
VCDEP:=@'$(AS_BIN_PATH)/BR.VC.Depend.exe'
VCFLGEN:=@'$(AS_BIN_PATH)/BR.VC.lfgen.exe'
VCREFHANDLER:=@'$(AS_BIN_PATH)/BR.VC.CrossReferenceHandler.exe'
VCXREFEXTENDER:=@'$(AS_BIN_PATH)/BR.AS.CrossRefVCExtender.exe'
RM=CMD /C DEL
PALFILE_GUIShi=$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Palette.vcr
VCCFLAGS_GUIShi=-server -proj GUIShi -vc '$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/VCObject.vc' -prj_path '$(AS_PROJECT_PATH)' -temp_path '$(AS_TEMP_PATH)' -cfg $(AS_CONFIGURATION) -plc $(AS_PLC) -plctemp $(AS_TEMP_PLC) -cpu_path '$(AS_CPU_PATH)'
VCFIRMWARE=4.34.1
VCFIRMWAREPATH=$(AS_VC_PATH)/Firmware/V4.34.1/SG4
VCOBJECT_GUIShi=$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/VCObject.vc
VCSTARTUP='vcstart.br'
VCLOD='vclod.br'
VCSTPOST='vcstpost.br'
TARGET_FILE_GUIShi=$(AS_CPU_PATH)/GUIShi.br
OBJ_SCOPE_GUIShi=Software/HMI
PRJ_PATH_GUIShi=$(AS_PROJECT_PATH)
SRC_PATH_GUIShi=$(AS_PROJECT_PATH)/Logical/$(OBJ_SCOPE_GUIShi)/GUIShip
TEMP_PATH_GUIShi=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/GUIShi
TEMP_PATH_Shared=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared
TEMP_PATH_ROOT_GUIShi=$(AS_TEMP_PATH)
VC_LIBRARY_LIST_GUIShi=$(TEMP_PATH_GUIShi)/libraries.vci
VC_XREF_BUILDFILE_GUIShi=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.build
VC_XREF_CLEANFILE=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.clean
VC_LANGUAGES_GUIShi=$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr
CPUHWC='$(TEMP_PATH_GUIShi)/cpuhwc.vci'
VC_STATIC_OPTIONS_GUIShi='$(TEMP_PATH_GUIShi)/vcStaticOptions.xml'
VC_STATIC_OPTIONS_Shared='$(TEMP_PATH_Shared)/vcStaticOptions.xml'
# include Shared and Font Makefile (only once)
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCFntDat/Font_GUIShi.mak
ifneq ($(VCINC),1)
	VCINC=1
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/VCShared.mak
endif

DEPENDENCIES_GUIShi=-d vcgclass -profile 'False'
DEFAULT_STYLE_SHEET_GUIShi='Source[local].StyleSheet[Color]'
SHARED_MODULE=$(TEMP_PATH_ROOT_GUIShi)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcshared.br
LFNTFLAGS_GUIShi=-P '$(AS_PROJECT_PATH)' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)'
BDRFLAGS_GUIShi=-P '$(AS_PROJECT_PATH)' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)'

# Local Libs
LIB_LOCAL_OBJ_GUIShi=$(TEMP_PATH_GUIShi)/localobj.vca

# Hardware sources
PANEL_HW_OBJECT_GUIShi=$(TEMP_PATH_ROOT_GUIShi)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/GUIShi/dis.Hardware.vco
PANEL_HW_VCI_GUIShi=$(TEMP_PATH_ROOT_GUIShi)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/GUIShi/dis.Hardware.vci
PANEL_HW_SOURCE_GUIShi=C:/projects/Stabilizacja_ukladu_statek/ProjektGrupowy_git/Projekt/Kadlub/Physical/CP1486/Hardware.hw 
DIS_OBJECTS_GUIShi=$(PANEL_HW_OBJECT_GUIShi) $(KEYMAP_OBJECTS_GUIShi)

# KeyMapping flags
$(TEMP_PATH_GUIShi)/dis.PS2-Keyboard.vco: $(AS_PROJECT_PATH)/Physical/CP1486/X20CP1486/VC/PS2-Keyboard.dis $(PANEL_HW_SOURCE_GUIShi)
	$(VCHWPP) -f '$(PANEL_HW_SOURCE_GUIShi)' -o '$(subst .vco,.vci,$(TEMP_PATH_GUIShi)/dis.PS2-Keyboard.vco)' -n GUIShip -d GUIShi -pal '$(PALFILE_GUIShi)' -c '$(AS_CONFIGURATION)' -p '$(AS_PLC)' -ptemp '$(AS_TEMP_PLC)' -B 'E3.10' -L '' -hw '$(CPUHWC)' -warninglevel 2 -so $(VC_STATIC_OPTIONS_GUIShi) -sos $(VC_STATIC_OPTIONS_Shared) -keyboard '$(AS_PROJECT_PATH)/Physical/CP1486/X20CP1486/VC/PS2-Keyboard.dis' -fp '$(AS_VC_PATH)/Firmware/V4.34.1/SG4' -prj '$(AS_PROJECT_PATH)' -apj 'Kadlub' -sfas -vcob '$(VCOBJECT_GUIShi)'
	$(VCC) -f '$(subst .vco,.vci,$@)' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -k '$(VCVK_SOURCES_GUIShi)' $(VCCFLAGS_GUIShi) -p GUIShi -sfas

KEYMAP_SOURCES_GUIShi=$(AS_PROJECT_PATH)/Physical/CP1486/X20CP1486/VC/PS2-Keyboard.dis 
KEYMAP_OBJECTS_GUIShi=$(TEMP_PATH_GUIShi)/dis.PS2-Keyboard.vco 

# All Source Objects
FNINFO_SOURCES_GUIShi=$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Fonts/DefaultFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Fonts/Arial9px.fninfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Fonts/Arial9pxBold.fninfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Fonts/Arial10pxBold.fninfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Fonts/Arial12px.fninfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Fonts/Arial9pxValue.fninfo 

BMINFO_SOURCES_GUIShi=$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlphaPadQVGA1.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlphaPadQVGA2.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlphaPadQVGA3.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlphaPadVGA_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlphaPadQVGA2_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlphaPadQVGA3_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlphaPadQVGA1_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlphaPadVGA.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/NumPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/NumPad.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AcknowledgeReset.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlarmActive.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlarmBypassOFF.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlarmBypassON.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlarmInactive.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlarmLatched.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlarmNotQuit.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlarmQuit.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/Reset.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/ResetAcknowledge.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/Triggered.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/ListPadHor.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/ListPadHor_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/ListPadVer.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/ListPadVer_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/backward_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/backward_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/global_area_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/global_area_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/forward_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/forward_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/control_button_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/control_button_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/right_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/right_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/left_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/left_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/up_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/up_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/down_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/down_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/multi_up_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/multi_up_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/multi_down_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/multi_down_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/ProgressBorder.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/down_active_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/down_pressed_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/up_active_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/global_area_gradient_upside.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/global_area_gradient_downside.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/frame_header.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/up_pressed_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/EditPadVGA.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/EditPadVGA_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneNumPad_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneListPadVer_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneAlphaPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneAlphaPad_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneAlphaPadQVGA1_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneAlphaPadQVGA1_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneAlphaPadQVGA2_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneAlphaPadQVGA3_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneEditpadQVGA2_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneEditPadQVGA3_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneEditPadVga_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneEditPadVga_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneListPadHor_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneListPadHor_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneListPadVer_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneNumPad_pressed.bminfo 

BMGRP_SOURCES_GUIShi=$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/BitmapGroups/AlphaPadQVGA.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/BitmapGroups/NumPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/BitmapGroups/AlphaPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/BitmapGroups/AlarmEvent.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/BitmapGroups/AlarmState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/BitmapGroups/BypassState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/BitmapGroups/AcknowledgeState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/BitmapGroups/NavigationPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/BitmapGroups/Borders.bmgrp 

PAGE_SOURCES_GUIShi=$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Pages/Init_Page.page 

VCS_SOURCES_GUIShi=$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/StyleSheets/Gray.vcs \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/StyleSheets/Color.vcs 

BDR_SOURCES_GUIShi=$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/Raised.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/Sunken.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/Etched.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/Bump.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/SunkenOuter.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/RaisedInner.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/Flat_black.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/Flat_grey.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/BackwardActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/BackwardPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/ControlActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/ControlPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/DownActiveControl.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/DownPressedControl.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/ForwardActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/ForwardPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/GlobalAreaActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/GlobalAreaPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/MultiScrollDownActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/MultiScrollDownPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/MultiScrollUpActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/MultiScrollUpPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/ProgressBarBorder.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/ScrollDownActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/ScrollDownPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/ScrollUpActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/ScrollUpPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/ScrollLeftActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/ScrollLeftPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/ScrollRightActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/ScrollRightPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/UpActiveControl.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/UpPressedControl.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/FrameHeader.bdr 

TPR_SOURCES_GUIShi=$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/TouchPads/NumPad.tpr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/TouchPads/AlphaPadQVGA.tpr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/TouchPads/AlphaPad.tpr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/TouchPads/NavigationPad_ver.tpr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/TouchPads/NavigationPad_hor.tpr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/TouchPads/EditPad.tpr 

TDC_SOURCES_GUIShi=$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Trends/TrendData.tdc 

VCVK_SOURCES_GUIShi=$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/VirtualKeys.vcvk 

VCR_SOURCES_GUIShi=$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Palette.vcr 

# Runtime Object sources
VCR_OBJECT_GUIShi=$(TEMP_PATH_GUIShi)/vcrt.vco
VCR_SOURCE_GUIShi=$(SRC_PATH_GUIShi)/package.vcp
# All Source Objects END

#Panel Hardware
$(PANEL_HW_VCI_GUIShi): $(PANEL_HW_SOURCE_GUIShi) $(VC_LIBRARY_LIST_GUIShi) $(KEYMAP_SOURCES_GUIShi)
	$(VCHWPP) -f '$<' -o '$@' -n GUIShip -d GUIShi -pal '$(PALFILE_GUIShi)' -c '$(AS_CONFIGURATION)' -p '$(AS_PLC)' -ptemp '$(AS_TEMP_PLC)' -B 'E3.10' -L '' -verbose 'False' -profile 'False' -hw '$(CPUHWC)' -warninglevel 2 -so $(VC_STATIC_OPTIONS_GUIShi) -sos $(VC_STATIC_OPTIONS_Shared) -fp '$(AS_VC_PATH)/Firmware/V4.34.1/SG4' -sfas -prj '$(AS_PROJECT_PATH)' -apj 'Kadlub' -vcob '$(VCOBJECT_GUIShi)'

$(PANEL_HW_OBJECT_GUIShi): $(PANEL_HW_VCI_GUIShi) $(PALFILE_GUIShi) $(VC_LIBRARY_LIST_GUIShi)
	$(VCC) -f '$(subst .vco,.vci,$@)' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -k '$(VCVK_SOURCES_GUIShi)' $(VCCFLAGS_GUIShi) -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


# Pages
PAGE_OBJECTS_GUIShi = $(addprefix $(TEMP_PATH_GUIShi)/page., $(notdir $(PAGE_SOURCES_GUIShi:.page=.vco)))

$(TEMP_PATH_GUIShi)/page.Init_Page.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Pages/Init_Page.page $(VC_LANGUAGES_GUIShi)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_GUIShi)/StyleSheets/Color.vcs' -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


#Pages END




# Stylesheets
VCS_OBJECTS_GUIShi = $(addprefix $(TEMP_PATH_GUIShi)/vcs., $(notdir $(VCS_SOURCES_GUIShi:.vcs=.vco)))

$(TEMP_PATH_GUIShi)/vcs.Gray.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/StyleSheets/Gray.vcs
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi) -P '$(AS_PROJECT_PATH)' -ds $(DEFAULT_STYLE_SHEET_GUIShi) -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/vcs.Color.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/StyleSheets/Color.vcs
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi) -P '$(AS_PROJECT_PATH)' -ds $(DEFAULT_STYLE_SHEET_GUIShi) -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


#Stylesheets END




# Virtual Keys
VCVK_OBJECTS_GUIShi = $(addprefix $(TEMP_PATH_GUIShi)/vcvk., $(notdir $(VCVK_SOURCES_GUIShi:.vcvk=.vco)))

$(TEMP_PATH_GUIShi)/vcvk.VirtualKeys.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/VirtualKeys.vcvk
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas

$(VCVK_OBJECTS_GUIShi): $(VC_LANGUAGES_GUIShi)

#Virtual Keys END




# Touch Pads
TPR_OBJECTS_GUIShi = $(addprefix $(TEMP_PATH_GUIShi)/tpr., $(notdir $(TPR_SOURCES_GUIShi:.tpr=.vco)))

$(TEMP_PATH_GUIShi)/tpr.NumPad.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/TouchPads/NumPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi) -prj 'C:/projects/Stabilizacja_ukladu_statek/ProjektGrupowy_git/Projekt/Kadlub/Logical/Software/HMI/GUIShip' -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/tpr.AlphaPadQVGA.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/TouchPads/AlphaPadQVGA.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi) -prj 'C:/projects/Stabilizacja_ukladu_statek/ProjektGrupowy_git/Projekt/Kadlub/Logical/Software/HMI/GUIShip' -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/tpr.AlphaPad.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/TouchPads/AlphaPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi) -prj 'C:/projects/Stabilizacja_ukladu_statek/ProjektGrupowy_git/Projekt/Kadlub/Logical/Software/HMI/GUIShip' -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/tpr.NavigationPad_ver.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/TouchPads/NavigationPad_ver.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi) -prj 'C:/projects/Stabilizacja_ukladu_statek/ProjektGrupowy_git/Projekt/Kadlub/Logical/Software/HMI/GUIShip' -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/tpr.NavigationPad_hor.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/TouchPads/NavigationPad_hor.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi) -prj 'C:/projects/Stabilizacja_ukladu_statek/ProjektGrupowy_git/Projekt/Kadlub/Logical/Software/HMI/GUIShip' -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/tpr.EditPad.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/TouchPads/EditPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi) -prj 'C:/projects/Stabilizacja_ukladu_statek/ProjektGrupowy_git/Projekt/Kadlub/Logical/Software/HMI/GUIShip' -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


#Touch Pads END




# BitmapGroups
BMGRP_OBJECTS_GUIShi = $(addprefix $(TEMP_PATH_GUIShi)/bmgrp., $(notdir $(BMGRP_SOURCES_GUIShi:.bmgrp=.vco)))

$(TEMP_PATH_GUIShi)/bmgrp.AlphaPadQVGA.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/BitmapGroups/AlphaPadQVGA.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bmgrp.NumPad.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/BitmapGroups/NumPad.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bmgrp.AlphaPad.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/BitmapGroups/AlphaPad.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bmgrp.AlarmEvent.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/BitmapGroups/AlarmEvent.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bmgrp.AlarmState.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/BitmapGroups/AlarmState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bmgrp.BypassState.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/BitmapGroups/BypassState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bmgrp.AcknowledgeState.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/BitmapGroups/AcknowledgeState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bmgrp.NavigationPad.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/BitmapGroups/NavigationPad.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bmgrp.Borders.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/BitmapGroups/Borders.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


#BitmapGroups END




# Bitmaps
BMINFO_OBJECTS_GUIShi = $(addprefix $(TEMP_PATH_GUIShi)/bminfo., $(notdir $(BMINFO_SOURCES_GUIShi:.bminfo=.vco)))

$(TEMP_PATH_GUIShi)/bminfo.AlphaPadQVGA1.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlphaPadQVGA1.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlphaPadQVGA1.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.AlphaPadQVGA2.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlphaPadQVGA2.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlphaPadQVGA2.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.AlphaPadQVGA3.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlphaPadQVGA3.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlphaPadQVGA3.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.AlphaPadVGA_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlphaPadVGA_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlphaPadVGA_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.AlphaPadQVGA2_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlphaPadQVGA2_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlphaPadQVGA2_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.AlphaPadQVGA3_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlphaPadQVGA3_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlphaPadQVGA3_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.AlphaPadQVGA1_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlphaPadQVGA1_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlphaPadQVGA1_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.AlphaPadVGA.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlphaPadVGA.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlphaPadVGA.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.NumPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/NumPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/NumPad_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.NumPad.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/NumPad.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/NumPad.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.AcknowledgeReset.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AcknowledgeReset.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AcknowledgeReset.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.AlarmActive.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlarmActive.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlarmActive.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.AlarmBypassOFF.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlarmBypassOFF.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlarmBypassOFF.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.AlarmBypassON.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlarmBypassON.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlarmBypassON.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.AlarmInactive.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlarmInactive.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlarmInactive.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.AlarmLatched.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlarmLatched.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlarmLatched.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.AlarmNotQuit.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlarmNotQuit.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlarmNotQuit.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.AlarmQuit.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlarmQuit.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/AlarmQuit.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.Reset.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/Reset.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/Reset.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.ResetAcknowledge.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/ResetAcknowledge.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/ResetAcknowledge.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.Triggered.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/Triggered.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/Triggered.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.ListPadHor.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/ListPadHor.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/ListPadHor.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.ListPadHor_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/ListPadHor_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/ListPadHor_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.ListPadVer.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/ListPadVer.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/ListPadVer.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.ListPadVer_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/ListPadVer_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/ListPadVer_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.backward_active.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/backward_active.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/backward_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.backward_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/backward_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/backward_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.global_area_active.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/global_area_active.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/global_area_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.global_area_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/global_area_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/global_area_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.forward_active.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/forward_active.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/forward_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.forward_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/forward_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/forward_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.control_button_active.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/control_button_active.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/control_button_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.control_button_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/control_button_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/control_button_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.right_active.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/right_active.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/right_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.right_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/right_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/right_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.left_active.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/left_active.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/left_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.left_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/left_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/left_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.up_active.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/up_active.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/up_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.up_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/up_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/up_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.down_active.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/down_active.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/down_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.down_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/down_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/down_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.multi_up_active.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/multi_up_active.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/multi_up_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.multi_up_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/multi_up_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/multi_up_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.multi_down_active.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/multi_down_active.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/multi_down_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.multi_down_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/multi_down_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/multi_down_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.ProgressBorder.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/ProgressBorder.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/ProgressBorder.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.down_active_control.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/down_active_control.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/down_active_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.down_pressed_control.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/down_pressed_control.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/down_pressed_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.up_active_control.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/up_active_control.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/up_active_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.global_area_gradient_upside.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/global_area_gradient_upside.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/global_area_gradient_upside.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.global_area_gradient_downside.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/global_area_gradient_downside.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/global_area_gradient_downside.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.frame_header.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/frame_header.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/frame_header.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.up_pressed_control.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/up_pressed_control.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/up_pressed_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.EditPadVGA.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/EditPadVGA.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/EditPadVGA.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.EditPadVGA_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/EditPadVGA_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/EditPadVGA_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.zuneNumPad_released.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneNumPad_released.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneNumPad_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.zuneListPadVer_released.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneListPadVer_released.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneListPadVer_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.zuneAlphaPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneAlphaPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneAlphaPad_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.zuneAlphaPad_released.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneAlphaPad_released.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneAlphaPad_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.zuneAlphaPadQVGA1_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneAlphaPadQVGA1_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneAlphaPadQVGA1_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.zuneAlphaPadQVGA1_released.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneAlphaPadQVGA1_released.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneAlphaPadQVGA1_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.zuneAlphaPadQVGA2_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneAlphaPadQVGA2_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneAlphaPadQVGA2_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.zuneAlphaPadQVGA3_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneAlphaPadQVGA3_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneAlphaPadQVGA3_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.zuneEditpadQVGA2_released.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneEditpadQVGA2_released.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneEditpadQVGA2_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.zuneEditPadQVGA3_released.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneEditPadQVGA3_released.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneEditPadQVGA3_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.zuneEditPadVga_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneEditPadVga_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneEditPadVga_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.zuneEditPadVga_released.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneEditPadVga_released.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneEditPadVga_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.zuneListPadHor_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneListPadHor_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneListPadHor_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.zuneListPadHor_released.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneListPadHor_released.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneListPadHor_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.zuneListPadVer_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneListPadVer_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneListPadVer_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


$(TEMP_PATH_GUIShi)/bminfo.zuneNumPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneNumPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Bitmaps/zuneNumPad_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


#Bitmaps END




# Trend Data Configuration
TDC_OBJECTS_GUIShi = $(addprefix $(TEMP_PATH_GUIShi)/tdc., $(notdir $(TDC_SOURCES_GUIShi:.tdc=.vco)))

$(TEMP_PATH_GUIShi)/tdc.TrendData.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Trends/TrendData.tdc
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUIShi)' $(VCCFLAGS_GUIShi)  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas


#Trend Data Configuration END


#
# Borders
#
BDR_SOURCES_GUIShi=$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/Raised.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/Sunken.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/Etched.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/Bump.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/SunkenOuter.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/RaisedInner.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/Flat_black.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/Flat_grey.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/BackwardActive.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/BackwardPressed.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/ControlActive.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/ControlPressed.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/DownActiveControl.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/DownPressedControl.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/ForwardActive.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/ForwardPressed.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/GlobalAreaActive.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/GlobalAreaPressed.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/MultiScrollDownActive.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/MultiScrollDownPressed.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/MultiScrollUpActive.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/MultiScrollUpPressed.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/ProgressBarBorder.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/ScrollDownActive.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/ScrollDownPressed.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/ScrollUpActive.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/ScrollUpPressed.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/ScrollLeftActive.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/ScrollLeftPressed.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/ScrollRightActive.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/ScrollRightPressed.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/UpActiveControl.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/UpPressedControl.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Borders/FrameHeader.bdr 
BDR_OBJECTS_GUIShi=$(TEMP_PATH_GUIShi)/bdr.Bordermanager.vco
$(TEMP_PATH_GUIShi)/bdr.Bordermanager.vco: $(BDR_SOURCES_GUIShi)
	$(VCC) -f '$<' -o '$@' -pkg '$(SRC_PATH_GUIShi)' $(BDRFLAGS_GUIShi) $(VCCFLAGS_GUIShi) -p GUIShi$(SRC_PATH_GUIShi)
#
# Logical fonts
#
$(TEMP_PATH_GUIShi)/lfnt.en.vco: $(TEMP_PATH_GUIShi)/en.lfnt $(VC_LANGUAGES_GUIShi)
	 $(VCC) -f '$<' -o '$@' $(LFNTFLAGS_GUIShi) $(VCCFLAGS_GUIShi) -p GUIShi -sfas
$(TEMP_PATH_GUIShi)/lfnt.de.vco: $(TEMP_PATH_GUIShi)/de.lfnt $(VC_LANGUAGES_GUIShi)
	 $(VCC) -f '$<' -o '$@' $(LFNTFLAGS_GUIShi) $(VCCFLAGS_GUIShi) -p GUIShi -sfas
LFNT_OBJECTS_GUIShi=$(TEMP_PATH_GUIShi)/lfnt.en.vco $(TEMP_PATH_GUIShi)/lfnt.de.vco 

#Runtime Object
$(VCR_OBJECT_GUIShi) : $(VCR_SOURCE_GUIShi)
	$(VCC) -f '$<' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -sl en $(VCCFLAGS_GUIShi) -rt  -p GUIShi -so $(VC_STATIC_OPTIONS_GUIShi) -vcr 4341 -sfas
# Local resources Library rules
LIB_LOCAL_RES_GUIShi=$(TEMP_PATH_GUIShi)/localres.vca
$(LIB_LOCAL_RES_GUIShi) : $(TEMP_PATH_GUIShi)/GUIShi02.ccf

# Bitmap Library rules
LIB_BMP_RES_GUIShi=$(TEMP_PATH_GUIShi)/bmpres.vca
$(LIB_BMP_RES_GUIShi) : $(TEMP_PATH_GUIShi)/GUIShi03.ccf
$(BMGRP_OBJECTS_GUIShi) : $(PALFILE_GUIShi) $(VC_LANGUAGES_GUIShi)
$(BMINFO_OBJECTS_GUIShi) : $(PALFILE_GUIShi)

BUILD_FILE_GUIShi=$(TEMP_PATH_GUIShi)/BuildFiles.arg
$(BUILD_FILE_GUIShi) : BUILD_FILE_CLEAN_GUIShi $(BUILD_SOURCES_GUIShi)
BUILD_FILE_CLEAN_GUIShi:
	$(RM) /F /Q '$(BUILD_FILE_GUIShi)' 2>nul
#All Modules depending to this project
PROJECT_MODULES_GUIShi=$(AS_CPU_PATH)/GUIShi01.br $(AS_CPU_PATH)/GUIShi02.br $(AS_CPU_PATH)/GUIShi03.br $(FONT_MODULES_GUIShi) $(SHARED_MODULE)

# General Build rules

$(TARGET_FILE_GUIShi): $(PROJECT_MODULES_GUIShi) $(TEMP_PATH_GUIShi)/GUIShi.prj
	$(MODGEN) -so $(VC_STATIC_OPTIONS_GUIShi) -fw '$(VCFIRMWAREPATH)' -m $(VCSTPOST) -v V1.00.0 -f '$(TEMP_PATH_GUIShi)/GUIShi.prj' -o '$@' -vc '$(VCOBJECT_GUIShi)' $(DEPENDENCIES_GUIShi) $(addprefix -d ,$(notdir $(PROJECT_MODULES_GUIShi:.br=)))

$(AS_CPU_PATH)/GUIShi01.br: $(TEMP_PATH_GUIShi)/GUIShi01.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_GUIShi) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_GUIShi)' -f '$<' -o '$@' $(DEPENDENCIES_GUIShi)

$(AS_CPU_PATH)/GUIShi02.br: $(TEMP_PATH_GUIShi)/GUIShi02.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_GUIShi) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_GUIShi)' -f '$<' -o '$@' $(DEPENDENCIES_GUIShi)

$(AS_CPU_PATH)/GUIShi03.br: $(TEMP_PATH_GUIShi)/GUIShi03.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_GUIShi) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_GUIShi)' -f '$<' -o '$@' $(DEPENDENCIES_GUIShi)

# General Build rules END
$(LIB_LOCAL_OBJ_GUIShi) : $(TEMP_PATH_GUIShi)/GUIShi01.ccf

# Main Module
$(TEMP_PATH_ROOT_GUIShi)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/GUIShi.vcm:
$(TEMP_PATH_GUIShi)/GUIShi.prj: $(TEMP_PATH_ROOT_GUIShi)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/GUIShi.vcm
	$(VCDEP) -m '$(TEMP_PATH_ROOT_GUIShi)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/GUIShi.vcm' -s '$(AS_CPU_PATH)/VCShared/Shared.vcm' -p '$(AS_PATH)/AS/VC/Firmware' -c '$(AS_CPU_PATH)' -fw '$(VCFIRMWAREPATH)' -hw '$(CPUHWC)' -so $(VC_STATIC_OPTIONS_GUIShi) -o GUIShi -proj GUIShi
	$(VCPL) $(notdir $(PROJECT_MODULES_GUIShi:.br=,4)) GUIShi,2 -o '$@' -p GUIShi -vc 'GUIShi' -verbose 'False' -fl '$(TEMP_PATH_ROOT_GUIShi)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/GUIShi.vcm' -vcr '$(VCR_SOURCE_GUIShi)' -prj '$(AS_PROJECT_PATH)' -warningLevel2 -sfas

# 01 Module

DEL_TARGET01_LFL_GUIShi=$(TEMP_PATH_GUIShi)\GUIShi01.ccf.lfl
$(TEMP_PATH_GUIShi)/GUIShi01.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_GUIShi) $(TEMP_PATH_GUIShi)/GUIShi03.ccf $(LIB_LOCAL_RES_GUIShi) $(TEMP_PATH_GUIShi)/GUIShi02.ccf $(DIS_OBJECTS_GUIShi) $(PAGE_OBJECTS_GUIShi) $(VCS_OBJECTS_GUIShi) $(VCVK_OBJECTS_GUIShi) $(VCRT_OBJECTS_GUIShi) $(TPR_OBJECTS_GUIShi) $(TXTGRP_OBJECTS_GUIShi) $(LAYER_OBJECTS_GUIShi) $(VCR_OBJECT_GUIShi) $(TDC_OBJECTS_GUIShi) $(TRD_OBJECTS_GUIShi) $(TRE_OBJECTS_GUIShi) $(PRC_OBJECTS_GUIShi) $(SCR_OBJECTS_GUIShi)
	-@CMD /Q /C if exist "$(DEL_TARGET01_LFL_GUIShi)" DEL /F /Q "$(DEL_TARGET01_LFL_GUIShi)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_GUIShi)' -prj '$(PRJ_PATH_GUIShi)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_BMP_RES_GUIShi)' -temp '$(TEMP_PATH_GUIShi)' -prj '$(PRJ_PATH_GUIShi)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_LOCAL_RES_GUIShi)' -temp '$(TEMP_PATH_GUIShi)' -prj '$(PRJ_PATH_GUIShi)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(DIS_OBJECTS_GUIShi:.vco=.vco|)' -temp '$(TEMP_PATH_GUIShi)' -prj '$(PRJ_PATH_GUIShi)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .page -vcp '$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Package.vcp' -temp '$(TEMP_PATH_GUIShi)' -prj '$(PRJ_PATH_GUIShi)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCS_OBJECTS_GUIShi:.vco=.vco|)' -temp '$(TEMP_PATH_GUIShi)' -prj '$(PRJ_PATH_GUIShi)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .vcvk -vcp '$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Package.vcp' -temp '$(TEMP_PATH_GUIShi)' -prj '$(PRJ_PATH_GUIShi)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCRT_OBJECTS_GUIShi:.vco=.vco|)' -temp '$(TEMP_PATH_GUIShi)' -prj '$(PRJ_PATH_GUIShi)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(TPR_OBJECTS_GUIShi:.vco=.vco|)' -temp '$(TEMP_PATH_GUIShi)' -prj '$(PRJ_PATH_GUIShi)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .txtgrp -vcp '$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Package.vcp' -temp '$(TEMP_PATH_GUIShi)' -prj '$(PRJ_PATH_GUIShi)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .layer -vcp '$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Package.vcp' -temp '$(TEMP_PATH_GUIShi)' -prj '$(PRJ_PATH_GUIShi)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCR_OBJECT_GUIShi:.vco=.vco|)' -temp '$(TEMP_PATH_GUIShi)' -prj '$(PRJ_PATH_GUIShi)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .tdc -vcp '$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Package.vcp' -temp '$(TEMP_PATH_GUIShi)' -prj '$(PRJ_PATH_GUIShi)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .trd -vcp '$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Package.vcp' -temp '$(TEMP_PATH_GUIShi)' -prj '$(PRJ_PATH_GUIShi)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(SCR_OBJECTS_GUIShi:.vco=.vco|)' -temp '$(TEMP_PATH_GUIShi)' -prj '$(PRJ_PATH_GUIShi)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p GUIShi -lib '$(LIB_LOCAL_OBJ_GUIShi)' -P '$(AS_PROJECT_PATH)' -m 'local objects' -profile 'False' -warningLevel2 -vcr 4341 -sfas
# 01 Module END

# 02 Module

DEL_TARGET02_LFL_GUIShi=$(TEMP_PATH_GUIShi)\GUIShi02.ccf.lfl
$(TEMP_PATH_GUIShi)/GUIShi02.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_GUIShi) $(TEMP_PATH_GUIShi)/GUIShi03.ccf $(BDR_OBJECTS_GUIShi) $(LFNT_OBJECTS_GUIShi) $(CLM_OBJECTS_GUIShi)
	-@CMD /Q /C if exist "$(DEL_TARGET02_LFL_GUIShi)" DEL /F /Q "$(DEL_TARGET02_LFL_GUIShi)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_GUIShi)' -prj '$(PRJ_PATH_GUIShi)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_BMP_RES_GUIShi)' -temp '$(TEMP_PATH_GUIShi)' -prj '$(PRJ_PATH_GUIShi)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(BDR_OBJECTS_GUIShi:.vco=.vco|)' -temp '$(TEMP_PATH_GUIShi)' -prj '$(PRJ_PATH_GUIShi)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LFNT_OBJECTS_GUIShi:.vco=.vco|)' -temp '$(TEMP_PATH_GUIShi)' -prj '$(PRJ_PATH_GUIShi)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(CLM_OBJECTS_GUIShi:.vco=.vco|)' -temp '$(TEMP_PATH_GUIShi)' -prj '$(PRJ_PATH_GUIShi)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p GUIShi -lib '$(LIB_LOCAL_RES_GUIShi)' -P '$(AS_PROJECT_PATH)' -m 'local resources' -profile 'False' -warningLevel2 -vcr 4341 -sfas
# 02 Module END

# 03 Module

DEL_TARGET03_LFL_GUIShi=$(TEMP_PATH_GUIShi)\GUIShi03.ccf.lfl
$(TEMP_PATH_GUIShi)/GUIShi03.ccf: $(LIB_SHARED) $(SHARED_CCF) $(BMGRP_OBJECTS_GUIShi) $(BMINFO_OBJECTS_GUIShi) $(PALFILE_GUIShi)
	-@CMD /Q /C if exist "$(DEL_TARGET03_LFL_GUIShi)" DEL /F /Q "$(DEL_TARGET03_LFL_GUIShi)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_GUIShi)' -prj '$(PRJ_PATH_GUIShi)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .bmgrp -vcp '$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Package.vcp' -temp '$(TEMP_PATH_GUIShi)' -prj '$(PRJ_PATH_GUIShi)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .bminfo -vcp '$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShip/Package.vcp' -temp '$(TEMP_PATH_GUIShi)' -prj '$(PRJ_PATH_GUIShi)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p GUIShi -lib '$(LIB_BMP_RES_GUIShi)' -P '$(AS_PROJECT_PATH)' -m 'bitmap resources' -profile 'False' -warningLevel2 -vcr 4341 -sfas
# 03 Module END

# Post Build Steps

.PHONY : vcPostBuild_GUIShi

vcPostBuild_GUIShi :
	$(VCC) -pb -vcm '$(TEMP_PATH_GUIShi)/MODULEFILES.vcm' -fw '$(VCFIRMWAREPATH)' $(VCCFLAGS_GUIShi) -p GUIShi -vcr 4341 -sfas

# Post Build Steps END
