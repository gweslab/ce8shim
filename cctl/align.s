    AREA |.text|, CODE, READONLY

    IMPORT  g_CerfCctlTargets

    EXPORT  CerfCctlAlignCall
CerfCctlAlignCall
    stmfd   sp!, {r4-r8, lr}
    mov     r4, sp
    add     r5, sp, #24
    sub     sp, sp, #160
    bic     sp, sp, #7
    mov     r6, sp
    mov     r7, #32
cctl_cpy
    ldr     r8, [r5], #4
    str     r8, [r6], #4
    subs    r7, r7, #1
    bne     cctl_cpy
    mov     lr, pc
    bx      r12
    mov     sp, r4
    ldmfd   sp!, {r4-r8, pc}

    EXPORT  CerfCctlStub_0
CerfCctlStub_0
    ldr     r12, =g_CerfCctlTargets
    ldr     r12, [r12, #0]
    b       CerfCctlAlignCall

    EXPORT  CerfCctlStub_1
CerfCctlStub_1
    ldr     r12, =g_CerfCctlTargets
    ldr     r12, [r12, #4]
    b       CerfCctlAlignCall

    EXPORT  CerfCctlStub_2
CerfCctlStub_2
    ldr     r12, =g_CerfCctlTargets
    ldr     r12, [r12, #8]
    b       CerfCctlAlignCall

    EXPORT  CerfCctlStub_3
CerfCctlStub_3
    ldr     r12, =g_CerfCctlTargets
    ldr     r12, [r12, #12]
    b       CerfCctlAlignCall

    EXPORT  CerfCctlStub_4
CerfCctlStub_4
    ldr     r12, =g_CerfCctlTargets
    ldr     r12, [r12, #16]
    b       CerfCctlAlignCall

    EXPORT  CerfCctlStub_5
CerfCctlStub_5
    ldr     r12, =g_CerfCctlTargets
    ldr     r12, [r12, #20]
    b       CerfCctlAlignCall

    EXPORT  CerfCctlStub_6
CerfCctlStub_6
    ldr     r12, =g_CerfCctlTargets
    ldr     r12, [r12, #24]
    b       CerfCctlAlignCall

    EXPORT  CerfCctlStub_7
CerfCctlStub_7
    ldr     r12, =g_CerfCctlTargets
    ldr     r12, [r12, #28]
    b       CerfCctlAlignCall

    EXPORT  CerfCctlStub_8
CerfCctlStub_8
    ldr     r12, =g_CerfCctlTargets
    ldr     r12, [r12, #32]
    b       CerfCctlAlignCall

    EXPORT  CerfCctlStub_9
CerfCctlStub_9
    ldr     r12, =g_CerfCctlTargets
    ldr     r12, [r12, #36]
    b       CerfCctlAlignCall

    LTORG
    END
