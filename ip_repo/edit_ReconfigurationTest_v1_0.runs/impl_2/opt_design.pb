
O
Command: %s
53*	vivadotcl2

opt_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px� 
l
 Attempting to get a license: %s
78*common2*
PartialReconfiguration2default:defaultZ17-78h px� 
b
Feature available: %s
81*common2*
PartialReconfiguration2default:defaultZ17-81h px� 
n
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22h px� 
R

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
U
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461h px� 
d
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 1588.000 ; gain = 87.031 ; free physical = 1475 ; free virtual = 41232default:defaulth px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
a

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px� 
i

Phase %s%s
101*constraints2
1 2default:default2
Retarget2default:defaultZ18-101h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
K
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49h px� 
<
'Phase 1 Retarget | Checksum: 1110ea9ae
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.02 ; elapsed = 00:00:00.37 . Memory (MB): peak = 2041.492 ; gain = 0.000 ; free physical = 1083 ; free virtual = 37312default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2
Retarget2default:default2
02default:default2
02default:defaultZ31-389h px� 
u

Phase %s%s
101*constraints2
2 2default:default2(
Constant propagation2default:defaultZ18-101h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
H
3Phase 2 Constant propagation | Checksum: 1110ea9ae
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.02 ; elapsed = 00:00:00.37 . Memory (MB): peak = 2041.492 ; gain = 0.000 ; free physical = 1083 ; free virtual = 37312default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2(
Constant propagation2default:default2
02default:default2
02default:defaultZ31-389h px� 
f

Phase %s%s
101*constraints2
3 2default:default2
Sweep2default:defaultZ18-101h px� 
8
#Phase 3 Sweep | Checksum: b9c9c7a8
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.03 ; elapsed = 00:00:00.38 . Memory (MB): peak = 2041.492 ; gain = 0.000 ; free physical = 1083 ; free virtual = 37312default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2
Sweep2default:default2
02default:default2
02default:defaultZ31-389h px� 
r

Phase %s%s
101*constraints2
4 2default:default2%
BUFG optimization2default:defaultZ18-101h px� 
D
/Phase 4 BUFG optimization | Checksum: b9c9c7a8
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.04 ; elapsed = 00:00:00.39 . Memory (MB): peak = 2041.492 ; gain = 0.000 ; free physical = 1083 ; free virtual = 37312default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2%
BUFG optimization2default:default2
02default:default2
02default:defaultZ31-389h px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Shift Register Optimization2default:defaultZ18-101h px� 
N
9Phase 5 Shift Register Optimization | Checksum: b9c9c7a8
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.04 ; elapsed = 00:00:00.39 . Memory (MB): peak = 2041.492 ; gain = 0.000 ; free physical = 1083 ; free virtual = 37312default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2/
Shift Register Optimization2default:default2
02default:default2
02default:defaultZ31-389h px� 
a

Starting %s Task
103*constraints2&
Connectivity Check2default:defaultZ18-103h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2041.492 ; gain = 0.000 ; free physical = 1083 ; free virtual = 37312default:defaulth px� 
I
4Ending Logic Optimization Task | Checksum: b9c9c7a8
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.05 ; elapsed = 00:00:00.40 . Memory (MB): peak = 2041.492 ; gain = 0.000 ; free physical = 1083 ; free virtual = 37312default:defaulth px� 
a

Starting %s Task
103*constraints2&
Power Optimization2default:defaultZ18-103h px� 
s
7Will skip clock gating for clocks with period < %s ns.
114*pwropt2
2.002default:defaultZ34-132h px� 
J
5Ending Power Optimization Task | Checksum: 167041a3a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.02 ; elapsed = 00:00:00.02 . Memory (MB): peak = 2041.492 ; gain = 0.000 ; free physical = 1083 ; free virtual = 37312default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
232default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px� 
\
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
opt_design: 2default:default2
00:00:112default:default2
00:00:182default:default2
2041.4922default:default2
548.5272default:default2
10832default:default2
37312default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
t/home/tinytangent/ucore-plus-fpga/ip_repo/edit_ReconfigurationTest_v1_0.runs/impl_2/ReconfigurationTest_v1_0_opt.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
�Executing : report_drc -file ReconfigurationTest_v1_0_drc_opted.rpt -pb ReconfigurationTest_v1_0_drc_opted.pb -rpx ReconfigurationTest_v1_0_drc_opted.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
�report_drc -file ReconfigurationTest_v1_0_drc_opted.rpt -pb ReconfigurationTest_v1_0_drc_opted.pb -rpx ReconfigurationTest_v1_0_drc_opted.rpx2default:defaultZ4-113h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
168*coretcl2�
z/home/tinytangent/ucore-plus-fpga/ip_repo/edit_ReconfigurationTest_v1_0.runs/impl_2/ReconfigurationTest_v1_0_drc_opted.rptz/home/tinytangent/ucore-plus-fpga/ip_repo/edit_ReconfigurationTest_v1_0.runs/impl_2/ReconfigurationTest_v1_0_drc_opted.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 


End Record