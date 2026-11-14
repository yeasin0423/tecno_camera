.class public Lcom/transsion/camera/app/ui/setting/PopupOption;
.super Ljava/lang/Object;
.source "PopupOption.java"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

.field private mContentRoot:Landroid/view/ViewGroup;

.field private mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

.field private mEnable:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsDismissing:Z

.field private mOrientation:I

.field private mPopupBackground:Landroid/view/View;

.field private final mPopupWindow:Landroid/widget/PopupWindow;

.field private mPopupWindowListener:Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

.field private mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

.field private mTopBarLayout:Landroid/view/View;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PopupOption"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/setting/PopupOption;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;II)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mOrientation:I

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    .line 63
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mEnable:Z

    .line 317
    new-instance v1, Lcom/transsion/camera/app/ui/setting/PopupOption$5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption$5;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 66
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mInflater:Landroid/view/LayoutInflater;

    .line 67
    new-instance p1, Landroid/widget/PopupWindow;

    invoke-direct {p1, p3, p4, p5, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 p4, 0x44e

    .line 68
    invoke-static {p1, p4}, Landroidx/core/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 69
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 71
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object p4, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p4}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 74
    instance-of p1, p3, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 75
    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    const p1, 0x7f09024e

    .line 79
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarLayout:Landroid/view/View;

    const p1, 0x7f090194

    .line 80
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupBackground:Landroid/view/View;

    .line 82
    new-instance p1, Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;Lcom/transsion/camera/app/ui/setting/PopupOption$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    return-void

    .line 77
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PopupOptions needs a ViewGroup for content!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 41
    sget-object v0, Lcom/transsion/camera/app/ui/setting/PopupOption;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/widget/PopupWindow;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/setting/PopupOption;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    return p0
.end method

.method static synthetic access$302(Lcom/transsion/camera/app/ui/setting/PopupOption;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/view/View;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupBackground:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/setting/PopupOption;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->doOnDismiss()V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindowListener:Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/setting/PopupOption;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mEnable:Z

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/ui/setting/PopupOption;)Landroid/view/ViewGroup;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/ui/setting/PopupOption;)Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    return-object p0
.end method

.method private doOnDismiss()V
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 174
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    if-eqz v1, :cond_0

    .line 175
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupBackground:Landroid/view/View;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;->cancelAnimation(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 181
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;->onDismiss(Z)V

    .line 182
    iput-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    return-void
.end method

.method private getPopupShowLocation(Landroid/view/View;)[I
    .locals 3

    const/4 p0, 0x2

    new-array p0, p0, [I

    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x1

    .line 257
    aget v1, p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p0, v0

    .line 258
    aget v1, p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f070357

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr v1, p1

    aput v1, p0, v0

    :cond_0
    return-object p0
.end method

.method private inflateEntryViews(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .locals 7

    .line 277
    invoke-interface {p2}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    invoke-interface {p2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 282
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 284
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    const v4, 0x7f0c00bf

    .line 285
    iget-object v5, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 287
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    iget-object v5, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 290
    iget v5, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mOrientation:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 291
    invoke-virtual {v4, v5, v2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 295
    :cond_1
    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v5

    if-ne v3, v5, :cond_2

    const/4 v5, 0x1

    .line 296
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    .line 298
    :cond_2
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 301
    :goto_1
    new-instance v5, Lcom/transsion/camera/app/ui/setting/PopupOption$4;

    invoke-direct {v5, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption$4;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public dismissPopup()V
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 129
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    sget-object p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "The popup window is dismissing"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 134
    :cond_0
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mEnable:Z

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mIsDismissing:Z

    .line 136
    iget-object v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupBackground:Landroid/view/View;

    new-instance v4, Lcom/transsion/camera/app/ui/setting/PopupOption$1;

    invoke-direct {v4, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption$1;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;->startPopupAnimation(Landroid/view/ViewGroup;Landroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 154
    :cond_1
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mEnable:Z

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupBackground:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public dismissPopupWithoutAnimation()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/transsion/camera/app/ui/setting/PopupOption$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption$2;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public isShowing()Z
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 4

    .line 87
    iput p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mOrientation:I

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 91
    iget-object v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 92
    instance-of v3, v2, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v3, :cond_0

    .line 93
    check-cast v2, Lcom/transsion/camera/app/ui/widget/IRotatable;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAnimationStrategy(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    return-void
.end method

.method public setPopupWindowListener(Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindowListener:Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    return-void
.end method

.method public showPopupIfNeed(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;)Z
    .locals 6

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopupWithoutAnimation()V

    .line 196
    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    if-eqz v3, :cond_0

    .line 197
    iget-object v4, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupBackground:Landroid/view/View;

    invoke-interface {v3, v4, v5, v2}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;->cancelAnimation(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    :cond_0
    move v3, v1

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopup()V

    move v3, v2

    goto :goto_0

    :cond_2
    move v0, v2

    move v3, v0

    :goto_0
    if-eqz v0, :cond_6

    .line 207
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mEnable:Z

    .line 208
    iput-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    .line 209
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 210
    iget-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v0, Lcom/transsion/camera/app/ui/setting/PopupOption$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/setting/PopupOption$3;-><init>(Lcom/transsion/camera/app/ui/setting/PopupOption;)V

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 220
    iget-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mCurrentTopBarItemUI:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-direct {p0, p2, v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->inflateEntryViews(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V

    .line 224
    iget-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mTopBarLayout:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/setting/PopupOption;->getPopupShowLocation(Landroid/view/View;)[I

    move-result-object p2

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object p1

    const/16 v4, 0x31

    aget v5, p2, v1

    aget p2, p2, v2

    invoke-virtual {v0, p1, v4, v5, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 227
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupBackground:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupWindowListener:Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;

    if-eqz p1, :cond_3

    .line 229
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;->onPopupShow()V

    .line 231
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    if-eqz p1, :cond_5

    .line 232
    iget-object p2, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mContentRoot:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mPopupBackground:Landroid/view/View;

    goto :goto_1

    :cond_4
    move-object v3, v0

    :goto_1
    invoke-interface {p1, p2, v3, v1, v0}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;->startPopupAnimation(Landroid/view/ViewGroup;Landroid/view/View;ZLandroid/animation/Animator$AnimatorListener;)V

    .line 234
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mUIHandler:Lcom/transsion/camera/app/ui/setting/PopupOption$UIHandler;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return v2

    :cond_6
    return v1
.end method

.method public startReplaceAnimation(Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    .line 245
    sget-object p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "view is null for replace Animation"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 248
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PopupOption;->mAnimationStrategy:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    if-eqz p0, :cond_1

    .line 249
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;->startReplaceAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method
