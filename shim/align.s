    AREA |.text|, CODE, READONLY

    IMPORT  g_CerfTargets
    IMPORT  g_CerfMsvcrtGcvt

    EXPORT  CerfGcvtThunk
CerfGcvtThunk
    DCD     0xEC410B10
    mov     r0, r2
    mov     r1, r3
    ldr     r12, =g_CerfMsvcrtGcvt
    ldr     r12, [r12]
    bx      r12

    EXPORT  CerfCallAligned1
CerfCallAligned1
    stmfd   sp!, {r4, lr}
    mov     r12, r0
    mov     r0, r1
    mov     r4, sp
    bic     sp, sp, #7
    mov     lr, pc
    bx      r12
    mov     sp, r4
    ldmfd   sp!, {r4, pc}

    EXPORT  CerfCallAligned2
CerfCallAligned2
    stmfd   sp!, {r4, lr}
    mov     r12, r0
    mov     r0, r1
    mov     r1, r2
    mov     r4, sp
    bic     sp, sp, #7
    mov     lr, pc
    bx      r12
    mov     sp, r4
    ldmfd   sp!, {r4, pc}

    EXPORT  CerfCallAligned3
CerfCallAligned3
    stmfd   sp!, {r4, lr}
    mov     r12, r0
    mov     r0, r1
    mov     r1, r2
    mov     r2, r3
    mov     r4, sp
    bic     sp, sp, #7
    mov     lr, pc
    bx      r12
    mov     sp, r4
    ldmfd   sp!, {r4, pc}

    EXPORT  CerfAlignCall
CerfAlignCall
    stmfd   sp!, {r4-r8, lr}
    mov     r4, sp
    add     r5, sp, #24
    sub     sp, sp, #160
    bic     sp, sp, #7
    mov     r6, sp
    mov     r7, #32
cerf_cpy
    ldr     r8, [r5], #4
    str     r8, [r6], #4
    subs    r7, r7, #1
    bne     cerf_cpy
    mov     lr, pc
    bx      r12
    mov     sp, r4
    ldmfd   sp!, {r4-r8, pc}


    EXPORT  CerfStub_0
CerfStub_0
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #0]
    b       CerfAlignCall

    EXPORT  CerfStub_1
CerfStub_1
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #4]
    b       CerfAlignCall

    EXPORT  CerfStub_2
CerfStub_2
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #8]
    b       CerfAlignCall

    EXPORT  CerfStub_3
CerfStub_3
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #12]
    b       CerfAlignCall

    EXPORT  CerfStub_4
CerfStub_4
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #16]
    b       CerfAlignCall

    EXPORT  CerfStub_5
CerfStub_5
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #20]
    b       CerfAlignCall

    EXPORT  CerfStub_6
CerfStub_6
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #24]
    b       CerfAlignCall

    EXPORT  CerfStub_7
CerfStub_7
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #28]
    b       CerfAlignCall

    EXPORT  CerfStub_8
CerfStub_8
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #32]
    b       CerfAlignCall

    EXPORT  CerfStub_9
CerfStub_9
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #36]
    b       CerfAlignCall

    EXPORT  CerfStub_10
CerfStub_10
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #40]
    b       CerfAlignCall

    EXPORT  CerfStub_11
CerfStub_11
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #44]
    b       CerfAlignCall

    EXPORT  CerfStub_12
CerfStub_12
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #48]
    b       CerfAlignCall

    EXPORT  CerfStub_13
CerfStub_13
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #52]
    b       CerfAlignCall

    EXPORT  CerfStub_14
CerfStub_14
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #56]
    b       CerfAlignCall

    EXPORT  CerfStub_15
CerfStub_15
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #60]
    b       CerfAlignCall

    EXPORT  CerfStub_16
CerfStub_16
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #64]
    b       CerfAlignCall

    EXPORT  CerfStub_17
CerfStub_17
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #68]
    b       CerfAlignCall

    EXPORT  CerfStub_18
CerfStub_18
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #72]
    b       CerfAlignCall

    EXPORT  CerfStub_19
CerfStub_19
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #76]
    b       CerfAlignCall

    EXPORT  CerfStub_20
CerfStub_20
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #80]
    b       CerfAlignCall

    EXPORT  CerfStub_21
CerfStub_21
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #84]
    b       CerfAlignCall

    EXPORT  CerfStub_22
CerfStub_22
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #88]
    b       CerfAlignCall

    EXPORT  CerfStub_23
CerfStub_23
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #92]
    b       CerfAlignCall

    EXPORT  CerfStub_24
CerfStub_24
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #96]
    b       CerfAlignCall

    EXPORT  CerfStub_25
CerfStub_25
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #100]
    b       CerfAlignCall

    EXPORT  CerfStub_26
CerfStub_26
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #104]
    b       CerfAlignCall

    EXPORT  CerfStub_27
CerfStub_27
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #108]
    b       CerfAlignCall

    EXPORT  CerfStub_28
CerfStub_28
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #112]
    b       CerfAlignCall

    EXPORT  CerfStub_29
CerfStub_29
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #116]
    b       CerfAlignCall

    EXPORT  CerfStub_30
CerfStub_30
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #120]
    b       CerfAlignCall

    EXPORT  CerfStub_31
CerfStub_31
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #124]
    b       CerfAlignCall

    EXPORT  CerfStub_32
CerfStub_32
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #128]
    b       CerfAlignCall

    EXPORT  CerfStub_33
CerfStub_33
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #132]
    b       CerfAlignCall

    EXPORT  CerfStub_34
CerfStub_34
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #136]
    b       CerfAlignCall

    EXPORT  CerfStub_35
CerfStub_35
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #140]
    b       CerfAlignCall

    EXPORT  CerfStub_36
CerfStub_36
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #144]
    b       CerfAlignCall

    EXPORT  CerfStub_37
CerfStub_37
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #148]
    b       CerfAlignCall

    EXPORT  CerfStub_38
CerfStub_38
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #152]
    b       CerfAlignCall

    EXPORT  CerfStub_39
CerfStub_39
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #156]
    b       CerfAlignCall

    LTORG

    EXPORT  CerfStub_40
CerfStub_40
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #160]
    b       CerfAlignCall

    EXPORT  CerfStub_41
CerfStub_41
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #164]
    b       CerfAlignCall

    EXPORT  CerfStub_42
CerfStub_42
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #168]
    b       CerfAlignCall

    EXPORT  CerfStub_43
CerfStub_43
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #172]
    b       CerfAlignCall

    EXPORT  CerfStub_44
CerfStub_44
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #176]
    b       CerfAlignCall

    EXPORT  CerfStub_45
CerfStub_45
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #180]
    b       CerfAlignCall

    EXPORT  CerfStub_46
CerfStub_46
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #184]
    b       CerfAlignCall

    EXPORT  CerfStub_47
CerfStub_47
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #188]
    b       CerfAlignCall

    EXPORT  CerfStub_48
CerfStub_48
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #192]
    b       CerfAlignCall

    EXPORT  CerfStub_49
CerfStub_49
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #196]
    b       CerfAlignCall

    EXPORT  CerfStub_50
CerfStub_50
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #200]
    b       CerfAlignCall

    EXPORT  CerfStub_51
CerfStub_51
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #204]
    b       CerfAlignCall

    EXPORT  CerfStub_52
CerfStub_52
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #208]
    b       CerfAlignCall

    EXPORT  CerfStub_53
CerfStub_53
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #212]
    b       CerfAlignCall

    EXPORT  CerfStub_54
CerfStub_54
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #216]
    b       CerfAlignCall

    EXPORT  CerfStub_55
CerfStub_55
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #220]
    b       CerfAlignCall

    EXPORT  CerfStub_56
CerfStub_56
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #224]
    b       CerfAlignCall

    EXPORT  CerfStub_57
CerfStub_57
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #228]
    b       CerfAlignCall

    EXPORT  CerfStub_58
CerfStub_58
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #232]
    b       CerfAlignCall

    EXPORT  CerfStub_59
CerfStub_59
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #236]
    b       CerfAlignCall

    EXPORT  CerfStub_60
CerfStub_60
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #240]
    b       CerfAlignCall

    EXPORT  CerfStub_61
CerfStub_61
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #244]
    b       CerfAlignCall

    EXPORT  CerfStub_62
CerfStub_62
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #248]
    b       CerfAlignCall

    EXPORT  CerfStub_63
CerfStub_63
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #252]
    b       CerfAlignCall

    EXPORT  CerfStub_64
CerfStub_64
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #256]
    b       CerfAlignCall

    EXPORT  CerfStub_65
CerfStub_65
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #260]
    b       CerfAlignCall

    EXPORT  CerfStub_66
CerfStub_66
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #264]
    b       CerfAlignCall

    EXPORT  CerfStub_67
CerfStub_67
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #268]
    b       CerfAlignCall

    EXPORT  CerfStub_68
CerfStub_68
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #272]
    b       CerfAlignCall

    EXPORT  CerfStub_69
CerfStub_69
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #276]
    b       CerfAlignCall

    EXPORT  CerfStub_70
CerfStub_70
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #280]
    b       CerfAlignCall

    EXPORT  CerfStub_71
CerfStub_71
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #284]
    b       CerfAlignCall

    EXPORT  CerfStub_72
CerfStub_72
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #288]
    b       CerfAlignCall

    EXPORT  CerfStub_73
CerfStub_73
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #292]
    b       CerfAlignCall

    EXPORT  CerfStub_74
CerfStub_74
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #296]
    b       CerfAlignCall

    EXPORT  CerfStub_75
CerfStub_75
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #300]
    b       CerfAlignCall

    EXPORT  CerfStub_76
CerfStub_76
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #304]
    b       CerfAlignCall

    EXPORT  CerfStub_77
CerfStub_77
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #308]
    b       CerfAlignCall

    EXPORT  CerfStub_78
CerfStub_78
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #312]
    b       CerfAlignCall

    EXPORT  CerfStub_79
CerfStub_79
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #316]
    b       CerfAlignCall

    LTORG

    EXPORT  CerfStub_80
CerfStub_80
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #320]
    b       CerfAlignCall

    EXPORT  CerfStub_81
CerfStub_81
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #324]
    b       CerfAlignCall

    EXPORT  CerfStub_82
CerfStub_82
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #328]
    b       CerfAlignCall

    EXPORT  CerfStub_83
CerfStub_83
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #332]
    b       CerfAlignCall

    EXPORT  CerfStub_84
CerfStub_84
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #336]
    b       CerfAlignCall

    EXPORT  CerfStub_85
CerfStub_85
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #340]
    b       CerfAlignCall

    EXPORT  CerfStub_86
CerfStub_86
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #344]
    b       CerfAlignCall

    EXPORT  CerfStub_87
CerfStub_87
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #348]
    b       CerfAlignCall

    EXPORT  CerfStub_88
CerfStub_88
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #352]
    b       CerfAlignCall

    EXPORT  CerfStub_89
CerfStub_89
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #356]
    b       CerfAlignCall

    EXPORT  CerfStub_90
CerfStub_90
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #360]
    b       CerfAlignCall

    EXPORT  CerfStub_91
CerfStub_91
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #364]
    b       CerfAlignCall

    EXPORT  CerfStub_92
CerfStub_92
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #368]
    b       CerfAlignCall

    EXPORT  CerfStub_93
CerfStub_93
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #372]
    b       CerfAlignCall

    EXPORT  CerfStub_94
CerfStub_94
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #376]
    b       CerfAlignCall

    EXPORT  CerfStub_95
CerfStub_95
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #380]
    b       CerfAlignCall

    EXPORT  CerfStub_96
CerfStub_96
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #384]
    b       CerfAlignCall

    EXPORT  CerfStub_97
CerfStub_97
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #388]
    b       CerfAlignCall

    EXPORT  CerfStub_98
CerfStub_98
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #392]
    b       CerfAlignCall

    EXPORT  CerfStub_99
CerfStub_99
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #396]
    b       CerfAlignCall

    EXPORT  CerfStub_100
CerfStub_100
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #400]
    b       CerfAlignCall

    EXPORT  CerfStub_101
CerfStub_101
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #404]
    b       CerfAlignCall

    EXPORT  CerfStub_102
