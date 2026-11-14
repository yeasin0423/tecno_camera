.class public Lcom/tencent/youtu/YTCommonInterface;
.super Ljava/lang/Object;
.source "YTCommonInterface.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static initAuthByAssets(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "license_name",
            "secret_key"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 24
    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/youtu/YTCommonInterface;->nativeInitAuthByAssets(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static native nativeInitAuthByAssets(Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "license_name",
            "secret_key"
        }
    .end annotation
.end method
