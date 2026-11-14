.class Lcom/transsion/camera/ui/setting/zoom/ZoomUI$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ZoomUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->showZoomUI(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

.field final synthetic val$isNeedShow:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;Z)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    iput-boolean p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$2;->val$isNeedShow:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 228
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 229
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[showZoomUI] onAnimationCancel --- isNeedShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$2;->val$isNeedShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 230
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->access$300(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 231
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->access$400(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/app/ui/widget/RotateTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->access$500(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/app/ui/widget/RotateTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez p1, :cond_0

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->showWideCamera()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 240
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 241
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[showZoomUI] onAnimationEnd --- isNeedShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$2;->val$isNeedShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->access$300(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 243
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->access$400(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/app/ui/widget/RotateTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI;->access$500(Lcom/transsion/camera/ui/setting/zoom/ZoomUI;)Lcom/transsion/camera/app/ui/widget/RotateTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI;

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez p1, :cond_0

    .line 246
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;->showWideCamera()V

    :cond_0
    return-void
.end method