CerfStub_102
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #408]
    b       CerfAlignCall

    EXPORT  CerfStub_103
CerfStub_103
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #412]
    b       CerfAlignCall

    EXPORT  CerfStub_104
CerfStub_104
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #416]
    b       CerfAlignCall

    EXPORT  CerfStub_105
CerfStub_105
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #420]
    b       CerfAlignCall

    EXPORT  CerfStub_106
CerfStub_106
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #424]
    b       CerfAlignCall

    EXPORT  CerfStub_107
CerfStub_107
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #428]
    b       CerfAlignCall

    EXPORT  CerfStub_108
CerfStub_108
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #432]
    b       CerfAlignCall

    EXPORT  CerfStub_109
CerfStub_109
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #436]
    b       CerfAlignCall

    EXPORT  CerfStub_110
CerfStub_110
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #440]
    b       CerfAlignCall

    EXPORT  CerfStub_111
CerfStub_111
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #444]
    b       CerfAlignCall

    EXPORT  CerfStub_112
CerfStub_112
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #448]
    b       CerfAlignCall

    EXPORT  CerfStub_113
CerfStub_113
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #452]
    b       CerfAlignCall

    EXPORT  CerfStub_114
CerfStub_114
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #456]
    b       CerfAlignCall

    EXPORT  CerfStub_115
CerfStub_115
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #460]
    b       CerfAlignCall

    EXPORT  CerfStub_116
CerfStub_116
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #464]
    b       CerfAlignCall

    EXPORT  CerfStub_117
CerfStub_117
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #468]
    b       CerfAlignCall

    EXPORT  CerfStub_118
CerfStub_118
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #472]
    b       CerfAlignCall

    EXPORT  CerfStub_119
CerfStub_119
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #476]
    b       CerfAlignCall

    LTORG

    EXPORT  CerfStub_120
CerfStub_120
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #480]
    b       CerfAlignCall

    EXPORT  CerfStub_121
CerfStub_121
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #484]
    b       CerfAlignCall

    EXPORT  CerfStub_122
CerfStub_122
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #488]
    b       CerfAlignCall

    EXPORT  CerfStub_123
CerfStub_123
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #492]
    b       CerfAlignCall

    EXPORT  CerfStub_124
CerfStub_124
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #496]
    b       CerfAlignCall

    EXPORT  CerfStub_125
CerfStub_125
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #500]
    b       CerfAlignCall

    EXPORT  CerfStub_126
CerfStub_126
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #504]
    b       CerfAlignCall

    EXPORT  CerfStub_127
CerfStub_127
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #508]
    b       CerfAlignCall

    EXPORT  CerfStub_128
CerfStub_128
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #512]
    b       CerfAlignCall

    EXPORT  CerfStub_129
CerfStub_129
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #516]
    b       CerfAlignCall

    EXPORT  CerfStub_130
CerfStub_130
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #520]
    b       CerfAlignCall

    EXPORT  CerfStub_131
CerfStub_131
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #524]
    b       CerfAlignCall

    EXPORT  CerfStub_132
CerfStub_132
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #528]
    b       CerfAlignCall

    EXPORT  CerfStub_133
CerfStub_133
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #532]
    b       CerfAlignCall

    EXPORT  CerfStub_134
CerfStub_134
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #536]
    b       CerfAlignCall

    EXPORT  CerfStub_135
CerfStub_135
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #540]
    b       CerfAlignCall

    EXPORT  CerfStub_136
CerfStub_136
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #544]
    b       CerfAlignCall

    EXPORT  CerfStub_137
CerfStub_137
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #548]
    b       CerfAlignCall

    EXPORT  CerfStub_138
CerfStub_138
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #552]
    b       CerfAlignCall

    EXPORT  CerfStub_139
CerfStub_139
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #556]
    b       CerfAlignCall

    EXPORT  CerfStub_140
CerfStub_140
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #560]
    b       CerfAlignCall

    EXPORT  CerfStub_141
CerfStub_141
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #564]
    b       CerfAlignCall

    EXPORT  CerfStub_142
CerfStub_142
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #568]
    b       CerfAlignCall

    EXPORT  CerfStub_143
CerfStub_143
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #572]
    b       CerfAlignCall

    EXPORT  CerfStub_144
CerfStub_144
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #576]
    b       CerfAlignCall

    EXPORT  CerfStub_145
CerfStub_145
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #580]
    b       CerfAlignCall

    EXPORT  CerfStub_146
CerfStub_146
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #584]
    b       CerfAlignCall

    EXPORT  CerfStub_147
CerfStub_147
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #588]
    b       CerfAlignCall

    EXPORT  CerfStub_148
CerfStub_148
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #592]
    b       CerfAlignCall

    EXPORT  CerfStub_149
CerfStub_149
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #596]
    b       CerfAlignCall

    EXPORT  CerfStub_150
CerfStub_150
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #600]
    b       CerfAlignCall

    EXPORT  CerfStub_151
CerfStub_151
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #604]
    b       CerfAlignCall

    EXPORT  CerfStub_152
CerfStub_152
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #608]
    b       CerfAlignCall

    EXPORT  CerfStub_153
CerfStub_153
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #612]
    b       CerfAlignCall

    EXPORT  CerfStub_154
CerfStub_154
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #616]
    b       CerfAlignCall

    EXPORT  CerfStub_155
CerfStub_155
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #620]
    b       CerfAlignCall

    EXPORT  CerfStub_156
CerfStub_156
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #624]
    b       CerfAlignCall

    EXPORT  CerfStub_157
CerfStub_157
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #628]
    b       CerfAlignCall

    EXPORT  CerfStub_158
CerfStub_158
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #632]
    b       CerfAlignCall

    EXPORT  CerfStub_159
CerfStub_159
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #636]
    b       CerfAlignCall

    LTORG

    EXPORT  CerfStub_160
CerfStub_160
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #640]
    b       CerfAlignCall

    EXPORT  CerfStub_161
CerfStub_161
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #644]
    b       CerfAlignCall

    EXPORT  CerfStub_162
CerfStub_162
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #648]
    b       CerfAlignCall

    EXPORT  CerfStub_163
CerfStub_163
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #652]
    b       CerfAlignCall

    EXPORT  CerfStub_164
CerfStub_164
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #656]
    b       CerfAlignCall

    EXPORT  CerfStub_165
CerfStub_165
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #660]
    b       CerfAlignCall

    EXPORT  CerfStub_166
CerfStub_166
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #664]
    b       CerfAlignCall

    EXPORT  CerfStub_167
CerfStub_167
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #668]
    b       CerfAlignCall

    EXPORT  CerfStub_168
CerfStub_168
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #672]
    b       CerfAlignCall

    EXPORT  CerfStub_169
CerfStub_169
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #676]
    b       CerfAlignCall

    EXPORT  CerfStub_170
CerfStub_170
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #680]
    b       CerfAlignCall

    EXPORT  CerfStub_171
CerfStub_171
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #684]
    b       CerfAlignCall

    EXPORT  CerfStub_172
CerfStub_172
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #688]
    b       CerfAlignCall

    EXPORT  CerfStub_173
CerfStub_173
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #692]
    b       CerfAlignCall

    EXPORT  CerfStub_174
CerfStub_174
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #696]
    b       CerfAlignCall

    EXPORT  CerfStub_175
CerfStub_175
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #700]
    b       CerfAlignCall

    EXPORT  CerfStub_176
CerfStub_176
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #704]
    b       CerfAlignCall

    EXPORT  CerfStub_177
CerfStub_177
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #708]
    b       CerfAlignCall

    EXPORT  CerfStub_178
CerfStub_178
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #712]
    b       CerfAlignCall

    EXPORT  CerfStub_179
CerfStub_179
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #716]
    b       CerfAlignCall

    EXPORT  CerfStub_180
CerfStub_180
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #720]
    b       CerfAlignCall

    EXPORT  CerfStub_181
CerfStub_181
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #724]
    b       CerfAlignCall

    EXPORT  CerfStub_182
CerfStub_182
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #728]
    b       CerfAlignCall

    EXPORT  CerfStub_183
CerfStub_183
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #732]
    b       CerfAlignCall

    EXPORT  CerfStub_184
CerfStub_184
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #736]
    b       CerfAlignCall

    EXPORT  CerfStub_185
CerfStub_185
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #740]
    b       CerfAlignCall

    EXPORT  CerfStub_186
CerfStub_186
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #744]
    b       CerfAlignCall

    EXPORT  CerfStub_187
CerfStub_187
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #748]
    b       CerfAlignCall

    EXPORT  CerfStub_188
CerfStub_188
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #752]
    b       CerfAlignCall

    EXPORT  CerfStub_189
CerfStub_189
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #756]
    b       CerfAlignCall

    EXPORT  CerfStub_190
CerfStub_190
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #760]
    b       CerfAlignCall

    EXPORT  CerfStub_191
CerfStub_191
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #764]
    b       CerfAlignCall

    EXPORT  CerfStub_192
CerfStub_192
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #768]
    b       CerfAlignCall

    EXPORT  CerfStub_193
CerfStub_193
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #772]
    b       CerfAlignCall

    EXPORT  CerfStub_194
CerfStub_194
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #776]
    b       CerfAlignCall

    EXPORT  CerfStub_195
CerfStub_195
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #780]
    b       CerfAlignCall

    EXPORT  CerfStub_196
CerfStub_196
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #784]
    b       CerfAlignCall

    EXPORT  CerfStub_197
CerfStub_197
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #788]
    b       CerfAlignCall

    EXPORT  CerfStub_198
CerfStub_198
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #792]
    b       CerfAlignCall

    EXPORT  CerfStub_199
CerfStub_199
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #796]
    b       CerfAlignCall

    LTORG

    EXPORT  CerfStub_200
CerfStub_200
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #800]
    b       CerfAlignCall

    EXPORT  CerfStub_201
CerfStub_201
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #804]
    b       CerfAlignCall

    EXPORT  CerfStub_202
CerfStub_202
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #808]
    b       CerfAlignCall

    EXPORT  CerfStub_203
CerfStub_203
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #812]
    b       CerfAlignCall

    EXPORT  CerfStub_204
CerfStub_204
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #816]
    b       CerfAlignCall

    EXPORT  CerfStub_205
CerfStub_205
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #820]
    b       CerfAlignCall

    EXPORT  CerfStub_206
CerfStub_206
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #824]
    b       CerfAlignCall

    EXPORT  CerfStub_207
CerfStub_207
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #828]
    b       CerfAlignCall

    EXPORT  CerfStub_208
CerfStub_208
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #832]
    b       CerfAlignCall

    EXPORT  CerfStub_209
CerfStub_209
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #836]
    b       CerfAlignCall

    EXPORT  CerfStub_210
CerfStub_210
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #840]
    b       CerfAlignCall

    EXPORT  CerfStub_211
CerfStub_211
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #844]
    b       CerfAlignCall

    EXPORT  CerfStub_212
CerfStub_212
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #848]
    b       CerfAlignCall

    EXPORT  CerfStub_213
CerfStub_213
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #852]
    b       CerfAlignCall

    EXPORT  CerfStub_214
CerfStub_214
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #856]
    b       CerfAlignCall

    EXPORT  CerfStub_215
CerfStub_215
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #860]
    b       CerfAlignCall

    EXPORT  CerfStub_216
CerfStub_216
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #864]
    b       CerfAlignCall

    EXPORT  CerfStub_217
CerfStub_217
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #868]
    b       CerfAlignCall

    EXPORT  CerfStub_218
CerfStub_218
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #872]
    b       CerfAlignCall

    EXPORT  CerfStub_219
CerfStub_219
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #876]
    b       CerfAlignCall

    EXPORT  CerfStub_220
CerfStub_220
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #880]
    b       CerfAlignCall

    EXPORT  CerfStub_221
CerfStub_221
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #884]
    b       CerfAlignCall

    EXPORT  CerfStub_222
CerfStub_222
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #888]
    b       CerfAlignCall

    EXPORT  CerfStub_223
CerfStub_223
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #892]
    b       CerfAlignCall

    EXPORT  CerfStub_224
CerfStub_224
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #896]
    b       CerfAlignCall

    EXPORT  CerfStub_225
