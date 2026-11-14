.class Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerFactory;
.super Ljava/lang/Object;
.source "ScreenControllerFactory.java"


# direct methods
.method static getScreenController()Lcom/transsion/camera/feature/setting/screenflash/IScreenController;
    .locals 2

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    .line 20
    new-instance v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImplQ;-><init>()V

    return-object v0

    .line 22
    :cond_0
    new-instance v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImpl;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImpl;-><init>()V

    return-object v0
.end method
