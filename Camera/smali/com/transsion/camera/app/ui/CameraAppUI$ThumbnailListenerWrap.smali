.class Lcom/transsion/camera/app/ui/CameraAppUI$ThumbnailListenerWrap;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailListenerWrap"
.end annotation


# instance fields
.field private final mSource:Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/CameraAppUI;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/CameraAppUI;Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/transsion/camera/app/ui/CameraAppUI$ThumbnailListenerWrap;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput-object p2, p0, Lcom/transsion/camera/app/ui/CameraAppUI$ThumbnailListenerWrap;->mSource:Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    return-void
.end method


# virtual methods
.method public onThumbnailClicked()V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$ThumbnailListenerWrap;->this$0:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->access$600(Lcom/transsion/camera/app/ui/CameraAppUI;)Lcom/transsion/camera/app/ui/ScrollConsumer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->shrinkTopBar()V

    .line 418
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$ThumbnailListenerWrap;->mSource:Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;->onThumbnailClicked()V

    return-void
.end method

.method public onThumbnailUriUpdated(Landroid/net/Uri;ZZ)V
    .locals 0

    .line 423
    iget-object p0, p0, Lcom/transsion/camera/app/ui/CameraAppUI$ThumbnailListenerWrap;->mSource:Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;->onThumbnailUriUpdated(Landroid/net/Uri;ZZ)V

    return-void
.end method
