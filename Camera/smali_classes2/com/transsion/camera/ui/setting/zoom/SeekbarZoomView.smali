.class public Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;
.super Lcom/transsion/camera/app/ui/widget/RotateLayout;
.source "SeekbarZoomView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;,
        Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleRegionState;,
        Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TelePointState;,
        Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$MainRegionState;,
        Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$MainPointState;,
        Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$RecordingState;,
        Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$PreviewState;,
        Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;,
        Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$WideMacroClickLister;,
        Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ZoomViewChangedListener;,
        Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private m1xTopOffset:I

.field private m2xBottomOffset:I

.field private m2xTopOffset:I

.field private mCurrentStyle:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

.field private mMacroCameraIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mMainPointState:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

.field private mMainRegionState:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

.field private mMaxZoom:I

.field private mMinZoom:I

.field private mProgressCalculateState:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

.field private mRecording:Z

.field private mRecordingState:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

.field private mSeekBarHeight:I

.field private mStrokeTvMaxZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

.field private mStrokeTvMinZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

.field private mTelePointState:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

.field private mTeleProgressCalculator:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;

.field private mTeleRegionState:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

.field private mTvMaxZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

.field private mTvMinZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

.field private mTvMinZoomRatioRoot:Landroid/view/ViewGroup;

.field private mWideCameraIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mWideMacroClickLister:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$WideMacroClickLister;

.field private mZoomChangeListener:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ZoomViewChangedListener;

