.class public final Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;
.super Ljava/lang/Object;
.source "CustomConfigUtil.java"


# static fields
.field private static sCustomConfigUtil:Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;


# instance fields
.field private final mBothSupport:Z

.field private final mCloseSB:Z

.field private final mDefaultOption:I

.field private final mFaceAttributeSupport:Z

.field private final mSlimbodyReducePreviewSizeHeight:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "slimbody_default_option"

    .line 17
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->mDefaultOption:I

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "facebeauty_slimbody_support"

    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->mBothSupport:Z

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "slimbody_default_close"

    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->mCloseSB:Z

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "face_attribute_support"

    invoke-static {p1, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->mFaceAttributeSupport:Z

    const-string v0, "slimbody_reduce_preview_size_height"

    .line 21
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->mSlimbodyReducePreviewSizeHeight:I

    const-string p0, "multifacebeauty_reduce_preview_size_height"

    .line 22
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;
    .locals 2

    .line 26
    const-class v0, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->sCustomConfigUtil:Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->sCustomConfigUtil:Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;

    .line 30
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->sCustomConfigUtil:Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getBothSupport()Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->mBothSupport:Z

    return p0
.end method

.method public getCloseDefaultSB()Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->mCloseSB:Z

    return p0
.end method

.method public getDefaultOption()I
    .locals 0

    .line 43
    iget p0, p0, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->mDefaultOption:I

    return p0
.end method

.method public getFaceAttributeSupport()Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->mFaceAttributeSupport:Z

    return p0
.end method

.method public getSlimBodyReducePreviewSizeHeight()I
    .locals 0

    .line 51
    iget p0, p0, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->mSlimbodyReducePreviewSizeHeight:I

    return p0
.end method
