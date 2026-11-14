.class public Lcom/transsion/camera/ui/setting/exposure/ExposureView;
.super Lcom/transsion/camera/app/ui/widget/RotateLayout;
.source "ExposureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;,
        Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sMaxEv:I

.field private static sMinEv:I


# instance fields
.field private mEvChangeStartNotified:Z

.field private mEvSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

.field private mEvSeekbarContainer:Landroid/view/View;

.field private mFocusViewX:I

.field private mFocusViewY:I

.field private mLastEv:F

.field private mLastProgress:I

.field private mListener:Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;

.field private mOrientation:I

.field private mShowAreaBottom:I

.field private mShowAreaLeft:I

.field private mShowAreaRight:I

.field private mShowAreaTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ExposureView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mLastEv:F

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvChangeStartNotified:Z

    .line 184
    new-instance p1, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;-><init>(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mListener:Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;

    return-object p0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 16
    sget v0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->sMaxEv:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 16
    sget v0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->sMinEv:I

    return v0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)F
    .locals 0

    .line 16
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mLastEv:F

    return p0
.end method

.method static synthetic access$302(Lcom/transsion/camera/ui/setting/exposure/ExposureView;F)F
    .locals 0

    .line 16
    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mLastEv:F

    return p1
.end method

.method static synthetic access$400()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 16
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvChangeStartNotified:Z

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/ui/setting/exposure/ExposureView;Z)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->onEvChanged(Z)V

    return-void
.end method

.method private computeLayoutDirect()Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;
    .locals 6

    .line 253
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;->RIGHT:Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;

    .line 254
    iget v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mFocusViewX:I

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbarContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 255
    iget v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mFocusViewY:I

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbarContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 256
    iget v3, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mFocusViewX:I

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbarContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 257
    iget v4, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mFocusViewY:I

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbarContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 258
    iget v5, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mOrientation:I

    if-eqz v5, :cond_3

    const/16 v3, 0x5a

    if-eq v5, v3, :cond_2

    const/16 v2, 0xb4

    if-eq v5, v2, :cond_1

    const/16 v1, 0x10e

    if-eq v5, v1, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mShowAreaBottom:I

    if-le v4, p0, :cond_4

    .line 266
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;->LEFT:Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;

    goto :goto_0

    .line 271
    :cond_1
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mShowAreaLeft:I

    if-ge v1, p0, :cond_4

    .line 272
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;->LEFT:Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;

    goto :goto_0

    .line 276
    :cond_2
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mShowAreaTop:I

    if-ge v2, p0, :cond_4

    .line 277
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;->LEFT:Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;

    goto :goto_0

    .line 260
    :cond_3
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mShowAreaRight:I

    if-le v3, p0, :cond_4

    .line 261
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;->LEFT:Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;

    :cond_4
    :goto_0
    return-object v0
.end method

.method private extractDeltaScale(FLandroid/widget/SeekBar;)I
    .locals 4

    .line 153
    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 154
    invoke-virtual {p2}, Landroid/widget/SeekBar;->getMax()I

    move-result p2

    .line 157
    iget v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mOrientation:I

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_1

    const/16 v3, 0x5a

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    div-float v1, p1, v2

    .line 161
    :goto_1
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mOrientation:I

    const/16 v3, 0xb4

    if-eq p0, v3, :cond_2

    const/16 v3, 0x10e

    if-ne p0, v3, :cond_3

    :cond_2
    neg-float p0, p1

    div-float v1, p0, v2

    .line 164
    :cond_3
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr v0, p0

    if-le v0, p2, :cond_4

    goto :goto_2

    :cond_4
    if-gez v0, :cond_5

    const/4 p2, 0x0

    goto :goto_2

    :cond_5
    move p2, v0

    :goto_2
    return p2
.end method

.method private onEvChanged(Z)V
    .locals 3

    .line 175
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onEvChanged] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 176
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvChangeStartNotified:Z

    if-eqz p1, :cond_0

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mListener:Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;->onTrackingTouchStatusChanged(Z)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mListener:Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;->onTrackingTouchStatusChanged(Z)V

    :goto_0
    return-void
.end method

.method private reLayout()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 103
    sget-object v1, Lcom/transsion/camera/ui/setting/exposure/ExposureView$2;->$SwitchMap$com$transsion$camera$ui$setting$exposure$ExposureView$LayoutDirect:[I

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->computeLayoutDirect()Lcom/transsion/camera/ui/setting/exposure/ExposureView$LayoutDirect;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const v1, 0x800013

    .line 108
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_2
    const v1, 0x800015

    .line 105
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 111
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateEvProgressbar(F)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->extractDeltaScale(FLandroid/widget/SeekBar;)I

    move-result p1

    .line 143
    iget v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mLastProgress:I

    if-ne v0, p1, :cond_0

    return-void

    .line 146
    :cond_0
    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mLastProgress:I

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->setProgressDrawableTranslate(Z)V

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public getFocusViewX()I
    .locals 0

    .line 231
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mFocusViewX:I

    return p0
.end method

.method public getFocusViewY()I
    .locals 0

    .line 235
    iget p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mFocusViewY:I

    return p0
.end method

.method protected initExposureView(II)V
    .locals 1

    .line 82
    sput p1, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->sMaxEv:I

    .line 83
    sput p2, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->sMinEv:I

    sub-int/2addr p1, p2

    mul-int/lit16 p1, p1, 0xfa

    .line 85
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 86
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->resetExposureView()V

    .line 87
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p2, p0}, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 88
    sget-object p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[initExposureView] ev range: ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->sMaxEv:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->sMinEv:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] , seekBarMax = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 53
    invoke-super {p0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->onFinishInflate()V

    const v0, 0x7f0900c0

    .line 54
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbarContainer:Landroid/view/View;

    const v0, 0x7f0900bf

    .line 55
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    return-void
.end method

.method protected onTrackingTouch(Z)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    invoke-interface {v0, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    invoke-interface {v0, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :goto_0
    return-void
.end method

.method protected onVerticalScroll(Landroid/view/MotionEvent;F)V
    .locals 1

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 137
    invoke-direct {p0, p2}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->updateEvProgressbar(F)V

    :cond_0
    return-void
.end method

.method protected resetExposureView()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 94
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->setProgress(I)V

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;->setProgressDrawableTranslate(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 60
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 61
    sget-object v0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mEvChangeStartNotified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvChangeStartNotified:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 66
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvChangeStartNotified:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 67
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->onEvChanged(Z)V

    :cond_1
    return-void
.end method

.method public setFocusLocation(FF)V
    .locals 0

    float-to-int p1, p1

    .line 226
    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mFocusViewX:I

    float-to-int p1, p2

    .line 227
    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mFocusViewY:I

    return-void
.end method

.method protected setListener(Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mListener:Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    .line 116
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 117
    iget p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mOrientation:I

    if-ne p2, p1, :cond_0

    return-void

    .line 120
    :cond_0
    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mOrientation:I

    .line 121
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->reLayout()V

    return-void
.end method

.method public setShowArea(IIII)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mShowAreaTop:I

    .line 41
    iput p2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mShowAreaLeft:I

    .line 42
    iput p3, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mShowAreaRight:I

    .line 43
    iput p4, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mShowAreaBottom:I

    .line 44
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->reLayout()V

    return-void
.end method

.method public updateSeekBarVisibility(Z)V
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->mEvSeekbar:Lcom/transsion/camera/ui/setting/exposure/VerticalSeekBar;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 241
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 243
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
