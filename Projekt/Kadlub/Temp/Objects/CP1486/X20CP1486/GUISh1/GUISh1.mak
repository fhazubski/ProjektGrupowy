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
PALFILE_GUISh1=$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Palette.vcr
VCCFLAGS_GUISh1=-server -proj GUISh1 -vc '$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/VCObject.vc' -prj_path '$(AS_PROJECT_PATH)' -temp_path '$(AS_TEMP_PATH)' -cfg $(AS_CONFIGURATION) -plc $(AS_PLC) -plctemp $(AS_TEMP_PLC) -cpu_path '$(AS_CPU_PATH)'
VCFIRMWARE=4.34.1
VCFIRMWAREPATH=$(AS_VC_PATH)/Firmware/V4.34.1/SG4
VCOBJECT_GUISh1=$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/VCObject.vc
VCSTARTUP='vcstart.br'
VCLOD='vclod.br'
VCSTPOST='vcstpost.br'
TARGET_FILE_GUISh1=$(AS_CPU_PATH)/GUISh1.br
OBJ_SCOPE_GUISh1=Software/HMI
PRJ_PATH_GUISh1=$(AS_PROJECT_PATH)
SRC_PATH_GUISh1=$(AS_PROJECT_PATH)/Logical/$(OBJ_SCOPE_GUISh1)/GUIShipM
TEMP_PATH_GUISh1=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/GUISh1
TEMP_PATH_Shared=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared
TEMP_PATH_ROOT_GUISh1=$(AS_TEMP_PATH)
VC_LIBRARY_LIST_GUISh1=$(TEMP_PATH_GUISh1)/libraries.vci
VC_XREF_BUILDFILE_GUISh1=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.build
VC_XREF_CLEANFILE=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.clean
VC_LANGUAGES_GUISh1=$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr
CPUHWC='$(TEMP_PATH_GUISh1)/cpuhwc.vci'
VC_STATIC_OPTIONS_GUISh1='$(TEMP_PATH_GUISh1)/vcStaticOptions.xml'
VC_STATIC_OPTIONS_Shared='$(TEMP_PATH_Shared)/vcStaticOptions.xml'
# include Shared and Font Makefile (only once)
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCFntDat/Font_GUISh1.mak
ifneq ($(VCINC),1)
	VCINC=1
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/VCShared.mak
endif

DEPENDENCIES_GUISh1=-d vcgclass -profile 'False'
DEFAULT_STYLE_SHEET_GUISh1='Source[local].StyleSheet[Color]'
SHARED_MODULE=$(TEMP_PATH_ROOT_GUISh1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcshared.br
LFNTFLAGS_GUISh1=-P '$(AS_PROJECT_PATH)' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)'
BDRFLAGS_GUISh1=-P '$(AS_PROJECT_PATH)' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)'

# Local Libs
LIB_LOCAL_OBJ_GUISh1=$(TEMP_PATH_GUISh1)/localobj.vca

