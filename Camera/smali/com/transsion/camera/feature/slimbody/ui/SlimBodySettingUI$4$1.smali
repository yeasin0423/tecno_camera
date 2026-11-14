.class Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4$1;
.super Ljava/lang/Object;
.source "SlimBodySettingUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;->updateStateForUI(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4$1;->this$1:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4$1;->this$1:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;->access$600(Lcom/transsion/camera/feature/slimbody/ui/SlimBodySettingUI;Z)V

    return-void
.end method
