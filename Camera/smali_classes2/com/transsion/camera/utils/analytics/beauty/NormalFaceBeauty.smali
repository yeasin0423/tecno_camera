.class public Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;
.super Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;
.source "NormalFaceBeauty.java"


# instance fields
.field private mFaceBeautyValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;-><init>(Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;)V

    const-string p1, ""

    .line 15
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;->mFaceBeautyValue:Ljava/lang/String;

    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;->setEnable(Z)V

    return-void
.end method


# virtual methods
.method protected getValue(Ljava/lang/String;)I
    .locals 2

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/16 v0, 0xc28

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    const v0, 0x1ad6f

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "6"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x7

    goto :goto_1

    :pswitch_1
    const-string p0, "5"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x6

    goto :goto_1

    :pswitch_2
    const-string p0, "4"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x5

    goto :goto_1

    :pswitch_3
    const-string p0, "3"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    goto :goto_1

    :pswitch_4
    const-string p0, "2"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    goto :goto_1

    :pswitch_5
    const-string p0, "1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    goto :goto_1

    :cond_0
    const-string p0, "off"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v1

    goto :goto_1

    :cond_1
    const-string p0, "ai"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_1

    return v1

    :pswitch_6
    const/16 p0, 0x21

    return p0

    :pswitch_7
    const/16 p0, 0x20

    return p0

    :pswitch_8
    const/16 p0, 0x1f

    return p0

    :pswitch_9
    const/16 p0, 0x1e

    return p0

    :pswitch_a
    const/16 p0, 0x1d

    return p0

    :pswitch_b
    const/16 p0, 0x1c

    return p0

    :pswitch_c
    const/16 p0, 0x1b

    return p0

    :pswitch_d
    const/16 p0, 0x1a

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method protected getValue()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;->mFaceBeautyValue:Ljava/lang/String;

    return-object p0
.end method

.method public setFaceBeautyValue(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;->mFaceBeautyValue:Ljava/lang/String;

    return-void
.end method
