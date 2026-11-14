.class Lcom/transsion/camera/app/CameraActivity$ThumbnailListenerImpl;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/CameraActivity;)V
    .locals 0

    .line 891
    iput-object p1, p0, Lcom/transsion/camera/app/CameraActivity$ThumbnailListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/CameraActivity;Lcom/transsion/camera/app/CameraActivity$1;)V
    .locals 0

    .line 891
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity$ThumbnailListenerImpl;-><init>(Lcom/transsion/camera/app/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public onThumbnailClicked()V
    .locals 3

    .line 895
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity$ThumbnailListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/CameraActivity;->access$1900(Lcom/transsion/camera/app/CameraActivity;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/CameraActivity$ThumbnailListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {v2}, Lcom/transsion/camera/app/CameraActivity;->access$2000(Lcom/transsion/camera/app/CameraActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$ThumbnailListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    iget-boolean p0, p0, Lcom/transsion/camera/app/CameraActivity;->mIsProcessingUri:Z

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/camera/app/CameraActivity;->access$2100(Lcom/transsion/camera/app/CameraActivity;Landroid/net/Uri;Ljava/lang/String;Z)V

    return-void
.end method

.method public onThumbnailUriUpdated(Landroid/net/Uri;ZZ)V
    .locals 0

    .line 900
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$ThumbnailListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/CameraActivity;->notifyNewMedia(Landroid/net/Uri;ZZ)V

    return-void
.end method
