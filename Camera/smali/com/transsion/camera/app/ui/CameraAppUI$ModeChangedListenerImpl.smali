.class Lcom/transsion/camera/app/ui/CameraAppUI$ModeChangedListenerImpl;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeChangedListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/CameraAppUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .locals 0

    .line 2013
    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/CameraAppUI;Lcom/transsion/camera/app/ui/CameraAppUI$1;)V
    .locals 0

    .line 2013
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI$ModeChangedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    return-void
.end method


# virtual methods
.method public onSwitchMode(Ljava/lang/String;)V
    .locals 1

    .line 2016
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$4000(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    .line 2017
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2018
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$4100(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    goto :goto_0

    .line 2020
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$4000(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    .line 2023
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$600(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/ui/ScrollConsumer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->modePicked()V

    return-void
.end method