# Hardware sources
PANEL_HW_OBJECT_GUISh1=$(TEMP_PATH_ROOT_GUISh1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/GUISh1/dis.Hardware.vco
PANEL_HW_VCI_GUISh1=$(TEMP_PATH_ROOT_GUISh1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/GUISh1/dis.Hardware.vci
PANEL_HW_SOURCE_GUISh1=C:/projects/Stabilizacja_ukladu_statek/ProjektGrupowy_git/Projekt/Kadlub/Physical/CP1486/Hardware.hw 
DIS_OBJECTS_GUISh1=$(PANEL_HW_OBJECT_GUISh1) $(KEYMAP_OBJECTS_GUISh1)

# KeyMapping flags
$(TEMP_PATH_GUISh1)/dis.PS2-Keyboard1.vco: $(AS_PROJECT_PATH)/Physical/CP1486/X20CP1486/VC/PS2-Keyboard1.dis $(PANEL_HW_SOURCE_GUISh1)
	$(VCHWPP) -f '$(PANEL_HW_SOURCE_GUISh1)' -o '$(subst .vco,.vci,$(TEMP_PATH_GUISh1)/dis.PS2-Keyboard1.vco)' -n GUIShipM -d GUISh1 -pal '$(PALFILE_GUISh1)' -c '$(AS_CONFIGURATION)' -p '$(AS_PLC)' -ptemp '$(AS_TEMP_PLC)' -B 'E3.10' -L '' -hw '$(CPUHWC)' -warninglevel 2 -so $(VC_STATIC_OPTIONS_GUISh1) -sos $(VC_STATIC_OPTIONS_Shared) -keyboard '$(AS_PROJECT_PATH)/Physical/CP1486/X20CP1486/VC/PS2-Keyboard1.dis' -fp '$(AS_VC_PATH)/Firmware/V4.34.1/SG4' -prj '$(AS_PROJECT_PATH)' -apj 'Kadlub' -sfas -vcob '$(VCOBJECT_GUISh1)'
	$(VCC) -f '$(subst .vco,.vci,$@)' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -k '$(VCVK_SOURCES_GUISh1)' $(VCCFLAGS_GUISh1) -p GUISh1 -sfas

KEYMAP_SOURCES_GUISh1=$(AS_PROJECT_PATH)/Physical/CP1486/X20CP1486/VC/PS2-Keyboard1.dis 
KEYMAP_OBJECTS_GUISh1=$(TEMP_PATH_GUISh1)/dis.PS2-Keyboard1.vco 

# All Source Objects
FNINFO_SOURCES_GUISh1=$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Fonts/DefaultFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Fonts/Arial9px.fninfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Fonts/Arial9pxBold.fninfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Fonts/Arial10pxBold.fninfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Fonts/Arial12px.fninfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Fonts/Arial9pxValue.fninfo 

BMINFO_SOURCES_GUISh1=$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlphaPadQVGA1.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlphaPadQVGA2.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlphaPadQVGA3.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlphaPadVGA_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlphaPadQVGA2_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlphaPadQVGA3_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlphaPadQVGA1_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlphaPadVGA.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/NumPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/NumPad.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AcknowledgeReset.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlarmActive.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlarmBypassOFF.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlarmBypassON.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlarmInactive.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlarmLatched.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlarmNotQuit.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlarmQuit.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/Reset.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/ResetAcknowledge.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/Triggered.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/ListPadHor.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/ListPadHor_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/ListPadVer.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/ListPadVer_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/backward_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/backward_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/global_area_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/global_area_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/forward_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/forward_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/control_button_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/control_button_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/right_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/right_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/left_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/left_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/up_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/up_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/down_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/down_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/multi_up_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/multi_up_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/multi_down_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/multi_down_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/ProgressBorder.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/down_active_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/down_pressed_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/up_active_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/global_area_gradient_upside.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/global_area_gradient_downside.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/frame_header.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/up_pressed_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/EditPadVGA.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/EditPadVGA_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneNumPad_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneListPadVer_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneAlphaPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneAlphaPad_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneAlphaPadQVGA1_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneAlphaPadQVGA1_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneAlphaPadQVGA2_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneAlphaPadQVGA3_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneEditpadQVGA2_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneEditPadQVGA3_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneEditPadVga_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneEditPadVga_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneListPadHor_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneListPadHor_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneListPadVer_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneNumPad_pressed.bminfo 

BMGRP_SOURCES_GUISh1=$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/BitmapGroups/AlphaPadQVGA.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/BitmapGroups/NumPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/BitmapGroups/AlphaPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/BitmapGroups/AlarmEvent.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/BitmapGroups/AlarmState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/BitmapGroups/BypassState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/BitmapGroups/AcknowledgeState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/BitmapGroups/NavigationPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/BitmapGroups/Borders.bmgrp 

PAGE_SOURCES_GUISh1=$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Pages/Init_Page.page 

VCS_SOURCES_GUISh1=$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/StyleSheets/Gray.vcs \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/StyleSheets/Color.vcs 

BDR_SOURCES_GUISh1=$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/Raised.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/Sunken.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/Etched.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/Bump.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/SunkenOuter.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/RaisedInner.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/Flat_black.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/Flat_grey.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/BackwardActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/BackwardPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/ControlActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/ControlPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/DownActiveControl.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/DownPressedControl.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/ForwardActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/ForwardPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/GlobalAreaActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/GlobalAreaPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/MultiScrollDownActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/MultiScrollDownPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/MultiScrollUpActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/MultiScrollUpPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/ProgressBarBorder.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/ScrollDownActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/ScrollDownPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/ScrollUpActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/ScrollUpPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/ScrollLeftActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/ScrollLeftPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/ScrollRightActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/ScrollRightPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/UpActiveControl.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/UpPressedControl.bdr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/FrameHeader.bdr 

TPR_SOURCES_GUISh1=$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/TouchPads/NumPad.tpr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/TouchPads/AlphaPadQVGA.tpr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/TouchPads/AlphaPad.tpr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/TouchPads/NavigationPad_ver.tpr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/TouchPads/NavigationPad_hor.tpr \
	$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/TouchPads/EditPad.tpr 

TDC_SOURCES_GUISh1=$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Trends/TrendData.tdc 

VCVK_SOURCES_GUISh1=$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/VirtualKeys.vcvk 

VCR_SOURCES_GUISh1=$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Palette.vcr 

# Runtime Object sources
VCR_OBJECT_GUISh1=$(TEMP_PATH_GUISh1)/vcrt.vco
VCR_SOURCE_GUISh1=$(SRC_PATH_GUISh1)/package.vcp
# All Source Objects END

#Panel Hardware
$(PANEL_HW_VCI_GUISh1): $(PANEL_HW_SOURCE_GUISh1) $(VC_LIBRARY_LIST_GUISh1) $(KEYMAP_SOURCES_GUISh1)
	$(VCHWPP) -f '$<' -o '$@' -n GUIShipM -d GUISh1 -pal '$(PALFILE_GUISh1)' -c '$(AS_CONFIGURATION)' -p '$(AS_PLC)' -ptemp '$(AS_TEMP_PLC)' -B 'E3.10' -L '' -verbose 'False' -profile 'False' -hw '$(CPUHWC)' -warninglevel 2 -so $(VC_STATIC_OPTIONS_GUISh1) -sos $(VC_STATIC_OPTIONS_Shared) -fp '$(AS_VC_PATH)/Firmware/V4.34.1/SG4' -sfas -prj '$(AS_PROJECT_PATH)' -apj 'Kadlub' -vcob '$(VCOBJECT_GUISh1)'

$(PANEL_HW_OBJECT_GUISh1): $(PANEL_HW_VCI_GUISh1) $(PALFILE_GUISh1) $(VC_LIBRARY_LIST_GUISh1)
	$(VCC) -f '$(subst .vco,.vci,$@)' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -k '$(VCVK_SOURCES_GUISh1)' $(VCCFLAGS_GUISh1) -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


# Pages
PAGE_OBJECTS_GUISh1 = $(addprefix $(TEMP_PATH_GUISh1)/page., $(notdir $(PAGE_SOURCES_GUISh1:.page=.vco)))

$(TEMP_PATH_GUISh1)/page.Init_Page.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Pages/Init_Page.page $(VC_LANGUAGES_GUISh1)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_GUISh1)/StyleSheets/Color.vcs' -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


#Pages END




# Stylesheets
VCS_OBJECTS_GUISh1 = $(addprefix $(TEMP_PATH_GUISh1)/vcs., $(notdir $(VCS_SOURCES_GUISh1:.vcs=.vco)))

$(TEMP_PATH_GUISh1)/vcs.Gray.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/StyleSheets/Gray.vcs
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1) -P '$(AS_PROJECT_PATH)' -ds $(DEFAULT_STYLE_SHEET_GUISh1) -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/vcs.Color.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/StyleSheets/Color.vcs
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1) -P '$(AS_PROJECT_PATH)' -ds $(DEFAULT_STYLE_SHEET_GUISh1) -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


