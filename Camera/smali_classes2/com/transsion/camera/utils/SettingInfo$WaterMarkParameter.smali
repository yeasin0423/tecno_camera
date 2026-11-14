.class public Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;
.super Ljava/lang/Object;
.source "SettingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/SettingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaterMarkParameter"
.end annotation


# instance fields
.field mWaterMark:Landroid/graphics/Bitmap;

.field mWaterMarkCopy:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(ILandroid/graphics/Bitmap;IIIILandroid/util/Size;)V
    .locals 0

    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iput-object p2, p0, Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;->mWaterMark:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getWaterMark()Landroid/graphics/Bitmap;
    .locals 3

    .line 733
    iget-object v0, p0, Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;->mWaterMarkCopy:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;->mWaterMarkCopy:Landroid/graphics/Bitmap;

    return-object p0

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;->mWaterMark:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;->mWaterMark:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;->mWaterMarkCopy:Landroid/graphics/Bitmap;

    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
