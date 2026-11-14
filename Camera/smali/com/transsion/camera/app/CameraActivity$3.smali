.class Lcom/transsion/camera/app/CameraActivity$3;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/CameraActivity;->onCreateTasks(Landroid/os/Bundle;)V
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

    .line 408
    iput-object p1, p0, Lcom/transsion/camera/app/CameraActivity$3;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerFinished()V
    .locals 2

    .line 421
    invoke-static {}, Lcom/transsion/camera/app/CameraActivity;->access$1000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "loadLatestThumbnail when onMediaScannerFinished."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 422
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$3;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraActivity;->loadLatestThumbnail()V

    return-void
.end method

.method public onOperatorChanged(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity$3;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/CameraActivity;->access$900(Lcom/transsion/camera/app/CameraActivity;)Lcom/transsion/camera/app/common/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 413
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    .line 414
    iget-object p1, p0, Lcom/transsion/camera/app/CameraActivity$3;->this$0:Lcom/transsion/camera/app/CameraActivity;

    const v0, 0x7f0f00bb

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 415
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$3;->this$0:Lcom/transsion/camera/app/CameraActivity;

    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/CameraAppUI;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method public onSDCardMounted()V
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity$3;->this$0:Lcom/transsion/camera/app/CameraActivity;

    iget-object v0, v0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->exitSettingFragment()V

    .line 428
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity$3;->this$0:Lcom/transsion/camera/app/CameraActivity;

    iget-object v0, v0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->exitGuideFragment()V

    .line 429
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$3;->this$0:Lcom/transsion/camera/app/CameraActivity;

    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->exitEditorFragment()V

    return-void
.end method

.method public onSDCardUnMounted()V
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity$3;->this$0:Lcom/transsion/camera/app/CameraActivity;

    iget-object v0, v0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->exitSettingFragment()V

    .line 435
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity$3;->this$0:Lcom/transsion/camera/app/CameraActivity;

    iget-object v0, v0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->exitGuideFragment()V

    .line 436
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$3;->this$0:Lcom/transsion/camera/app/CameraActivity;

    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/CameraAppUI;->exitEditorFragment()V

    return-void
.end method