#Stylesheets END




# Virtual Keys
VCVK_OBJECTS_GUISh1 = $(addprefix $(TEMP_PATH_GUISh1)/vcvk., $(notdir $(VCVK_SOURCES_GUISh1:.vcvk=.vco)))

$(TEMP_PATH_GUISh1)/vcvk.VirtualKeys.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/VirtualKeys.vcvk
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas

$(VCVK_OBJECTS_GUISh1): $(VC_LANGUAGES_GUISh1)

#Virtual Keys END




# Touch Pads
TPR_OBJECTS_GUISh1 = $(addprefix $(TEMP_PATH_GUISh1)/tpr., $(notdir $(TPR_SOURCES_GUISh1:.tpr=.vco)))

$(TEMP_PATH_GUISh1)/tpr.NumPad.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/TouchPads/NumPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1) -prj 'C:/projects/Stabilizacja_ukladu_statek/ProjektGrupowy_git/Projekt/Kadlub/Logical/Software/HMI/GUIShipM' -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/tpr.AlphaPadQVGA.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/TouchPads/AlphaPadQVGA.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1) -prj 'C:/projects/Stabilizacja_ukladu_statek/ProjektGrupowy_git/Projekt/Kadlub/Logical/Software/HMI/GUIShipM' -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/tpr.AlphaPad.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/TouchPads/AlphaPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1) -prj 'C:/projects/Stabilizacja_ukladu_statek/ProjektGrupowy_git/Projekt/Kadlub/Logical/Software/HMI/GUIShipM' -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/tpr.NavigationPad_ver.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/TouchPads/NavigationPad_ver.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1) -prj 'C:/projects/Stabilizacja_ukladu_statek/ProjektGrupowy_git/Projekt/Kadlub/Logical/Software/HMI/GUIShipM' -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/tpr.NavigationPad_hor.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/TouchPads/NavigationPad_hor.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1) -prj 'C:/projects/Stabilizacja_ukladu_statek/ProjektGrupowy_git/Projekt/Kadlub/Logical/Software/HMI/GUIShipM' -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/tpr.EditPad.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/TouchPads/EditPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1) -prj 'C:/projects/Stabilizacja_ukladu_statek/ProjektGrupowy_git/Projekt/Kadlub/Logical/Software/HMI/GUIShipM' -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


