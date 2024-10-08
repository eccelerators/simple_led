# Copyright (C) 2024 Eccelerators GmbH
# 
# This code was generated by:
#
# HxS Compiler 1.0.20-9104d5ff
# Python Extension for HxS 1.0.8-80182363
# 
# Further information at https://eccelerators.com/hxs
# 
# Changes to this file may cause incorrect behavior and will be lost if the
# code is regenerated.
	
	
# -----------------------------------------------------
# Addresses, widths, values and masks for direct access
# -----------------------------------------------------
LedIfcAddressBusWidth = 4
LedIfcDataBusWidth = 32

class LedBlk:
    LedBlkAddress = 0x0 
    LedBlkSize = 0x4 

    @property
    def CtrRegAddress(self):
        return (0x0 + self.LedBlkAddress)

    CtrRegWidth = 32

    OnOffMask = 0x00000001
    OnOffPosition = 0
    OnOffWidth = 1
    LedOffMVal = 0x00000000
    LedOnMVal = 0x00000001
    OnOffBusResetMRstVal = 0x00000000