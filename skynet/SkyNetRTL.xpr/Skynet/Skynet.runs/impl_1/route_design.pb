
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xczu3eg2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xczu3eg2default:defaultZ17-349h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px� 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px� 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px� 
B
-Phase 1 Build RT Design | Checksum: 5d29475b
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:02 ; elapsed = 00:00:33 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px� 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px� 
A
,Phase 2.1 Create Timer | Checksum: d10077bd
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:04 ; elapsed = 00:00:35 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px� 
M
8Phase 2.2 Fix Topology Constraints | Checksum: d10077bd
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:04 ; elapsed = 00:00:36 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px� 
F
1Phase 2.3 Pre Route Cleanup | Checksum: d10077bd
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:04 ; elapsed = 00:00:36 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
{

Phase %s%s
101*constraints2
2.4 2default:default2,
Global Clock Net Routing2default:defaultZ18-101h px� 
N
9Phase 2.4 Global Clock Net Routing | Checksum: 14fbb5f52
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:07 ; elapsed = 00:00:39 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
p

Phase %s%s
101*constraints2
2.5 2default:default2!
Update Timing2default:defaultZ18-101h px� 
C
.Phase 2.5 Update Timing | Checksum: 16b779ad5
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:20 ; elapsed = 00:01:21 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
�
Intermediate Timing Summary %s164*route2L
8| WNS=-1.000 | TNS=-1838.271| WHS=-0.107 | THS=-14.666|
2default:defaultZ35-416h px� 
I
4Phase 2 Router Initialization | Checksum: 15e910c31
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:03:20 ; elapsed = 00:01:58 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px� 
q

Phase %s%s
101*constraints2
3.1 2default:default2"
Global Routing2default:defaultZ18-101h px� 
D
/Phase 3.1 Global Routing | Checksum: 15e910c31
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:03:23 ; elapsed = 00:02:01 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
p

Phase %s%s
101*constraints2
3.2 2default:default2!
Update Timing2default:defaultZ18-101h px� 
C
.Phase 3.2 Update Timing | Checksum: 2500f2e17
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:05:16 ; elapsed = 00:03:12 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
�
�Congestion is preventing the router from routing all nets. The router will prioritize the successful completion of routing all nets over timing optimizations.177*routeZ35-447h px� 
C
.Phase 3 Initial Routing | Checksum: 3167e419d
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:05:59 ; elapsed = 00:03:37 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
=
Initial Estimated Congestion179*routeZ35-449h px� 
�
�Estimated Global/Short routing congestion is level %s (%sx%s). Congestion levels of 5 and greater can reduce routability and impact timing closure.178*route2
52default:default2
322default:default2
322default:defaultZ35-448h px� 
�
oEstimated Timing congestion is level %s (%sx%s). Congestion levels of 5 and greater may impact timing closure.
245*route2
62default:default2
642default:default2
642default:defaultZ35-581h px� 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px� 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px� 
H
3Phase 4.1 Global Iteration 0 | Checksum: 3167e419d
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:06:12 ; elapsed = 00:03:45 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px� 
�
�CLB routing congestion detected. Several CLBs have high routing utilization, which can impact timing closure. Top ten most congested CLBs are: %s180*route2L
8CLEM_X16Y125 CLEL_R_X16Y125 CLEM_X16Y126 CLEL_R_X16Y126 2default:defaultZ35-443h px� 
�
Intermediate Timing Summary %s164*route2M
9| WNS=-1.720 | TNS=-22991.622| WHS=-0.023 | THS=-0.070 |
2default:defaultZ35-416h px� 
H
3Phase 4.2 Global Iteration 1 | Checksum: 273dfe830
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:22:33 ; elapsed = 00:14:28 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
u

Phase %s%s
101*constraints2
4.3 2default:default2&
Global Iteration 22default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2M
9| WNS=-1.511 | TNS=-22920.338| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.3 Global Iteration 2 | Checksum: 270186134
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:23:52 ; elapsed = 00:15:36 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
u

Phase %s%s
101*constraints2
4.4 2default:default2&
Global Iteration 32default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2M
9| WNS=-1.489 | TNS=-22520.091| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.4 Global Iteration 3 | Checksum: 208702d86
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:25:13 ; elapsed = 00:16:48 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
u

Phase %s%s
101*constraints2
4.5 2default:default2&
Global Iteration 42default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2M
9| WNS=-1.414 | TNS=-22182.079| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.5 Global Iteration 4 | Checksum: 268b1f23e
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:26:27 ; elapsed = 00:17:49 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
F
1Phase 4 Rip-up And Reroute | Checksum: 268b1f23e
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:26:27 ; elapsed = 00:17:50 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 5.1.1 Update Timing | Checksum: 1b39f1958
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:27:02 ; elapsed = 00:18:11 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
�
Intermediate Timing Summary %s164*route2M
9| WNS=-1.414 | TNS=-22180.862| WHS=0.010  | THS=0.000  |
2default:defaultZ35-416h px� 
C
.Phase 5.1 Delay CleanUp | Checksum: 17e9dba1a
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:27:05 ; elapsed = 00:18:13 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px� 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 17e9dba1a
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:27:05 ; elapsed = 00:18:13 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
O
:Phase 5 Delay and Skew Optimization | Checksum: 17e9dba1a
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:27:06 ; elapsed = 00:18:14 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 6.1.1 Update Timing | Checksum: 15f094de6
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:27:32 ; elapsed = 00:18:30 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
�
Intermediate Timing Summary %s164*route2M
9| WNS=-1.414 | TNS=-22180.060| WHS=0.010  | THS=0.000  |
2default:defaultZ35-416h px� 
C
.Phase 6.1 Hold Fix Iter | Checksum: 22013d1e2
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:27:32 ; elapsed = 00:18:30 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
A
,Phase 6 Post Hold Fix | Checksum: 22013d1e2
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:27:33 ; elapsed = 00:18:31 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px� 
B
-Phase 7 Route finalize | Checksum: 221e67998
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:27:34 ; elapsed = 00:18:32 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px� 
I
4Phase 8 Verifying routed nets | Checksum: 221e67998
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:27:34 ; elapsed = 00:18:32 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px� 
E
0Phase 9 Depositing Routes | Checksum: 221e67998
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:27:46 ; elapsed = 00:18:47 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px� 
�
Estimated Timing Summary %s
57*route2M
9| WNS=-1.414 | TNS=-22180.060| WHS=0.010  | THS=0.000  |
2default:defaultZ35-57h px� 
B
!Router estimated timing not met.
128*routeZ35-328h px� 
G
2Phase 10 Post Router Timing | Checksum: 221e67998
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:27:47 ; elapsed = 00:18:48 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
~

Phase %s%s
101*constraints2
11 2default:default20
Physical Synthesis in Router2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
11.1 2default:default25
!Physical Synthesis Initialization2default:defaultZ18-101h px� 
�
:%s %s Timing Summary | WNS=%s | TNS=%s | WHS=%s | THS=%s |342*physynth2
Current2default:default2
 2default:default2
-1.4132default:default2

-21682.1192default:default2
0.0102default:default2
0.0002default:defaultZ32-668h px� 
X
CPhase 11.1 Physical Synthesis Initialization | Checksum: 221e67998
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:28:54 ; elapsed = 00:19:25 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
�
�WARNING: Physical Optimization has determined that the magnitude of the negative slack is too large and it is highly unlikely that slack will be improved. Post-Route Physical Optimization is most effective when WNS is above -0.5ns400*physynthZ32-745h px� 
~

Phase %s%s
101*constraints2
11.2 2default:default2.
Critical Path Optimization2default:defaultZ18-101h px� 
�
:%s %s Timing Summary | WNS=%s | TNS=%s | WHS=%s | THS=%s |342*physynth2
Current2default:default2
 2default:default2
-1.4132default:default2

-21682.1192default:default2
0.0102default:default2
0.0002default:defaultZ32-668h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.3952default:default2
clk_pl_02default:default2�
fdesign_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_6837/r_V_51_reg_95_reg_n_8_[19]fdesign_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_6837/r_V_51_reg_95_reg_n_8_[19]2default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.3632default:default2
clk_pl_02default:default2�
fdesign_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_6877/r_V_51_reg_95_reg_n_8_[19]fdesign_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_6877/r_V_51_reg_95_reg_n_8_[19]2default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.3582default:default2
clk_pl_02default:default2�
]design_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_6821/r_V_51_reg_95[19]]design_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_6821/r_V_51_reg_95[19]2default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.3482default:default2
clk_pl_02default:default2�
fdesign_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_6837/r_V_51_reg_95_reg_n_8_[19]fdesign_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_6837/r_V_51_reg_95_reg_n_8_[19]2default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.3452default:default2
clk_pl_02default:default2�
fdesign_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_6877/r_V_51_reg_95_reg_n_8_[19]fdesign_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_6877/r_V_51_reg_95_reg_n_8_[19]2default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.3212default:default2
clk_pl_02default:default2�
fdesign_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_6869/r_V_51_reg_95_reg_n_8_[19]fdesign_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_6869/r_V_51_reg_95_reg_n_8_[19]2default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.3202default:default2
clk_pl_02default:default2�
edesign_1_i/SkyNet_0/inst/grp_CONV_1x1_bias_fu_2494/grp_compute_engine_16_fu_4404/p_Result_98_reg_1136edesign_1_i/SkyNet_0/inst/grp_CONV_1x1_bias_fu_2494/grp_compute_engine_16_fu_4404/p_Result_98_reg_11362default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.3132default:default2
clk_pl_02default:default2�
fdesign_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_7037/r_V_51_reg_95_reg_n_8_[19]fdesign_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_7037/r_V_51_reg_95_reg_n_8_[19]2default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.3092default:default2
clk_pl_02default:default2�
]design_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_6821/r_V_51_reg_95[19]]design_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_6821/r_V_51_reg_95[19]2default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.3022default:default2
clk_pl_02default:default2�
fdesign_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_7045/r_V_51_reg_95_reg_n_8_[19]fdesign_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_7045/r_V_51_reg_95_reg_n_8_[19]2default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.2952default:default2
clk_pl_02default:default2�
gdesign_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_6973/r_V_51_reg_95_reg/XOROUT[0]gdesign_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_6973/r_V_51_reg_95_reg/XOROUT[0]2default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.2942default:default2
clk_pl_02default:default2�
gdesign_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_6965/r_V_51_reg_95_reg/XOROUT[0]gdesign_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_6965/r_V_51_reg_95_reg/XOROUT[0]2default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.2942default:default2
clk_pl_02default:default2�
edesign_1_i/SkyNet_0/inst/grp_CONV_1x1_bias_fu_2494/grp_compute_engine_16_fu_4260/p_Result_98_reg_1136edesign_1_i/SkyNet_0/inst/grp_CONV_1x1_bias_fu_2494/grp_compute_engine_16_fu_4260/p_Result_98_reg_11362default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.2892default:default2
clk_pl_02default:default2�
fdesign_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_7029/r_V_51_reg_95_reg_n_8_[19]fdesign_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_7029/r_V_51_reg_95_reg_n_8_[19]2default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.2882default:default2
clk_pl_02default:default2�
pdesign_1_i/SkyNet_0/inst/grp_CONV_1x1_bias_fu_2494/grp_compute_engine_16_fu_4404/p_Val2_21_reg_1130_reg_n_8_[27]pdesign_1_i/SkyNet_0/inst/grp_CONV_1x1_bias_fu_2494/grp_compute_engine_16_fu_4404/p_Val2_21_reg_1130_reg_n_8_[27]2default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.2872default:default2
clk_pl_02default:default2�
fdesign_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_7021/r_V_51_reg_95_reg_n_8_[19]fdesign_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_7021/r_V_51_reg_95_reg_n_8_[19]2default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.2832default:default2
clk_pl_02default:default2�
fdesign_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_6837/r_V_51_reg_95_reg_n_8_[19]fdesign_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_6837/r_V_51_reg_95_reg_n_8_[19]2default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.2832default:default2
clk_pl_02default:default2�
Qdesign_1_i/SkyNet_0/inst/FM_buf4_V_1_U/SkyNet_FM_buf1_V_0_ram_U/FM_buf4_V_1_q0[8]Qdesign_1_i/SkyNet_0/inst/FM_buf4_V_1_U/SkyNet_FM_buf1_V_0_ram_U/FM_buf4_V_1_q0[8]2default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.2782default:default2
clk_pl_02default:default2�
ddesign_1_i/SkyNet_0/inst/grp_CONV_1x1_bias_fu_2494/grp_compute_engine_16_fu_4404/p_Result_s_reg_1123ddesign_1_i/SkyNet_0/inst/grp_CONV_1x1_bias_fu_2494/grp_compute_engine_16_fu_4404/p_Result_s_reg_11232default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.2772default:default2
clk_pl_02default:default2�
ddesign_1_i/SkyNet_0/inst/grp_CONV_1x1_bias_fu_2494/grp_compute_engine_16_fu_4692/p_Result_s_reg_1123ddesign_1_i/SkyNet_0/inst/grp_CONV_1x1_bias_fu_2494/grp_compute_engine_16_fu_4692/p_Result_s_reg_11232default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.2742default:default2
clk_pl_02default:default2�
fdesign_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_6877/r_V_51_reg_95_reg_n_8_[19]fdesign_1_i/SkyNet_0/inst/grp_DW_CONV_3x3_bias_fu_1650/grp_MAC_16_16_fu_6877/r_V_51_reg_95_reg_n_8_[19]2default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.2732default:default2
clk_pl_02default:default2�
Qdesign_1_i/SkyNet_0/inst/FM_buf2_V_8_U/SkyNet_FM_buf2_V_0_ram_U/FM_buf2_V_8_q0[8]Qdesign_1_i/SkyNet_0/inst/FM_buf2_V_8_U/SkyNet_FM_buf2_V_0_ram_U/FM_buf2_V_8_q0[8]2default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.2722default:default2
clk_pl_02default:default2�
Qdesign_1_i/SkyNet_0/inst/FM_buf1_V_3_U/SkyNet_FM_buf1_V_0_ram_U/FM_buf1_V_3_q0[8]Qdesign_1_i/SkyNet_0/inst/FM_buf1_V_3_U/SkyNet_FM_buf1_V_0_ram_U/FM_buf1_V_3_q0[8]2default:default8Z32-952h px� 
�
AImproved path group WNS = %s. Path group: %s. Processed net: %s.
524*physynth2
-1.2722default:default2
clk_pl_02default:default2�
Qdesign_1_i/SkyNet_0/inst/FM_buf1_V_9_U/SkyNet_FM_buf1_V_0_ram_U/FM_buf1_V_9_q0[8]Qdesign_1_i/SkyNet_0/inst/FM_buf1_V_9_U/SkyNet_FM_buf1_V_0_ram_U/FM_buf1_V_9_q0[8]2default:default8Z32-952h px� 
�
:%s %s Timing Summary | WNS=%s | TNS=%s | WHS=%s | THS=%s |342*physynth2
Current2default:default2
 2default:default2
