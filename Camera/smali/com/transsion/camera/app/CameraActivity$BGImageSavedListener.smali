.class Lcom/transsion/camera/app/CameraActivity$BGImageSavedListener;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/transsion/camera/app/common/bgservice/BGServiceController$IBGImageSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BGImageSavedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/CameraActivity;)V
    .locals 0

    .line 1344
    iput-object p1, p0, Lcom/transsion/camera/app/CameraActivity$BGImageSavedListener;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/CameraActivity;Lcom/transsion/camera/app/CameraActivity$1;)V
    .locals 0

    .line 1344
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity$BGImageSavedListener;-><init>(Lcom/transsion/camera/app/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public doOnBGImageSaved(Landroid/net/Uri;[B)V
    .locals 0

    .line 1347
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$BGImageSavedListener;->this$0:Lcom/transsion/camera/app/CameraActivity;

    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/CameraAppUI;->doOnBGImageSaved(Landroid/net/Uri;[B)V

    return-void
.end method