#Touch Pads END




# BitmapGroups
BMGRP_OBJECTS_GUISh1 = $(addprefix $(TEMP_PATH_GUISh1)/bmgrp., $(notdir $(BMGRP_SOURCES_GUISh1:.bmgrp=.vco)))

$(TEMP_PATH_GUISh1)/bmgrp.AlphaPadQVGA.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/BitmapGroups/AlphaPadQVGA.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bmgrp.NumPad.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/BitmapGroups/NumPad.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bmgrp.AlphaPad.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/BitmapGroups/AlphaPad.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bmgrp.AlarmEvent.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/BitmapGroups/AlarmEvent.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bmgrp.AlarmState.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/BitmapGroups/AlarmState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bmgrp.BypassState.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/BitmapGroups/BypassState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bmgrp.AcknowledgeState.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/BitmapGroups/AcknowledgeState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bmgrp.NavigationPad.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/BitmapGroups/NavigationPad.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bmgrp.Borders.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/BitmapGroups/Borders.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


#BitmapGroups END




# Bitmaps
BMINFO_OBJECTS_GUISh1 = $(addprefix $(TEMP_PATH_GUISh1)/bminfo., $(notdir $(BMINFO_SOURCES_GUISh1:.bminfo=.vco)))

$(TEMP_PATH_GUISh1)/bminfo.AlphaPadQVGA1.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlphaPadQVGA1.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlphaPadQVGA1.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.AlphaPadQVGA2.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlphaPadQVGA2.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlphaPadQVGA2.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.AlphaPadQVGA3.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlphaPadQVGA3.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlphaPadQVGA3.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.AlphaPadVGA_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlphaPadVGA_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlphaPadVGA_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.AlphaPadQVGA2_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlphaPadQVGA2_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlphaPadQVGA2_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.AlphaPadQVGA3_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlphaPadQVGA3_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlphaPadQVGA3_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.AlphaPadQVGA1_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlphaPadQVGA1_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlphaPadQVGA1_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.AlphaPadVGA.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlphaPadVGA.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlphaPadVGA.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.NumPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/NumPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/NumPad_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.NumPad.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/NumPad.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/NumPad.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.AcknowledgeReset.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AcknowledgeReset.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AcknowledgeReset.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.AlarmActive.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlarmActive.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlarmActive.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.AlarmBypassOFF.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlarmBypassOFF.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlarmBypassOFF.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.AlarmBypassON.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlarmBypassON.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlarmBypassON.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.AlarmInactive.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlarmInactive.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlarmInactive.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.AlarmLatched.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlarmLatched.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlarmLatched.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.AlarmNotQuit.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlarmNotQuit.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlarmNotQuit.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.AlarmQuit.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlarmQuit.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/AlarmQuit.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.Reset.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/Reset.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/Reset.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.ResetAcknowledge.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/ResetAcknowledge.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/ResetAcknowledge.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.Triggered.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/Triggered.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/Triggered.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.ListPadHor.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/ListPadHor.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/ListPadHor.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.ListPadHor_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/ListPadHor_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/ListPadHor_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.ListPadVer.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/ListPadVer.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/ListPadVer.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.ListPadVer_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/ListPadVer_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/ListPadVer_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.backward_active.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/backward_active.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/backward_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.backward_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/backward_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/backward_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.global_area_active.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/global_area_active.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/global_area_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.global_area_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/global_area_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/global_area_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.forward_active.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/forward_active.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/forward_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.forward_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/forward_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/forward_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.control_button_active.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/control_button_active.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/control_button_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.control_button_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/control_button_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/control_button_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.right_active.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/right_active.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/right_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.right_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/right_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/right_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.left_active.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/left_active.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/left_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.left_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/left_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/left_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.up_active.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/up_active.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/up_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.up_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/up_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/up_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.down_active.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/down_active.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/down_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.down_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/down_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/down_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.multi_up_active.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/multi_up_active.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/multi_up_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.multi_up_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/multi_up_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/multi_up_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.multi_down_active.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/multi_down_active.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/multi_down_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.multi_down_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/multi_down_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/multi_down_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.ProgressBorder.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/ProgressBorder.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/ProgressBorder.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.down_active_control.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/down_active_control.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/down_active_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.down_pressed_control.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/down_pressed_control.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/down_pressed_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.up_active_control.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/up_active_control.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/up_active_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.global_area_gradient_upside.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/global_area_gradient_upside.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/global_area_gradient_upside.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.global_area_gradient_downside.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/global_area_gradient_downside.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/global_area_gradient_downside.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.frame_header.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/frame_header.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/frame_header.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.up_pressed_control.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/up_pressed_control.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/up_pressed_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.EditPadVGA.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/EditPadVGA.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/EditPadVGA.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.EditPadVGA_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/EditPadVGA_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/EditPadVGA_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.zuneNumPad_released.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneNumPad_released.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneNumPad_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.zuneListPadVer_released.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneListPadVer_released.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneListPadVer_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.zuneAlphaPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneAlphaPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneAlphaPad_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.zuneAlphaPad_released.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneAlphaPad_released.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneAlphaPad_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.zuneAlphaPadQVGA1_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneAlphaPadQVGA1_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneAlphaPadQVGA1_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.zuneAlphaPadQVGA1_released.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneAlphaPadQVGA1_released.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneAlphaPadQVGA1_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.zuneAlphaPadQVGA2_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneAlphaPadQVGA2_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneAlphaPadQVGA2_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.zuneAlphaPadQVGA3_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneAlphaPadQVGA3_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneAlphaPadQVGA3_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.zuneEditpadQVGA2_released.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneEditpadQVGA2_released.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneEditpadQVGA2_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.zuneEditPadQVGA3_released.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneEditPadQVGA3_released.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneEditPadQVGA3_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.zuneEditPadVga_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneEditPadVga_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneEditPadVga_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.zuneEditPadVga_released.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneEditPadVga_released.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneEditPadVga_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.zuneListPadHor_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneListPadHor_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneListPadHor_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.zuneListPadHor_released.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneListPadHor_released.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneListPadHor_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.zuneListPadVer_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneListPadVer_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneListPadVer_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


