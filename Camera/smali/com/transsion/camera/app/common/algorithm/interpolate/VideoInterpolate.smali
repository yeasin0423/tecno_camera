.class public final Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;
.super Ljava/lang/Object;
.source "VideoInterpolate.java"

# interfaces
.implements Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final VIDEO_INTERPOLATE_IMPL_CLASS:Ljava/lang/String; = "com.transsion.camera.feature.interpolate.VideoInterpolateImpl"

.field private static final sSupport:Z


# instance fields
.field private mVideoInterpolateImpl:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "com.transsion.camera.feature.interpolate.VideoInterpolateImpl"

    .line 26
    invoke-static {v0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->sSupport:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "com.transsion.camera.feature.interpolate.VideoInterpolateImpl"

    .line 31
    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    iput-object v0, p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mVideoInterpolateImpl:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    return-void
.end method

.method public static instance()Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;
    .locals 1

    .line 35
    new-instance v0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;-><init>()V

    return-object v0
.end method

.method public static support()Z
    .locals 1

    .line 39
    sget-boolean v0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->sSupport:Z

    return v0
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mVideoInterpolateImpl:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    if-nez p0, :cond_0

    .line 45
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mVideoInterpolateImpl is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;->getVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(IIIII)Z
    .locals 6

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mVideoInterpolateImpl:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    if-nez v0, :cond_0

    .line 54
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mVideoInterpolateImpl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 57
    invoke-interface/range {v0 .. v5}, Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;->init(IIIII)Z

    move-result p0

    return p0
.end method

.method public interpolate([B)Z
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mVideoInterpolateImpl:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    if-nez p0, :cond_0

    .line 72
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mVideoInterpolateImpl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 75
    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;->interpolate([B)Z

    move-result p0

    return p0
.end method

.method public reset()Z
    .locals 1

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mVideoInterpolateImpl:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    if-nez p0, :cond_0

    .line 81
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mVideoInterpolateImpl is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 84
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;->reset()Z

    move-result p0

    return p0
.end method

.method public setOutputBuffers([Ljava/nio/ByteBuffer;)Z
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mVideoInterpolateImpl:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    if-nez p0, :cond_0

    .line 63
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mVideoInterpolateImpl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 66
    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;->setOutputBuffers([Ljava/nio/ByteBuffer;)Z

    move-result p0

    return p0
.end method

.method public unInit()Z
    .locals 1

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->mVideoInterpolateImpl:Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;

    if-nez p0, :cond_0

    .line 90
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mVideoInterpolateImpl is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 93
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/interpolate/IVideoInterpolate;->unInit()Z

    move-result p0

    return p0
.end method
