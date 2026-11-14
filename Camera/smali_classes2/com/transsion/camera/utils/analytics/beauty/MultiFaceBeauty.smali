.class public Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;
.super Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;
.source "MultiFaceBeauty.java"


# instance fields
.field private mCuttingFace:I

.field private mFace:I

.field private mHair:I

.field private mMakeUp:I

.field private mMode:Ljava/lang/String;

.field private mNose:I

.field private mSoften:I

.field private mThreeDimensional:I

.field private mWhiten:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;-><init>(Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;)V

    const-string p1, ""

    .line 24
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mMode:Ljava/lang/String;

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mSoften:I

    .line 27
    iput p1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mWhiten:I

    .line 28
    iput p1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mFace:I

    .line 29
    iput p1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mCuttingFace:I

    .line 30
    iput p1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mNose:I

    .line 31
    iput p1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mThreeDimensional:I

    .line 32
    iput p1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mMakeUp:I

    .line 33
    iput p1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mHair:I

    return-void
.end method

.method private getCustomValue()Ljava/lang/String;
    .locals 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multifb_custom_"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mSoften:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mWhiten:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mFace:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mCuttingFace:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mNose:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mThreeDimensional:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mMakeUp:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mHair:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearValue()V
    .locals 1

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mSoften:I

    .line 65
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mWhiten:I

    .line 66
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mFace:I

    .line 67
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mCuttingFace:I

    .line 68
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mNose:I

    .line 69
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mThreeDimensional:I

    .line 70
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mMakeUp:I

    .line 71
    iput v0, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mHair:I

    return-void
.end method

.method protected getValue(Ljava/lang/String;)I
    .locals 1

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "multifb_custom_1_1_1_1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_1
    const-string p0, "multifb_custom_1_1_1_0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_2
    const-string p0, "multifb_custom_1_1_0_0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_3
    const-string p0, "multifb_custom_1_0_0_0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_4
    const-string p0, "multifb_pre3"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_5
    const-string p0, "multifb_pre2"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_6
    const-string p0, "multifb_pre1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_7
    const-string p0, "multifb_aiv2"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 p0, 0x19

    return p0

    :pswitch_1
    const/16 p0, 0x18

    return p0

    :pswitch_2
    const/16 p0, 0x17

    return p0

    :pswitch_3
    const/16 p0, 0x16

    return p0

    :pswitch_4
    const/16 p0, 0x15

    return p0

    :pswitch_5
    const/16 p0, 0x14

    return p0

    :pswitch_6
    const/16 p0, 0x13

    return p0

    :pswitch_7
    const/16 p0, 0x12

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x131e8512 -> :sswitch_7
        -0x131793c8 -> :sswitch_6
        -0x131793c7 -> :sswitch_5
        -0x131793c6 -> :sswitch_4
        0xdb938c0 -> :sswitch_3
        0xdc75041 -> :sswitch_2
        0xdc75402 -> :sswitch_1
        0xdc75403 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getValue()Ljava/lang/String;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mMode:Ljava/lang/String;

    const-string v1, "custom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->getCustomValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multifb_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mMode:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setCustomValue(Ljava/lang/String;)V
    .locals 2

    const-string v0, "soften"

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 45
    iput v1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mSoften:I

    goto :goto_0

    :cond_0
    const-string v0, "whiten"

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iput v1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mWhiten:I

    goto :goto_0

    :cond_1
    const-string v0, "face"

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    iput v1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mFace:I

    goto :goto_0

    :cond_2
    const-string v0, "cuttingface"

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    iput v1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mCuttingFace:I

    goto :goto_0

    :cond_3
    const-string v0, "nose"

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 53
    iput v1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mNose:I

    goto :goto_0

    :cond_4
    const-string v0, "threedimensional"

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 55
    iput v1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mThreeDimensional:I

    goto :goto_0

    :cond_5
    const-string v0, "makeup"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 57
    iput v1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mMakeUp:I

    goto :goto_0

    :cond_6
    const-string v0, "hair"

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 59
    iput v1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mHair:I

    :cond_7
    :goto_0
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->mMode:Ljava/lang/String;

    return-void
.end method
