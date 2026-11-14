.class public Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;,
        Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/view/View;"
    }
.end annotation


# static fields
.field private static final DEFAULT_DIVIDER_HEIGHT:F

.field private static final DEFAULT_LINE_SPACING:F


# instance fields
.field private isCurved:Z

.field private isCyclic:Z

.field private isSoundEffect:Z

.field private mBgColor:I

.field private mCalendar:Ljava/util/Calendar;

.field private mCenterY:I

.field private mCurrentScrollPosition:I

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mDividerOffset:F

.field private mDownStartTime:J

.field private mDownTouchScrollOffsetY:F

.field private mDownTouchY:F

.field private mDrawRect:Landroid/graphics/Rect;

.field private mFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private mHourWheel:Z

.field private mIs24Format:Z

.field private mIsRtl:Z

.field private mMaxFlingVelocity:I

.field private mMaxScrollY:I

.field private mMinFlingVelocity:I

.field private mMinScrollY:I

.field private mMinuteWheel:Z

.field private mMonthList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedFling:Z

.field private mOnWheelChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mRefractRatio:F

.field private mScrollOffsetY:F

.field private mScrolledY:F

.field private mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

.field protected mScrollerRun:Ljava/lang/Runnable;

.field private mSecondPaint:Landroid/graphics/Paint;

.field private mSelectedItemPosition:I

.field private mSelectedPaint:Landroid/graphics/Paint;

.field private mSoundHelper:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

.field private mTempCalendar:Ljava/util/Calendar;

.field private mTextAlign:I

.field private mTextBoundaryMargin:F

.field private mTextSecondColor:I

.field private mTextSelectColor:I

.field private mTextSizeSecond:I

.field private mTextSizeSelect:I

.field private mTotalHeight:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVisibleItems:I

.field private mWheelHeight:I

.field private mWheelWidth:I

