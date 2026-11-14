.class Lcom/transsion/camera/app/ui/CameraAppUI$FragmentListenerImpl;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FragmentListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/CameraAppUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .locals 0

    .line 1968
    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/CameraAppUI;Lcom/transsion/camera/app/ui/CameraAppUI$1;)V
    .locals 0

    .line 1968
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI$FragmentListenerImpl;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    return-void
.end method


# virtual methods
.method public onSettingClicked()V
    .locals 0

    .line 1971
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$FragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$3500(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    return-void
.end method
