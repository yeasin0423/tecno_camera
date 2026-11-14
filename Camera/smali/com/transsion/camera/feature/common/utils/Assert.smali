.class public Lcom/transsion/camera/feature/common/utils/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# direct methods
.method public static assertTrue(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-static {p0}, Lcom/transsion/camera/feature/common/utils/Assert;->fail(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static assertTrue(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-static {v0, p0}, Lcom/transsion/camera/feature/common/utils/Assert;->assertTrue(Ljava/lang/String;Z)V

    return-void
.end method

.method public static fail(Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    .line 52
    new-instance p0, Lcom/transsion/camera/feature/common/utils/AssertionFailedError;

    invoke-direct {p0}, Lcom/transsion/camera/feature/common/utils/AssertionFailedError;-><init>()V

    throw p0

    .line 54
    :cond_0
    new-instance v0, Lcom/transsion/camera/feature/common/utils/AssertionFailedError;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/common/utils/AssertionFailedError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
