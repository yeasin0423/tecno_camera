.class Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$3;
.super Ljava/lang/Object;
.source "SlimBodySettingUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public barOnClick(I)V
    .locals 2

    .line 145
    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->face_beauty_bar:I

    if-ne p1, v0, :cond_0

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$400(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;I)Z

    goto :goto_0

    .line 147
    :cond_0
    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->slimbody_bar:I

    if-ne p1, v0, :cond_2

    const-wide/16 v0, 0xfa

    .line 148
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 149
    invoke-static {}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$500()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "fast click, return !"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 152
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$400(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;I)Z

    :cond_2
    :goto_0
    return-void
.end method
