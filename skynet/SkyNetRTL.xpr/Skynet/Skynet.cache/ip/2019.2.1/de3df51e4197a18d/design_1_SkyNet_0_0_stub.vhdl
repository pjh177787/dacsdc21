-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
-- Date        : Tue Sep  1 20:35:00 2020
-- Host        : DESKTOP-APERTURE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_SkyNet_0_0_stub.vhdl
-- Design      : design_1_SkyNet_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_AXILiteS_AWADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_AXILiteS_AWVALID : in STD_LOGIC;
    s_axi_AXILiteS_AWREADY : out STD_LOGIC;
    s_axi_AXILiteS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_WVALID : in STD_LOGIC;
    s_axi_AXILiteS_WREADY : out STD_LOGIC;
    s_axi_AXILiteS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_BVALID : out STD_LOGIC;
    s_axi_AXILiteS_BREADY : in STD_LOGIC;
    s_axi_AXILiteS_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_AXILiteS_ARVALID : in STD_LOGIC;
    s_axi_AXILiteS_ARREADY : out STD_LOGIC;
    s_axi_AXILiteS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_RVALID : out STD_LOGIC;
    s_axi_AXILiteS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_IMG_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_IMG_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_IMG_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_IMG_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_IMG_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_IMG_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_IMG_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_IMG_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_IMG_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_IMG_AWVALID : out STD_LOGIC;
    m_axi_IMG_AWREADY : in STD_LOGIC;
    m_axi_IMG_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_IMG_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_IMG_WLAST : out STD_LOGIC;
    m_axi_IMG_WVALID : out STD_LOGIC;
    m_axi_IMG_WREADY : in STD_LOGIC;
    m_axi_IMG_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_IMG_BVALID : in STD_LOGIC;
    m_axi_IMG_BREADY : out STD_LOGIC;
    m_axi_IMG_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_IMG_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_IMG_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_IMG_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_IMG_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_IMG_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_IMG_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_IMG_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_IMG_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_IMG_ARVALID : out STD_LOGIC;
    m_axi_IMG_ARREADY : in STD_LOGIC;
    m_axi_IMG_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_IMG_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_IMG_RLAST : in STD_LOGIC;
    m_axi_IMG_RVALID : in STD_LOGIC;
    m_axi_IMG_RREADY : out STD_LOGIC;
    m_axi_BUS512_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_BUS512_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_BUS512_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_BUS512_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_BUS512_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_BUS512_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_BUS512_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_BUS512_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_BUS512_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_BUS512_AWVALID : out STD_LOGIC;
    m_axi_BUS512_AWREADY : in STD_LOGIC;
    m_axi_BUS512_WDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_BUS512_WSTRB : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_BUS512_WLAST : out STD_LOGIC;
    m_axi_BUS512_WVALID : out STD_LOGIC;
    m_axi_BUS512_WREADY : in STD_LOGIC;
    m_axi_BUS512_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_BUS512_BVALID : in STD_LOGIC;
    m_axi_BUS512_BREADY : out STD_LOGIC;
    m_axi_BUS512_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_BUS512_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_BUS512_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_BUS512_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_BUS512_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_BUS512_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_BUS512_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_BUS512_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_BUS512_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_BUS512_ARVALID : out STD_LOGIC;
    m_axi_BUS512_ARREADY : in STD_LOGIC;
    m_axi_BUS512_RDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_BUS512_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_BUS512_RLAST : in STD_LOGIC;
    m_axi_BUS512_RVALID : in STD_LOGIC;
    m_axi_BUS512_RREADY : out STD_LOGIC;
    m_axi_DDR256_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DDR256_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DDR256_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DDR256_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DDR256_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DDR256_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DDR256_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DDR256_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DDR256_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DDR256_AWVALID : out STD_LOGIC;
    m_axi_DDR256_AWREADY : in STD_LOGIC;
    m_axi_DDR256_WDATA : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_DDR256_WSTRB : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DDR256_WLAST : out STD_LOGIC;
    m_axi_DDR256_WVALID : out STD_LOGIC;
    m_axi_DDR256_WREADY : in STD_LOGIC;
    m_axi_DDR256_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DDR256_BVALID : in STD_LOGIC;
    m_axi_DDR256_BREADY : out STD_LOGIC;
    m_axi_DDR256_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_DDR256_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_DDR256_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DDR256_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DDR256_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DDR256_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DDR256_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DDR256_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_DDR256_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_DDR256_ARVALID : out STD_LOGIC;
    m_axi_DDR256_ARREADY : in STD_LOGIC;
    m_axi_DDR256_RDATA : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_DDR256_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_DDR256_RLAST : in STD_LOGIC;
    m_axi_DDR256_RVALID : in STD_LOGIC;
    m_axi_DDR256_RREADY : out STD_LOGIC;
    m_axi_BUS32_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_BUS32_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_BUS32_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_BUS32_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_BUS32_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_BUS32_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_BUS32_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_BUS32_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_BUS32_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_BUS32_AWVALID : out STD_LOGIC;
    m_axi_BUS32_AWREADY : in STD_LOGIC;
    m_axi_BUS32_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_BUS32_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_BUS32_WLAST : out STD_LOGIC;
    m_axi_BUS32_WVALID : out STD_LOGIC;
    m_axi_BUS32_WREADY : in STD_LOGIC;
    m_axi_BUS32_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_BUS32_BVALID : in STD_LOGIC;
    m_axi_BUS32_BREADY : out STD_LOGIC;
    m_axi_BUS32_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_BUS32_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_BUS32_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_BUS32_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_BUS32_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_BUS32_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_BUS32_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_BUS32_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_BUS32_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_BUS32_ARVALID : out STD_LOGIC;
    m_axi_BUS32_ARREADY : in STD_LOGIC;
    m_axi_BUS32_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_BUS32_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_BUS32_RLAST : in STD_LOGIC;
    m_axi_BUS32_RVALID : in STD_LOGIC;
    m_axi_BUS32_RREADY : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_AXILiteS_AWADDR[6:0],s_axi_AXILiteS_AWVALID,s_axi_AXILiteS_AWREADY,s_axi_AXILiteS_WDATA[31:0],s_axi_AXILiteS_WSTRB[3:0],s_axi_AXILiteS_WVALID,s_axi_AXILiteS_WREADY,s_axi_AXILiteS_BRESP[1:0],s_axi_AXILiteS_BVALID,s_axi_AXILiteS_BREADY,s_axi_AXILiteS_ARADDR[6:0],s_axi_AXILiteS_ARVALID,s_axi_AXILiteS_ARREADY,s_axi_AXILiteS_RDATA[31:0],s_axi_AXILiteS_RRESP[1:0],s_axi_AXILiteS_RVALID,s_axi_AXILiteS_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_IMG_AWADDR[31:0],m_axi_IMG_AWLEN[7:0],m_axi_IMG_AWSIZE[2:0],m_axi_IMG_AWBURST[1:0],m_axi_IMG_AWLOCK[1:0],m_axi_IMG_AWREGION[3:0],m_axi_IMG_AWCACHE[3:0],m_axi_IMG_AWPROT[2:0],m_axi_IMG_AWQOS[3:0],m_axi_IMG_AWVALID,m_axi_IMG_AWREADY,m_axi_IMG_WDATA[31:0],m_axi_IMG_WSTRB[3:0],m_axi_IMG_WLAST,m_axi_IMG_WVALID,m_axi_IMG_WREADY,m_axi_IMG_BRESP[1:0],m_axi_IMG_BVALID,m_axi_IMG_BREADY,m_axi_IMG_ARADDR[31:0],m_axi_IMG_ARLEN[7:0],m_axi_IMG_ARSIZE[2:0],m_axi_IMG_ARBURST[1:0],m_axi_IMG_ARLOCK[1:0],m_axi_IMG_ARREGION[3:0],m_axi_IMG_ARCACHE[3:0],m_axi_IMG_ARPROT[2:0],m_axi_IMG_ARQOS[3:0],m_axi_IMG_ARVALID,m_axi_IMG_ARREADY,m_axi_IMG_RDATA[31:0],m_axi_IMG_RRESP[1:0],m_axi_IMG_RLAST,m_axi_IMG_RVALID,m_axi_IMG_RREADY,m_axi_BUS512_AWADDR[31:0],m_axi_BUS512_AWLEN[7:0],m_axi_BUS512_AWSIZE[2:0],m_axi_BUS512_AWBURST[1:0],m_axi_BUS512_AWLOCK[1:0],m_axi_BUS512_AWREGION[3:0],m_axi_BUS512_AWCACHE[3:0],m_axi_BUS512_AWPROT[2:0],m_axi_BUS512_AWQOS[3:0],m_axi_BUS512_AWVALID,m_axi_BUS512_AWREADY,m_axi_BUS512_WDATA[511:0],m_axi_BUS512_WSTRB[63:0],m_axi_BUS512_WLAST,m_axi_BUS512_WVALID,m_axi_BUS512_WREADY,m_axi_BUS512_BRESP[1:0],m_axi_BUS512_BVALID,m_axi_BUS512_BREADY,m_axi_BUS512_ARADDR[31:0],m_axi_BUS512_ARLEN[7:0],m_axi_BUS512_ARSIZE[2:0],m_axi_BUS512_ARBURST[1:0],m_axi_BUS512_ARLOCK[1:0],m_axi_BUS512_ARREGION[3:0],m_axi_BUS512_ARCACHE[3:0],m_axi_BUS512_ARPROT[2:0],m_axi_BUS512_ARQOS[3:0],m_axi_BUS512_ARVALID,m_axi_BUS512_ARREADY,m_axi_BUS512_RDATA[511:0],m_axi_BUS512_RRESP[1:0],m_axi_BUS512_RLAST,m_axi_BUS512_RVALID,m_axi_BUS512_RREADY,m_axi_DDR256_AWADDR[31:0],m_axi_DDR256_AWLEN[7:0],m_axi_DDR256_AWSIZE[2:0],m_axi_DDR256_AWBURST[1:0],m_axi_DDR256_AWLOCK[1:0],m_axi_DDR256_AWREGION[3:0],m_axi_DDR256_AWCACHE[3:0],m_axi_DDR256_AWPROT[2:0],m_axi_DDR256_AWQOS[3:0],m_axi_DDR256_AWVALID,m_axi_DDR256_AWREADY,m_axi_DDR256_WDATA[255:0],m_axi_DDR256_WSTRB[31:0],m_axi_DDR256_WLAST,m_axi_DDR256_WVALID,m_axi_DDR256_WREADY,m_axi_DDR256_BRESP[1:0],m_axi_DDR256_BVALID,m_axi_DDR256_BREADY,m_axi_DDR256_ARADDR[31:0],m_axi_DDR256_ARLEN[7:0],m_axi_DDR256_ARSIZE[2:0],m_axi_DDR256_ARBURST[1:0],m_axi_DDR256_ARLOCK[1:0],m_axi_DDR256_ARREGION[3:0],m_axi_DDR256_ARCACHE[3:0],m_axi_DDR256_ARPROT[2:0],m_axi_DDR256_ARQOS[3:0],m_axi_DDR256_ARVALID,m_axi_DDR256_ARREADY,m_axi_DDR256_RDATA[255:0],m_axi_DDR256_RRESP[1:0],m_axi_DDR256_RLAST,m_axi_DDR256_RVALID,m_axi_DDR256_RREADY,m_axi_BUS32_AWADDR[31:0],m_axi_BUS32_AWLEN[7:0],m_axi_BUS32_AWSIZE[2:0],m_axi_BUS32_AWBURST[1:0],m_axi_BUS32_AWLOCK[1:0],m_axi_BUS32_AWREGION[3:0],m_axi_BUS32_AWCACHE[3:0],m_axi_BUS32_AWPROT[2:0],m_axi_BUS32_AWQOS[3:0],m_axi_BUS32_AWVALID,m_axi_BUS32_AWREADY,m_axi_BUS32_WDATA[31:0],m_axi_BUS32_WSTRB[3:0],m_axi_BUS32_WLAST,m_axi_BUS32_WVALID,m_axi_BUS32_WREADY,m_axi_BUS32_BRESP[1:0],m_axi_BUS32_BVALID,m_axi_BUS32_BREADY,m_axi_BUS32_ARADDR[31:0],m_axi_BUS32_ARLEN[7:0],m_axi_BUS32_ARSIZE[2:0],m_axi_BUS32_ARBURST[1:0],m_axi_BUS32_ARLOCK[1:0],m_axi_BUS32_ARREGION[3:0],m_axi_BUS32_ARCACHE[3:0],m_axi_BUS32_ARPROT[2:0],m_axi_BUS32_ARQOS[3:0],m_axi_BUS32_ARVALID,m_axi_BUS32_ARREADY,m_axi_BUS32_RDATA[31:0],m_axi_BUS32_RRESP[1:0],m_axi_BUS32_RLAST,m_axi_BUS32_RVALID,m_axi_BUS32_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "SkyNet,Vivado 2019.2.1";
begin
end;
