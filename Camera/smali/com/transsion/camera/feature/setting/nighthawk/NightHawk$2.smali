.class Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$2;
.super Ljava/lang/Object;
.source "NightHawk.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$2;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 3

    .line 226
    invoke-static {}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewStarted mIsModeFeatureSupport = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$2;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->access$200(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$2;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->access$600(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$2;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->access$200(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$2;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->access$402(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;I)I

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$2;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->access$600(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$2;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    iget-object v1, v1, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->mCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraNighthawkCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->setNighthawkCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraNighthawkCallback;)V

    .line 230
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$2;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->access$600(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method

.method public onPreviewStopped()V
    .locals 2

    .line 216
    invoke-static {}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStopped"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$2;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->access$600(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawkParameterConfigure;->setNighthawkCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraNighthawkCallback;)V

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$2;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->access$402(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;I)I

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$2;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$2;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
