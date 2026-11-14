.class public Lcom/transsion/camera/app/ui/widget/RootLayout;
.super Landroid/widget/FrameLayout;
.source "RootLayout.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAllowGesture:Z

.field private final mDisplaySize:Landroid/graphics/Point;

.field private final mDownPoint:Landroid/graphics/PointF;

.field private final mEdgeWidth:I

.field private final mNavBarGestureHeight:I

.field private mScreenState:I

.field private mSystemGestureOn:Z

.field private final mTouchSlop:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/widget/RootLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/RootLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RootLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/RootLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/widget/RootLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    .line 42
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mScreenState:I

    .line 52
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mDisplaySize:Landroid/graphics/Point;

    .line 54
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mDownPoint:Landroid/graphics/PointF;

    .line 73
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/RootLayout;->initDisplaySize(Landroid/content/Context;)V

    .line 74
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mTouchSlop:F

    const-string p1, "config_backGestureInset"

    const-string p2, "android"

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RootLayout;->getDimensionPixelSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mEdgeWidth:I

    const-string p1, "navigation_bar_gesture_height"

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RootLayout;->getDimensionPixelSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mNavBarGestureHeight:I

    .line 77
    sget-object p1, Lcom/transsion/camera/app/ui/widget/RootLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mTouchSlop: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mTouchSlop:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ", mEdgeWidth: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mEdgeWidth:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mNavBarGestureHeight: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mNavBarGestureHeight:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private getDimensionPixelSize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 93
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "dimen"

    .line 94
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-gtz p2, :cond_0

    .line 97
    sget-object p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid dimen "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 100
    :cond_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private initDisplaySize(Landroid/content/Context;)V
    .locals 1

    .line 82
    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    if-nez p1, :cond_0

    .line 85
    sget-object p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "displayManager is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mDisplaySize:Landroid/graphics/Point;

    .line 89
    invoke-virtual {p1, p0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private isSystemGestureOn()Z
    .locals 4

    .line 119
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "config_navBarInteractionMode"

    const-string v1, "integer"

    const-string v2, "android"

    .line 120
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 123
    sget-object p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "invalid config_navBarInteractionMode"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 126
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 127
    sget-object v0, Lcom/transsion/camera/app/ui/widget/RootLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "navigationMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isWithinTouchRegion(II)Z
    .locals 3

    .line 169
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mEdgeWidth:I

    if-le p1, v0, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_0

    iget p1, v1, Landroid/graphics/Point;->y:I

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mNavBarGestureHeight:I

    sub-int/2addr p1, p0

    if-ge p2, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getScreenState()I
    .locals 0

    .line 110
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mScreenState:I

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 133
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mSystemGestureOn:Z

    if-nez v0, :cond_0

    .line 134
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 136
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    goto :goto_0

    .line 146
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mAllowGesture:Z

    if-eqz v0, :cond_7

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mDownPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v4, v0, v3

    if-lez v4, :cond_2

    .line 149
    iget v4, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mTouchSlop:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_2

    return v2

    .line 153
    :cond_2
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mDisplaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mNavBarGestureHeight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    move v1, v2

    :cond_3
    if-eqz v1, :cond_7

    cmpl-float v0, v3, v0

    if-lez v0, :cond_7

    .line 154
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mTouchSlop:F

    cmpl-float v0, v3, v0

    if-lez v0, :cond_7

    return v2

    .line 161
    :cond_4
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mAllowGesture:Z

    goto :goto_0

    .line 138
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/ui/widget/RootLayout;->isWithinTouchRegion(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 139
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mAllowGesture:Z

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 142
    :cond_6
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mAllowGesture:Z

    .line 165
    :cond_7
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onScreenStateChanged(I)V
    .locals 0

    .line 105
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onScreenStateChanged(I)V

    .line 106
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mScreenState:I

    return-void
.end method

.method public resume()V
    .locals 3

    .line 114
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/RootLayout;->isSystemGestureOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mSystemGestureOn:Z

    .line 115
    sget-object v0, Lcom/transsion/camera/app/ui/widget/RootLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume mSystemGestureOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/RootLayout;->mSystemGestureOn:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
