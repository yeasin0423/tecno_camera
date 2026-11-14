.class Lcom/transsion/camera/feature/setting/liveresult/LiveResult$ParametersConfigure;
.super Ljava/lang/Object;
.source "LiveResult.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/liveresult/LiveResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParametersConfigure"
.end annotation


# instance fields
.field private mIsWorking:Z

.field final synthetic this$0:Lcom/transsion/camera/feature/setting/liveresult/LiveResult;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/liveresult/LiveResult;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$ParametersConfigure;->this$0:Lcom/transsion/camera/feature/setting/liveresult/LiveResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/liveresult/LiveResult;Lcom/transsion/camera/feature/setting/liveresult/LiveResult$1;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$ParametersConfigure;-><init>(Lcom/transsion/camera/feature/setting/liveresult/LiveResult;)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$ParametersConfigure;->this$0:Lcom/transsion/camera/feature/setting/liveresult/LiveResult;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configCommand, value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mIsWorking: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$ParametersConfigure;->mIsWorking:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v1, "off"

    .line 143
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$ParametersConfigure;->mIsWorking:Z

    if-nez v0, :cond_0

    .line 146
    invoke-static {}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[configCommand] already stopped, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$ParametersConfigure;->this$0:Lcom/transsion/camera/feature/setting/liveresult/LiveResult;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->access$400(Lcom/transsion/camera/feature/setting/liveresult/LiveResult;)Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    const/4 p1, 0x0

    .line 150
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$ParametersConfigure;->mIsWorking:Z

    goto :goto_0

    .line 153
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$ParametersConfigure;->mIsWorking:Z

    if-eqz v0, :cond_2

    .line 154
    invoke-static {}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[configCommand] already started, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$ParametersConfigure;->this$0:Lcom/transsion/camera/feature/setting/liveresult/LiveResult;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->access$400(Lcom/transsion/camera/feature/setting/liveresult/LiveResult;)Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    const/4 p1, 0x1

    .line 158
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$ParametersConfigure;->mIsWorking:Z

    :goto_0
    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method onPreviewStopped()V
    .locals 1

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$ParametersConfigure;->mIsWorking:Z

    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 1

    .line 128
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "on"

    .line 129
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "off"

    .line 130
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$ParametersConfigure;->this$0:Lcom/transsion/camera/feature/setting/liveresult/LiveResult;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
