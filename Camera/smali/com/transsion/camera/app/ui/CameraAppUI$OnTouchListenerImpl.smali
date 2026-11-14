.class Lcom/transsion/camera/app/ui/CameraAppUI$OnTouchListenerImpl;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnTouchListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/CameraAppUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V
    .locals 0

    .line 2075
    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$OnTouchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/CameraAppUI;Lcom/transsion/camera/app/ui/CameraAppUI$1;)V
    .locals 0

    .line 2075
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/CameraAppUI$OnTouchListenerImpl;-><init>(Lcom/transsion/camera/app/ui/CameraAppUI;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2078
    iget-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$OnTouchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$4400(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2079
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$OnTouchListenerImpl;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$4400(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/gesture/PreviewGestureManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
