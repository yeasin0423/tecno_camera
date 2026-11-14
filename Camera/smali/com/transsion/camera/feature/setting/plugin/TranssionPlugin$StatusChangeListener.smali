.class Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;
.super Ljava/lang/Object;
.source "TranssionPlugin.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChangeListener"
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
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$1;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 43
    sget-object v0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStatusChanged] key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x60d2d0a5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x17b8ff3e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "key_anti_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_1
    const-string v0, "key_video_quality"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_3

    goto :goto_3

    :cond_3
    const-string p1, "8"

    .line 53
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "11"

    .line 54
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "6_60"

    .line 55
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    .line 58
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    invoke-static {p0, v3}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->access$202(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;I)I

    goto :goto_3

    .line 56
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    invoke-static {p0, v2}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->access$202(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;I)I

    goto :goto_3

    :cond_6
    const-string p1, "on"

    .line 46
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    invoke-static {p0, v2}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->access$102(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;I)I

    goto :goto_3

    .line 49
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    invoke-static {p0, v3}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->access$102(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;I)I

    :goto_3
    return-void
.end method
