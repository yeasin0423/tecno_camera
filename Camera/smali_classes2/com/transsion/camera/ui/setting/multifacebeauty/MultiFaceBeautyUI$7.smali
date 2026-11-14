.class Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$7;
.super Ljava/lang/Object;
.source "MultiFaceBeautyUI.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$7;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 375
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$7;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_0

    const/16 p1, 0x2a

    .line 376
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$7;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mCameraOperate:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_0

    const/16 p1, 0x29

    .line 369
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_0
    return-void
.end method
