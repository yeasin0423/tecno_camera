.class Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$1;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "AbstractCameraSwitcherUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->access$200(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->access$200(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->getDefaultDrawableId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method