CerfStub_225
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #900]
    b       CerfAlignCall

    EXPORT  CerfStub_226
CerfStub_226
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #904]
    b       CerfAlignCall

    EXPORT  CerfStub_227
CerfStub_227
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #908]
    b       CerfAlignCall

    EXPORT  CerfStub_228
CerfStub_228
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #912]
    b       CerfAlignCall

    EXPORT  CerfStub_229
CerfStub_229
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #916]
    b       CerfAlignCall

    EXPORT  CerfStub_230
CerfStub_230
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #920]
    b       CerfAlignCall

    EXPORT  CerfStub_231
CerfStub_231
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #924]
    b       CerfAlignCall

    EXPORT  CerfStub_232
CerfStub_232
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #928]
    b       CerfAlignCall

    EXPORT  CerfStub_233
CerfStub_233
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #932]
    b       CerfAlignCall

    EXPORT  CerfStub_234
CerfStub_234
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #936]
    b       CerfAlignCall

    EXPORT  CerfStub_235
CerfStub_235
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #940]
    b       CerfAlignCall

    EXPORT  CerfStub_236
CerfStub_236
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #944]
    b       CerfAlignCall

    EXPORT  CerfStub_237
CerfStub_237
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #948]
    b       CerfAlignCall

    EXPORT  CerfStub_238
CerfStub_238
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #952]
    b       CerfAlignCall

    EXPORT  CerfStub_239
CerfStub_239
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #956]
    b       CerfAlignCall

    LTORG

    EXPORT  CerfStub_240
CerfStub_240
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #960]
    b       CerfAlignCall

    EXPORT  CerfStub_241
CerfStub_241
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #964]
    b       CerfAlignCall

    EXPORT  CerfStub_242
CerfStub_242
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #968]
    b       CerfAlignCall

    EXPORT  CerfStub_243
CerfStub_243
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #972]
    b       CerfAlignCall

    EXPORT  CerfStub_244
CerfStub_244
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #976]
    b       CerfAlignCall

    EXPORT  CerfStub_245
CerfStub_245
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #980]
    b       CerfAlignCall

    EXPORT  CerfStub_246
CerfStub_246
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #984]
    b       CerfAlignCall

    EXPORT  CerfStub_247
CerfStub_247
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #988]
    b       CerfAlignCall

    EXPORT  CerfStub_248
CerfStub_248
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #992]
    b       CerfAlignCall

    EXPORT  CerfStub_249
CerfStub_249
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #996]
    b       CerfAlignCall

    EXPORT  CerfStub_250
CerfStub_250
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1000]
    b       CerfAlignCall

    EXPORT  CerfStub_251
CerfStub_251
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1004]
    b       CerfAlignCall

    EXPORT  CerfStub_252
CerfStub_252
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1008]
    b       CerfAlignCall

    EXPORT  CerfStub_253
CerfStub_253
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1012]
    b       CerfAlignCall

    EXPORT  CerfStub_254
CerfStub_254
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1016]
    b       CerfAlignCall

    EXPORT  CerfStub_255
CerfStub_255
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1020]
    b       CerfAlignCall

    EXPORT  CerfStub_256
CerfStub_256
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1024]
    b       CerfAlignCall

    EXPORT  CerfStub_257
CerfStub_257
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1028]
    b       CerfAlignCall

    EXPORT  CerfStub_258
CerfStub_258
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1032]
    b       CerfAlignCall

    EXPORT  CerfStub_259
CerfStub_259
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1036]
    b       CerfAlignCall

    EXPORT  CerfStub_260
CerfStub_260
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1040]
    b       CerfAlignCall

    EXPORT  CerfStub_261
CerfStub_261
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1044]
    b       CerfAlignCall

    EXPORT  CerfStub_262
CerfStub_262
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1048]
    b       CerfAlignCall

    EXPORT  CerfStub_263
CerfStub_263
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1052]
    b       CerfAlignCall

    EXPORT  CerfStub_264
CerfStub_264
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1056]
    b       CerfAlignCall

    EXPORT  CerfStub_265
CerfStub_265
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1060]
    b       CerfAlignCall

    EXPORT  CerfStub_266
CerfStub_266
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1064]
    b       CerfAlignCall

    EXPORT  CerfStub_267
CerfStub_267
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1068]
    b       CerfAlignCall

    EXPORT  CerfStub_268
CerfStub_268
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1072]
    b       CerfAlignCall

    EXPORT  CerfStub_269
CerfStub_269
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1076]
    b       CerfAlignCall

    EXPORT  CerfStub_270
CerfStub_270
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1080]
    b       CerfAlignCall

    EXPORT  CerfStub_271
CerfStub_271
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1084]
    b       CerfAlignCall

    EXPORT  CerfStub_272
CerfStub_272
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1088]
    b       CerfAlignCall

    EXPORT  CerfStub_273
CerfStub_273
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1092]
    b       CerfAlignCall

    EXPORT  CerfStub_274
CerfStub_274
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1096]
    b       CerfAlignCall

    EXPORT  CerfStub_275
CerfStub_275
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1100]
    b       CerfAlignCall

    EXPORT  CerfStub_276
CerfStub_276
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1104]
    b       CerfAlignCall

    EXPORT  CerfStub_277
CerfStub_277
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1108]
    b       CerfAlignCall

    EXPORT  CerfStub_278
CerfStub_278
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1112]
    b       CerfAlignCall

    EXPORT  CerfStub_279
CerfStub_279
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1116]
    b       CerfAlignCall

    LTORG

    EXPORT  CerfStub_280
CerfStub_280
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1120]
    b       CerfAlignCall

    EXPORT  CerfStub_281
CerfStub_281
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1124]
    b       CerfAlignCall

    EXPORT  CerfStub_282
CerfStub_282
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1128]
    b       CerfAlignCall

    EXPORT  CerfStub_283
CerfStub_283
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1132]
    b       CerfAlignCall

    EXPORT  CerfStub_284
CerfStub_284
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1136]
    b       CerfAlignCall

    EXPORT  CerfStub_285
CerfStub_285
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1140]
    b       CerfAlignCall

    EXPORT  CerfStub_286
CerfStub_286
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1144]
    b       CerfAlignCall

    EXPORT  CerfStub_287
CerfStub_287
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1148]
    b       CerfAlignCall

    EXPORT  CerfStub_288
CerfStub_288
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1152]
    b       CerfAlignCall

    EXPORT  CerfStub_289
CerfStub_289
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1156]
    b       CerfAlignCall

    EXPORT  CerfStub_290
CerfStub_290
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1160]
    b       CerfAlignCall

    EXPORT  CerfStub_291
CerfStub_291
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1164]
    b       CerfAlignCall

    EXPORT  CerfStub_292
CerfStub_292
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1168]
    b       CerfAlignCall

    EXPORT  CerfStub_293
CerfStub_293
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1172]
    b       CerfAlignCall

    EXPORT  CerfStub_294
CerfStub_294
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1176]
    b       CerfAlignCall

    EXPORT  CerfStub_295
CerfStub_295
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1180]
    b       CerfAlignCall

    EXPORT  CerfStub_296
CerfStub_296
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1184]
    b       CerfAlignCall

    EXPORT  CerfStub_297
CerfStub_297
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1188]
    b       CerfAlignCall

    EXPORT  CerfStub_298
CerfStub_298
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1192]
    b       CerfAlignCall

    EXPORT  CerfStub_299
CerfStub_299
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1196]
    b       CerfAlignCall

    EXPORT  CerfStub_300
CerfStub_300
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1200]
    b       CerfAlignCall

    EXPORT  CerfStub_301
CerfStub_301
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1204]
    b       CerfAlignCall

    EXPORT  CerfStub_302
CerfStub_302
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1208]
    b       CerfAlignCall

    EXPORT  CerfStub_303
CerfStub_303
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1212]
    b       CerfAlignCall

    EXPORT  CerfStub_304
CerfStub_304
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1216]
    b       CerfAlignCall

    EXPORT  CerfStub_305
CerfStub_305
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1220]
    b       CerfAlignCall

    EXPORT  CerfStub_306
CerfStub_306
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1224]
    b       CerfAlignCall

    EXPORT  CerfStub_307
CerfStub_307
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1228]
    b       CerfAlignCall

    EXPORT  CerfStub_308
CerfStub_308
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1232]
    b       CerfAlignCall

    EXPORT  CerfStub_309
CerfStub_309
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1236]
    b       CerfAlignCall

    EXPORT  CerfStub_310
CerfStub_310
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1240]
    b       CerfAlignCall

    EXPORT  CerfStub_311
CerfStub_311
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1244]
    b       CerfAlignCall

    EXPORT  CerfStub_312
CerfStub_312
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1248]
    b       CerfAlignCall

    EXPORT  CerfStub_313
CerfStub_313
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1252]
    b       CerfAlignCall

    EXPORT  CerfStub_314
CerfStub_314
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1256]
    b       CerfAlignCall

    EXPORT  CerfStub_315
CerfStub_315
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1260]
    b       CerfAlignCall

    EXPORT  CerfStub_316
CerfStub_316
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1264]
    b       CerfAlignCall

    EXPORT  CerfStub_317
CerfStub_317
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1268]
    b       CerfAlignCall

    EXPORT  CerfStub_318
CerfStub_318
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1272]
    b       CerfAlignCall

    EXPORT  CerfStub_319
CerfStub_319
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1276]
    b       CerfAlignCall

    LTORG

    EXPORT  CerfStub_320
CerfStub_320
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1280]
    b       CerfAlignCall

    EXPORT  CerfStub_321
CerfStub_321
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1284]
    b       CerfAlignCall

    EXPORT  CerfStub_322
CerfStub_322
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1288]
    b       CerfAlignCall

    EXPORT  CerfStub_323
CerfStub_323
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1292]
    b       CerfAlignCall

    EXPORT  CerfStub_324
CerfStub_324
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1296]
    b       CerfAlignCall

    EXPORT  CerfStub_325
CerfStub_325
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1300]
    b       CerfAlignCall

    EXPORT  CerfStub_326
CerfStub_326
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1304]
    b       CerfAlignCall

    EXPORT  CerfStub_327
CerfStub_327
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1308]
    b       CerfAlignCall

    EXPORT  CerfStub_328
CerfStub_328
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1312]
    b       CerfAlignCall

    EXPORT  CerfStub_329
CerfStub_329
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1316]
    b       CerfAlignCall

    EXPORT  CerfStub_330
CerfStub_330
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1320]
    b       CerfAlignCall

    EXPORT  CerfStub_331
CerfStub_331
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1324]
    b       CerfAlignCall

    EXPORT  CerfStub_332
CerfStub_332
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1328]
    b       CerfAlignCall

    EXPORT  CerfStub_333
CerfStub_333
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1332]
    b       CerfAlignCall

    EXPORT  CerfStub_334
CerfStub_334
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1336]
    b       CerfAlignCall

    EXPORT  CerfStub_335
CerfStub_335
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1340]
    b       CerfAlignCall

    EXPORT  CerfStub_336
CerfStub_336
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1344]
    b       CerfAlignCall

    EXPORT  CerfStub_337
CerfStub_337
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1348]
    b       CerfAlignCall

    EXPORT  CerfStub_338
CerfStub_338
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1352]
    b       CerfAlignCall

    EXPORT  CerfStub_339
CerfStub_339
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1356]
    b       CerfAlignCall

    EXPORT  CerfStub_340
CerfStub_340
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1360]
    b       CerfAlignCall

    EXPORT  CerfStub_341
CerfStub_341
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1364]
    b       CerfAlignCall

    EXPORT  CerfStub_342
CerfStub_342
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1368]
    b       CerfAlignCall

    EXPORT  CerfStub_343
CerfStub_343
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1372]
    b       CerfAlignCall

    EXPORT  CerfStub_344
CerfStub_344
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1376]
    b       CerfAlignCall

    EXPORT  CerfStub_345
CerfStub_345
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1380]
    b       CerfAlignCall

    EXPORT  CerfStub_346
CerfStub_346
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1384]
    b       CerfAlignCall

    EXPORT  CerfStub_347
CerfStub_347
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1388]
    b       CerfAlignCall

    EXPORT  CerfStub_348
