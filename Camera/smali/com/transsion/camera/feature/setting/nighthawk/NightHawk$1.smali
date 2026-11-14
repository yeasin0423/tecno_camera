.class Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;
.super Ljava/lang/Object;
.source "NightHawk.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraNighthawkCallback;


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

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNighthawkChanged(I)V
    .locals 6

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->access$404(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    const-string v1, "off"

    if-ne p1, v0, :cond_1

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    const-string v0, "on"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->onValueChanged(Ljava/lang/String;)V

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->access$502(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;J)J

    goto :goto_0

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->access$500(Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk$1;->this$0:Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/setting/nighthawk/NightHawk;->onValueChanged(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
