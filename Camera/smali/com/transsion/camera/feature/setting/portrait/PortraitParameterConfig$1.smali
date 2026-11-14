.class Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig$1;
.super Ljava/lang/Object;
.source "PortraitParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualLensWarningCallback(I)V
    .locals 3

    .line 58
    invoke-static {}, Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFakeDualLensCallback type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig;->access$100(Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig;)Lcom/transsion/camera/feature/setting/portrait/Portrait;

    move-result-object p0

    const-string p1, "0"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/portrait/Portrait;->onValueChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig;->access$100(Lcom/transsion/camera/feature/setting/portrait/PortraitParameterConfig;)Lcom/transsion/camera/feature/setting/portrait/Portrait;

    move-result-object p0

    const-string p1, "1"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/portrait/Portrait;->onValueChanged(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