CerfStub_348
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1392]
    b       CerfAlignCall

    EXPORT  CerfStub_349
CerfStub_349
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1396]
    b       CerfAlignCall

    EXPORT  CerfStub_350
CerfStub_350
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1400]
    b       CerfAlignCall

    EXPORT  CerfStub_351
CerfStub_351
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1404]
    b       CerfAlignCall

    EXPORT  CerfStub_352
CerfStub_352
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1408]
    b       CerfAlignCall

    EXPORT  CerfStub_353
CerfStub_353
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1412]
    b       CerfAlignCall

    EXPORT  CerfStub_354
CerfStub_354
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1416]
    b       CerfAlignCall

    EXPORT  CerfStub_355
CerfStub_355
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1420]
    b       CerfAlignCall

    EXPORT  CerfStub_356
CerfStub_356
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1424]
    b       CerfAlignCall

    EXPORT  CerfStub_357
CerfStub_357
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1428]
    b       CerfAlignCall

    EXPORT  CerfStub_358
CerfStub_358
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1432]
    b       CerfAlignCall

    EXPORT  CerfStub_359
CerfStub_359
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1436]
    b       CerfAlignCall

    LTORG

    EXPORT  CerfStub_360
CerfStub_360
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1440]
    b       CerfAlignCall

    EXPORT  CerfStub_361
CerfStub_361
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1444]
    b       CerfAlignCall

    EXPORT  CerfStub_362
CerfStub_362
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1448]
    b       CerfAlignCall

    EXPORT  CerfStub_363
CerfStub_363
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1452]
    b       CerfAlignCall

    EXPORT  CerfStub_364
CerfStub_364
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1456]
    b       CerfAlignCall

    EXPORT  CerfStub_365
CerfStub_365
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1460]
    b       CerfAlignCall

    EXPORT  CerfStub_366
CerfStub_366
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1464]
    b       CerfAlignCall

    EXPORT  CerfStub_367
CerfStub_367
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1468]
    b       CerfAlignCall

    EXPORT  CerfStub_368
CerfStub_368
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1472]
    b       CerfAlignCall

    EXPORT  CerfStub_369
CerfStub_369
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1476]
    b       CerfAlignCall

    EXPORT  CerfStub_370
CerfStub_370
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1480]
    b       CerfAlignCall

    EXPORT  CerfStub_371
CerfStub_371
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1484]
    b       CerfAlignCall

    EXPORT  CerfStub_372
CerfStub_372
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1488]
    b       CerfAlignCall

    EXPORT  CerfStub_373
CerfStub_373
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1492]
    b       CerfAlignCall

    EXPORT  CerfStub_374
CerfStub_374
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1496]
    b       CerfAlignCall

    EXPORT  CerfStub_375
CerfStub_375
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1500]
    b       CerfAlignCall

    EXPORT  CerfStub_376
CerfStub_376
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1504]
    b       CerfAlignCall

    EXPORT  CerfStub_377
CerfStub_377
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1508]
    b       CerfAlignCall

    EXPORT  CerfStub_378
CerfStub_378
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1512]
    b       CerfAlignCall

    EXPORT  CerfStub_379
CerfStub_379
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1516]
    b       CerfAlignCall

    EXPORT  CerfStub_380
CerfStub_380
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1520]
    b       CerfAlignCall

    EXPORT  CerfStub_381
CerfStub_381
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1524]
    b       CerfAlignCall

    EXPORT  CerfStub_382
CerfStub_382
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1528]
    b       CerfAlignCall

    EXPORT  CerfStub_383
CerfStub_383
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1532]
    b       CerfAlignCall

    EXPORT  CerfStub_384
CerfStub_384
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1536]
    b       CerfAlignCall

    EXPORT  CerfStub_385
CerfStub_385
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1540]
    b       CerfAlignCall

    EXPORT  CerfStub_386
CerfStub_386
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1544]
    b       CerfAlignCall

    EXPORT  CerfStub_387
CerfStub_387
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1548]
    b       CerfAlignCall

    EXPORT  CerfStub_388
CerfStub_388
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1552]
    b       CerfAlignCall

    EXPORT  CerfStub_389
CerfStub_389
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1556]
    b       CerfAlignCall

    EXPORT  CerfStub_390
CerfStub_390
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1560]
    b       CerfAlignCall

    EXPORT  CerfStub_391
CerfStub_391
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1564]
    b       CerfAlignCall

    EXPORT  CerfStub_392
CerfStub_392
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1568]
    b       CerfAlignCall

    EXPORT  CerfStub_393
CerfStub_393
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1572]
    b       CerfAlignCall

    EXPORT  CerfStub_394
CerfStub_394
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1576]
    b       CerfAlignCall

    EXPORT  CerfStub_395
CerfStub_395
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1580]
    b       CerfAlignCall

    EXPORT  CerfStub_396
CerfStub_396
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1584]
    b       CerfAlignCall

    EXPORT  CerfStub_397
CerfStub_397
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1588]
    b       CerfAlignCall

    EXPORT  CerfStub_398
CerfStub_398
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1592]
    b       CerfAlignCall

    EXPORT  CerfStub_399
CerfStub_399
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1596]
    b       CerfAlignCall

    LTORG

    EXPORT  CerfStub_400
CerfStub_400
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1600]
    b       CerfAlignCall

    EXPORT  CerfStub_401
CerfStub_401
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1604]
    b       CerfAlignCall

    EXPORT  CerfStub_402
CerfStub_402
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1608]
    b       CerfAlignCall

    EXPORT  CerfStub_403
CerfStub_403
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1612]
    b       CerfAlignCall

    EXPORT  CerfStub_404
CerfStub_404
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1616]
    b       CerfAlignCall

    EXPORT  CerfStub_405
CerfStub_405
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1620]
    b       CerfAlignCall

    EXPORT  CerfStub_406
CerfStub_406
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1624]
    b       CerfAlignCall

    EXPORT  CerfStub_407
CerfStub_407
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1628]
    b       CerfAlignCall

    EXPORT  CerfStub_408
CerfStub_408
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1632]
    b       CerfAlignCall

    EXPORT  CerfStub_409
CerfStub_409
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1636]
    b       CerfAlignCall

    EXPORT  CerfStub_410
CerfStub_410
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1640]
    b       CerfAlignCall

    EXPORT  CerfStub_411
CerfStub_411
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1644]
    b       CerfAlignCall

    EXPORT  CerfStub_412
CerfStub_412
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1648]
    b       CerfAlignCall

    EXPORT  CerfStub_413
CerfStub_413
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1652]
    b       CerfAlignCall

    EXPORT  CerfStub_414
CerfStub_414
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1656]
    b       CerfAlignCall

    EXPORT  CerfStub_415
CerfStub_415
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1660]
    b       CerfAlignCall

    EXPORT  CerfStub_416
CerfStub_416
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1664]
    b       CerfAlignCall

    EXPORT  CerfStub_417
CerfStub_417
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1668]
    b       CerfAlignCall

    EXPORT  CerfStub_418
CerfStub_418
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1672]
    b       CerfAlignCall

    EXPORT  CerfStub_419
CerfStub_419
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1676]
    b       CerfAlignCall

    EXPORT  CerfStub_420
CerfStub_420
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1680]
    b       CerfAlignCall

    EXPORT  CerfStub_421
CerfStub_421
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1684]
    b       CerfAlignCall

    EXPORT  CerfStub_422
CerfStub_422
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1688]
    b       CerfAlignCall

    EXPORT  CerfStub_423
CerfStub_423
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1692]
    b       CerfAlignCall

    EXPORT  CerfStub_424
CerfStub_424
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1696]
    b       CerfAlignCall

    EXPORT  CerfStub_425
CerfStub_425
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1700]
    b       CerfAlignCall

    EXPORT  CerfStub_426
CerfStub_426
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1704]
    b       CerfAlignCall

    EXPORT  CerfStub_427
CerfStub_427
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1708]
    b       CerfAlignCall

    EXPORT  CerfStub_428
CerfStub_428
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1712]
    b       CerfAlignCall

    EXPORT  CerfStub_429
CerfStub_429
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1716]
    b       CerfAlignCall

    EXPORT  CerfStub_430
CerfStub_430
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1720]
    b       CerfAlignCall

    EXPORT  CerfStub_431
CerfStub_431
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1724]
    b       CerfAlignCall

    EXPORT  CerfStub_432
CerfStub_432
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1728]
    b       CerfAlignCall

    EXPORT  CerfStub_433
CerfStub_433
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1732]
    b       CerfAlignCall

    EXPORT  CerfStub_434
CerfStub_434
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1736]
    b       CerfAlignCall

    EXPORT  CerfStub_435
CerfStub_435
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1740]
    b       CerfAlignCall

    EXPORT  CerfStub_436
CerfStub_436
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1744]
    b       CerfAlignCall

    EXPORT  CerfStub_437
CerfStub_437
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1748]
    b       CerfAlignCall

    EXPORT  CerfStub_438
CerfStub_438
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1752]
    b       CerfAlignCall

    EXPORT  CerfStub_439
CerfStub_439
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1756]
    b       CerfAlignCall

    LTORG

    EXPORT  CerfStub_440
CerfStub_440
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1760]
    b       CerfAlignCall

    EXPORT  CerfStub_441
CerfStub_441
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1764]
    b       CerfAlignCall

    EXPORT  CerfStub_442
CerfStub_442
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1768]
    b       CerfAlignCall

    EXPORT  CerfStub_443
CerfStub_443
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1772]
    b       CerfAlignCall

    EXPORT  CerfStub_444
CerfStub_444
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1776]
    b       CerfAlignCall

    EXPORT  CerfStub_445
CerfStub_445
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1780]
    b       CerfAlignCall

    EXPORT  CerfStub_446
CerfStub_446
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1784]
    b       CerfAlignCall

    EXPORT  CerfStub_447
CerfStub_447
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1788]
    b       CerfAlignCall

    EXPORT  CerfStub_448
CerfStub_448
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1792]
    b       CerfAlignCall

    EXPORT  CerfStub_449
CerfStub_449
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1796]
    b       CerfAlignCall

    EXPORT  CerfStub_450
CerfStub_450
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1800]
    b       CerfAlignCall

    EXPORT  CerfStub_451
CerfStub_451
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1804]
    b       CerfAlignCall

    EXPORT  CerfStub_452
CerfStub_452
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1808]
    b       CerfAlignCall

    EXPORT  CerfStub_453
CerfStub_453
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1812]
    b       CerfAlignCall

    EXPORT  CerfStub_454
CerfStub_454
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1816]
    b       CerfAlignCall

    EXPORT  CerfStub_455
CerfStub_455
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1820]
    b       CerfAlignCall

    EXPORT  CerfStub_456
CerfStub_456
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1824]
    b       CerfAlignCall

    EXPORT  CerfStub_457
CerfStub_457
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1828]
    b       CerfAlignCall

    EXPORT  CerfStub_458
CerfStub_458
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1832]
    b       CerfAlignCall

    EXPORT  CerfStub_459
CerfStub_459
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1836]
    b       CerfAlignCall

    EXPORT  CerfStub_460
CerfStub_460
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1840]
    b       CerfAlignCall

    EXPORT  CerfStub_461
CerfStub_461
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1844]
    b       CerfAlignCall

    EXPORT  CerfStub_462
CerfStub_462
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1848]
    b       CerfAlignCall

    EXPORT  CerfStub_463
CerfStub_463
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1852]
    b       CerfAlignCall

    EXPORT  CerfStub_464
CerfStub_464
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1856]
    b       CerfAlignCall

    EXPORT  CerfStub_465
CerfStub_465
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1860]
    b       CerfAlignCall

    EXPORT  CerfStub_466
CerfStub_466
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1864]
    b       CerfAlignCall

    EXPORT  CerfStub_467
CerfStub_467
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1868]
    b       CerfAlignCall

    EXPORT  CerfStub_468
CerfStub_468
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1872]
    b       CerfAlignCall

    EXPORT  CerfStub_469
CerfStub_469
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1876]
    b       CerfAlignCall

    EXPORT  CerfStub_470
CerfStub_470
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1880]
    b       CerfAlignCall

    EXPORT  CerfStub_471
