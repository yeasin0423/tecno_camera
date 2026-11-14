.class public Lcom/transsion/camera/utils/analytics/beauty/SlimBody;
.super Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;
.source "SlimBody.java"


# instance fields
.field private mFaceBeautyValue:Ljava/lang/String;

.field private mMode:I

.field private mModeFlag:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;-><init>(Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;)V

    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mMode:I

    const-string v0, ""

    .line 58
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mFaceBeautyValue:Ljava/lang/String;

    .line 60
    iput p1, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    return-void
.end method

.method private getCustomValue()Ljava/lang/String;
    .locals 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slimbody_custom_"

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    shr-int/lit8 v1, v1, 0x0

    and-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    shr-int/lit8 v2, v2, 0x1

    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    shr-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    shr-int/lit8 v2, v2, 0x3

    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    shr-int/lit8 v2, v2, 0x5

    and-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    shr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearValue()V
    .locals 1

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    return-void
.end method

.method protected getValue(Ljava/lang/String;)I
    .locals 20

    move-object/from16 v0, p1

    .line 135
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x11

    const/16 v4, 0x10

    const/16 v5, 0xf

    const/16 v6, 0xe

    const/16 v7, 0xd

    const/16 v8, 0xc

    const/16 v9, 0xb

    const/16 v10, 0xa

    const/16 v11, 0x9

    const/16 v12, 0x8

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/4 v15, 0x5

    const/16 v16, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x2

    const/16 v19, 0x1

    sparse-switch v1, :sswitch_data_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    const-string v1, "slimbody_sb_4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v10

    goto/16 :goto_1

    :pswitch_1
    const-string v1, "slimbody_sb_3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v11

    goto/16 :goto_1

    :pswitch_2
    const-string v1, "slimbody_sb_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v12

    goto/16 :goto_1

    :pswitch_3
    const-string v1, "slimbody_sb_1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v13

    goto/16 :goto_1

    :pswitch_4
    const-string v1, "slimbody_fb_6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v14

    goto/16 :goto_1

    :pswitch_5
    const-string v1, "slimbody_fb_5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v15

    goto/16 :goto_1

    :pswitch_6
    const-string v1, "slimbody_fb_4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move/from16 v0, v16

    goto/16 :goto_1

    :pswitch_7
    const-string v1, "slimbody_fb_3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move/from16 v0, v17

    goto/16 :goto_1

    :pswitch_8
    const-string v1, "slimbody_fb_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move/from16 v0, v18

    goto/16 :goto_1

    :pswitch_9
    const-string v1, "slimbody_fb_1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move/from16 v0, v19

    goto :goto_1

    :sswitch_0
    const-string v1, "slimbody_custom_0_0_0_1_0_0_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_1
    const-string v1, "slimbody_custom_0_0_0_0_1_0_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_2
    const-string v1, "slimbody_custom_0_0_0_0_0_1_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_3
    const-string v1, "slimbody_custom_0_0_0_0_0_0_1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_4
    const-string v1, "slimbody_custom_1_0_0_0_0_0_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    goto :goto_1

    :sswitch_5
    const-string v1, "slimbody_fb_ai"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_6
    const-string v1, "slimbody_custom_0_1_0_0_0_0_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    goto :goto_1

    :sswitch_7
    const-string v1, "slimbody_custom_0_0_1_0_0_0_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_2

    return v2

    :pswitch_a
    return v3

    :pswitch_b
    return v4

    :pswitch_c
    return v5

    :pswitch_d
    return v6

    :pswitch_e
    return v7

    :pswitch_f
    return v8

    :pswitch_10
    return v9

    :pswitch_11
    return v10

    :pswitch_12
    return v11

    :pswitch_13
    return v12

    :pswitch_14
    return v13

    :pswitch_15
    return v14

    :pswitch_16
    return v15

    :pswitch_17
    return v16

    :pswitch_18
    return v17

    :pswitch_19
    return v18

    :pswitch_1a
    return v19

    :sswitch_data_0
    .sparse-switch
        -0x7e528ad7 -> :sswitch_7
        -0x7db24717 -> :sswitch_6
        -0x52620955 -> :sswitch_5
        -0x2413f357 -> :sswitch_4
        -0x1296f9d7 -> :sswitch_3
        -0x1296f617 -> :sswitch_2
        -0x1288e257 -> :sswitch_1
        0x224f4169 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch -0x3c76c6b2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3c70dddf
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method protected getValue()Ljava/lang/String;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mFaceBeautyValue:Ljava/lang/String;

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->getCustomValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "slimbody_sb_"

    if-eqz v0, :cond_1

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1

    .line 117
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slimbody_fb_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mFaceBeautyValue:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setBodySlim()V
    .locals 1

    const/4 v0, 0x1

    .line 75
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    return-void
.end method

.method public setButtPlump()V
    .locals 1

    const/16 v0, 0x10

    .line 91
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    return-void
.end method

.method public setFaceBeautyValue(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mFaceBeautyValue:Ljava/lang/String;

    return-void
.end method

.method public setHeadShrink()V
    .locals 1

    const/4 v0, 0x2

    .line 79
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    return-void
.end method

.method public setLegLengthen()V
    .locals 1

    const/16 v0, 0x40

    .line 99
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    return-void
.end method

.method public setLegSlim()V
    .locals 1

    const/16 v0, 0x20

    .line 95
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mMode:I

    return-void
.end method

.method public setShoulderSlim()V
    .locals 1

    const/4 v0, 0x4

    .line 83
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    return-void
.end method

.method public setWaistSlim()V
    .locals 1

    const/16 v0, 0x8

    .line 87
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->mModeFlag:I

    return-void
.end method
