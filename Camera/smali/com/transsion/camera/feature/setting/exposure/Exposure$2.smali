.class Lcom/transsion/camera/feature/setting/exposure/Exposure$2;
.super Ljava/lang/Object;
.source "Exposure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/exposure/Exposure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/exposure/Exposure;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/exposure/Exposure;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/exposure/Exposure$2;->this$0:Lcom/transsion/camera/feature/setting/exposure/Exposure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 217
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/exposure/Exposure$2;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 221
    invoke-static {}, Lcom/transsion/camera/feature/setting/exposure/Exposure;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/exposure/Exposure$2;->this$0:Lcom/transsion/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/exposure/Exposure;->access$200(Lcom/transsion/camera/feature/setting/exposure/Exposure;)Lcom/transsion/camera/feature/setting/exposure/IExposure;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/exposure/Exposure$2;->this$0:Lcom/transsion/camera/feature/setting/exposure/Exposure;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/exposure/Exposure;->access$200(Lcom/transsion/camera/feature/setting/exposure/Exposure;)Lcom/transsion/camera/feature/setting/exposure/IExposure;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/setting/exposure/IExposure;->getAeLock()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/exposure/Exposure$2;->this$0:Lcom/transsion/camera/feature/setting/exposure/Exposure;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const-string v2, "key_focus_state"

    .line 235
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "PASSIVE_SCAN"

    .line 236
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ACTIVE_SCAN"

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    const-string p2, "key_picture_size_state"

    .line 241
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "key_video_quality_state"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v0

    .line 245
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/exposure/Exposure$2;->this$0:Lcom/transsion/camera/feature/setting/exposure/Exposure;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/exposure/Exposure;->access$100(Lcom/transsion/camera/feature/setting/exposure/Exposure;)Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz v1, :cond_6

    sget-object p1, Lcom/transsion/camera/feature/setting/exposure/Exposure;->EXPOSURE_DEFAULT_VALUE:Landroid/util/Rational;

    invoke-virtual {p1}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/exposure/Exposure$2;->this$0:Lcom/transsion/camera/feature/setting/exposure/Exposure;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 246
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/exposure/Exposure$2;->this$0:Lcom/transsion/camera/feature/setting/exposure/Exposure;

    sget-object p1, Lcom/transsion/camera/feature/setting/exposure/Exposure;->EXPOSURE_DEFAULT_VALUE:Landroid/util/Rational;

    invoke-virtual {p1}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/exposure/Exposure;->onValueChanged(Ljava/lang/String;)V

    :cond_6
    return-void
.end method