.field private mYearDays:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 59
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dp2px(F)F

    move-result v0

    sput v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->DEFAULT_LINE_SPACING:F

    const/high16 v0, 0x41700000    # 15.0f

    .line 60
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->sp2px(F)F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 62
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dp2px(F)F

    move-result v0

    sput v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->DEFAULT_DIVIDER_HEIGHT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 241
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 245
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 249
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    .line 94
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    .line 95
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedPaint:Landroid/graphics/Paint;

    .line 122
    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 165
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    const/4 p3, 0x0

    .line 183
    iput p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrolledY:F

    const/4 p3, 0x0

    .line 213
    iput-boolean p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isSoundEffect:Z

    .line 223
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMonthList:Ljava/util/List;

    .line 230
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    .line 232
    new-instance p3, Landroid/text/TextPaint;

    invoke-direct {p3, v0}, Landroid/text/TextPaint;-><init>(I)V

    .line 731
    new-instance p3, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;

    invoke-direct {p3, p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$1;-><init>(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)V

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollerRun:Ljava/lang/Runnable;

    .line 250
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->initAttrsAndDefault(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 251
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->initValue(Landroid/content/Context;)V

    return-void
.end method

.method private adjustVisibleItems(I)I
    .locals 0

    .line 1306
    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method private calculateDistanceToEndPoint(F)F
    .locals 3

    .line 924
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 925
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    neg-int p0, v1

    int-to-float p0, p0

    :goto_0
    sub-float/2addr p0, p1

    return p0

    :cond_0
    int-to-float p0, v1

    goto :goto_0

    :cond_1
    neg-float p0, p1

    return p0
.end method

.method private calculateDrawStart()V
    .locals 2

    .line 462
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextAlign:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 471
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    goto :goto_0

    .line 467
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    goto :goto_0

    .line 464
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 476
    :goto_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    return-void
.end method

.method private calculateItemDistance(I)I
    .locals 1

    .line 1413
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    mul-int/2addr p1, v0

    int-to-float p1, p1

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    sub-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private calculateLimitY()V
    .locals 2

    .line 483
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x80000000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinScrollY:I

    .line 485
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    if-eqz v0, :cond_1

    const v0, 0x7fffffff

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    mul-int/2addr v0, v1

    :goto_1
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMaxScrollY:I

    return-void
.end method

.method private calculateTextSize()V
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSelect:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 394
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    return-void
.end method

.method private dayOfYearToMonthDay(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 2069
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2072
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2073
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTempCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 2074
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTempCalendar:Ljava/util/Calendar;

    .line 2076
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTempCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 2077
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTempCalendar:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 2078
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTempCalendar:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 2080
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMonthList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_3

    .line 2081
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTempCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2082
    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsRtl:Z

    const/4 v3, 0x0

    const-string v4, "%d"

    const-string v5, " "

    if-eqz v1, :cond_2

    .line 2083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMonthList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2085
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMonthList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p0, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    invoke-static {v4, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private dividedItemHeight()I
    .locals 0

    .line 965
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private doScroll(F)V
    .locals 2

    .line 842
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 843
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    if-nez p1, :cond_1

    .line 845
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinScrollY:I

    int-to-float v1, p1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    int-to-float p1, p1

    .line 846
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    goto :goto_0

    .line 847
    :cond_0
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMaxScrollY:I

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    int-to-float p1, p1

    .line 848
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    :cond_1
    :goto_0
    return-void
.end method

.method protected static dp2px(F)F
    .locals 2

    .line 1865
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private drawItem2(Landroid/graphics/Canvas;Landroid/graphics/Paint;IFF)V
    .locals 4

    .line 551
    invoke-direct {p0, p3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getDataByIndex(I)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 556
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 557
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr p5, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr p5, v2

    .line 560
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, v1

    const/4 v1, 0x0

    cmpl-float v3, p0, v1

    if-lez v3, :cond_1

    mul-float v1, p0, v2

    :cond_1
    add-float/2addr p4, p5

    add-float/2addr p4, v0

    .line 563
    invoke-virtual {p1, p3, v1, p4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getCurrentPosition()I
    .locals 2

    .line 941
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 945
    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 946
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dividedItemHeight()I

    move-result v1

    goto :goto_0

    .line 948
    :cond_1
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dividedItemHeight()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 950
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    if-gez v0, :cond_2

    .line 952
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method private getDataByIndex(I)Ljava/lang/String;
    .locals 3

    .line 639
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 645
    :cond_0
    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    if-eqz v2, :cond_2

    .line 646
    rem-int/2addr p1, v0

    if-gez p1, :cond_1

    add-int/2addr p1, v0

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getDataText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-ltz p1, :cond_3

    if-ge p1, v0, :cond_3

    .line 653
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getDataText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 657
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mYearDays:Z

    if-eqz p1, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 658
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dayOfYearToMonthDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method private initAttrsAndDefault(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 262
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIsRtl:Z

    const/4 v0, 0x1

    .line 263
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextAlign:I

    const/4 v1, 0x0

    .line 264
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextBoundaryMargin:F

    .line 265
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 270
    sget v3, Lcom/transsion/widgetslib/R$color;->os_text_primary_color:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSelectColor:I

    .line 272
    sget v3, Lcom/transsion/widgetslib/R$color;->os_text_quaternary_color:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 273
    sget v3, Lcom/transsion/widgetslib/R$color;->os_text_tertiary_color:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSecondColor:I

    .line 274
    sget v3, Lcom/transsion/widgetslib/R$color;->os_text_tertiary_color:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 275
    sget v3, Lcom/transsion/widgetslib/R$color;->os_altitude_tertiary_color:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mBgColor:I

    new-array v0, v0, [I

    .line 278
    sget v3, Lcom/transsion/widgetslib/R$attr;->wheelWidth:I

    const/4 v4, 0x0

    aput v3, v0, v4

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 279
    sget v0, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_hour:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelWidth:I

    .line 280
    sget v0, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_item_height:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    .line 281
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 284
    sget p2, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_text_first:I

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 286
    sget p2, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_text_first:I

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSecond:I

    .line 287
    sget p2, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_text_select:I

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSelect:I

    .line 288
    sget p2, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_item_height:I

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 289
    sget p2, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_item_height_select:I

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 291
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSecond:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 292
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSecondColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 294
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSecond:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 p2, 0x5

    .line 302
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVisibleItems:I

    .line 304
    invoke-direct {p0, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->adjustVisibleItems(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVisibleItems:I

    .line 305
    iput v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    .line 307
    iput v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurrentScrollPosition:I

    .line 308
    iput-boolean v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCyclic:Z

    .line 316
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDividerOffset:F

    .line 320
    iput-boolean v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCurved:Z

    const/high16 p2, 0x3f800000    # 1.0f

    .line 326
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mRefractRatio:F

    if-eqz v4, :cond_0

    const v0, 0x3f666666    # 0.9f

    .line 327
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mRefractRatio:F

    cmpl-float v2, v0, p2

    if-lez v2, :cond_1

    .line 329
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mRefractRatio:F

    goto :goto_1

    :cond_1
    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 331
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mRefractRatio:F

    .line 333
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    return-void
.end method

.method private initDefaultVolume(Landroid/content/Context;)V
    .locals 2

    const-string v0, "audio"

    .line 376
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 379
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 381
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    .line 383
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSoundHelper:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    int-to-float v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->setPlayVolume(F)V

    goto :goto_0

    .line 385
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSoundHelper:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    const p1, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->setPlayVolume(F)V

    :goto_0
    return-void
.end method

.method private initValue(Landroid/content/Context;)V
    .locals 2

    .line 344
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMaxFlingVelocity:I

    .line 346
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinFlingVelocity:I

    .line 348
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 349
    new-instance v1, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-direct {v1, p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    .line 350
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDrawRect:Landroid/graphics/Rect;

    .line 351
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    .line 352
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 353
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 354
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isSoundEffect:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    invoke-static {}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->obtain()Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSoundHelper:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    .line 356
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->initDefaultVolume(Landroid/content/Context;)V

    .line 358
    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateTextSize()V

    .line 359
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->updateTextAlign()V

    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 822
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private invalidateIfYChanged()V
    .locals 2

    .line 857
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrolledY:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 858
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrolledY:F

    .line 860
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mOnWheelChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    if-eqz v1, :cond_0

    float-to-int v0, v0

    .line 861
    invoke-interface {v1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;->onWheelScroll(I)V

    .line 863
    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->onWheelScroll(F)V

    .line 865
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->observeItemChanged()V

    .line 866
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private observeItemChanged()V
    .locals 3

    .line 875
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurrentScrollPosition:I

    .line 876
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getCurrentPosition()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 879
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mOnWheelChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    if-eqz v2, :cond_0

    .line 880
    invoke-interface {v2, v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;->onWheelItemChanged(II)V

    .line 882
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->onWheelItemChanged(II)V

    .line 884
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->playSoundEffect()V

    .line 886
    iput v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCurrentScrollPosition:I

    :cond_1
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 831
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 832
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method protected static sp2px(F)F
    .locals 2

    .line 1875
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private updateTextAlign()V
    .locals 2

    .line 401
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextAlign:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 410
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 406
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 403
    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected forceStopScroller()V
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->forceFinished(Z)V

    :cond_0
    return-void
.end method

.method protected getDataText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 672
    :cond_0
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 673
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 675
    iget-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mHourWheel:Z

    const-string v2, "%02d"

    const-string v3, "%d"

    if-eqz v1, :cond_1

    .line 676
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mIs24Format:Z

    if-eqz p0, :cond_2

    goto :goto_0

    .line 677
    :cond_1
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinuteWheel:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 682
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 683
    :cond_3
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_4

    .line 684
    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 686
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method modifyScrollerPosition(ZF)F
    .locals 9

    .line 714
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    add-float/2addr v0, p2

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dividedItemHeight()I

    move-result v1

    int-to-float v1, v1

    rem-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateDistanceToEndPoint(F)F

    move-result v0

    add-float/2addr p2, v0

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_0

    .line 716
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    add-float/2addr v1, p2

    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinScrollY:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    cmpl-float v4, p2, v0

    if-lez v4, :cond_1

    .line 718
    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    add-float/2addr v4, p2

    iget v5, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMaxScrollY:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-nez v1, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    return v0

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    .line 724
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    const/4 v4, 0x0

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    float-to-int v5, p0

    const/4 v6, 0x0

    float-to-int v7, p2

    const/16 v8, 0x15e

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->startScroll(IIIII)V

    :cond_4
    return p2
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 364
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 365
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSoundHelper:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    if-eqz p0, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->release()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 490
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 491
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mBgColor:I

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 494
    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->dividedItemHeight()I

    move-result v0

    .line 496
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    int-to-float v8, v0

    div-float/2addr v1, v8

    float-to-int v1, v1

    .line 498
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v9, v2, v3

    div-float/2addr v2, v8

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x4

    shr-int/lit8 v4, v2, 0x1

    sub-int/2addr v1, v4

    add-int/2addr v2, v1

    int-to-float v10, v2

    mul-float v11, v8, v3

    sub-float v2, v9, v11

    .line 506
    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    sub-float v12, v2, v3

    :goto_0
    int-to-float v2, v1

    cmpg-float v2, v2, v10

    if-gez v2, :cond_2

    mul-int v2, v1, v0

    int-to-float v2, v2

    add-float v6, v12, v2

    sub-float v2, v9, v6

    sub-float/2addr v2, v11

    .line 512
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v3, v2, v11

    if-gez v3, :cond_1

    div-float/2addr v2, v11

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    .line 516
    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSelect:I

    iget v5, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSizeSecond:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v3

    int-to-float v7, v5

    div-float/2addr v4, v7

    mul-float/2addr v4, v2

    add-float/2addr v4, v3

    .line 517
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedPaint:Landroid/graphics/Paint;

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 518
    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->textColorScale(F)I

    move-result v2

    .line 519
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 520
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedPaint:Landroid/graphics/Paint;

    move-object v2, p0

    move-object v3, p1

    move v5, v1

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->drawItem2(Landroid/graphics/Canvas;Landroid/graphics/Paint;IFF)V

    goto :goto_1

    .line 523
    :cond_1
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    move-object v2, p0

    move-object v3, p1

    move v5, v1

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->drawItem2(Landroid/graphics/Canvas;Landroid/graphics/Paint;IFF)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 419
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCurved:Z

    if-eqz v0, :cond_0

    .line 420
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVisibleItems:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0

    .line 422
    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVisibleItems:I

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 424
    :goto_0
    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextBoundaryMargin:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 425
    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isCurved:Z

    if-eqz v2, :cond_1

    const-wide v2, 0x3fb0c152382d7365L    # 0.06544984694978735

    .line 426
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    :cond_1
    const/4 v2, 0x0

    .line 429
    invoke-static {v1, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    .line 430
    invoke-static {v0, p2, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 429
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 435
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 437
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 438
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    .line 439
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCenterY:I

    .line 440
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mWheelHeight:I

    div-int/lit8 p2, p1, 0x2

    .line 441
    div-int/lit8 p1, p1, 0x2

    .line 442
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 443
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 444
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 445
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 447
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateDrawStart()V

    .line 449
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateLimitY()V

    .line 452
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSelectedItemPosition:I

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->calculateItemDistance(I)I

    move-result p1

    if-lez p1, :cond_0

    int-to-float p1, p1

    .line 454
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->doScroll(F)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 743
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 746
    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->initVelocityTracker()V

    .line 747
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 749
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    goto/16 :goto_2

    .line 766
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 767
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchY:F

    sub-float/2addr v0, p1

    .line 768
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTotalHeight:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_2

    .line 769
    iput-boolean v2, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mNeedFling:Z

    .line 771
    :cond_2
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchScrollOffsetY:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 773
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mOnWheelChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    if-eqz p1, :cond_3

    .line 774
    invoke-interface {p1, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;->onWheelScrollStateChanged(I)V

    .line 776
    :cond_3
    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->onWheelScrollStateChanged(I)V

    .line 777
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->invalidateIfYChanged()V

    goto/16 :goto_2

    .line 783
    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMaxFlingVelocity:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 784
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 785
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinFlingVelocity:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_7

    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mNeedFling:Z

    if-eqz v3, :cond_5

    goto :goto_0

    .line 801
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownStartTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x78

    cmp-long v0, v3, v5

    if-gtz v0, :cond_6

    .line 804
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mCenterY:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int v1, p1

    :cond_6
    int-to-float p1, v1

    .line 806
    invoke-virtual {p0, v2, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->modifyScrollerPosition(ZF)F

    goto :goto_1

    .line 787
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->forceStopScroller()V

    .line 789
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    const/4 v4, 0x0

    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    float-to-int v5, p1

    const/4 v6, 0x0

    neg-float p1, v0

    float-to-int v7, p1

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMinScrollY:I

    iget v11, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mMaxScrollY:I

    invoke-virtual/range {v3 .. v11}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->fling(IIIIIIII)V

    .line 793
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->getFinalY()I

    move-result p1

    int-to-float p1, p1

    .line 794
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 795
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    const/4 p1, 0x0

    .line 796
    invoke-virtual {p0, v1, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->modifyScrollerPosition(ZF)F

    move-result p1

    .line 797
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 798
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->setFixedFlingValue(F)V

    .line 808
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->runScroller()V

    .line 809
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->invalidateIfYChanged()V

    .line 810
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->recycleVelocityTracker()V

    goto :goto_2

    .line 753
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 754
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 756
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->forceStopScroller()V

    .line 757
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchY:F

    .line 758
    iget p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownTouchScrollOffsetY:F

    .line 760
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDownStartTime:J

    .line 761
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSecondPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/transsion/widgetslib/util/Utils;->measureTextHeight(Landroid/graphics/Paint;)F

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTotalHeight:I

    .line 762
    iput-boolean v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mNeedFling:Z

    :goto_2
    return v2

    .line 744
    :cond_a
    :goto_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onWheelItemChanged(II)V
    .locals 0

    return-void
.end method

.method protected onWheelScroll(F)V
    .locals 0

    return-void
.end method

.method protected onWheelScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public playSoundEffect()V
    .locals 1

    .line 894
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mSoundHelper:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->isSoundEffect:Z

    if-eqz p0, :cond_0

    .line 895
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->playSoundEffect()V

    :cond_0
    return-void
.end method

.method protected runScroller()V
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollerRun:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method textColorScale(F)I
    .locals 8

    .line 528
    iget v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSecondColor:I

    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mTextSelectColor:I

    if-ne v0, p0, :cond_0

    return p0

    :cond_0
    const/high16 v1, -0x1000000

    and-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x18

    const/high16 v3, 0xff0000

    and-int v4, v0, v3

    ushr-int/lit8 v4, v4, 0x10

    const v5, 0xff00

    and-int v6, v0, v5

    ushr-int/lit8 v6, v6, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x18

    and-int/2addr v3, p0

    ushr-int/lit8 v3, v3, 0x10

    and-int/2addr v5, p0

    ushr-int/lit8 v5, v5, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-float v7, v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v7, v1

    float-to-int v1, v7

    int-to-float v2, v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, v6

    sub-int/2addr v5, v6

    int-to-float v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v4, v0

    sub-int/2addr p0, v0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    add-float/2addr v4, p0

    float-to-int p0, v4

    shl-int/lit8 p1, v1, 0x18

    shl-int/lit8 v0, v2, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 v0, v3, 0x8

    or-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method protected updateScroller()V
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->computeScrollOffset()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->getCurrY()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScroller:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->getFixedFlingValue()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->mScrollOffsetY:F

    .line 709
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->invalidateIfYChanged()V

    return-void
.end method
