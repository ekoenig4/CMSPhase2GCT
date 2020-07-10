-- This file is automatically generated and maintained, DO NOT MODIFY!

library IEEE;
use IEEE.STD_LOGIC_1164.all;

use work.algo_pkg.all;

entity algo_top_wrapper is
  generic (
    N_INPUT_LINKS  : integer := 24;
    N_OUTPUT_LINKS : integer := 24
    );
  port (
    -- Algo Control/Status Signals
    ap_clk   : in  std_logic;
    ap_rst   : in  std_logic;
    ap_start : in  std_logic;
    ap_done  : out std_logic;
    ap_idle  : out std_logic;
    ap_ready : out std_logic;

    -- AXI-Stream Input Links 
    link_in_master : in  LinkMasterArrType(0 to N_INPUT_LINKS-1) := (others => LINK_MASTER_NULL_C);
    link_in_slave  : out LinkSlaveArrType(0 to N_INPUT_LINKS-1)  := (others => LINK_SLAVE_NULL_C);

    -- AXI-Stream Output Links 
    link_out_master : out LinkMasterArrType(0 to N_OUTPUT_LINKS-1) := (others => LINK_MASTER_NULL_C);
    link_out_slave  : in  LinkSlaveArrType(0 to N_OUTPUT_LINKS-1)  := (others => LINK_SLAVE_NULL_C)
    );
end algo_top_wrapper;

architecture rtl of algo_top_wrapper is
  signal ap_rst_n : std_logic;
