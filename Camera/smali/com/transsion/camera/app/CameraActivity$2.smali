.class Lcom/transsion/camera/app/CameraActivity$2;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/transsion/camera/app/thumbnail/BackgroundImagesObserver$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/CameraActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/CameraActivity;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/transsion/camera/app/CameraActivity$2;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .line 198
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$2;->this$0:Lcom/transsion/camera/app/CameraActivity;

    iget-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mIsProcessingUri:Z

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraActivity;->loadLatestThumbnail()V

    :cond_0
    return-void
.end method
