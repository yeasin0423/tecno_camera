.class Lcom/transsion/camera/feature/setting/asd/Asd$1;
.super Ljava/lang/Object;
.source "Asd.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/asd/Asd;
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
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/asd/Asd;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/asd/Asd;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 189
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/Asd$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 193
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/Asd;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStatusChanged] + key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$000(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "key_filter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v5

    goto :goto_0

    :sswitch_1
    const-string v1, "wide_camera"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v4

    goto :goto_0

    :sswitch_2
    const-string v1, "key_flash"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v2

    goto :goto_0

    :sswitch_3
    const-string v1, "key_super_definition"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v3

    :cond_1
    :goto_0
    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    goto/16 :goto_2

    .line 220
    :cond_2
    sget-object p1, Lcom/transsion/camera/feature/setting/asd/Asd;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEY_SUPER_DEFINITION = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "on"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$500(Lcom/transsion/camera/feature/setting/asd/Asd;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$600(Lcom/transsion/camera/feature/setting/asd/Asd;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$000(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p0

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->setSuperResolutionOpend(Z)V

    goto :goto_2

    .line 217
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$000(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    goto :goto_2

    .line 208
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$302(Lcom/transsion/camera/feature/setting/asd/Asd;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$400(Lcom/transsion/camera/feature/setting/asd/Asd;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 210
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$000(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    goto :goto_1

    .line 212
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$000(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    .line 214
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$000(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->sendSettingChangeRequest()V

    goto :goto_2

    .line 200
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$102(Lcom/transsion/camera/feature/setting/asd/Asd;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$200(Lcom/transsion/camera/feature/setting/asd/Asd;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$000(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    goto :goto_2

    .line 204
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/Asd$1;->this$0:Lcom/transsion/camera/feature/setting/asd/Asd;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/asd/Asd;->access$000(Lcom/transsion/camera/feature/setting/asd/Asd;)Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->refreshAsdStateImmediately(I)V

    :cond_8
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x711a6189 -> :sswitch_3
        -0x62d091f0 -> :sswitch_2
        -0x6115b1ef -> :sswitch_1
        0x8991158 -> :sswitch_0
    .end sparse-switch
.end method
