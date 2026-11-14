.class Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$4;
.super Ljava/lang/Object;
.source "FunVideoBeautySettingUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateProgressForUI(II)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->access$500(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->access$500(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifyProgress(II)V

    :cond_0
    return-void
.end method

.method public updateStateForUI(I)V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->access$300(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;Z)V

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->access$400(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$4$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$4$1;-><init>(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$4;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->access$500(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->access$500(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->notifyState(I)V

    :cond_0
    return-void
.end method
