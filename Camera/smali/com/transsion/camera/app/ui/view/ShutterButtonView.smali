.class public Lcom/transsion/camera/app/ui/view/ShutterButtonView;
.super Lcom/transsion/camera/app/ui/widget/RotateImageView;
.source "ShutterButtonView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

.field private mLongPressed:Z

.field private mOldPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/view/ShutterButtonView;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->callShutterButtonFocus(Z)V

    return-void
.end method

.method private callShutterButtonFocus(Z)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;->onShutterDown()V

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;->onShutterUp()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 122
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mLongPressed:Z

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 51
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, p1, v0}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 54
    :cond_0
    invoke-virtual {p0, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 67
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 69
    invoke-virtual {p0}, Landroid/widget/ImageView;->isPressed()Z

    move-result v0

    .line 70
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mOldPressed:Z

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    .line 88
    new-instance v1, Lcom/transsion/camera/app/ui/view/ShutterButtonView$1;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$1;-><init>(Lcom/transsion/camera/app/ui/view/ShutterButtonView;Z)V

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 95
    :cond_0
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->callShutterButtonFocus(Z)V

    .line 97
    :goto_0
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mOldPressed:Z

    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 136
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;->onShutterLongClick()V

    const/4 p1, 0x1

    .line 138
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mLongPressed:Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 103
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 108
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    :goto_0
    return v0
.end method

.method public performClick()Z
    .locals 2

    .line 127
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mLongPressed:Z

    if-nez v1, :cond_0

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;->onShutterClick()V

    :cond_0
    return v0
.end method

.method public setOnShutterListener(Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/ShutterButtonView;->mListener:Lcom/transsion/camera/app/ui/view/ShutterButtonView$OnShutterButtonListener;

    return-void
.end method