CerfStub_471
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1884]
    b       CerfAlignCall

    EXPORT  CerfStub_472
CerfStub_472
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1888]
    b       CerfAlignCall

    EXPORT  CerfStub_473
CerfStub_473
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1892]
    b       CerfAlignCall

    EXPORT  CerfStub_474
CerfStub_474
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1896]
    b       CerfAlignCall

    EXPORT  CerfStub_475
CerfStub_475
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1900]
    b       CerfAlignCall

    EXPORT  CerfStub_476
CerfStub_476
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1904]
    b       CerfAlignCall

    EXPORT  CerfStub_477
CerfStub_477
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1908]
    b       CerfAlignCall

    EXPORT  CerfStub_478
CerfStub_478
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1912]
    b       CerfAlignCall

    EXPORT  CerfStub_479
CerfStub_479
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1916]
    b       CerfAlignCall

    LTORG

    EXPORT  CerfStub_480
CerfStub_480
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1920]
    b       CerfAlignCall

    EXPORT  CerfStub_481
CerfStub_481
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1924]
    b       CerfAlignCall

    EXPORT  CerfStub_482
CerfStub_482
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1928]
    b       CerfAlignCall

    EXPORT  CerfStub_483
CerfStub_483
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1932]
    b       CerfAlignCall

    EXPORT  CerfStub_484
CerfStub_484
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1936]
    b       CerfAlignCall

    EXPORT  CerfStub_485
CerfStub_485
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1940]
    b       CerfAlignCall

    EXPORT  CerfStub_486
CerfStub_486
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1944]
    b       CerfAlignCall

    EXPORT  CerfStub_487
CerfStub_487
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1948]
    b       CerfAlignCall

    EXPORT  CerfStub_488
CerfStub_488
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1952]
    b       CerfAlignCall

    EXPORT  CerfStub_489
CerfStub_489
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1956]
    b       CerfAlignCall

    EXPORT  CerfStub_490
CerfStub_490
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1960]
    b       CerfAlignCall

    EXPORT  CerfStub_491
CerfStub_491
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1964]
    b       CerfAlignCall

    EXPORT  CerfStub_492
CerfStub_492
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1968]
    b       CerfAlignCall

    EXPORT  CerfStub_493
CerfStub_493
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1972]
    b       CerfAlignCall

    EXPORT  CerfStub_494
CerfStub_494
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1976]
    b       CerfAlignCall

    EXPORT  CerfStub_495
CerfStub_495
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1980]
    b       CerfAlignCall

    EXPORT  CerfStub_496
CerfStub_496
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1984]
    b       CerfAlignCall

    EXPORT  CerfStub_497
CerfStub_497
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1988]
    b       CerfAlignCall

    EXPORT  CerfStub_498
CerfStub_498
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1992]
    b       CerfAlignCall

    EXPORT  CerfStub_499
CerfStub_499
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #1996]
    b       CerfAlignCall

    EXPORT  CerfStub_500
CerfStub_500
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2000]
    b       CerfAlignCall

    EXPORT  CerfStub_501
CerfStub_501
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2004]
    b       CerfAlignCall

    EXPORT  CerfStub_502
CerfStub_502
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2008]
    b       CerfAlignCall

    EXPORT  CerfStub_503
CerfStub_503
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2012]
    b       CerfAlignCall

    EXPORT  CerfStub_504
CerfStub_504
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2016]
    b       CerfAlignCall

    EXPORT  CerfStub_505
CerfStub_505
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2020]
    b       CerfAlignCall

    EXPORT  CerfStub_506
CerfStub_506
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2024]
    b       CerfAlignCall

    EXPORT  CerfStub_507
CerfStub_507
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2028]
    b       CerfAlignCall

    EXPORT  CerfStub_508
CerfStub_508
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2032]
    b       CerfAlignCall

    EXPORT  CerfStub_509
CerfStub_509
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2036]
    b       CerfAlignCall

    EXPORT  CerfStub_510
CerfStub_510
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2040]
    b       CerfAlignCall

    EXPORT  CerfStub_511
CerfStub_511
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2044]
    b       CerfAlignCall

    EXPORT  CerfStub_512
CerfStub_512
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2048]
    b       CerfAlignCall

    EXPORT  CerfStub_513
CerfStub_513
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2052]
    b       CerfAlignCall

    EXPORT  CerfStub_514
CerfStub_514
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2056]
    b       CerfAlignCall

    EXPORT  CerfStub_515
CerfStub_515
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2060]
    b       CerfAlignCall

    EXPORT  CerfStub_516
CerfStub_516
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2064]
    b       CerfAlignCall

    EXPORT  CerfStub_517
CerfStub_517
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2068]
    b       CerfAlignCall

    EXPORT  CerfStub_518
CerfStub_518
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2072]
    b       CerfAlignCall

    EXPORT  CerfStub_519
CerfStub_519
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2076]
    b       CerfAlignCall

    LTORG

    EXPORT  CerfStub_520
CerfStub_520
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2080]
    b       CerfAlignCall

    EXPORT  CerfStub_521
CerfStub_521
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2084]
    b       CerfAlignCall

    EXPORT  CerfStub_522
CerfStub_522
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2088]
    b       CerfAlignCall

    EXPORT  CerfStub_523
CerfStub_523
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2092]
    b       CerfAlignCall

    EXPORT  CerfStub_524
CerfStub_524
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2096]
    b       CerfAlignCall

    EXPORT  CerfStub_525
CerfStub_525
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2100]
    b       CerfAlignCall

    EXPORT  CerfStub_526
CerfStub_526
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2104]
    b       CerfAlignCall

    EXPORT  CerfStub_527
CerfStub_527
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2108]
    b       CerfAlignCall

    EXPORT  CerfStub_528
CerfStub_528
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2112]
    b       CerfAlignCall

    EXPORT  CerfStub_529
CerfStub_529
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2116]
    b       CerfAlignCall

    EXPORT  CerfStub_530
CerfStub_530
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2120]
    b       CerfAlignCall

    EXPORT  CerfStub_531
CerfStub_531
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2124]
    b       CerfAlignCall

    EXPORT  CerfStub_532
CerfStub_532
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2128]
    b       CerfAlignCall

    EXPORT  CerfStub_533
CerfStub_533
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2132]
    b       CerfAlignCall

    EXPORT  CerfStub_534
CerfStub_534
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2136]
    b       CerfAlignCall

    EXPORT  CerfStub_535
CerfStub_535
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2140]
    b       CerfAlignCall

    EXPORT  CerfStub_536
CerfStub_536
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2144]
    b       CerfAlignCall

    EXPORT  CerfStub_537
CerfStub_537
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2148]
    b       CerfAlignCall

    EXPORT  CerfStub_538
CerfStub_538
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2152]
    b       CerfAlignCall

    EXPORT  CerfStub_539
CerfStub_539
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2156]
    b       CerfAlignCall

    EXPORT  CerfStub_540
CerfStub_540
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2160]
    b       CerfAlignCall

    EXPORT  CerfStub_541
CerfStub_541
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2164]
    b       CerfAlignCall

    EXPORT  CerfStub_542
CerfStub_542
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2168]
    b       CerfAlignCall

    EXPORT  CerfStub_543
CerfStub_543
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2172]
    b       CerfAlignCall

    EXPORT  CerfStub_544
CerfStub_544
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2176]
    b       CerfAlignCall

    EXPORT  CerfStub_545
CerfStub_545
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2180]
    b       CerfAlignCall

    EXPORT  CerfStub_546
CerfStub_546
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2184]
    b       CerfAlignCall

    EXPORT  CerfStub_547
CerfStub_547
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2188]
    b       CerfAlignCall

    EXPORT  CerfStub_548
CerfStub_548
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2192]
    b       CerfAlignCall

    EXPORT  CerfStub_549
CerfStub_549
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2196]
    b       CerfAlignCall

    EXPORT  CerfStub_550
CerfStub_550
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2200]
    b       CerfAlignCall

    EXPORT  CerfStub_551
CerfStub_551
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2204]
    b       CerfAlignCall

    EXPORT  CerfStub_552
CerfStub_552
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2208]
    b       CerfAlignCall

    EXPORT  CerfStub_553
CerfStub_553
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2212]
    b       CerfAlignCall

    EXPORT  CerfStub_554
CerfStub_554
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2216]
    b       CerfAlignCall

    EXPORT  CerfStub_555
CerfStub_555
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2220]
    b       CerfAlignCall

    EXPORT  CerfStub_556
CerfStub_556
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2224]
    b       CerfAlignCall

    EXPORT  CerfStub_557
CerfStub_557
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2228]
    b       CerfAlignCall

    EXPORT  CerfStub_558
CerfStub_558
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2232]
    b       CerfAlignCall

    EXPORT  CerfStub_559
CerfStub_559
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2236]
    b       CerfAlignCall

    LTORG

    EXPORT  CerfStub_560
CerfStub_560
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2240]
    b       CerfAlignCall

    EXPORT  CerfStub_561
CerfStub_561
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2244]
    b       CerfAlignCall

    EXPORT  CerfStub_562
CerfStub_562
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2248]
    b       CerfAlignCall

    EXPORT  CerfStub_563
CerfStub_563
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2252]
    b       CerfAlignCall

    EXPORT  CerfStub_564
CerfStub_564
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2256]
    b       CerfAlignCall

    EXPORT  CerfStub_565
CerfStub_565
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2260]
    b       CerfAlignCall

    EXPORT  CerfStub_566
CerfStub_566
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2264]
    b       CerfAlignCall

    EXPORT  CerfStub_567
CerfStub_567
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2268]
    b       CerfAlignCall

    EXPORT  CerfStub_568
CerfStub_568
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2272]
    b       CerfAlignCall

    EXPORT  CerfStub_569
CerfStub_569
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2276]
    b       CerfAlignCall

    EXPORT  CerfStub_570
CerfStub_570
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2280]
    b       CerfAlignCall

    EXPORT  CerfStub_571
CerfStub_571
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2284]
    b       CerfAlignCall

    EXPORT  CerfStub_572
CerfStub_572
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2288]
    b       CerfAlignCall

    EXPORT  CerfStub_573
CerfStub_573
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2292]
    b       CerfAlignCall

    EXPORT  CerfStub_574
CerfStub_574
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2296]
    b       CerfAlignCall

    EXPORT  CerfStub_575
CerfStub_575
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2300]
    b       CerfAlignCall

    EXPORT  CerfStub_576
CerfStub_576
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2304]
    b       CerfAlignCall

    EXPORT  CerfStub_577
CerfStub_577
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2308]
    b       CerfAlignCall

    EXPORT  CerfStub_578
CerfStub_578
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2312]
    b       CerfAlignCall

    EXPORT  CerfStub_579
CerfStub_579
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2316]
    b       CerfAlignCall

    EXPORT  CerfStub_580
CerfStub_580
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2320]
    b       CerfAlignCall

    EXPORT  CerfStub_581
CerfStub_581
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2324]
    b       CerfAlignCall

    EXPORT  CerfStub_582
CerfStub_582
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2328]
    b       CerfAlignCall

    EXPORT  CerfStub_583
CerfStub_583
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2332]
    b       CerfAlignCall

    EXPORT  CerfStub_584
CerfStub_584
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2336]
    b       CerfAlignCall

    EXPORT  CerfStub_585
CerfStub_585
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2340]
    b       CerfAlignCall

    EXPORT  CerfStub_586
CerfStub_586
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2344]
    b       CerfAlignCall

    EXPORT  CerfStub_587
CerfStub_587
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2348]
    b       CerfAlignCall

    EXPORT  CerfStub_588
CerfStub_588
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2352]
    b       CerfAlignCall

    EXPORT  CerfStub_589
CerfStub_589
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2356]
    b       CerfAlignCall

    EXPORT  CerfStub_590
CerfStub_590
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2360]
    b       CerfAlignCall

    EXPORT  CerfStub_591
CerfStub_591
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2364]
    b       CerfAlignCall

    EXPORT  CerfStub_592
CerfStub_592
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2368]
    b       CerfAlignCall

    EXPORT  CerfStub_593
CerfStub_593
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2372]
    b       CerfAlignCall

    EXPORT  CerfStub_594