$(TEMP_PATH_GUISh1)/bminfo.zuneNumPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneNumPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Bitmaps/zuneNumPad_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


#Bitmaps END




# Trend Data Configuration
TDC_OBJECTS_GUISh1 = $(addprefix $(TEMP_PATH_GUISh1)/tdc., $(notdir $(TDC_SOURCES_GUISh1:.tdc=.vco)))

$(TEMP_PATH_GUISh1)/tdc.TrendData.vco: $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Trends/TrendData.tdc
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_GUISh1)' $(VCCFLAGS_GUISh1)  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas


#Trend Data Configuration END


#
# Borders
#
BDR_SOURCES_GUISh1=$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/Raised.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/Sunken.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/Etched.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/Bump.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/SunkenOuter.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/RaisedInner.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/Flat_black.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/Flat_grey.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/BackwardActive.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/BackwardPressed.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/ControlActive.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/ControlPressed.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/DownActiveControl.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/DownPressedControl.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/ForwardActive.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/ForwardPressed.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/GlobalAreaActive.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/GlobalAreaPressed.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/MultiScrollDownActive.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/MultiScrollDownPressed.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/MultiScrollUpActive.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/MultiScrollUpPressed.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/ProgressBarBorder.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/ScrollDownActive.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/ScrollDownPressed.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/ScrollUpActive.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/ScrollUpPressed.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/ScrollLeftActive.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/ScrollLeftPressed.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/ScrollRightActive.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/ScrollRightPressed.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/UpActiveControl.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/UpPressedControl.bdr $(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Borders/FrameHeader.bdr 
BDR_OBJECTS_GUISh1=$(TEMP_PATH_GUISh1)/bdr.Bordermanager.vco
$(TEMP_PATH_GUISh1)/bdr.Bordermanager.vco: $(BDR_SOURCES_GUISh1)
	$(VCC) -f '$<' -o '$@' -pkg '$(SRC_PATH_GUISh1)' $(BDRFLAGS_GUISh1) $(VCCFLAGS_GUISh1) -p GUISh1$(SRC_PATH_GUISh1)
#
# Logical fonts
#
$(TEMP_PATH_GUISh1)/lfnt.en.vco: $(TEMP_PATH_GUISh1)/en.lfnt $(VC_LANGUAGES_GUISh1)
	 $(VCC) -f '$<' -o '$@' $(LFNTFLAGS_GUISh1) $(VCCFLAGS_GUISh1) -p GUISh1 -sfas
$(TEMP_PATH_GUISh1)/lfnt.de.vco: $(TEMP_PATH_GUISh1)/de.lfnt $(VC_LANGUAGES_GUISh1)
	 $(VCC) -f '$<' -o '$@' $(LFNTFLAGS_GUISh1) $(VCCFLAGS_GUISh1) -p GUISh1 -sfas
LFNT_OBJECTS_GUISh1=$(TEMP_PATH_GUISh1)/lfnt.en.vco $(TEMP_PATH_GUISh1)/lfnt.de.vco 

#Runtime Object
$(VCR_OBJECT_GUISh1) : $(VCR_SOURCE_GUISh1)
	$(VCC) -f '$<' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -sl en $(VCCFLAGS_GUISh1) -rt  -p GUISh1 -so $(VC_STATIC_OPTIONS_GUISh1) -vcr 4341 -sfas
# Local resources Library rules
LIB_LOCAL_RES_GUISh1=$(TEMP_PATH_GUISh1)/localres.vca
$(LIB_LOCAL_RES_GUISh1) : $(TEMP_PATH_GUISh1)/GUISh102.ccf

# Bitmap Library rules
LIB_BMP_RES_GUISh1=$(TEMP_PATH_GUISh1)/bmpres.vca
$(LIB_BMP_RES_GUISh1) : $(TEMP_PATH_GUISh1)/GUISh103.ccf
$(BMGRP_OBJECTS_GUISh1) : $(PALFILE_GUISh1) $(VC_LANGUAGES_GUISh1)
$(BMINFO_OBJECTS_GUISh1) : $(PALFILE_GUISh1)

BUILD_FILE_GUISh1=$(TEMP_PATH_GUISh1)/BuildFiles.arg
$(BUILD_FILE_GUISh1) : BUILD_FILE_CLEAN_GUISh1 $(BUILD_SOURCES_GUISh1)
BUILD_FILE_CLEAN_GUISh1:
	$(RM) /F /Q '$(BUILD_FILE_GUISh1)' 2>nul
#All Modules depending to this project
PROJECT_MODULES_GUISh1=$(AS_CPU_PATH)/GUISh101.br $(AS_CPU_PATH)/GUISh102.br $(AS_CPU_PATH)/GUISh103.br $(FONT_MODULES_GUISh1) $(SHARED_MODULE)

# General Build rules

$(TARGET_FILE_GUISh1): $(PROJECT_MODULES_GUISh1) $(TEMP_PATH_GUISh1)/GUISh1.prj
	$(MODGEN) -so $(VC_STATIC_OPTIONS_GUISh1) -fw '$(VCFIRMWAREPATH)' -m $(VCSTPOST) -v V1.00.0 -f '$(TEMP_PATH_GUISh1)/GUISh1.prj' -o '$@' -vc '$(VCOBJECT_GUISh1)' $(DEPENDENCIES_GUISh1) $(addprefix -d ,$(notdir $(PROJECT_MODULES_GUISh1:.br=)))

$(AS_CPU_PATH)/GUISh101.br: $(TEMP_PATH_GUISh1)/GUISh101.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_GUISh1) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_GUISh1)' -f '$<' -o '$@' $(DEPENDENCIES_GUISh1)

