.class Lcom/transsion/camera/app/ui/CameraAppUI$OnEditorFragmentStateListenerImpl;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnEditorFragmentStateListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/CameraAppUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .locals 0

    .line 2095
    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$OnEditorFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/CameraAppUI;Lcom/transsion/camera/app/ui/CameraAppUI$1;)V
    .locals 0

    .line 2095
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI$OnEditorFragmentStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    return-void
.end method


# virtual methods
.method public onFragmentDestroy()V
    .locals 1

    .line 2098
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$OnEditorFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$100(Lcom/transsion/camera/app/ui/CameraAppUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2101
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$OnEditorFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    const/16 v0, 0x56

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->notifyRawActionToAppUI(I)V

    return-void
.end method
