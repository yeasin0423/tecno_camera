.class Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FaceBeautyUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyUI;->fadeIn(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyUI;

.field final synthetic val$levelList:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyUI;Landroid/view/View;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyUI$1;->this$0:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyUI;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyUI$1;->val$levelList:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 55
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyUI$1;->this$0:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyUI;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->setEnable(Z)V

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyUI$1;->this$0:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->hideLevelList()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 49
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyUI$1;->val$levelList:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyUI$1;->this$0:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->setEnable(Z)V

    return-void
.end method
