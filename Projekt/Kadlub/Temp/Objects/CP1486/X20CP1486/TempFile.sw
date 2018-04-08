<?xml version="1.0" encoding="utf-8"?>
<?AutomationStudio Version=4.3.5.113 SP?>
<SwConfiguration CpuAddress="SL1" xmlns="http://br-automation.co.at/AS/SwConfiguration">
  <TaskClass Name="Cyclic#1" />
  <TaskClass Name="Cyclic#2" />
  <TaskClass Name="Cyclic#3" />
  <TaskClass Name="Cyclic#4">
    <Task Name="Ship" Source="Software.Code.Ship.prg" Memory="UserROM" Language="IEC" Debugging="true" />
  </TaskClass>
  <VcDataObjects>
    <VcDataObject Name="GUIShi" Source="Software.HMI.GUIShip.dob" Memory="UserROM" Language="Vc" WarningLevel="2" Compress="false" />
    <VcDataObject Name="GUISh1" Source="Software.HMI.GUIShipM.dob" Memory="UserROM" Language="Vc" WarningLevel="2" Compress="false" />
  </VcDataObjects>
</SwConfiguration>