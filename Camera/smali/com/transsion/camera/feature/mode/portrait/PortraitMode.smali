.class public Lcom/transsion/camera/feature/mode/portrait/PortraitMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "PortraitMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode<",
        "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mBackFakeDualLensSupport:Z

.field private mFrontFakeDualLensSupport:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/portrait/PortraitMode;->readFakeDualLensSupport(Landroid/content/Context;)V

    return-void
.end method

.method private isFakeDualLens()Z
    .locals 2

    .line 90
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/portrait/PortraitMode;->mBackFakeDualLensSupport:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/portrait/PortraitMode;->mFrontFakeDualLensSupport:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    const-string v0, "1"

    .line 92
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private readFakeDualLensSupport(Landroid/content/Context;)V
    .locals 2

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0022

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/portrait/PortraitMode;->mFrontFakeDualLensSupport:Z

    .line 82
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/portrait/PortraitMode;->mBackFakeDualLensSupport:Z

    goto :goto_0

    .line 78
    :cond_1
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/portrait/PortraitMode;->mBackFakeDualLensSupport:Z

    goto :goto_0

    .line 75
    :cond_2
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/portrait/PortraitMode;->mFrontFakeDualLensSupport:Z

    :goto_0
    return-void
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .locals 3

    .line 98
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->autoWatermark()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/mode/CaptureInfo;-><init>(IZZ)V

    return-object v0
.end method

.method public createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
            "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/portrait/PortraitMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5

    const-string v0, "mild_beauty_type"

    .line 54
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const-string v0, "key_is_portrait_fake"

    const-string v1, "key_smile_detection"

    const-string v2, "key_tran_plugin"

    const-string v3, "key_protrait"

    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    .line 56
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/portrait/PortraitMode;->isFakeDualLens()Z

    move-result p0

    const-string p1, "key_mild_beauty"

    if-eqz p0, :cond_0

    .line 57
    filled-new-array {v3, v0, v2, v1, p1}, [Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 59
    :cond_0
    filled-new-array {v3, v2, v1, p1}, [Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 62
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/portrait/PortraitMode;->isFakeDualLens()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 63
    filled-new-array {v3, v0, v2, v1}, [Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 65
    :cond_2
    filled-new-array {v3, v2, v1}, [Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 2

    .line 28
    invoke-static {}, Lcom/transsion/camera/feature/mode/portrait/PortraitModeRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p0

    const-string v0, "on"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method public isSupportBackFakeDualLens()Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/portrait/PortraitMode;->mBackFakeDualLensSupport:Z

    return p0
.end method

.method public isSupportFrontFakeDualLens()Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/portrait/PortraitMode;->mFrontFakeDualLensSupport:Z

    return p0
.end method

.method public onSettingReady()V
    .locals 0

    .line 33
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 38
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    return-void
.end method