$(AS_CPU_PATH)/GUISh102.br: $(TEMP_PATH_GUISh1)/GUISh102.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_GUISh1) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_GUISh1)' -f '$<' -o '$@' $(DEPENDENCIES_GUISh1)

$(AS_CPU_PATH)/GUISh103.br: $(TEMP_PATH_GUISh1)/GUISh103.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_GUISh1) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_GUISh1)' -f '$<' -o '$@' $(DEPENDENCIES_GUISh1)

# General Build rules END
$(LIB_LOCAL_OBJ_GUISh1) : $(TEMP_PATH_GUISh1)/GUISh101.ccf

# Main Module
$(TEMP_PATH_ROOT_GUISh1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/GUISh1.vcm:
$(TEMP_PATH_GUISh1)/GUISh1.prj: $(TEMP_PATH_ROOT_GUISh1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/GUISh1.vcm
	$(VCDEP) -m '$(TEMP_PATH_ROOT_GUISh1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/GUISh1.vcm' -s '$(AS_CPU_PATH)/VCShared/Shared.vcm' -p '$(AS_PATH)/AS/VC/Firmware' -c '$(AS_CPU_PATH)' -fw '$(VCFIRMWAREPATH)' -hw '$(CPUHWC)' -so $(VC_STATIC_OPTIONS_GUISh1) -o GUISh1 -proj GUISh1
	$(VCPL) $(notdir $(PROJECT_MODULES_GUISh1:.br=,4)) GUISh1,2 -o '$@' -p GUISh1 -vc 'GUISh1' -verbose 'False' -fl '$(TEMP_PATH_ROOT_GUISh1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/GUISh1.vcm' -vcr '$(VCR_SOURCE_GUISh1)' -prj '$(AS_PROJECT_PATH)' -warningLevel2 -sfas

# 01 Module

DEL_TARGET01_LFL_GUISh1=$(TEMP_PATH_GUISh1)\GUISh101.ccf.lfl
$(TEMP_PATH_GUISh1)/GUISh101.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_GUISh1) $(TEMP_PATH_GUISh1)/GUISh103.ccf $(LIB_LOCAL_RES_GUISh1) $(TEMP_PATH_GUISh1)/GUISh102.ccf $(DIS_OBJECTS_GUISh1) $(PAGE_OBJECTS_GUISh1) $(VCS_OBJECTS_GUISh1) $(VCVK_OBJECTS_GUISh1) $(VCRT_OBJECTS_GUISh1) $(TPR_OBJECTS_GUISh1) $(TXTGRP_OBJECTS_GUISh1) $(LAYER_OBJECTS_GUISh1) $(VCR_OBJECT_GUISh1) $(TDC_OBJECTS_GUISh1) $(TRD_OBJECTS_GUISh1) $(TRE_OBJECTS_GUISh1) $(PRC_OBJECTS_GUISh1) $(SCR_OBJECTS_GUISh1)
	-@CMD /Q /C if exist "$(DEL_TARGET01_LFL_GUISh1)" DEL /F /Q "$(DEL_TARGET01_LFL_GUISh1)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_GUISh1)' -prj '$(PRJ_PATH_GUISh1)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_BMP_RES_GUISh1)' -temp '$(TEMP_PATH_GUISh1)' -prj '$(PRJ_PATH_GUISh1)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_LOCAL_RES_GUISh1)' -temp '$(TEMP_PATH_GUISh1)' -prj '$(PRJ_PATH_GUISh1)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(DIS_OBJECTS_GUISh1:.vco=.vco|)' -temp '$(TEMP_PATH_GUISh1)' -prj '$(PRJ_PATH_GUISh1)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .page -vcp '$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Package.vcp' -temp '$(TEMP_PATH_GUISh1)' -prj '$(PRJ_PATH_GUISh1)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCS_OBJECTS_GUISh1:.vco=.vco|)' -temp '$(TEMP_PATH_GUISh1)' -prj '$(PRJ_PATH_GUISh1)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .vcvk -vcp '$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Package.vcp' -temp '$(TEMP_PATH_GUISh1)' -prj '$(PRJ_PATH_GUISh1)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCRT_OBJECTS_GUISh1:.vco=.vco|)' -temp '$(TEMP_PATH_GUISh1)' -prj '$(PRJ_PATH_GUISh1)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(TPR_OBJECTS_GUISh1:.vco=.vco|)' -temp '$(TEMP_PATH_GUISh1)' -prj '$(PRJ_PATH_GUISh1)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .txtgrp -vcp '$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Package.vcp' -temp '$(TEMP_PATH_GUISh1)' -prj '$(PRJ_PATH_GUISh1)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .layer -vcp '$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Package.vcp' -temp '$(TEMP_PATH_GUISh1)' -prj '$(PRJ_PATH_GUISh1)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCR_OBJECT_GUISh1:.vco=.vco|)' -temp '$(TEMP_PATH_GUISh1)' -prj '$(PRJ_PATH_GUISh1)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .tdc -vcp '$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Package.vcp' -temp '$(TEMP_PATH_GUISh1)' -prj '$(PRJ_PATH_GUISh1)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .trd -vcp '$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Package.vcp' -temp '$(TEMP_PATH_GUISh1)' -prj '$(PRJ_PATH_GUISh1)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(SCR_OBJECTS_GUISh1:.vco=.vco|)' -temp '$(TEMP_PATH_GUISh1)' -prj '$(PRJ_PATH_GUISh1)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p GUISh1 -lib '$(LIB_LOCAL_OBJ_GUISh1)' -P '$(AS_PROJECT_PATH)' -m 'local objects' -profile 'False' -warningLevel2 -vcr 4341 -sfas
# 01 Module END

# 02 Module

DEL_TARGET02_LFL_GUISh1=$(TEMP_PATH_GUISh1)\GUISh102.ccf.lfl
$(TEMP_PATH_GUISh1)/GUISh102.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_GUISh1) $(TEMP_PATH_GUISh1)/GUISh103.ccf $(BDR_OBJECTS_GUISh1) $(LFNT_OBJECTS_GUISh1) $(CLM_OBJECTS_GUISh1)
	-@CMD /Q /C if exist "$(DEL_TARGET02_LFL_GUISh1)" DEL /F /Q "$(DEL_TARGET02_LFL_GUISh1)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_GUISh1)' -prj '$(PRJ_PATH_GUISh1)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_BMP_RES_GUISh1)' -temp '$(TEMP_PATH_GUISh1)' -prj '$(PRJ_PATH_GUISh1)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(BDR_OBJECTS_GUISh1:.vco=.vco|)' -temp '$(TEMP_PATH_GUISh1)' -prj '$(PRJ_PATH_GUISh1)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LFNT_OBJECTS_GUISh1:.vco=.vco|)' -temp '$(TEMP_PATH_GUISh1)' -prj '$(PRJ_PATH_GUISh1)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(CLM_OBJECTS_GUISh1:.vco=.vco|)' -temp '$(TEMP_PATH_GUISh1)' -prj '$(PRJ_PATH_GUISh1)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p GUISh1 -lib '$(LIB_LOCAL_RES_GUISh1)' -P '$(AS_PROJECT_PATH)' -m 'local resources' -profile 'False' -warningLevel2 -vcr 4341 -sfas