CerfStub_594
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2376]
    b       CerfAlignCall

    EXPORT  CerfStub_595
CerfStub_595
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2380]
    b       CerfAlignCall

    EXPORT  CerfStub_596
CerfStub_596
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2384]
    b       CerfAlignCall

    EXPORT  CerfStub_597
CerfStub_597
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2388]
    b       CerfAlignCall

    EXPORT  CerfStub_598
CerfStub_598
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2392]
    b       CerfAlignCall

    EXPORT  CerfStub_599
CerfStub_599
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2396]
    b       CerfAlignCall

    LTORG

    EXPORT  CerfStub_600
CerfStub_600
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2400]
    b       CerfAlignCall

    EXPORT  CerfStub_601
CerfStub_601
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2404]
    b       CerfAlignCall

    EXPORT  CerfStub_602
CerfStub_602
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2408]
    b       CerfAlignCall

    EXPORT  CerfStub_603
CerfStub_603
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2412]
    b       CerfAlignCall

    EXPORT  CerfStub_604
CerfStub_604
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2416]
    b       CerfAlignCall

    EXPORT  CerfStub_605
CerfStub_605
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2420]
    b       CerfAlignCall

    EXPORT  CerfStub_606
CerfStub_606
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2424]
    b       CerfAlignCall

    EXPORT  CerfStub_607
CerfStub_607
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2428]
    b       CerfAlignCall

    EXPORT  CerfStub_608
CerfStub_608
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2432]
    b       CerfAlignCall

    EXPORT  CerfStub_609
CerfStub_609
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2436]
    b       CerfAlignCall

    EXPORT  CerfStub_610
CerfStub_610
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2440]
    b       CerfAlignCall

    EXPORT  CerfStub_611
CerfStub_611
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2444]
    b       CerfAlignCall

    EXPORT  CerfStub_612
CerfStub_612
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2448]
    b       CerfAlignCall

    EXPORT  CerfStub_613
CerfStub_613
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2452]
    b       CerfAlignCall

    EXPORT  CerfStub_614
CerfStub_614
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2456]
    b       CerfAlignCall

    EXPORT  CerfStub_615
CerfStub_615
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2460]
    b       CerfAlignCall

    EXPORT  CerfStub_616
CerfStub_616
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2464]
    b       CerfAlignCall

    EXPORT  CerfStub_617
CerfStub_617
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2468]
    b       CerfAlignCall

    EXPORT  CerfStub_618
CerfStub_618
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2472]
    b       CerfAlignCall

    EXPORT  CerfStub_619
CerfStub_619
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2476]
    b       CerfAlignCall

    EXPORT  CerfStub_620
CerfStub_620
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2480]
    b       CerfAlignCall

    EXPORT  CerfStub_621
CerfStub_621
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2484]
    b       CerfAlignCall

    EXPORT  CerfStub_622
CerfStub_622
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2488]
    b       CerfAlignCall

    EXPORT  CerfStub_623
CerfStub_623
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2492]
    b       CerfAlignCall

    EXPORT  CerfStub_624
CerfStub_624
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2496]
    b       CerfAlignCall

    EXPORT  CerfStub_625
CerfStub_625
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2500]
    b       CerfAlignCall

    EXPORT  CerfStub_626
CerfStub_626
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2504]
    b       CerfAlignCall

    EXPORT  CerfStub_627
CerfStub_627
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2508]
    b       CerfAlignCall

    EXPORT  CerfStub_628
CerfStub_628
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2512]
    b       CerfAlignCall

    EXPORT  CerfStub_629
CerfStub_629
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2516]
    b       CerfAlignCall

    EXPORT  CerfStub_630
CerfStub_630
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2520]
    b       CerfAlignCall

    EXPORT  CerfStub_631
CerfStub_631
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2524]
    b       CerfAlignCall

    EXPORT  CerfStub_632
CerfStub_632
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2528]
    b       CerfAlignCall

    EXPORT  CerfStub_633
CerfStub_633
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2532]
    b       CerfAlignCall

    EXPORT  CerfStub_634
CerfStub_634
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2536]
    b       CerfAlignCall

    EXPORT  CerfStub_635
CerfStub_635
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2540]
    b       CerfAlignCall

    EXPORT  CerfStub_636
CerfStub_636
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2544]
    b       CerfAlignCall

    EXPORT  CerfStub_637
CerfStub_637
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2548]
    b       CerfAlignCall

    EXPORT  CerfStub_638
CerfStub_638
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2552]
    b       CerfAlignCall

    EXPORT  CerfStub_639
CerfStub_639
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2556]
    b       CerfAlignCall

    LTORG

    EXPORT  CerfStub_640
CerfStub_640
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2560]
    b       CerfAlignCall

    EXPORT  CerfStub_641
CerfStub_641
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2564]
    b       CerfAlignCall

    EXPORT  CerfStub_642
CerfStub_642
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2568]
    b       CerfAlignCall

    EXPORT  CerfStub_643
CerfStub_643
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2572]
    b       CerfAlignCall

    EXPORT  CerfStub_644
CerfStub_644
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2576]
    b       CerfAlignCall

    EXPORT  CerfStub_645
CerfStub_645
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2580]
    b       CerfAlignCall

    EXPORT  CerfStub_646
CerfStub_646
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2584]
    b       CerfAlignCall

    EXPORT  CerfStub_647
CerfStub_647
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2588]
    b       CerfAlignCall

    EXPORT  CerfStub_648
CerfStub_648
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2592]
    b       CerfAlignCall

    EXPORT  CerfStub_649
CerfStub_649
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2596]
    b       CerfAlignCall

    EXPORT  CerfStub_650
CerfStub_650
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2600]
    b       CerfAlignCall

    EXPORT  CerfStub_651
CerfStub_651
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2604]
    b       CerfAlignCall

    EXPORT  CerfStub_652
CerfStub_652
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2608]
    b       CerfAlignCall

    EXPORT  CerfStub_653
CerfStub_653
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2612]
    b       CerfAlignCall

    EXPORT  CerfStub_654
CerfStub_654
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2616]
    b       CerfAlignCall

    EXPORT  CerfStub_655
CerfStub_655
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2620]
    b       CerfAlignCall

    EXPORT  CerfStub_656
CerfStub_656
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2624]
    b       CerfAlignCall

    EXPORT  CerfStub_657
CerfStub_657
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2628]
    b       CerfAlignCall

    EXPORT  CerfStub_658
CerfStub_658
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2632]
    b       CerfAlignCall

    EXPORT  CerfStub_659
CerfStub_659
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2636]
    b       CerfAlignCall

    EXPORT  CerfStub_660
CerfStub_660
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2640]
    b       CerfAlignCall

    EXPORT  CerfStub_661
CerfStub_661
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2644]
    b       CerfAlignCall

    EXPORT  CerfStub_662
CerfStub_662
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2648]
    b       CerfAlignCall

    EXPORT  CerfStub_663
CerfStub_663
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2652]
    b       CerfAlignCall

    EXPORT  CerfStub_664
CerfStub_664
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2656]
    b       CerfAlignCall

    EXPORT  CerfStub_665
CerfStub_665
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2660]
    b       CerfAlignCall

    EXPORT  CerfStub_666
CerfStub_666
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2664]
    b       CerfAlignCall

    EXPORT  CerfStub_667
CerfStub_667
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2668]
    b       CerfAlignCall

    EXPORT  CerfStub_668
CerfStub_668
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2672]
    b       CerfAlignCall

    EXPORT  CerfStub_669
CerfStub_669
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2676]
    b       CerfAlignCall

    EXPORT  CerfStub_670
CerfStub_670
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2680]
    b       CerfAlignCall

    EXPORT  CerfStub_671
CerfStub_671
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2684]
    b       CerfAlignCall

    EXPORT  CerfStub_672
CerfStub_672
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2688]
    b       CerfAlignCall

    EXPORT  CerfStub_673
CerfStub_673
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2692]
    b       CerfAlignCall

    EXPORT  CerfStub_674
CerfStub_674
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2696]
    b       CerfAlignCall

    EXPORT  CerfStub_675
CerfStub_675
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2700]
    b       CerfAlignCall

    EXPORT  CerfStub_676
CerfStub_676
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2704]
    b       CerfAlignCall

    EXPORT  CerfStub_677
CerfStub_677
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2708]
    b       CerfAlignCall

    EXPORT  CerfStub_678
CerfStub_678
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2712]
    b       CerfAlignCall

    EXPORT  CerfStub_679
CerfStub_679
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2716]
    b       CerfAlignCall

    LTORG

    EXPORT  CerfStub_680
CerfStub_680
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2720]
    b       CerfAlignCall

    EXPORT  CerfStub_681
CerfStub_681
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2724]
    b       CerfAlignCall

    EXPORT  CerfStub_682
CerfStub_682
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2728]
    b       CerfAlignCall

    EXPORT  CerfStub_683
CerfStub_683
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2732]
    b       CerfAlignCall

    EXPORT  CerfStub_684
CerfStub_684
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2736]
    b       CerfAlignCall

    EXPORT  CerfStub_685
CerfStub_685
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2740]
    b       CerfAlignCall

    EXPORT  CerfStub_686
CerfStub_686
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2744]
    b       CerfAlignCall

    EXPORT  CerfStub_687
CerfStub_687
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2748]
    b       CerfAlignCall

    EXPORT  CerfStub_688
CerfStub_688
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2752]
    b       CerfAlignCall

    EXPORT  CerfStub_689
CerfStub_689
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2756]
    b       CerfAlignCall

    EXPORT  CerfStub_690
CerfStub_690
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2760]
    b       CerfAlignCall

    EXPORT  CerfStub_691
CerfStub_691
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2764]
    b       CerfAlignCall

    EXPORT  CerfStub_692
CerfStub_692
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2768]
    b       CerfAlignCall

    EXPORT  CerfStub_693
CerfStub_693
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2772]
    b       CerfAlignCall

    EXPORT  CerfStub_694
CerfStub_694
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2776]
    b       CerfAlignCall

    EXPORT  CerfStub_695
CerfStub_695
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2780]
    b       CerfAlignCall

    EXPORT  CerfStub_696
CerfStub_696
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2784]
    b       CerfAlignCall

    EXPORT  CerfStub_697
CerfStub_697
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2788]
    b       CerfAlignCall

    EXPORT  CerfStub_698
CerfStub_698
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2792]
    b       CerfAlignCall

    EXPORT  CerfStub_699
CerfStub_699
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2796]
    b       CerfAlignCall

    EXPORT  CerfStub_700
CerfStub_700
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2800]
    b       CerfAlignCall

    EXPORT  CerfStub_701
CerfStub_701
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2804]
    b       CerfAlignCall

    EXPORT  CerfStub_702
CerfStub_702
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2808]
    b       CerfAlignCall

    EXPORT  CerfStub_703
CerfStub_703
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2812]
    b       CerfAlignCall

    EXPORT  CerfStub_704
CerfStub_704
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2816]
    b       CerfAlignCall

    EXPORT  CerfStub_705
CerfStub_705
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2820]
    b       CerfAlignCall

    EXPORT  CerfStub_706
CerfStub_706
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2824]
    b       CerfAlignCall

    EXPORT  CerfStub_707
CerfStub_707
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2828]
    b       CerfAlignCall

    EXPORT  CerfStub_708
CerfStub_708
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2832]
    b       CerfAlignCall

    EXPORT  CerfStub_709
CerfStub_709
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2836]
    b       CerfAlignCall

    EXPORT  CerfStub_710
CerfStub_710
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2840]
    b       CerfAlignCall

    EXPORT  CerfStub_711
CerfStub_711
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2844]
    b       CerfAlignCall

    EXPORT  CerfStub_712
CerfStub_712
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2848]
    b       CerfAlignCall

    EXPORT  CerfStub_713
CerfStub_713
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2852]
    b       CerfAlignCall

    EXPORT  CerfStub_714
CerfStub_714
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2856]
    b       CerfAlignCall

    EXPORT  CerfStub_715
CerfStub_715
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2860]
    b       CerfAlignCall

    EXPORT  CerfStub_716
CerfStub_716
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2864]
    b       CerfAlignCall

    EXPORT  CerfStub_717
CerfStub_717
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2868]
    b       CerfAlignCall

    EXPORT  CerfStub_718
