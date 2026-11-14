.class Lcom/transsion/camera/feature/setting/zoom/Zoom$2;
.super Ljava/lang/Object;
.source "Zoom.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/zoom/Zoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/zoom/Zoom;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->access$400(Lcom/transsion/camera/feature/setting/zoom/Zoom;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-interface {v0, p0, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public onPreviewStopped()V
    .locals 2

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom$2;->this$0:Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 94
    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method