# 02 Module END

# 03 Module

DEL_TARGET03_LFL_GUISh1=$(TEMP_PATH_GUISh1)\GUISh103.ccf.lfl
$(TEMP_PATH_GUISh1)/GUISh103.ccf: $(LIB_SHARED) $(SHARED_CCF) $(BMGRP_OBJECTS_GUISh1) $(BMINFO_OBJECTS_GUISh1) $(PALFILE_GUISh1)
	-@CMD /Q /C if exist "$(DEL_TARGET03_LFL_GUISh1)" DEL /F /Q "$(DEL_TARGET03_LFL_GUISh1)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_GUISh1)' -prj '$(PRJ_PATH_GUISh1)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .bmgrp -vcp '$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Package.vcp' -temp '$(TEMP_PATH_GUISh1)' -prj '$(PRJ_PATH_GUISh1)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .bminfo -vcp '$(AS_PROJECT_PATH)/Logical/Software/HMI/GUIShipM/Package.vcp' -temp '$(TEMP_PATH_GUISh1)' -prj '$(PRJ_PATH_GUISh1)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p GUISh1 -lib '$(LIB_BMP_RES_GUISh1)' -P '$(AS_PROJECT_PATH)' -m 'bitmap resources' -profile 'False' -warningLevel2 -vcr 4341 -sfas
# 03 Module END

# Post Build Steps

.PHONY : vcPostBuild_GUISh1

vcPostBuild_GUISh1 :
	$(VCC) -pb -vcm '$(TEMP_PATH_GUISh1)/MODULEFILES.vcm' -fw '$(VCFIRMWAREPATH)' $(VCCFLAGS_GUISh1) -p GUISh1 -vcr 4341 -sfas

# Post Build Steps END