CerfStub_718
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2872]
    b       CerfAlignCall

    EXPORT  CerfStub_719
CerfStub_719
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2876]
    b       CerfAlignCall

    LTORG

    EXPORT  CerfStub_720
CerfStub_720
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2880]
    b       CerfAlignCall

    EXPORT  CerfStub_721
CerfStub_721
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2884]
    b       CerfAlignCall

    EXPORT  CerfStub_722
CerfStub_722
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2888]
    b       CerfAlignCall

    EXPORT  CerfStub_723
CerfStub_723
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2892]
    b       CerfAlignCall

    EXPORT  CerfStub_724
CerfStub_724
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2896]
    b       CerfAlignCall

    EXPORT  CerfStub_725
CerfStub_725
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2900]
    b       CerfAlignCall

    EXPORT  CerfStub_726
CerfStub_726
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2904]
    b       CerfAlignCall

    EXPORT  CerfStub_727
CerfStub_727
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2908]
    b       CerfAlignCall

    EXPORT  CerfStub_728
CerfStub_728
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2912]
    b       CerfAlignCall

    EXPORT  CerfStub_729
CerfStub_729
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2916]
    b       CerfAlignCall

    EXPORT  CerfStub_730
CerfStub_730
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2920]
    b       CerfAlignCall

    EXPORT  CerfStub_731
CerfStub_731
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2924]
    b       CerfAlignCall

    EXPORT  CerfStub_732
CerfStub_732
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2928]
    b       CerfAlignCall

    EXPORT  CerfStub_733
CerfStub_733
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2932]
    b       CerfAlignCall

    EXPORT  CerfStub_734
CerfStub_734
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2936]
    b       CerfAlignCall

    EXPORT  CerfStub_735
CerfStub_735
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2940]
    b       CerfAlignCall

    EXPORT  CerfStub_736
CerfStub_736
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2944]
    b       CerfAlignCall

    EXPORT  CerfStub_737
CerfStub_737
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2948]
    b       CerfAlignCall

    EXPORT  CerfStub_738
CerfStub_738
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2952]
    b       CerfAlignCall

    EXPORT  CerfStub_739
CerfStub_739
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2956]
    b       CerfAlignCall

    EXPORT  CerfStub_740
CerfStub_740
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2960]
    b       CerfAlignCall

    EXPORT  CerfStub_741
CerfStub_741
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2964]
    b       CerfAlignCall

    EXPORT  CerfStub_742
CerfStub_742
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2968]
    b       CerfAlignCall

    EXPORT  CerfStub_743
CerfStub_743
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2972]
    b       CerfAlignCall

    EXPORT  CerfStub_744
CerfStub_744
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2976]
    b       CerfAlignCall

    EXPORT  CerfStub_745
CerfStub_745
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2980]
    b       CerfAlignCall

    EXPORT  CerfStub_746
CerfStub_746
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2984]
    b       CerfAlignCall

    EXPORT  CerfStub_747
CerfStub_747
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2988]
    b       CerfAlignCall

    EXPORT  CerfStub_748
CerfStub_748
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2992]
    b       CerfAlignCall

    EXPORT  CerfStub_749
CerfStub_749
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #2996]
    b       CerfAlignCall

    EXPORT  CerfStub_750
CerfStub_750
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3000]
    b       CerfAlignCall

    EXPORT  CerfStub_751
CerfStub_751
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3004]
    b       CerfAlignCall

    EXPORT  CerfStub_752
CerfStub_752
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3008]
    b       CerfAlignCall

    EXPORT  CerfStub_753
CerfStub_753
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3012]
    b       CerfAlignCall

    EXPORT  CerfStub_754
CerfStub_754
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3016]
    b       CerfAlignCall

    EXPORT  CerfStub_755
CerfStub_755
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3020]
    b       CerfAlignCall

    EXPORT  CerfStub_756
CerfStub_756
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3024]
    b       CerfAlignCall

    EXPORT  CerfStub_757
CerfStub_757
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3028]
    b       CerfAlignCall

    EXPORT  CerfStub_758
CerfStub_758
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3032]
    b       CerfAlignCall

    EXPORT  CerfStub_759
CerfStub_759
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3036]
    b       CerfAlignCall

    LTORG

    EXPORT  CerfStub_760
CerfStub_760
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3040]
    b       CerfAlignCall

    EXPORT  CerfStub_761
CerfStub_761
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3044]
    b       CerfAlignCall

    EXPORT  CerfStub_762
CerfStub_762
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3048]
    b       CerfAlignCall

    EXPORT  CerfStub_763
CerfStub_763
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3052]
    b       CerfAlignCall

    EXPORT  CerfStub_764
CerfStub_764
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3056]
    b       CerfAlignCall

    EXPORT  CerfStub_765
CerfStub_765
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3060]
    b       CerfAlignCall

    EXPORT  CerfStub_766
CerfStub_766
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3064]
    b       CerfAlignCall

    EXPORT  CerfStub_767
CerfStub_767
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3068]
    b       CerfAlignCall

    EXPORT  CerfStub_768
CerfStub_768
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3072]
    b       CerfAlignCall

    EXPORT  CerfStub_769
CerfStub_769
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3076]
    b       CerfAlignCall

    EXPORT  CerfStub_770
CerfStub_770
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3080]
    b       CerfAlignCall

    EXPORT  CerfStub_771
CerfStub_771
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3084]
    b       CerfAlignCall

    EXPORT  CerfStub_772
CerfStub_772
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3088]
    b       CerfAlignCall

    EXPORT  CerfStub_773
CerfStub_773
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3092]
    b       CerfAlignCall

    EXPORT  CerfStub_774
CerfStub_774
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3096]
    b       CerfAlignCall

    EXPORT  CerfStub_775
CerfStub_775
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3100]
    b       CerfAlignCall

    EXPORT  CerfStub_776
CerfStub_776
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3104]
    b       CerfAlignCall

    EXPORT  CerfStub_777
CerfStub_777
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3108]
    b       CerfAlignCall

    EXPORT  CerfStub_778
CerfStub_778
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3112]
    b       CerfAlignCall

    EXPORT  CerfStub_779
CerfStub_779
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3116]
    b       CerfAlignCall

    EXPORT  CerfStub_780
CerfStub_780
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3120]
    b       CerfAlignCall

    EXPORT  CerfStub_781
CerfStub_781
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3124]
    b       CerfAlignCall

    EXPORT  CerfStub_782
CerfStub_782
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3128]
    b       CerfAlignCall

    EXPORT  CerfStub_783
CerfStub_783
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3132]
    b       CerfAlignCall

    EXPORT  CerfStub_784
CerfStub_784
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3136]
    b       CerfAlignCall

    EXPORT  CerfStub_785
CerfStub_785
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3140]
    b       CerfAlignCall

    EXPORT  CerfStub_786
CerfStub_786
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3144]
    b       CerfAlignCall

    EXPORT  CerfStub_787
CerfStub_787
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3148]
    b       CerfAlignCall

    EXPORT  CerfStub_788
CerfStub_788
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3152]
    b       CerfAlignCall

    EXPORT  CerfStub_789
CerfStub_789
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3156]
    b       CerfAlignCall

    EXPORT  CerfStub_790
CerfStub_790
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3160]
    b       CerfAlignCall

    EXPORT  CerfStub_791
CerfStub_791
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3164]
    b       CerfAlignCall

    EXPORT  CerfStub_792
CerfStub_792
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3168]
    b       CerfAlignCall

    EXPORT  CerfStub_793
CerfStub_793
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3172]
    b       CerfAlignCall

    EXPORT  CerfStub_794
CerfStub_794
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3176]
    b       CerfAlignCall

    EXPORT  CerfStub_795
CerfStub_795
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3180]
    b       CerfAlignCall

    EXPORT  CerfStub_796
CerfStub_796
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3184]
    b       CerfAlignCall

    EXPORT  CerfStub_797
CerfStub_797
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3188]
    b       CerfAlignCall

    EXPORT  CerfStub_798
CerfStub_798
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3192]
    b       CerfAlignCall

    EXPORT  CerfStub_799
CerfStub_799
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3196]
    b       CerfAlignCall

    LTORG

    EXPORT  CerfStub_800
CerfStub_800
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3200]
    b       CerfAlignCall

    EXPORT  CerfStub_801
CerfStub_801
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3204]
    b       CerfAlignCall

    EXPORT  CerfStub_802
CerfStub_802
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3208]
    b       CerfAlignCall

    EXPORT  CerfStub_803
CerfStub_803
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3212]
    b       CerfAlignCall

    EXPORT  CerfStub_804
CerfStub_804
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3216]
    b       CerfAlignCall

    EXPORT  CerfStub_805
CerfStub_805
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3220]
    b       CerfAlignCall

    EXPORT  CerfStub_806
CerfStub_806
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3224]
    b       CerfAlignCall

    EXPORT  CerfStub_807
CerfStub_807
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3228]
    b       CerfAlignCall

    EXPORT  CerfStub_808
CerfStub_808
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3232]
    b       CerfAlignCall

    EXPORT  CerfStub_809
CerfStub_809
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3236]
    b       CerfAlignCall

    EXPORT  CerfStub_810
CerfStub_810
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3240]
    b       CerfAlignCall

    EXPORT  CerfStub_811
CerfStub_811
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3244]
    b       CerfAlignCall

    EXPORT  CerfStub_812
CerfStub_812
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3248]
    b       CerfAlignCall

    EXPORT  CerfStub_813
CerfStub_813
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3252]
    b       CerfAlignCall

    EXPORT  CerfStub_814
CerfStub_814
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3256]
    b       CerfAlignCall

    EXPORT  CerfStub_815
CerfStub_815
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3260]
    b       CerfAlignCall

    EXPORT  CerfStub_816
CerfStub_816
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3264]
    b       CerfAlignCall

    EXPORT  CerfStub_817
CerfStub_817
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3268]
    b       CerfAlignCall

    EXPORT  CerfStub_818
CerfStub_818
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3272]
    b       CerfAlignCall

    EXPORT  CerfStub_819
CerfStub_819
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3276]
    b       CerfAlignCall

    EXPORT  CerfStub_820
CerfStub_820
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3280]
    b       CerfAlignCall

    EXPORT  CerfStub_821
CerfStub_821
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3284]
    b       CerfAlignCall

    EXPORT  CerfStub_822
CerfStub_822
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3288]
    b       CerfAlignCall

    EXPORT  CerfStub_823
CerfStub_823
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3292]
    b       CerfAlignCall

    EXPORT  CerfStub_824
CerfStub_824
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3296]
    b       CerfAlignCall

    EXPORT  CerfStub_825
CerfStub_825
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3300]
    b       CerfAlignCall

    EXPORT  CerfStub_826
CerfStub_826
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3304]
    b       CerfAlignCall

    EXPORT  CerfStub_827
CerfStub_827
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3308]
    b       CerfAlignCall

    EXPORT  CerfStub_828
CerfStub_828
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3312]
    b       CerfAlignCall

    EXPORT  CerfStub_829
CerfStub_829
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3316]
    b       CerfAlignCall

    EXPORT  CerfStub_830
CerfStub_830
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3320]
    b       CerfAlignCall

    EXPORT  CerfStub_831
CerfStub_831
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3324]
    b       CerfAlignCall

    EXPORT  CerfStub_832
CerfStub_832
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3328]
    b       CerfAlignCall

    EXPORT  CerfStub_833
CerfStub_833
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3332]
    b       CerfAlignCall

    EXPORT  CerfStub_834
CerfStub_834
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3336]
    b       CerfAlignCall

    EXPORT  CerfStub_835
CerfStub_835
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3340]
    b       CerfAlignCall

    EXPORT  CerfStub_836
CerfStub_836
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3344]
    b       CerfAlignCall

    EXPORT  CerfStub_837
CerfStub_837
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3348]
    b       CerfAlignCall

    EXPORT  CerfStub_838
CerfStub_838
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3352]
    b       CerfAlignCall

    EXPORT  CerfStub_839
CerfStub_839
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3356]
    b       CerfAlignCall

    LTORG

    EXPORT  CerfStub_840
CerfStub_840
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3360]
    b       CerfAlignCall

    EXPORT  CerfStub_841
