
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0102default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0102default:defaultZ17-349h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
82default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
B
-Phase 1 Build RT Design | Checksum: 8c521ccf
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:09 ; elapsed = 00:00:08 . Memory (MB): peak = 3407.082 ; gain = 0.000 ; free physical = 6651 ; free virtual = 226222default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
A
,Phase 2.1 Create Timer | Checksum: 8c521ccf
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:09 ; elapsed = 00:00:08 . Memory (MB): peak = 3407.082 ; gain = 0.000 ; free physical = 6652 ; free virtual = 226232default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.2 Fix Topology Constraints | Checksum: 8c521ccf
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:09 ; elapsed = 00:00:08 . Memory (MB): peak = 3408.938 ; gain = 1.855 ; free physical = 6619 ; free virtual = 225912default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.3 Pre Route Cleanup | Checksum: 8c521ccf
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:09 ; elapsed = 00:00:08 . Memory (MB): peak = 3408.938 ; gain = 1.855 ; free physical = 6619 ; free virtual = 225912default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 1d797fc45
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:11 ; elapsed = 00:00:09 . Memory (MB): peak = 3420.938 ; gain = 13.855 ; free physical = 6611 ; free virtual = 225832default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=12.867 | TNS=0.000  | WHS=-0.169 | THS=-30.563|
2default:defaultZ35-416h px? 
I
4Phase 2 Router Initialization | Checksum: 1f17bdc95
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:12 ; elapsed = 00:00:09 . Memory (MB): peak = 3422.938 ; gain = 15.855 ; free physical = 6610 ; free virtual = 225822default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
3.1 2default:default2"
Global Routing2default:defaultZ18-101h px? 
D
/Phase 3.1 Global Routing | Checksum: 1f17bdc95
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:12 ; elapsed = 00:00:09 . Memory (MB): peak = 3422.938 ; gain = 15.855 ; free physical = 6610 ; free virtual = 225822default:defaulth px? 
B
-Phase 3 Initial Routing | Checksum: eb366ce7
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:12 ; elapsed = 00:00:09 . Memory (MB): peak = 3454.953 ; gain = 47.871 ; free physical = 6610 ; free virtual = 225822default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=12.386 | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 4.1 Global Iteration 0 | Checksum: ae487a98
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:13 ; elapsed = 00:00:10 . Memory (MB): peak = 3454.953 ; gain = 47.871 ; free physical = 6608 ; free virtual = 225802default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=12.386 | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 4.2 Global Iteration 1 | Checksum: 822e6afc
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:10 . Memory (MB): peak = 3454.953 ; gain = 47.871 ; free physical = 6608 ; free virtual = 225802default:defaulth px? 
E
0Phase 4 Rip-up And Reroute | Checksum: 822e6afc
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:10 . Memory (MB): peak = 3454.953 ; gain = 47.871 ; free physical = 6608 ; free virtual = 225802default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
B
-Phase 5.1 Delay CleanUp | Checksum: 822e6afc
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:10 . Memory (MB): peak = 3454.953 ; gain = 47.871 ; free physical = 6608 ; free virtual = 225802default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
L
7Phase 5.2 Clock Skew Optimization | Checksum: 822e6afc
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:10 . Memory (MB): peak = 3454.953 ; gain = 47.871 ; free physical = 6608 ; free virtual = 225802default:defaulth px? 
N
9Phase 5 Delay and Skew Optimization | Checksum: 822e6afc
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:10 . Memory (MB): peak = 3454.953 ; gain = 47.871 ; free physical = 6608 ; free virtual = 225802default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 14ab59283
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:10 . Memory (MB): peak = 3454.953 ; gain = 47.871 ; free physical = 6608 ; free virtual = 225802default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=12.501 | TNS=0.000  | WHS=0.022  | THS=0.000  |
2default:defaultZ35-416h px? 
B
-Phase 6.1 Hold Fix Iter | Checksum: 8a836637
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:10 . Memory (MB): peak = 3454.953 ; gain = 47.871 ; free physical = 6608 ; free virtual = 225802default:defaulth px? 
@
+Phase 6 Post Hold Fix | Checksum: 8a836637
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:10 . Memory (MB): peak = 3454.953 ; gain = 47.871 ; free physical = 6608 ; free virtual = 225802default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 1122c9f6f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:10 . Memory (MB): peak = 3454.953 ; gain = 47.871 ; free physical = 6608 ; free virtual = 225802default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 1122c9f6f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:10 . Memory (MB): peak = 3454.953 ; gain = 47.871 ; free physical = 6607 ; free virtual = 225792default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 15ed64871
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:14 ; elapsed = 00:00:10 . Memory (MB): peak = 3502.977 ; gain = 95.895 ; free physical = 6606 ; free virtual = 225782default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Estimated Timing Summary %s
57*route2J
6| WNS=12.501 | TNS=0.000  | WHS=0.022  | THS=0.000  |
2default:defaultZ35-57h px? 
?
?The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px? 
G
2Phase 10 Post Router Timing | Checksum: 15ed64871
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:15 ; elapsed = 00:00:10 . Memory (MB): peak = 3502.977 ; gain = 95.895 ; free physical = 6607 ; free virtual = 225792default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:15 ; elapsed = 00:00:10 . Memory (MB): peak = 3502.977 ; gain = 95.895 ; free physical = 6639 ; free virtual = 226112default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
962default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:00:172default:default2
00:00:112default:default2
3502.9772default:default2
95.8952default:default2
66392default:default2
226112default:defaultZ17-722h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:00.722default:default2
00:00:00.242default:default2
3502.9772default:default2
0.0002default:default2
66262default:default2
226042default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2}
i/thayerfs/home/f003j8y/ENGS62/Module4/workspace/module4/module4.runs/impl_1/module4_hw_wrapper_routed.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
?Executing : report_drc -file module4_hw_wrapper_drc_routed.rpt -pb module4_hw_wrapper_drc_routed.pb -rpx module4_hw_wrapper_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
~report_drc -file module4_hw_wrapper_drc_routed.rpt -pb module4_hw_wrapper_drc_routed.pb -rpx module4_hw_wrapper_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
586*	vivadotcl2?
m/thayerfs/home/f003j8y/ENGS62/Module4/workspace/module4/module4.runs/impl_1/module4_hw_wrapper_drc_routed.rptm/thayerfs/home/f003j8y/ENGS62/Module4/workspace/module4/module4.runs/impl_1/module4_hw_wrapper_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file module4_hw_wrapper_methodology_drc_routed.rpt -pb module4_hw_wrapper_methodology_drc_routed.pb -rpx module4_hw_wrapper_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file module4_hw_wrapper_methodology_drc_routed.rpt -pb module4_hw_wrapper_methodology_drc_routed.pb -rpx module4_hw_wrapper_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
82default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
609*	vivadotcl2?
y/thayerfs/home/f003j8y/ENGS62/Module4/workspace/module4/module4.runs/impl_1/module4_hw_wrapper_methodology_drc_routed.rpty/thayerfs/home/f003j8y/ENGS62/Module4/workspace/module4/module4.runs/impl_1/module4_hw_wrapper_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_power -file module4_hw_wrapper_power_routed.rpt -pb module4_hw_wrapper_power_summary_routed.pb -rpx module4_hw_wrapper_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_power -file module4_hw_wrapper_power_routed.rpt -pb module4_hw_wrapper_power_summary_routed.pb -rpx module4_hw_wrapper_power_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1082default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
%s4*runtcl2?
qExecuting : report_route_status -file module4_hw_wrapper_route_status.rpt -pb module4_hw_wrapper_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -report_unconstrained -file module4_hw_wrapper_timing_summary_routed.rpt -pb module4_hw_wrapper_timing_summary_routed.pb -rpx module4_hw_wrapper_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px? 
?
%s4*runtcl2o
[Executing : report_incremental_reuse -file module4_hw_wrapper_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2o
[Executing : report_clock_utilization -file module4_hw_wrapper_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file module4_hw_wrapper_bus_skew_routed.rpt -pb module4_hw_wrapper_bus_skew_routed.pb -rpx module4_hw_wrapper_bus_skew_routed.rpx
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px? 


End Record