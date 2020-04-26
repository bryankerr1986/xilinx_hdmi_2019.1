#******************************************************************************
#
# Copyright (C) 2018 Xilinx, Inc.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#   1. Redistributions of source code must retain the above copyright notice,
#      this list of conditions and the following disclaimer.
#   2. Redistributions in binary form must reproduce the above copyright
#      notice, this list of conditions and the following disclaimer in the
#      documentation and/or other materials provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#*******************************************************************************/

RX_SS_PATH=`find /sys/devices/platform/amba_pl\@0/ -name "*v_hdmi_rx_ss"`
TX_SS_PATH=`find /sys/devices/platform/amba_pl\@0/ -name "*v_hdmi_tx_ss"`
I2C_PATH=`find /sys/devices/platform/amba_pl\@0/ -name "*i2c"`
TX_HDMI_CONNC_PATH=`find /sys/class/drm/ -name "*HDMI*"`
I2C_HDCP_EEPROM_PATH="$I2C_PATH/i2c-0/0-0050"

echo $I2C_HDCP_EEPROM_PATH

./video_cmd $RX_SS_PATH $TX_SS_PATH $I2C_HDCP_EEPROM_PATH $TX_HDMI_CONNC_PATH
