.class Lcom/transsion/camera/app/CameraActivity$ModeAndSettingStatusListenerImpl;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeAndSettingStatusListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/CameraActivity;)V
    .locals 0

    .line 1080
    iput-object p1, p0, Lcom/transsion/camera/app/CameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/CameraActivity;Lcom/transsion/camera/app/CameraActivity$1;)V
    .locals 0

    .line 1080
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity$ModeAndSettingStatusListenerImpl;-><init>(Lcom/transsion/camera/app/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V
    .locals 3

    .line 1084
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/CameraActivity;->access$2302(Lcom/transsion/camera/app/CameraActivity;Lcom/transsion/camera/app/common/IApp$State;)Lcom/transsion/camera/app/common/IApp$State;

    .line 1085
    invoke-static {}, Lcom/transsion/camera/app/CameraActivity;->access$1000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/CameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {v2}, Lcom/transsion/camera/app/CameraActivity;->access$2300(Lcom/transsion/camera/app/CameraActivity;)Lcom/transsion/camera/app/common/IApp$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsResumed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/CameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {v2}, Lcom/transsion/camera/app/CameraActivity;->access$2400(Lcom/transsion/camera/app/CameraActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1086
    sget-object v0, Lcom/transsion/camera/app/CameraActivity$5;->$SwitchMap$com$transsion$camera$app$common$IApp$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1102
    invoke-static {}, Lcom/transsion/camera/app/CameraActivity;->access$1000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/CameraActivity;->access$2300(Lcom/transsion/camera/app/CameraActivity;)Lcom/transsion/camera/app/common/IApp$State;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1099
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {p0, v1}, Lcom/transsion/camera/app/CameraActivity;->access$2600(Lcom/transsion/camera/app/CameraActivity;Z)V

    goto :goto_0

    .line 1093
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/CameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/CameraActivity;->access$2400(Lcom/transsion/camera/app/CameraActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1094
    iget-object p1, p0, Lcom/transsion/camera/app/CameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {p1, v1}, Lcom/transsion/camera/app/CameraActivity;->access$2500(Lcom/transsion/camera/app/CameraActivity;Z)V

    .line 1096
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {p0, v0}, Lcom/transsion/camera/app/CameraActivity;->access$2600(Lcom/transsion/camera/app/CameraActivity;Z)V

    goto :goto_0

    .line 1088
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/CameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/CameraActivity;->access$2400(Lcom/transsion/camera/app/CameraActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1089
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$ModeAndSettingStatusListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {p0, v0}, Lcom/transsion/camera/app/CameraActivity;->access$2500(Lcom/transsion/camera/app/CameraActivity;Z)V

    :cond_4
    :goto_0
    return-void
.end method