-1.2722default:default2

-21665.4132default:default2
0.0102default:default2
0.0002default:defaultZ32-668h px� 
Q
<Phase 11.2 Critical Path Optimization | Checksum: 17a536171
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:29:33 ; elapsed = 00:19:55 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0402default:default2
6014.7342default:default2
0.0002default:defaultZ17-268h px� 
�
OPost Physical Optimization Timing Summary | WNS=%s | TNS=%s | WHS=%s | THS=%s |343*physynth2
-1.2722default:default2

-21665.4132default:default2
0.0102default:default2
0.0002default:defaultZ32-669h px� 
Q
<Phase 11 Physical Synthesis in Router | Checksum: 18d6e8f99
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:29:36 ; elapsed = 00:19:57 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
�

%s
*constraints2o
[Time (s): cpu = 00:29:36 ; elapsed = 00:19:57 . Memory (MB): peak = 6014.734 ; gain = 0.0002default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
6142default:default2
52default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:29:542default:default2
00:20:092default:default2
6014.7342default:default2
0.0002default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0392default:default2
6014.7342default:default2
0.0002default:defaultZ17-268h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:302default:default2
00:00:112default:default2
6014.7342default:default2
0.0002default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2u
aC:/Users/Aperture/Git/SkyNet/FPGA_Final/RTL/Skynet/Skynet.runs/impl_1/design_1_wrapper_routed.dcp2default:defaultZ17-1381h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:422default:default2
00:00:242default:default2
6014.7342default:default2
0.0002default:defaultZ17-268h px� 
�
%s4*runtcl2�
�Executing : report_drc -file design_1_wrapper_drc_routed.rpt -pb design_1_wrapper_drc_routed.pb -rpx design_1_wrapper_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
xreport_drc -file design_1_wrapper_drc_routed.rpt -pb design_1_wrapper_drc_routed.pb -rpx design_1_wrapper_drc_routed.rpx2default:defaultZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
168*coretcl2�
eC:/Users/Aperture/Git/SkyNet/FPGA_Final/RTL/Skynet/Skynet.runs/impl_1/design_1_wrapper_drc_routed.rpteC:/Users/Aperture/Git/SkyNet/FPGA_Final/RTL/Skynet/Skynet.runs/impl_1/design_1_wrapper_drc_routed.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:292default:default2
00:00:162default:default2
6014.7342default:default2
0.0002default:defaultZ17-268h px� 
�
%s4*runtcl2�
�Executing : report_methodology -file design_1_wrapper_methodology_drc_routed.rpt -pb design_1_wrapper_methodology_drc_routed.pb -rpx design_1_wrapper_methodology_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
�report_methodology -file design_1_wrapper_methodology_drc_routed.rpt -pb design_1_wrapper_methodology_drc_routed.pb -rpx design_1_wrapper_methodology_drc_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px� 
�
2The results of Report Methodology are in file %s.
450*coretcl2�
qC:/Users/Aperture/Git/SkyNet/FPGA_Final/RTL/Skynet/Skynet.runs/impl_1/design_1_wrapper_methodology_drc_routed.rptqC:/Users/Aperture/Git/SkyNet/FPGA_Final/RTL/Skynet/Skynet.runs/impl_1/design_1_wrapper_methodology_drc_routed.rpt2default:default8Z2-1520h px� 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2(
report_methodology: 2default:default2
00:01:002default:default2
00:00:342default:default2
6241.9452default:default2
227.2112default:defaultZ17-268h px� 
�
%s4*runtcl2�
�Executing : report_power -file design_1_wrapper_power_routed.rpt -pb design_1_wrapper_power_summary_routed.pb -rpx design_1_wrapper_power_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
�report_power -file design_1_wrapper_power_routed.rpt -pb design_1_wrapper_power_summary_routed.pb -rpx design_1_wrapper_power_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
6262default:default2
52default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:01:132default:default2
00:00:442default:default2
6241.9452default:default2
0.0002default:defaultZ17-268h px� 
�
%s4*runtcl2�
mExecuting : report_route_status -file design_1_wrapper_route_status.rpt -pb design_1_wrapper_route_status.pb
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_timing_summary -max_paths 10 -file design_1_wrapper_timing_summary_routed.rpt -pb design_1_wrapper_timing_summary_routed.pb -rpx design_1_wrapper_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px� 
�
UpdateTimingParams:%s.
91*timing2O
; Speed grade: -1, Temperature grade: E, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px� 
�
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2+
report_timing_summary: 2default:default2
00:00:092default:default2
00:00:062default:default2
6241.9452default:default2
0.0002default:defaultZ17-268h px� 
�
%s4*runtcl2m
YExecuting : report_incremental_reuse -file design_1_wrapper_incremental_reuse_routed.rpt
2default:defaulth px� 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px� 
�
%s4*runtcl2m
YExecuting : report_clock_utilization -file design_1_wrapper_clock_utilization_routed.rpt
2default:defaulth px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
report_clock_utilization: 2default:default2
00:00:052default:default2
00:00:062default:default2
6241.9452default:default2
0.0002default:defaultZ17-268h px� 
�
%s4*runtcl2�
�Executing : report_bus_skew -warn_on_violation -file design_1_wrapper_bus_skew_routed.rpt -pb design_1_wrapper_bus_skew_routed.pb -rpx design_1_wrapper_bus_skew_routed.rpx
2default:defaulth px� 
�
UpdateTimingParams:%s.
91*timing2O
; Speed grade: -1, Temperature grade: E, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px� 


End Record