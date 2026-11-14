.class public Lcom/transsion/camera/app/ui/ShutterUI;
.super Lcom/transsion/camera/app/ui/AbstractShutterUI;
.source "ShutterUI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;-><init>()V

    return-void
.end method


# virtual methods
.method protected getUISpecFromType(I)Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;
    .locals 14

    .line 20
    new-instance p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;-><init>()V

    const v0, 0x7f0806fa

    const v1, 0x7f0806f9

    const v2, 0x7f08047c

    const v3, 0x7f080686

    const v4, 0x7f080477

    const v5, 0x7f08069f

    const v6, 0x7f08069d

    const v7, 0x7f080694

    const v8, 0x7f08047b

    const v9, 0x7f08046f

    const v10, 0x7f080474

    const v11, 0x7f08066d

    const v12, 0x7f080668

    const v13, 0x7f080470

    packed-switch p1, :pswitch_data_0

    .line 129
    :pswitch_0
    iput v9, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    .line 130
    iput v13, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleSmallDrawableId:I

    .line 131
    iput v12, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    .line 132
    iput v11, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    const p1, 0x7f080471

    .line 133
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080662

    .line 134
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    const p1, 0x7f080667

    .line 135
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    .line 137
    iput v6, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToSmileDrawableId:I

    .line 138
    iput v5, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToSmileDrawableId:I

    goto/16 :goto_0

    :pswitch_1
    const p1, 0x7f08046e

    .line 124
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    goto/16 :goto_0

    :pswitch_2
    const p1, 0x7f08068b

    .line 115
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    const p1, 0x7f08047a

    .line 116
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleSmallDrawableId:I

    const p1, 0x7f08068f

    .line 117
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    const p1, 0x7f080692

    .line 118
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    const p1, 0x7f080478

    .line 119
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080688

    .line 120
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    const p1, 0x7f08068a

    .line 121
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    goto/16 :goto_0

    .line 110
    :pswitch_3
    iput v10, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    .line 111
    iput v10, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080679

    .line 112
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    goto/16 :goto_0

    .line 105
    :pswitch_4
    iput v10, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    .line 106
    iput v10, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f08067a

    .line 107
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    goto/16 :goto_0

    .line 99
    :pswitch_5
    iput v10, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    const p1, 0x7f080475

    .line 100
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f08067b

    .line 101
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    const p1, 0x7f080680

    .line 102
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    goto/16 :goto_0

    .line 87
    :pswitch_6
    iput v9, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    .line 88
    iput v13, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleSmallDrawableId:I

    .line 89
    iput v12, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    .line 90
    iput v11, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    const p1, 0x7f080468

    .line 91
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f08064f

    .line 92
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    const p1, 0x7f080651

    .line 93
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    .line 95
    iput v6, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToSmileDrawableId:I

    .line 96
    iput v5, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToSmileDrawableId:I

    goto/16 :goto_0

    .line 39
    :pswitch_7
    iput v8, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    .line 40
    iput v2, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleSmallDrawableId:I

    .line 41
    iput v7, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    const p1, 0x7f08046a

    .line 42
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080655

    .line 43
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    .line 44
    iput v1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    .line 45
    iput v0, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    goto/16 :goto_0

    .line 30
    :pswitch_8
    iput v8, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    .line 31
    iput v2, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleSmallDrawableId:I

    .line 32
    iput v7, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    const p1, 0x7f080469

    .line 33
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080653

    .line 34
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    .line 35
    iput v1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    .line 36
    iput v0, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    goto/16 :goto_0

    .line 78
    :pswitch_9
    iput v9, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    .line 79
    iput v13, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleSmallDrawableId:I

    .line 80
    iput v12, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    .line 81
    iput v11, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    .line 82
    iput v4, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080684

    .line 83
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    .line 84
    iput v3, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    goto :goto_0

    .line 69
    :pswitch_a
    iput v9, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    .line 70
    iput v13, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleSmallDrawableId:I

    .line 71
    iput v12, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    .line 72
    iput v11, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    .line 73
    iput v4, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080683

    .line 74
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    .line 75
    iput v3, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    goto :goto_0

    :pswitch_b
    const p1, 0x7f08046c

    .line 48
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    .line 49
    iput v13, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleSmallDrawableId:I

    .line 50
    iput v12, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    .line 51
    iput v11, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    const p1, 0x7f08046d

    .line 52
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f080658

    .line 53
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    const p1, 0x7f08065d

    .line 54
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    goto :goto_0

    :pswitch_c
    const p1, 0x7f080472

    .line 57
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    const p1, 0x7f080473

    .line 58
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleSmallDrawableId:I

    const p1, 0x7f080673

    .line 59
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->regularToSmallDrawableId:I

    const p1, 0x7f080678

    .line 60
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToRegularDrawableId:I

    const p1, 0x7f08064c

    .line 61
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    const p1, 0x7f08064a

    .line 62
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    const p1, 0x7f08064d

    .line 63
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    const p1, 0x7f08069e

    .line 65
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToSmileDrawableId:I

    const p1, 0x7f0806a0

    .line 66
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->smallToSmileDrawableId:I

    goto :goto_0

    .line 24
    :pswitch_d
    iput v8, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleDrawableId:I

    const p1, 0x7f08047d

    .line 25
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingDrawableId:I

    .line 26
    iput v7, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->idleToProcessingDrawableId:I

    const p1, 0x7f080698

    .line 27
    iput p1, p0, Lcom/transsion/camera/app/ui/IShutterUI$ShutterUISpec;->processingToIdleDrawableId:I

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