CerfStub_841
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3364]
    b       CerfAlignCall

    EXPORT  CerfStub_842
CerfStub_842
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3368]
    b       CerfAlignCall

    EXPORT  CerfStub_843
CerfStub_843
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3372]
    b       CerfAlignCall

    EXPORT  CerfStub_844
CerfStub_844
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3376]
    b       CerfAlignCall

    EXPORT  CerfStub_845
CerfStub_845
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3380]
    b       CerfAlignCall

    EXPORT  CerfStub_846
CerfStub_846
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3384]
    b       CerfAlignCall

    EXPORT  CerfStub_847
CerfStub_847
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3388]
    b       CerfAlignCall

    EXPORT  CerfStub_848
CerfStub_848
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3392]
    b       CerfAlignCall

    EXPORT  CerfStub_849
CerfStub_849
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3396]
    b       CerfAlignCall

    EXPORT  CerfStub_850
CerfStub_850
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3400]
    b       CerfAlignCall

    EXPORT  CerfStub_851
CerfStub_851
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3404]
    b       CerfAlignCall

    EXPORT  CerfStub_852
CerfStub_852
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3408]
    b       CerfAlignCall

    EXPORT  CerfStub_853
CerfStub_853
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3412]
    b       CerfAlignCall

    EXPORT  CerfStub_854
CerfStub_854
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3416]
    b       CerfAlignCall

    EXPORT  CerfStub_855
CerfStub_855
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3420]
    b       CerfAlignCall

    EXPORT  CerfStub_856
CerfStub_856
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3424]
    b       CerfAlignCall

    EXPORT  CerfStub_857
CerfStub_857
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3428]
    b       CerfAlignCall

    EXPORT  CerfStub_858
CerfStub_858
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3432]
    b       CerfAlignCall

    EXPORT  CerfStub_859
CerfStub_859
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3436]
    b       CerfAlignCall

    EXPORT  CerfStub_860
CerfStub_860
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3440]
    b       CerfAlignCall

    EXPORT  CerfStub_861
CerfStub_861
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3444]
    b       CerfAlignCall

    EXPORT  CerfStub_862
CerfStub_862
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3448]
    b       CerfAlignCall

    EXPORT  CerfStub_863
CerfStub_863
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3452]
    b       CerfAlignCall

    EXPORT  CerfStub_864
CerfStub_864
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3456]
    b       CerfAlignCall

    EXPORT  CerfStub_865
CerfStub_865
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3460]
    b       CerfAlignCall

    EXPORT  CerfStub_866
CerfStub_866
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3464]
    b       CerfAlignCall

    EXPORT  CerfStub_867
CerfStub_867
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3468]
    b       CerfAlignCall

    EXPORT  CerfStub_868
CerfStub_868
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3472]
    b       CerfAlignCall

    EXPORT  CerfStub_869
CerfStub_869
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3476]
    b       CerfAlignCall

    EXPORT  CerfStub_870
CerfStub_870
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3480]
    b       CerfAlignCall

    EXPORT  CerfStub_871
CerfStub_871
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3484]
    b       CerfAlignCall

    EXPORT  CerfStub_872
CerfStub_872
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3488]
    b       CerfAlignCall

    EXPORT  CerfStub_873
CerfStub_873
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3492]
    b       CerfAlignCall

    EXPORT  CerfStub_874
CerfStub_874
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3496]
    b       CerfAlignCall

    EXPORT  CerfStub_875
CerfStub_875
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3500]
    b       CerfAlignCall

    EXPORT  CerfStub_876
CerfStub_876
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3504]
    b       CerfAlignCall

    EXPORT  CerfStub_877
CerfStub_877
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3508]
    b       CerfAlignCall

    EXPORT  CerfStub_878
CerfStub_878
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3512]
    b       CerfAlignCall

    EXPORT  CerfStub_879
CerfStub_879
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3516]
    b       CerfAlignCall

    LTORG

    EXPORT  CerfStub_880
CerfStub_880
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3520]
    b       CerfAlignCall

    EXPORT  CerfStub_881
CerfStub_881
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3524]
    b       CerfAlignCall

    EXPORT  CerfStub_882
CerfStub_882
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3528]
    b       CerfAlignCall

    EXPORT  CerfStub_883
CerfStub_883
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3532]
    b       CerfAlignCall

    EXPORT  CerfStub_884
CerfStub_884
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3536]
    b       CerfAlignCall

    EXPORT  CerfStub_885
CerfStub_885
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3540]
    b       CerfAlignCall

    EXPORT  CerfStub_886
CerfStub_886
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3544]
    b       CerfAlignCall

    EXPORT  CerfStub_887
CerfStub_887
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3548]
    b       CerfAlignCall

    EXPORT  CerfStub_888
CerfStub_888
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3552]
    b       CerfAlignCall

    EXPORT  CerfStub_889
CerfStub_889
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3556]
    b       CerfAlignCall

    EXPORT  CerfStub_890
CerfStub_890
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3560]
    b       CerfAlignCall

    EXPORT  CerfStub_891
CerfStub_891
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3564]
    b       CerfAlignCall

    EXPORT  CerfStub_892
CerfStub_892
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3568]
    b       CerfAlignCall

    EXPORT  CerfStub_893
CerfStub_893
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3572]
    b       CerfAlignCall

    EXPORT  CerfStub_894
CerfStub_894
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3576]
    b       CerfAlignCall

    EXPORT  CerfStub_895
CerfStub_895
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3580]
    b       CerfAlignCall

    EXPORT  CerfStub_896
CerfStub_896
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3584]
    b       CerfAlignCall

    EXPORT  CerfStub_897
CerfStub_897
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3588]
    b       CerfAlignCall

    EXPORT  CerfStub_898
CerfStub_898
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3592]
    b       CerfAlignCall

    EXPORT  CerfStub_899
CerfStub_899
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3596]
    b       CerfAlignCall

    EXPORT  CerfStub_900
CerfStub_900
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3600]
    b       CerfAlignCall

    EXPORT  CerfStub_901
CerfStub_901
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3604]
    b       CerfAlignCall

    EXPORT  CerfStub_902
CerfStub_902
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3608]
    b       CerfAlignCall

    EXPORT  CerfStub_903
CerfStub_903
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3612]
    b       CerfAlignCall

    EXPORT  CerfStub_904
CerfStub_904
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3616]
    b       CerfAlignCall

    EXPORT  CerfStub_905
CerfStub_905
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3620]
    b       CerfAlignCall

    EXPORT  CerfStub_906
CerfStub_906
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3624]
    b       CerfAlignCall

    EXPORT  CerfStub_907
CerfStub_907
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3628]
    b       CerfAlignCall

    EXPORT  CerfStub_908
CerfStub_908
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3632]
    b       CerfAlignCall

    EXPORT  CerfStub_909
CerfStub_909
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3636]
    b       CerfAlignCall

    EXPORT  CerfStub_910
CerfStub_910
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3640]
    b       CerfAlignCall

    EXPORT  CerfStub_911
CerfStub_911
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3644]
    b       CerfAlignCall

    EXPORT  CerfStub_912
CerfStub_912
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3648]
    b       CerfAlignCall

    EXPORT  CerfStub_913
CerfStub_913
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3652]
    b       CerfAlignCall

    EXPORT  CerfStub_914
CerfStub_914
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3656]
    b       CerfAlignCall

    EXPORT  CerfStub_915
CerfStub_915
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3660]
    b       CerfAlignCall

    EXPORT  CerfStub_916
CerfStub_916
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3664]
    b       CerfAlignCall

    EXPORT  CerfStub_917
CerfStub_917
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3668]
    b       CerfAlignCall

    EXPORT  CerfStub_918
CerfStub_918
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3672]
    b       CerfAlignCall

    EXPORT  CerfStub_919
CerfStub_919
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3676]
    b       CerfAlignCall

    LTORG

    EXPORT  CerfStub_920
CerfStub_920
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3680]
    b       CerfAlignCall

    EXPORT  CerfStub_921
CerfStub_921
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3684]
    b       CerfAlignCall

    EXPORT  CerfStub_922
CerfStub_922
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3688]
    b       CerfAlignCall

    EXPORT  CerfStub_923
CerfStub_923
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3692]
    b       CerfAlignCall

    EXPORT  CerfStub_924
CerfStub_924
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3696]
    b       CerfAlignCall

    EXPORT  CerfStub_925
CerfStub_925
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3700]
    b       CerfAlignCall

    EXPORT  CerfStub_926
CerfStub_926
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3704]
    b       CerfAlignCall

    EXPORT  CerfStub_927
CerfStub_927
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3708]
    b       CerfAlignCall

    EXPORT  CerfStub_928
CerfStub_928
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3712]
    b       CerfAlignCall

    EXPORT  CerfStub_929
CerfStub_929
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3716]
    b       CerfAlignCall

    EXPORT  CerfStub_930
CerfStub_930
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3720]
    b       CerfAlignCall

    EXPORT  CerfStub_931
CerfStub_931
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3724]
    b       CerfAlignCall

    EXPORT  CerfStub_932
CerfStub_932
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3728]
    b       CerfAlignCall

    EXPORT  CerfStub_933
CerfStub_933
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3732]
    b       CerfAlignCall

    EXPORT  CerfStub_934
CerfStub_934
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3736]
    b       CerfAlignCall

    EXPORT  CerfStub_935
CerfStub_935
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3740]
    b       CerfAlignCall

    EXPORT  CerfStub_936
CerfStub_936
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3744]
    b       CerfAlignCall

    EXPORT  CerfStub_937
CerfStub_937
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3748]
    b       CerfAlignCall

    EXPORT  CerfStub_938
CerfStub_938
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3752]
    b       CerfAlignCall

    EXPORT  CerfStub_939
CerfStub_939
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3756]
    b       CerfAlignCall

    EXPORT  CerfStub_940
CerfStub_940
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3760]
    b       CerfAlignCall

    EXPORT  CerfStub_941
CerfStub_941
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3764]
    b       CerfAlignCall

    EXPORT  CerfStub_942
CerfStub_942
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3768]
    b       CerfAlignCall

    EXPORT  CerfStub_943
CerfStub_943
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3772]
    b       CerfAlignCall

    EXPORT  CerfStub_944
CerfStub_944
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3776]
    b       CerfAlignCall

    EXPORT  CerfStub_945
CerfStub_945
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3780]
    b       CerfAlignCall

    EXPORT  CerfStub_946
CerfStub_946
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3784]
    b       CerfAlignCall

    EXPORT  CerfStub_947
CerfStub_947
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3788]
    b       CerfAlignCall

    EXPORT  CerfStub_948
CerfStub_948
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3792]
    b       CerfAlignCall

    EXPORT  CerfStub_949
CerfStub_949
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3796]
    b       CerfAlignCall

    EXPORT  CerfStub_950
CerfStub_950
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3800]
    b       CerfAlignCall

    EXPORT  CerfStub_951
CerfStub_951
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3804]
    b       CerfAlignCall

    EXPORT  CerfStub_952
CerfStub_952
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3808]
    b       CerfAlignCall

    EXPORT  CerfStub_953
CerfStub_953
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3812]
    b       CerfAlignCall

    EXPORT  CerfStub_954
CerfStub_954
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3816]
    b       CerfAlignCall

    EXPORT  CerfStub_955
CerfStub_955
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3820]
    b       CerfAlignCall

    EXPORT  CerfStub_956
CerfStub_956
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3824]
    b       CerfAlignCall

    EXPORT  CerfStub_957
CerfStub_957
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3828]
    b       CerfAlignCall

    EXPORT  CerfStub_958
CerfStub_958
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3832]
    b       CerfAlignCall

    EXPORT  CerfStub_959
CerfStub_959
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3836]
    b       CerfAlignCall

    LTORG

    EXPORT  CerfStub_960
CerfStub_960
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3840]
    b       CerfAlignCall

    EXPORT  CerfStub_961
CerfStub_961
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3844]
    b       CerfAlignCall

    EXPORT  CerfStub_962
CerfStub_962
    ldr     r12, =g_CerfTargets
    ldr     r12, [r12, #3848]
    b       CerfAlignCall

    LTORG
    END