begin

  ap_rst_n <= not ap_rst;

  algo_top : entity work.algo_top
  PORT MAP (
    ap_clk => ap_clk,
    ap_rst_n => ap_rst_n,
    ap_start => ap_start,
    ap_done => ap_done,
    ap_idle => ap_idle,
    ap_ready => ap_ready,

    link_in_0_TUSER => link_in_master(0).tUser,
    link_in_0_TDATA => link_in_master(0).tData,
    link_in_0_TVALID => link_in_master(0).tValid,
    link_in_0_TLAST(0) => link_in_master(0).tLast,
    link_in_0_TREADY => link_in_slave(0).tReady,
    link_in_1_TUSER => link_in_master(1).tUser,
    link_in_1_TDATA => link_in_master(1).tData,
    link_in_1_TVALID => link_in_master(1).tValid,
    link_in_1_TLAST(0) => link_in_master(1).tLast,
    link_in_1_TREADY => link_in_slave(1).tReady,
    link_in_2_TUSER => link_in_master(2).tUser,
    link_in_2_TDATA => link_in_master(2).tData,
    link_in_2_TVALID => link_in_master(2).tValid,
    link_in_2_TLAST(0) => link_in_master(2).tLast,
    link_in_2_TREADY => link_in_slave(2).tReady,
    link_in_3_TUSER => link_in_master(3).tUser,
    link_in_3_TDATA => link_in_master(3).tData,
    link_in_3_TVALID => link_in_master(3).tValid,
    link_in_3_TLAST(0) => link_in_master(3).tLast,
    link_in_3_TREADY => link_in_slave(3).tReady,
    link_in_4_TUSER => link_in_master(4).tUser,
    link_in_4_TDATA => link_in_master(4).tData,
    link_in_4_TVALID => link_in_master(4).tValid,
    link_in_4_TLAST(0) => link_in_master(4).tLast,
    link_in_4_TREADY => link_in_slave(4).tReady,
    link_in_5_TUSER => link_in_master(5).tUser,
    link_in_5_TDATA => link_in_master(5).tData,
    link_in_5_TVALID => link_in_master(5).tValid,
    link_in_5_TLAST(0) => link_in_master(5).tLast,
    link_in_5_TREADY => link_in_slave(5).tReady,
    link_in_6_TUSER => link_in_master(6).tUser,
    link_in_6_TDATA => link_in_master(6).tData,
    link_in_6_TVALID => link_in_master(6).tValid,
    link_in_6_TLAST(0) => link_in_master(6).tLast,
    link_in_6_TREADY => link_in_slave(6).tReady,
    link_in_7_TUSER => link_in_master(7).tUser,
    link_in_7_TDATA => link_in_master(7).tData,
    link_in_7_TVALID => link_in_master(7).tValid,
    link_in_7_TLAST(0) => link_in_master(7).tLast,
    link_in_7_TREADY => link_in_slave(7).tReady,
    link_in_8_TUSER => link_in_master(8).tUser,
    link_in_8_TDATA => link_in_master(8).tData,
    link_in_8_TVALID => link_in_master(8).tValid,
    link_in_8_TLAST(0) => link_in_master(8).tLast,
    link_in_8_TREADY => link_in_slave(8).tReady,
    link_in_9_TUSER => link_in_master(9).tUser,
    link_in_9_TDATA => link_in_master(9).tData,
    link_in_9_TVALID => link_in_master(9).tValid,
    link_in_9_TLAST(0) => link_in_master(9).tLast,
    link_in_9_TREADY => link_in_slave(9).tReady,
    link_in_10_TUSER => link_in_master(10).tUser,
    link_in_10_TDATA => link_in_master(10).tData,
    link_in_10_TVALID => link_in_master(10).tValid,
    link_in_10_TLAST(0) => link_in_master(10).tLast,
    link_in_10_TREADY => link_in_slave(10).tReady,
    link_in_11_TUSER => link_in_master(11).tUser,
    link_in_11_TDATA => link_in_master(11).tData,
    link_in_11_TVALID => link_in_master(11).tValid,
    link_in_11_TLAST(0) => link_in_master(11).tLast,
    link_in_11_TREADY => link_in_slave(11).tReady,
    link_in_12_TUSER => link_in_master(12).tUser,
    link_in_12_TDATA => link_in_master(12).tData,
    link_in_12_TVALID => link_in_master(12).tValid,
    link_in_12_TLAST(0) => link_in_master(12).tLast,
    link_in_12_TREADY => link_in_slave(12).tReady,
    link_in_13_TUSER => link_in_master(13).tUser,
    link_in_13_TDATA => link_in_master(13).tData,
    link_in_13_TVALID => link_in_master(13).tValid,
    link_in_13_TLAST(0) => link_in_master(13).tLast,
    link_in_13_TREADY => link_in_slave(13).tReady,
    link_in_14_TUSER => link_in_master(14).tUser,
    link_in_14_TDATA => link_in_master(14).tData,
    link_in_14_TVALID => link_in_master(14).tValid,
    link_in_14_TLAST(0) => link_in_master(14).tLast,
    link_in_14_TREADY => link_in_slave(14).tReady,
    link_in_15_TUSER => link_in_master(15).tUser,
    link_in_15_TDATA => link_in_master(15).tData,
    link_in_15_TVALID => link_in_master(15).tValid,
    link_in_15_TLAST(0) => link_in_master(15).tLast,
    link_in_15_TREADY => link_in_slave(15).tReady,
    link_in_16_TUSER => link_in_master(16).tUser,
    link_in_16_TDATA => link_in_master(16).tData,
    link_in_16_TVALID => link_in_master(16).tValid,
    link_in_16_TLAST(0) => link_in_master(16).tLast,
    link_in_16_TREADY => link_in_slave(16).tReady,
    link_in_17_TUSER => link_in_master(17).tUser,
    link_in_17_TDATA => link_in_master(17).tData,
    link_in_17_TVALID => link_in_master(17).tValid,
    link_in_17_TLAST(0) => link_in_master(17).tLast,
    link_in_17_TREADY => link_in_slave(17).tReady,
    link_in_18_TUSER => link_in_master(18).tUser,
    link_in_18_TDATA => link_in_master(18).tData,
    link_in_18_TVALID => link_in_master(18).tValid,
    link_in_18_TLAST(0) => link_in_master(18).tLast,
    link_in_18_TREADY => link_in_slave(18).tReady,
    link_in_19_TUSER => link_in_master(19).tUser,
    link_in_19_TDATA => link_in_master(19).tData,
    link_in_19_TVALID => link_in_master(19).tValid,
    link_in_19_TLAST(0) => link_in_master(19).tLast,
    link_in_19_TREADY => link_in_slave(19).tReady,
    link_in_20_TUSER => link_in_master(20).tUser,
    link_in_20_TDATA => link_in_master(20).tData,
    link_in_20_TVALID => link_in_master(20).tValid,
    link_in_20_TLAST(0) => link_in_master(20).tLast,
    link_in_20_TREADY => link_in_slave(20).tReady,
    link_in_21_TUSER => link_in_master(21).tUser,
    link_in_21_TDATA => link_in_master(21).tData,
    link_in_21_TVALID => link_in_master(21).tValid,
    link_in_21_TLAST(0) => link_in_master(21).tLast,
    link_in_21_TREADY => link_in_slave(21).tReady,
    link_in_22_TUSER => link_in_master(22).tUser,
    link_in_22_TDATA => link_in_master(22).tData,
    link_in_22_TVALID => link_in_master(22).tValid,
    link_in_22_TLAST(0) => link_in_master(22).tLast,
    link_in_22_TREADY => link_in_slave(22).tReady,
    link_in_23_TUSER => link_in_master(23).tUser,
    link_in_23_TDATA => link_in_master(23).tData,
    link_in_23_TVALID => link_in_master(23).tValid,
    link_in_23_TLAST(0) => link_in_master(23).tLast,
    link_in_23_TREADY => link_in_slave(23).tReady,
    link_in_24_TUSER => link_in_master(24).tUser,
    link_in_24_TDATA => link_in_master(24).tData,
    link_in_24_TVALID => link_in_master(24).tValid,
    link_in_24_TLAST(0) => link_in_master(24).tLast,
    link_in_24_TREADY => link_in_slave(24).tReady,
    link_in_25_TUSER => link_in_master(25).tUser,
    link_in_25_TDATA => link_in_master(25).tData,
    link_in_25_TVALID => link_in_master(25).tValid,
    link_in_25_TLAST(0) => link_in_master(25).tLast,
    link_in_25_TREADY => link_in_slave(25).tReady,
    link_in_26_TUSER => link_in_master(26).tUser,
    link_in_26_TDATA => link_in_master(26).tData,
    link_in_26_TVALID => link_in_master(26).tValid,
    link_in_26_TLAST(0) => link_in_master(26).tLast,
    link_in_26_TREADY => link_in_slave(26).tReady,
    link_in_27_TUSER => link_in_master(27).tUser,
    link_in_27_TDATA => link_in_master(27).tData,
    link_in_27_TVALID => link_in_master(27).tValid,
    link_in_27_TLAST(0) => link_in_master(27).tLast,
    link_in_27_TREADY => link_in_slave(27).tReady,
    link_in_28_TUSER => link_in_master(28).tUser,
    link_in_28_TDATA => link_in_master(28).tData,
    link_in_28_TVALID => link_in_master(28).tValid,
    link_in_28_TLAST(0) => link_in_master(28).tLast,
    link_in_28_TREADY => link_in_slave(28).tReady,
    link_in_29_TUSER => link_in_master(29).tUser,
    link_in_29_TDATA => link_in_master(29).tData,
    link_in_29_TVALID => link_in_master(29).tValid,
    link_in_29_TLAST(0) => link_in_master(29).tLast,
    link_in_29_TREADY => link_in_slave(29).tReady,
    link_in_30_TUSER => link_in_master(30).tUser,
    link_in_30_TDATA => link_in_master(30).tData,
    link_in_30_TVALID => link_in_master(30).tValid,
    link_in_30_TLAST(0) => link_in_master(30).tLast,
    link_in_30_TREADY => link_in_slave(30).tReady,
    link_in_31_TUSER => link_in_master(31).tUser,
    link_in_31_TDATA => link_in_master(31).tData,
    link_in_31_TVALID => link_in_master(31).tValid,
    link_in_31_TLAST(0) => link_in_master(31).tLast,
    link_in_31_TREADY => link_in_slave(31).tReady,
    link_in_32_TUSER => link_in_master(32).tUser,
    link_in_32_TDATA => link_in_master(32).tData,
    link_in_32_TVALID => link_in_master(32).tValid,
    link_in_32_TLAST(0) => link_in_master(32).tLast,
    link_in_32_TREADY => link_in_slave(32).tReady,
    link_in_33_TUSER => link_in_master(33).tUser,
    link_in_33_TDATA => link_in_master(33).tData,
    link_in_33_TVALID => link_in_master(33).tValid,
    link_in_33_TLAST(0) => link_in_master(33).tLast,
    link_in_33_TREADY => link_in_slave(33).tReady,
    link_in_34_TUSER => link_in_master(34).tUser,
    link_in_34_TDATA => link_in_master(34).tData,
    link_in_34_TVALID => link_in_master(34).tValid,
    link_in_34_TLAST(0) => link_in_master(34).tLast,
    link_in_34_TREADY => link_in_slave(34).tReady,
    link_in_35_TUSER => link_in_master(35).tUser,
    link_in_35_TDATA => link_in_master(35).tData,
    link_in_35_TVALID => link_in_master(35).tValid,
    link_in_35_TLAST(0) => link_in_master(35).tLast,
    link_in_35_TREADY => link_in_slave(35).tReady,
    link_in_36_TUSER => link_in_master(36).tUser,
    link_in_36_TDATA => link_in_master(36).tData,
    link_in_36_TVALID => link_in_master(36).tValid,
    link_in_36_TLAST(0) => link_in_master(36).tLast,
    link_in_36_TREADY => link_in_slave(36).tReady,
    link_in_37_TUSER => link_in_master(37).tUser,
    link_in_37_TDATA => link_in_master(37).tData,
    link_in_37_TVALID => link_in_master(37).tValid,
    link_in_37_TLAST(0) => link_in_master(37).tLast,
    link_in_37_TREADY => link_in_slave(37).tReady,
    link_in_38_TUSER => link_in_master(38).tUser,
    link_in_38_TDATA => link_in_master(38).tData,
    link_in_38_TVALID => link_in_master(38).tValid,
    link_in_38_TLAST(0) => link_in_master(38).tLast,
    link_in_38_TREADY => link_in_slave(38).tReady,
    link_in_39_TUSER => link_in_master(39).tUser,
    link_in_39_TDATA => link_in_master(39).tData,
    link_in_39_TVALID => link_in_master(39).tValid,
    link_in_39_TLAST(0) => link_in_master(39).tLast,
    link_in_39_TREADY => link_in_slave(39).tReady,
    link_in_40_TUSER => link_in_master(40).tUser,
    link_in_40_TDATA => link_in_master(40).tData,
    link_in_40_TVALID => link_in_master(40).tValid,
    link_in_40_TLAST(0) => link_in_master(40).tLast,
    link_in_40_TREADY => link_in_slave(40).tReady,
    link_in_41_TUSER => link_in_master(41).tUser,
    link_in_41_TDATA => link_in_master(41).tData,
    link_in_41_TVALID => link_in_master(41).tValid,
    link_in_41_TLAST(0) => link_in_master(41).tLast,
    link_in_41_TREADY => link_in_slave(41).tReady,
    link_in_42_TUSER => link_in_master(42).tUser,
    link_in_42_TDATA => link_in_master(42).tData,
    link_in_42_TVALID => link_in_master(42).tValid,
    link_in_42_TLAST(0) => link_in_master(42).tLast,
    link_in_42_TREADY => link_in_slave(42).tReady,
    link_in_43_TUSER => link_in_master(43).tUser,
    link_in_43_TDATA => link_in_master(43).tData,
    link_in_43_TVALID => link_in_master(43).tValid,
    link_in_43_TLAST(0) => link_in_master(43).tLast,
    link_in_43_TREADY => link_in_slave(43).tReady,
    link_in_44_TUSER => link_in_master(44).tUser,
    link_in_44_TDATA => link_in_master(44).tData,
    link_in_44_TVALID => link_in_master(44).tValid,
    link_in_44_TLAST(0) => link_in_master(44).tLast,
    link_in_44_TREADY => link_in_slave(44).tReady,
    link_in_45_TUSER => link_in_master(45).tUser,
    link_in_45_TDATA => link_in_master(45).tData,
    link_in_45_TVALID => link_in_master(45).tValid,
    link_in_45_TLAST(0) => link_in_master(45).tLast,
    link_in_45_TREADY => link_in_slave(45).tReady,
    link_in_46_TUSER => link_in_master(46).tUser,
    link_in_46_TDATA => link_in_master(46).tData,
    link_in_46_TVALID => link_in_master(46).tValid,
    link_in_46_TLAST(0) => link_in_master(46).tLast,
    link_in_46_TREADY => link_in_slave(46).tReady,
    link_in_47_TUSER => link_in_master(47).tUser,
    link_in_47_TDATA => link_in_master(47).tData,
    link_in_47_TVALID => link_in_master(47).tValid,
    link_in_47_TLAST(0) => link_in_master(47).tLast,
    link_in_47_TREADY => link_in_slave(47).tReady,
    link_in_48_TUSER => link_in_master(48).tUser,
    link_in_48_TDATA => link_in_master(48).tData,
    link_in_48_TVALID => link_in_master(48).tValid,
    link_in_48_TLAST(0) => link_in_master(48).tLast,
    link_in_48_TREADY => link_in_slave(48).tReady,
    link_in_49_TUSER => link_in_master(49).tUser,
    link_in_49_TDATA => link_in_master(49).tData,
    link_in_49_TVALID => link_in_master(49).tValid,
    link_in_49_TLAST(0) => link_in_master(49).tLast,
    link_in_49_TREADY => link_in_slave(49).tReady,
    link_in_50_TUSER => link_in_master(50).tUser,
    link_in_50_TDATA => link_in_master(50).tData,
    link_in_50_TVALID => link_in_master(50).tValid,
    link_in_50_TLAST(0) => link_in_master(50).tLast,
    link_in_50_TREADY => link_in_slave(50).tReady,
    link_in_51_TUSER => link_in_master(51).tUser,
    link_in_51_TDATA => link_in_master(51).tData,
    link_in_51_TVALID => link_in_master(51).tValid,
    link_in_51_TLAST(0) => link_in_master(51).tLast,
    link_in_51_TREADY => link_in_slave(51).tReady,
    link_in_52_TUSER => link_in_master(52).tUser,
    link_in_52_TDATA => link_in_master(52).tData,
    link_in_52_TVALID => link_in_master(52).tValid,
    link_in_52_TLAST(0) => link_in_master(52).tLast,
    link_in_52_TREADY => link_in_slave(52).tReady,
    link_in_53_TUSER => link_in_master(53).tUser,
    link_in_53_TDATA => link_in_master(53).tData,
    link_in_53_TVALID => link_in_master(53).tValid,
    link_in_53_TLAST(0) => link_in_master(53).tLast,
    link_in_53_TREADY => link_in_slave(53).tReady,
    link_in_54_TUSER => link_in_master(54).tUser,
    link_in_54_TDATA => link_in_master(54).tData,
    link_in_54_TVALID => link_in_master(54).tValid,
    link_in_54_TLAST(0) => link_in_master(54).tLast,
    link_in_54_TREADY => link_in_slave(54).tReady,
    link_in_55_TUSER => link_in_master(55).tUser,
    link_in_55_TDATA => link_in_master(55).tData,
    link_in_55_TVALID => link_in_master(55).tValid,
    link_in_55_TLAST(0) => link_in_master(55).tLast,
    link_in_55_TREADY => link_in_slave(55).tReady,
    link_in_56_TUSER => link_in_master(56).tUser,
    link_in_56_TDATA => link_in_master(56).tData,
    link_in_56_TVALID => link_in_master(56).tValid,
    link_in_56_TLAST(0) => link_in_master(56).tLast,
    link_in_56_TREADY => link_in_slave(56).tReady,
    link_in_57_TUSER => link_in_master(57).tUser,
    link_in_57_TDATA => link_in_master(57).tData,
    link_in_57_TVALID => link_in_master(57).tValid,
    link_in_57_TLAST(0) => link_in_master(57).tLast,
    link_in_57_TREADY => link_in_slave(57).tReady,
    link_in_58_TUSER => link_in_master(58).tUser,
    link_in_58_TDATA => link_in_master(58).tData,
    link_in_58_TVALID => link_in_master(58).tValid,
    link_in_58_TLAST(0) => link_in_master(58).tLast,
    link_in_58_TREADY => link_in_slave(58).tReady,
    link_in_59_TUSER => link_in_master(59).tUser,
    link_in_59_TDATA => link_in_master(59).tData,
    link_in_59_TVALID => link_in_master(59).tValid,
    link_in_59_TLAST(0) => link_in_master(59).tLast,
    link_in_59_TREADY => link_in_slave(59).tReady,
    link_in_60_TUSER => link_in_master(60).tUser,
    link_in_60_TDATA => link_in_master(60).tData,
    link_in_60_TVALID => link_in_master(60).tValid,
    link_in_60_TLAST(0) => link_in_master(60).tLast,
    link_in_60_TREADY => link_in_slave(60).tReady,
    link_in_61_TUSER => link_in_master(61).tUser,
    link_in_61_TDATA => link_in_master(61).tData,
    link_in_61_TVALID => link_in_master(61).tValid,
    link_in_61_TLAST(0) => link_in_master(61).tLast,
    link_in_61_TREADY => link_in_slave(61).tReady,
    link_in_62_TUSER => link_in_master(62).tUser,
    link_in_62_TDATA => link_in_master(62).tData,
    link_in_62_TVALID => link_in_master(62).tValid,
    link_in_62_TLAST(0) => link_in_master(62).tLast,
    link_in_62_TREADY => link_in_slave(62).tReady,
    link_in_63_TUSER => link_in_master(63).tUser,
    link_in_63_TDATA => link_in_master(63).tData,
    link_in_63_TVALID => link_in_master(63).tValid,
    link_in_63_TLAST(0) => link_in_master(63).tLast,
    link_in_63_TREADY => link_in_slave(63).tReady,
    link_out_0_TUSER => link_out_master(0).tUser,
    link_out_0_TDATA => link_out_master(0).tData,
    link_out_0_TVALID => link_out_master(0).tValid,
    link_out_0_TLAST(0) => link_out_master(0).tLast,
    link_out_0_TREADY => link_out_slave(0).tReady,
    link_out_1_TUSER => link_out_master(1).tUser,
    link_out_1_TDATA => link_out_master(1).tData,
    link_out_1_TVALID => link_out_master(1).tValid,
    link_out_1_TLAST(0) => link_out_master(1).tLast,
    link_out_1_TREADY => link_out_slave(1).tReady,
    link_out_2_TUSER => link_out_master(2).tUser,
    link_out_2_TDATA => link_out_master(2).tData,
    link_out_2_TVALID => link_out_master(2).tValid,
    link_out_2_TLAST(0) => link_out_master(2).tLast,
    link_out_2_TREADY => link_out_slave(2).tReady,
    link_out_3_TUSER => link_out_master(3).tUser,
    link_out_3_TDATA => link_out_master(3).tData,
    link_out_3_TVALID => link_out_master(3).tValid,
    link_out_3_TLAST(0) => link_out_master(3).tLast,
    link_out_3_TREADY => link_out_slave(3).tReady,
    link_out_4_TUSER => link_out_master(4).tUser,
    link_out_4_TDATA => link_out_master(4).tData,
    link_out_4_TVALID => link_out_master(4).tValid,
    link_out_4_TLAST(0) => link_out_master(4).tLast,
    link_out_4_TREADY => link_out_slave(4).tReady,
    link_out_5_TUSER => link_out_master(5).tUser,
    link_out_5_TDATA => link_out_master(5).tData,
    link_out_5_TVALID => link_out_master(5).tValid,
    link_out_5_TLAST(0) => link_out_master(5).tLast,
    link_out_5_TREADY => link_out_slave(5).tReady,
    link_out_6_TUSER => link_out_master(6).tUser,
    link_out_6_TDATA => link_out_master(6).tData,
    link_out_6_TVALID => link_out_master(6).tValid,
    link_out_6_TLAST(0) => link_out_master(6).tLast,
    link_out_6_TREADY => link_out_slave(6).tReady,
    link_out_7_TUSER => link_out_master(7).tUser,
    link_out_7_TDATA => link_out_master(7).tData,
    link_out_7_TVALID => link_out_master(7).tValid,
    link_out_7_TLAST(0) => link_out_master(7).tLast,
    link_out_7_TREADY => link_out_slave(7).tReady,
    link_out_8_TUSER => link_out_master(8).tUser,
    link_out_8_TDATA => link_out_master(8).tData,
    link_out_8_TVALID => link_out_master(8).tValid,
    link_out_8_TLAST(0) => link_out_master(8).tLast,
    link_out_8_TREADY => link_out_slave(8).tReady,
    link_out_9_TUSER => link_out_master(9).tUser,
    link_out_9_TDATA => link_out_master(9).tData,
    link_out_9_TVALID => link_out_master(9).tValid,
    link_out_9_TLAST(0) => link_out_master(9).tLast,
    link_out_9_TREADY => link_out_slave(9).tReady,
    link_out_10_TUSER => link_out_master(10).tUser,
    link_out_10_TDATA => link_out_master(10).tData,
    link_out_10_TVALID => link_out_master(10).tValid,
    link_out_10_TLAST(0) => link_out_master(10).tLast,
    link_out_10_TREADY => link_out_slave(10).tReady,
    link_out_11_TUSER => link_out_master(11).tUser,
    link_out_11_TDATA => link_out_master(11).tData,
    link_out_11_TVALID => link_out_master(11).tValid,
    link_out_11_TLAST(0) => link_out_master(11).tLast,
    link_out_11_TREADY => link_out_slave(11).tReady,
    link_out_12_TUSER => link_out_master(12).tUser,
    link_out_12_TDATA => link_out_master(12).tData,
    link_out_12_TVALID => link_out_master(12).tValid,
    link_out_12_TLAST(0) => link_out_master(12).tLast,
    link_out_12_TREADY => link_out_slave(12).tReady,
    link_out_13_TUSER => link_out_master(13).tUser,
    link_out_13_TDATA => link_out_master(13).tData,
    link_out_13_TVALID => link_out_master(13).tValid,
    link_out_13_TLAST(0) => link_out_master(13).tLast,
    link_out_13_TREADY => link_out_slave(13).tReady,
    link_out_14_TUSER => link_out_master(14).tUser,
    link_out_14_TDATA => link_out_master(14).tData,
    link_out_14_TVALID => link_out_master(14).tValid,
    link_out_14_TLAST(0) => link_out_master(14).tLast,
    link_out_14_TREADY => link_out_slave(14).tReady,
    link_out_15_TUSER => link_out_master(15).tUser,
    link_out_15_TDATA => link_out_master(15).tData,
    link_out_15_TVALID => link_out_master(15).tValid,
    link_out_15_TLAST(0) => link_out_master(15).tLast,
    link_out_15_TREADY => link_out_slave(15).tReady,
    link_out_16_TUSER => link_out_master(16).tUser,
    link_out_16_TDATA => link_out_master(16).tData,
    link_out_16_TVALID => link_out_master(16).tValid,
    link_out_16_TLAST(0) => link_out_master(16).tLast,
    link_out_16_TREADY => link_out_slave(16).tReady,
    link_out_17_TUSER => link_out_master(17).tUser,
    link_out_17_TDATA => link_out_master(17).tData,
    link_out_17_TVALID => link_out_master(17).tValid,
    link_out_17_TLAST(0) => link_out_master(17).tLast,
    link_out_17_TREADY => link_out_slave(17).tReady,
    link_out_18_TUSER => link_out_master(18).tUser,
    link_out_18_TDATA => link_out_master(18).tData,
    link_out_18_TVALID => link_out_master(18).tValid,
    link_out_18_TLAST(0) => link_out_master(18).tLast,
    link_out_18_TREADY => link_out_slave(18).tReady,
    link_out_19_TUSER => link_out_master(19).tUser,
    link_out_19_TDATA => link_out_master(19).tData,
    link_out_19_TVALID => link_out_master(19).tValid,
    link_out_19_TLAST(0) => link_out_master(19).tLast,
    link_out_19_TREADY => link_out_slave(19).tReady,
    link_out_20_TUSER => link_out_master(20).tUser,
    link_out_20_TDATA => link_out_master(20).tData,
    link_out_20_TVALID => link_out_master(20).tValid,
    link_out_20_TLAST(0) => link_out_master(20).tLast,
    link_out_20_TREADY => link_out_slave(20).tReady,
    link_out_21_TUSER => link_out_master(21).tUser,
    link_out_21_TDATA => link_out_master(21).tData,
    link_out_21_TVALID => link_out_master(21).tValid,
    link_out_21_TLAST(0) => link_out_master(21).tLast,
    link_out_21_TREADY => link_out_slave(21).tReady,
    link_out_22_TUSER => link_out_master(22).tUser,
    link_out_22_TDATA => link_out_master(22).tData,
    link_out_22_TVALID => link_out_master(22).tValid,
    link_out_22_TLAST(0) => link_out_master(22).tLast,
    link_out_22_TREADY => link_out_slave(22).tReady,
    link_out_23_TUSER => link_out_master(23).tUser,
    link_out_23_TDATA => link_out_master(23).tData,
    link_out_23_TVALID => link_out_master(23).tValid,
    link_out_23_TLAST(0) => link_out_master(23).tLast,
    link_out_23_TREADY => link_out_slave(23).tReady,
    link_out_24_TUSER => link_out_master(24).tUser,
    link_out_24_TDATA => link_out_master(24).tData,
    link_out_24_TVALID => link_out_master(24).tValid,
    link_out_24_TLAST(0) => link_out_master(24).tLast,
    link_out_24_TREADY => link_out_slave(24).tReady,
    link_out_25_TUSER => link_out_master(25).tUser,
    link_out_25_TDATA => link_out_master(25).tData,
    link_out_25_TVALID => link_out_master(25).tValid,
    link_out_25_TLAST(0) => link_out_master(25).tLast,
    link_out_25_TREADY => link_out_slave(25).tReady,
    link_out_26_TUSER => link_out_master(26).tUser,
    link_out_26_TDATA => link_out_master(26).tData,
    link_out_26_TVALID => link_out_master(26).tValid,
    link_out_26_TLAST(0) => link_out_master(26).tLast,
    link_out_26_TREADY => link_out_slave(26).tReady,
    link_out_27_TUSER => link_out_master(27).tUser,
    link_out_27_TDATA => link_out_master(27).tData,
    link_out_27_TVALID => link_out_master(27).tValid,
    link_out_27_TLAST(0) => link_out_master(27).tLast,
    link_out_27_TREADY => link_out_slave(27).tReady,
    link_out_28_TUSER => link_out_master(28).tUser,
    link_out_28_TDATA => link_out_master(28).tData,
    link_out_28_TVALID => link_out_master(28).tValid,
    link_out_28_TLAST(0) => link_out_master(28).tLast,
    link_out_28_TREADY => link_out_slave(28).tReady,
    link_out_29_TUSER => link_out_master(29).tUser,
    link_out_29_TDATA => link_out_master(29).tData,
    link_out_29_TVALID => link_out_master(29).tValid,
    link_out_29_TLAST(0) => link_out_master(29).tLast,
    link_out_29_TREADY => link_out_slave(29).tReady,
    link_out_30_TUSER => link_out_master(30).tUser,
    link_out_30_TDATA => link_out_master(30).tData,
    link_out_30_TVALID => link_out_master(30).tValid,
    link_out_30_TLAST(0) => link_out_master(30).tLast,
    link_out_30_TREADY => link_out_slave(30).tReady,
    link_out_31_TUSER => link_out_master(31).tUser,
    link_out_31_TDATA => link_out_master(31).tData,
    link_out_31_TVALID => link_out_master(31).tValid,
    link_out_31_TLAST(0) => link_out_master(31).tLast,
    link_out_31_TREADY => link_out_slave(31).tReady,
    link_out_32_TUSER => link_out_master(32).tUser,
    link_out_32_TDATA => link_out_master(32).tData,
    link_out_32_TVALID => link_out_master(32).tValid,
    link_out_32_TLAST(0) => link_out_master(32).tLast,
    link_out_32_TREADY => link_out_slave(32).tReady,
    link_out_33_TUSER => link_out_master(33).tUser,
    link_out_33_TDATA => link_out_master(33).tData,
    link_out_33_TVALID => link_out_master(33).tValid,
    link_out_33_TLAST(0) => link_out_master(33).tLast,
    link_out_33_TREADY => link_out_slave(33).tReady,
    link_out_34_TUSER => link_out_master(34).tUser,
    link_out_34_TDATA => link_out_master(34).tData,
    link_out_34_TVALID => link_out_master(34).tValid,
    link_out_34_TLAST(0) => link_out_master(34).tLast,
    link_out_34_TREADY => link_out_slave(34).tReady,
    link_out_35_TUSER => link_out_master(35).tUser,
    link_out_35_TDATA => link_out_master(35).tData,
    link_out_35_TVALID => link_out_master(35).tValid,
    link_out_35_TLAST(0) => link_out_master(35).tLast,
    link_out_35_TREADY => link_out_slave(35).tReady,
    link_out_36_TUSER => link_out_master(36).tUser,
    link_out_36_TDATA => link_out_master(36).tData,
    link_out_36_TVALID => link_out_master(36).tValid,
    link_out_36_TLAST(0) => link_out_master(36).tLast,
    link_out_36_TREADY => link_out_slave(36).tReady,
    link_out_37_TUSER => link_out_master(37).tUser,
    link_out_37_TDATA => link_out_master(37).tData,
    link_out_37_TVALID => link_out_master(37).tValid,
    link_out_37_TLAST(0) => link_out_master(37).tLast,
    link_out_37_TREADY => link_out_slave(37).tReady,
    link_out_38_TUSER => link_out_master(38).tUser,
    link_out_38_TDATA => link_out_master(38).tData,
    link_out_38_TVALID => link_out_master(38).tValid,
    link_out_38_TLAST(0) => link_out_master(38).tLast,
    link_out_38_TREADY => link_out_slave(38).tReady,
    link_out_39_TUSER => link_out_master(39).tUser,
    link_out_39_TDATA => link_out_master(39).tData,
    link_out_39_TVALID => link_out_master(39).tValid,
    link_out_39_TLAST(0) => link_out_master(39).tLast,
    link_out_39_TREADY => link_out_slave(39).tReady,
    link_out_40_TUSER => link_out_master(40).tUser,
    link_out_40_TDATA => link_out_master(40).tData,
    link_out_40_TVALID => link_out_master(40).tValid,
    link_out_40_TLAST(0) => link_out_master(40).tLast,
    link_out_40_TREADY => link_out_slave(40).tReady,
    link_out_41_TUSER => link_out_master(41).tUser,
    link_out_41_TDATA => link_out_master(41).tData,
    link_out_41_TVALID => link_out_master(41).tValid,
    link_out_41_TLAST(0) => link_out_master(41).tLast,
    link_out_41_TREADY => link_out_slave(41).tReady,
    link_out_42_TUSER => link_out_master(42).tUser,
    link_out_42_TDATA => link_out_master(42).tData,
    link_out_42_TVALID => link_out_master(42).tValid,
    link_out_42_TLAST(0) => link_out_master(42).tLast,
    link_out_42_TREADY => link_out_slave(42).tReady,
    link_out_43_TUSER => link_out_master(43).tUser,
    link_out_43_TDATA => link_out_master(43).tData,
    link_out_43_TVALID => link_out_master(43).tValid,
    link_out_43_TLAST(0) => link_out_master(43).tLast,
    link_out_43_TREADY => link_out_slave(43).tReady,
    link_out_44_TUSER => link_out_master(44).tUser,
    link_out_44_TDATA => link_out_master(44).tData,
    link_out_44_TVALID => link_out_master(44).tValid,
    link_out_44_TLAST(0) => link_out_master(44).tLast,
    link_out_44_TREADY => link_out_slave(44).tReady,
    link_out_45_TUSER => link_out_master(45).tUser,
    link_out_45_TDATA => link_out_master(45).tData,
    link_out_45_TVALID => link_out_master(45).tValid,
    link_out_45_TLAST(0) => link_out_master(45).tLast,
    link_out_45_TREADY => link_out_slave(45).tReady,
    link_out_46_TUSER => link_out_master(46).tUser,
    link_out_46_TDATA => link_out_master(46).tData,
    link_out_46_TVALID => link_out_master(46).tValid,
    link_out_46_TLAST(0) => link_out_master(46).tLast,
    link_out_46_TREADY => link_out_slave(46).tReady,
    link_out_47_TUSER => link_out_master(47).tUser,
    link_out_47_TDATA => link_out_master(47).tData,
    link_out_47_TVALID => link_out_master(47).tValid,
    link_out_47_TLAST(0) => link_out_master(47).tLast,
    link_out_47_TREADY => link_out_slave(47).tReady,
    link_out_48_TUSER => link_out_master(48).tUser,
    link_out_48_TDATA => link_out_master(48).tData,
    link_out_48_TVALID => link_out_master(48).tValid,
    link_out_48_TLAST(0) => link_out_master(48).tLast,
    link_out_48_TREADY => link_out_slave(48).tReady,
    link_out_49_TUSER => link_out_master(49).tUser,
    link_out_49_TDATA => link_out_master(49).tData,
    link_out_49_TVALID => link_out_master(49).tValid,
    link_out_49_TLAST(0) => link_out_master(49).tLast,
    link_out_49_TREADY => link_out_slave(49).tReady,
    link_out_50_TUSER => link_out_master(50).tUser,
    link_out_50_TDATA => link_out_master(50).tData,
    link_out_50_TVALID => link_out_master(50).tValid,
    link_out_50_TLAST(0) => link_out_master(50).tLast,
    link_out_50_TREADY => link_out_slave(50).tReady,
    link_out_51_TUSER => link_out_master(51).tUser,
    link_out_51_TDATA => link_out_master(51).tData,
    link_out_51_TVALID => link_out_master(51).tValid,
    link_out_51_TLAST(0) => link_out_master(51).tLast,
    link_out_51_TREADY => link_out_slave(51).tReady,
    link_out_52_TUSER => link_out_master(52).tUser,
    link_out_52_TDATA => link_out_master(52).tData,
    link_out_52_TVALID => link_out_master(52).tValid,
    link_out_52_TLAST(0) => link_out_master(52).tLast,
    link_out_52_TREADY => link_out_slave(52).tReady,
    link_out_53_TUSER => link_out_master(53).tUser,
    link_out_53_TDATA => link_out_master(53).tData,
    link_out_53_TVALID => link_out_master(53).tValid,
    link_out_53_TLAST(0) => link_out_master(53).tLast,
    link_out_53_TREADY => link_out_slave(53).tReady,
    link_out_54_TUSER => link_out_master(54).tUser,
    link_out_54_TDATA => link_out_master(54).tData,
    link_out_54_TVALID => link_out_master(54).tValid,
    link_out_54_TLAST(0) => link_out_master(54).tLast,
    link_out_54_TREADY => link_out_slave(54).tReady,
    link_out_55_TUSER => link_out_master(55).tUser,
    link_out_55_TDATA => link_out_master(55).tData,
    link_out_55_TVALID => link_out_master(55).tValid,
    link_out_55_TLAST(0) => link_out_master(55).tLast,
    link_out_55_TREADY => link_out_slave(55).tReady,
    link_out_56_TUSER => link_out_master(56).tUser,
    link_out_56_TDATA => link_out_master(56).tData,
    link_out_56_TVALID => link_out_master(56).tValid,
    link_out_56_TLAST(0) => link_out_master(56).tLast,
    link_out_56_TREADY => link_out_slave(56).tReady,
    link_out_57_TUSER => link_out_master(57).tUser,
    link_out_57_TDATA => link_out_master(57).tData,
    link_out_57_TVALID => link_out_master(57).tValid,
    link_out_57_TLAST(0) => link_out_master(57).tLast,
    link_out_57_TREADY => link_out_slave(57).tReady,
    link_out_58_TUSER => link_out_master(58).tUser,
    link_out_58_TDATA => link_out_master(58).tData,
    link_out_58_TVALID => link_out_master(58).tValid,
    link_out_58_TLAST(0) => link_out_master(58).tLast,
    link_out_58_TREADY => link_out_slave(58).tReady,
    link_out_59_TUSER => link_out_master(59).tUser,
    link_out_59_TDATA => link_out_master(59).tData,
    link_out_59_TVALID => link_out_master(59).tValid,
    link_out_59_TLAST(0) => link_out_master(59).tLast,
    link_out_59_TREADY => link_out_slave(59).tReady,
    link_out_60_TUSER => link_out_master(60).tUser,
    link_out_60_TDATA => link_out_master(60).tData,
    link_out_60_TVALID => link_out_master(60).tValid,
    link_out_60_TLAST(0) => link_out_master(60).tLast,
    link_out_60_TREADY => link_out_slave(60).tReady,
    link_out_61_TUSER => link_out_master(61).tUser,
    link_out_61_TDATA => link_out_master(61).tData,
    link_out_61_TVALID => link_out_master(61).tValid,
    link_out_61_TLAST(0) => link_out_master(61).tLast,
    link_out_61_TREADY => link_out_slave(61).tReady,
    link_out_62_TUSER => link_out_master(62).tUser,
    link_out_62_TDATA => link_out_master(62).tData,
    link_out_62_TVALID => link_out_master(62).tValid,
    link_out_62_TLAST(0) => link_out_master(62).tLast,
    link_out_62_TREADY => link_out_slave(62).tReady,
    link_out_63_TUSER => link_out_master(63).tUser,
    link_out_63_TDATA => link_out_master(63).tData,
    link_out_63_TVALID => link_out_master(63).tValid,
    link_out_63_TLAST(0) => link_out_master(63).tLast,
    link_out_63_TREADY => link_out_slave(63).tReady
  );

end rtl;
