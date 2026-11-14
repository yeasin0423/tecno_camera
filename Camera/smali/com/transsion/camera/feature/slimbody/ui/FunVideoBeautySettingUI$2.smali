.class Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$2;
.super Ljava/lang/Object;
.source "FunVideoBeautySettingUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;


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

    .line 108
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(IZ)V
    .locals 0

    .line 111
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    invoke-static {p2}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->access$100(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->access$100(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->notifyProgressChanged(I)V

    :cond_0
    return-void
.end method