.field private mZoomSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mZoomSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SeekbarZoomView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    sget-object p1, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;->STYLE_NORMAL:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mCurrentStyle:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    .line 47
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;-><init>(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mTeleProgressCalculator:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;

    .line 124
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$1;-><init>(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ZoomViewChangedListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomChangeListener:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ZoomViewChangedListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;IZ)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->getZoomRatio(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/app/ui/widget/RotateTextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mTvMinZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/app/ui/widget/RotateTextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mStrokeTvMinZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->m1xTopOffset:I

    return p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mSeekBarHeight:I

    return p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->m2xBottomOffset:I

    return p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->m2xTopOffset:I

    return p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMainPointState:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMainRegionState:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mTelePointState:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMaxZoom:I

    return p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mTeleRegionState:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mRecordingState:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMinZoom:I

    return p0
.end method

.method static synthetic access$400()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 21
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mProgressCalculateState:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    return-object p0
.end method

.method static synthetic access$602(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;)Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mProgressCalculateState:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    return-object p1
.end method

.method static synthetic access$700(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mWideCameraIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Landroid/view/ViewGroup;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mTvMinZoomRatioRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mRecording:Z

    return p0
.end method

.method private getZoomRatio(IZ)Ljava/lang/String;
    .locals 3

    if-eqz p2, :cond_0

    add-int/lit8 p1, p1, -0x32

    .line 117
    :cond_0
    div-int/lit8 p0, p1, 0xa

    rem-int/lit8 p0, p0, 0xa

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 118
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p2, p2, [Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "%dx"

    invoke-static {p0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 120
    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, p2

    const-string p0, "%d.%dx"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;)V
    .locals 1

    .line 167
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMacroCameraIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mWideMacroClickLister:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$WideMacroClickLister;

    invoke-interface {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$WideMacroClickLister;->onWideCameraClick()V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$1(Landroid/view/View;)V
    .locals 1

    .line 172
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mWideCameraIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mWideMacroClickLister:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$WideMacroClickLister;

    invoke-interface {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$WideMacroClickLister;->onMacroCameraClick()V

    return-void
.end method

.method private updateBarBackground(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;)V
    .locals 4

    .line 224
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$2;->$SwitchMap$com$transsion$camera$ui$setting$zoom$SeekbarZoomView$SeekBarStyle:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const v1, 0x7f080706

    const v2, 0x7f08053e

    const/4 v3, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 243
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mTvMinZoomRatioRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 245
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setBackgroundResource(I)V

    .line 246
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 247
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    goto/16 :goto_0

    .line 240
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mTeleProgressCalculator:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->updateProgressCalculateState(I)V

    goto :goto_0

    .line 233
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mTvMinZoomRatioRoot:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 235
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    const v0, 0x7f08070d

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setBackgroundResource(I)V

    .line 236
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07038d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v3, v3, v0, v3}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 237
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    goto :goto_0

    .line 226
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 227
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mTvMinZoomRatioRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 228
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setBackgroundResource(I)V

    .line 229
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07038c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v3, v3, v0, v3}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 230
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 255
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->setProgress(I)V

    return-void
.end method

.method private updateProgressCalculator()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mCurrentStyle:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    sget-object v1, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;->STYLE_SUPPORT_TELE:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mRecording:Z

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mTeleProgressCalculator:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;

    .line 287
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/-$$Lambda$apUwoea3_Qy7dyVz6Z6nuHPHp4s;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/zoom/-$$Lambda$apUwoea3_Qy7dyVz6Z6nuHPHp4s;-><init>(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;)V

    .line 286
    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->updateProgressCalculator(Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar$IProgressCalculator;)V

    goto :goto_0

    .line 289
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->updateProgressCalculator(Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar$IProgressCalculator;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected disableWideCamera()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mWideCameraIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 270
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMacroCameraIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method protected doOrientationChanged(I)V
    .locals 2

    .line 192
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_0

    const v1, 0x800013

    .line 194
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    const v1, 0x800015

    .line 196
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 198
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mTvMaxZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mWideCameraIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0xb4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 205
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 206
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mTvMaxZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p1, v1, v1}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    .line 207
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mStrokeTvMaxZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p1, v1, v1}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    .line 208
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mTvMinZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p1, v1, v1}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mStrokeTvMinZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {p1, v1, v1}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    .line 210
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mWideCameraIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMacroCameraIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    goto :goto_1

    .line 213
    :cond_2
    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mTvMaxZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mStrokeTvMaxZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mTvMinZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mStrokeTvMinZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateTextView;->setOrientation(IZ)V

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mWideCameraIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMacroCameraIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected handleMacroIcon(Z)V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMacroCameraIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMacroCameraIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method protected handleWideIcon(Z)V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mWideCameraIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mWideCameraIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method protected initZoomView(III)V
    .locals 3

    .line 78
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMaxZoom:I

    .line 79
    iput p2, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMinZoom:I

    mul-int/lit8 v0, p2, 0x2

    .line 82
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$MainPointState;

    invoke-direct {v1, p0, p2, v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$MainPointState;-><init>(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;II)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMainPointState:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    .line 83
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$MainRegionState;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMinZoom:I

    invoke-direct {v1, p0, v2, v0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$MainRegionState;-><init>(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;II)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMainRegionState:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    .line 84
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TelePointState;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMaxZoom:I

    invoke-direct {v1, p0, v0, v2}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TelePointState;-><init>(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;II)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mTelePointState:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    .line 85
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleRegionState;

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMaxZoom:I

    invoke-direct {v1, p0, v0, v2}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleRegionState;-><init>(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;II)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mTeleRegionState:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    .line 86
    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$RecordingState;

    if-lt p3, v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMinZoom:I

    :goto_0
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMaxZoom:I

    invoke-direct {v1, p0, v0, v2}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$RecordingState;-><init>(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;II)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mRecordingState:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ProgressCalculateState;

    .line 88
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;->STYLE_NORMAL:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mCurrentStyle:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMaxZoom:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMinZoom:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMin(I)V

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    invoke-virtual {v0, p3}, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->setProgress(I)V

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->setProgressDrawableTranslate(Z)V

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 94
    sget-object p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[initZoomView] currentZoom "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", minZoom = "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", maxZoom: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$0$SeekbarZoomView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->lambda$onFinishInflate$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$1$SeekbarZoomView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->lambda$onFinishInflate$1(Landroid/view/View;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 157
    invoke-super {p0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->onFinishInflate()V

    const v0, 0x7f09028c

    .line 158
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    const v0, 0x7f09025c

    .line 159
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mTvMaxZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    const v0, 0x7f090261

    .line 160
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mStrokeTvMaxZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    const v0, 0x7f09025e

    .line 161
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mTvMinZoomRatioRoot:Landroid/view/ViewGroup;

    const v0, 0x7f09025d

    .line 162
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mTvMinZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    const v0, 0x7f090262

    .line 163
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mStrokeTvMinZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    const v0, 0x7f090120

    .line 164
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mWideCameraIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const v0, 0x7f09011e

    .line 165
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMacroCameraIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mWideCameraIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/-$$Lambda$SeekbarZoomView$OrdiL_jXymhvBwfrotgeOLO6NhM;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/zoom/-$$Lambda$SeekbarZoomView$OrdiL_jXymhvBwfrotgeOLO6NhM;-><init>(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMacroCameraIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/-$$Lambda$SeekbarZoomView$bjECMsyGHKIpm9Ob1_5z9jBHmyw;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/zoom/-$$Lambda$SeekbarZoomView$bjECMsyGHKIpm9Ob1_5z9jBHmyw;-><init>(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070389

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->m1xTopOffset:I

    .line 176
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07038a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->m2xBottomOffset:I

    .line 177
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07038b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->m2xTopOffset:I

    .line 178
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070385

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mSeekBarHeight:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 183
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mWideCameraIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMacroCameraIcon:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected setListener(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ZoomViewChangedListener;Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$WideMacroClickLister;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomChangeListener:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$ZoomViewChangedListener;

    .line 74
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mWideMacroClickLister:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$WideMacroClickLister;

    return-void
.end method

.method public updateBarStyle(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mCurrentStyle:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    .line 279
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->updateProgressCalculator()V

    .line 280
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->updateBarBackground(Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;)V

    return-void
.end method

.method updateRecordingState(Z)V
    .locals 0

    .line 274
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mRecording:Z

    return-void
.end method

.method protected updateZoomSeekbar(IZ)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mCurrentStyle:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    sget-object v1, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;->STYLE_SUPPORT_TELE:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$SeekBarStyle;

    if-ne v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mTeleProgressCalculator:Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView$TeleProgressCalculator;->updateProgressCalculateState(I)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mTvMinZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMinZoom:I

    invoke-direct {p0, v1, p2}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->getZoomRatio(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mStrokeTvMinZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMinZoom:I

    invoke-direct {p0, v1, p2}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->getZoomRatio(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mTvMaxZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMaxZoom:I

    invoke-direct {p0, v1, p2}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->getZoomRatio(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mStrokeTvMaxZoomRatio:Lcom/transsion/camera/app/ui/widget/RotateTextView;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mMaxZoom:I

    invoke-direct {p0, v1, p2}, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->getZoomRatio(IZ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->setProgress(I)V

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/SeekbarZoomView;->mZoomSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->setProgressDrawableTranslate(Z)V

    return-void
.end method
