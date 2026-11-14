.class Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$4$1;
.super Ljava/lang/Object;
.source "SlimBodyVideoSettingUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$4;->updateStateForUI(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$4;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$4;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$4$1;->this$1:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$4$1;->this$1:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$4;

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;->access$400(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;Z)V

    return-void
.end method
