.class Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;
.super Ljava/lang/Object;
.source "ScreenFlashParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$IFlashStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlashFire()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->access$200(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->access$300(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->access$300(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;)Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/screenflash/IFlashFireCallback;->onFlashFire()V

    :cond_0
    return-void
.end method

.method public onFlashRequired(Z)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->access$002(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;Z)Z

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure$1;->this$0:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;->access$100(Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashParameterConfigure;Z)V

    return-void
.end method
