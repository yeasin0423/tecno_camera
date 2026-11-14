.class public Lcom/transsion/widgetslib/widget/tablayout/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "TabLayout.java"


# annotations
.annotation runtime Landroidx/viewpager/widget/ViewPager$DecorView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$PagerAdapterObserver;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$ViewPagerOnTabSelectedListener;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;,
        Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;
    }
.end annotation


# static fields
.field private static final tabPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adapterChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;

.field private contentInsetStart:I

.field private currentVpSelectedListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;

.field inlineLabel:Z

.field private mIsFirstLevelTab:Z

.field mode:I

.field private pageChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;

.field private pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private pagerAdapterObserver:Landroid/database/DataSetObserver;

.field private final requestedTabMaxWidth:I

.field private final requestedTabMinWidth:I

.field private scrollAnimator:Landroid/animation/ValueAnimator;

.field private final scrollableTabMinWidth:I

.field private final selectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private selectedTab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

.field private setupViewPagerImplicitly:Z

.field final slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

.field final tabBackgroundResId:I

.field tabGravity:I

.field tabIndicatorAnimationDuration:I

.field tabIndicatorFullWidth:Z

.field tabIndicatorGravity:I

.field tabMaxWidth:I

.field tabPaddingBottom:I

.field tabPaddingEnd:I

.field tabPaddingStart:I

.field tabPaddingTop:I

.field tabRippleColorStateList:Landroid/content/res/ColorStateList;

.field tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

.field tabTextColors:Landroid/content/res/ColorStateList;

.field tabTextMultiLineSize:F

.field tabTextSize:F

.field private final tabViewContentBounds:Landroid/graphics/RectF;

.field private final tabViewPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;",
            ">;"
        }
    .end annotation
.end field

.field private final tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field

.field unboundedRipple:Z

.field viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 188
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPool:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 440
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 444
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 448
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 374
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 378
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;

    const p1, 0x7fffffff

    .line 400
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabMaxWidth:I

    .line 418
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    .line 437
    new-instance p1, Landroidx/core/util/Pools$SimplePool;

    const/16 v0, 0xc

    invoke-direct {p1, v0}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    .line 450
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    .line 453
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 456
    new-instance v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-direct {v1, p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;-><init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    .line 457
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v1, v0, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 463
    sget-object v1, Lcom/transsion/widgetslib/R$styleable;->TabLayout:[I

    sget v2, Lcom/transsion/widgetslib/R$style;->OSTablayout:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 475
    iget-object p3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    sget v1, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabIndicatorHeight:I

    .line 476
    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 475
    invoke-virtual {p3, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    .line 477
    iget-object p3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    sget v1, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabIndicatorColor:I

    .line 478
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 477
    invoke-virtual {p3, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->setSelectedIndicatorColor(I)V

    .line 480
    sget p3, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabIndicator:I

    .line 481
    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 480
    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 482
    sget p3, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabIndicatorGravity:I

    .line 483
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 482
    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setSelectedTabIndicatorGravity(I)V

    .line 484
    sget p3, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabIndicatorFullWidth:I

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setTabIndicatorFullWidth(Z)V

    .line 486
    sget p3, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabPadding:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingBottom:I

    iput p3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingTop:I

    iput p3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingEnd:I

    iput p3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingStart:I

    .line 488
    sget v2, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabPaddingStart:I

    .line 489
    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingStart:I

    .line 490
    sget p3, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabPaddingTop:I

    iget v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingTop:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingTop:I

    .line 491
    sget p3, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabPaddingEnd:I

    iget v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingEnd:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingEnd:I

    .line 492
    sget p3, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabPaddingBottom:I

    iget v2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingBottom:I

    .line 493
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingBottom:I

    .line 498
    sget p3, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabRippleColor:I

    .line 499
    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    const/16 p1, 0x12c

    .line 501
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabIndicatorAnimationDuration:I

    .line 503
    iput v4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->requestedTabMinWidth:I

    .line 505
    sget p1, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabMaxWidth:I

    .line 506
    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->requestedTabMaxWidth:I

    .line 507
    sget p1, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabBackground:I

    .line 508
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabBackgroundResId:I

    .line 509
    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->contentInsetStart:I

    .line 514
    sget p1, Lcom/transsion/widgetslib/R$styleable;->TabLayout_OsTabMode:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    .line 515
    sget p1, Lcom/transsion/widgetslib/R$styleable;->TabLayout_OsTabGravity:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabGravity:I

    .line 516
    sget p1, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabInlineLabel:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->inlineLabel:Z

    .line 517
    sget p1, Lcom/transsion/widgetslib/R$styleable;->TabLayout_tabUnboundedRipple:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->unboundedRipple:Z

    .line 518
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 521
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 523
    sget p2, Lcom/transsion/widgetslib/R$dimen;->design_tab_scrollable_min_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollableTabMinWidth:I

    .line 526
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->applyModeAndGravity()V

    return-void
.end method

.method static synthetic access$1100(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Landroid/graphics/RectF;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)Z
    .locals 0

    .line 163
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mIsFirstLevelTab:Z

    return p0
.end method

.method private addTabFromItemView(Lcom/transsion/widgetslib/widget/tablayout/TabItem;)V
    .locals 2

    .line 688
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->newTab()Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object v0

    .line 689
    iget-object v1, p1, Lcom/transsion/widgetslib/widget/tablayout/TabItem;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 690
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    .line 692
    :cond_0
    iget-object v1, p1, Lcom/transsion/widgetslib/widget/tablayout/TabItem;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 693
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    .line 695
    :cond_1
    iget v1, p1, Lcom/transsion/widgetslib/widget/tablayout/TabItem;->customLayout:I

    if-eqz v1, :cond_2

    .line 696
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setCustomView(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    .line 698
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 699
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    .line 701
    :cond_3
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    return-void
.end method

.method private addTabView(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .locals 2

    .line 1410
    iget-object v0, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    const/4 v1, 0x0

    .line 1411
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->setSelected(Z)V

    .line 1412
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 1413
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v1, v0, p1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addViewInternal(Landroid/view/View;)V
    .locals 1

    .line 1437
    instance-of v0, p1, Lcom/transsion/widgetslib/widget/tablayout/TabItem;

    if-eqz v0, :cond_0

    .line 1438
    check-cast p1, Lcom/transsion/widgetslib/widget/tablayout/TabItem;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addTabFromItemView(Lcom/transsion/widgetslib/widget/tablayout/TabItem;)V

    return-void

    .line 1440
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private animateToTab(I)V
    .locals 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1577
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1578
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    .line 1579
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->childrenNeedLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1586
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 1587
    invoke-direct {p0, p1, v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->calculateScrollXForTab(IF)I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 1590
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->ensureScrollAnimator()V

    .line 1592
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    aput v2, v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1593
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1597
    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabIndicatorAnimationDuration:I

    invoke-virtual {v0, p1, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->animateIndicatorToPosition(II)V

    return-void

    .line 1582
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setScrollPosition(IFZ)V

    return-void
.end method

.method private applyGravityForModeScrollable(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 1758
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    :cond_1
    const-string p1, "TabLayout"

    const-string v0, "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead"

    .line 1761
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    :cond_2
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    const p1, 0x800003

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_0
    return-void
.end method

.method private applyModeAndGravity()V
    .locals 4

    .line 1730
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    .line 1732
    :cond_1
    :goto_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->contentInsetStart:I

    iget v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPaddingStart:I

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1734
    :goto_1
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-static {v3, v0, v2, v2, v2}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1736
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    goto :goto_2

    .line 1739
    :cond_2
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabGravity:I

    if-ne v0, v1, :cond_3

    const-string v0, "TabLayout"

    const-string v1, "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead"

    .line 1740
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_2

    .line 1748
    :cond_4
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabGravity:I

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->applyGravityForModeScrollable(I)V

    .line 1752
    :goto_2
    invoke-virtual {p0, v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->updateTabViews(Z)V

    return-void
.end method

.method private calculateScrollXForTab(IF)I
    .locals 4

    .line 1707
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 1708
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 1709
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    .line 1710
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    .line 1711
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 1713
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    if-eqz p1, :cond_4

    .line 1714
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1717
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    div-int/lit8 v0, v3, 0x2

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    div-int/2addr v0, v2

    sub-int/2addr p1, v0

    add-int/2addr v3, v1

    int-to-float v0, v3

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    float-to-int p2, v0

    .line 1721
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    if-nez p0, :cond_5

    add-int/2addr p1, p2

    goto :goto_3

    :cond_5
    sub-int/2addr p1, p2

    :goto_3
    return p1
.end method

.method private configureTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;I)V
    .locals 1

    .line 1400
    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setPosition(I)V

    .line 1401
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1403
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    invoke-virtual {v0, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setPosition(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 1446
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1448
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0
.end method

.method private createTabView(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;
    .locals 2

    .line 1384
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1386
    new-instance v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;-><init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;Landroid/content/Context;)V

    .line 1388
    :cond_1
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->setTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    const/4 v1, 0x1

    .line 1389
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 1390
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMinWidth()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 1391
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->access$000(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1392
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->access$100(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1394
    :cond_2
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->access$000(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-object v0
.end method

.method private dispatchTabReselected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .locals 2

    .line 1701
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1702
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;->onTabReselected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchTabSelected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .locals 2

    .line 1689
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1690
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;->onTabSelected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchTabUnselected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .locals 2

    .line 1695
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1696
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;->onTabUnselected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ensureScrollAnimator()V
    .locals 3

    .line 1601
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1602
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 1603
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1604
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabIndicatorAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1605
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$1;-><init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-void
.end method

.method private getDefaultHeight()I
    .locals 5

    .line 3181
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3182
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-eqz v3, :cond_0

    .line 3183
    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 3188
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->inlineLabel:Z

    if-nez p0, :cond_2

    const/16 p0, 0x48

    goto :goto_2

    :cond_2
    const/16 p0, 0x36

    :goto_2
    return p0
.end method

.method private getTabMinWidth()I
    .locals 2

    .line 3192
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->requestedTabMinWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 3197
    :cond_0
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollableTabMinWidth:I

    :goto_1
    return p0
.end method

.method private getTabScrollRange()I
    .locals 2

    .line 1333
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    .line 1334
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    .line 1333
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private removeTabViewAt(I)V
    .locals 2

    .line 1563
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    .line 1564
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    if-eqz v0, :cond_0

    .line 1566
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->reset()V

    .line 1567
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {p1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 1569
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method private setSelectedTabView(I)V
    .locals 6

    .line 1626
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1629
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v2, p1, :cond_0

    move v5, v4

    goto :goto_1

    :cond_0
    move v5, v1

    .line 1630
    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    if-ne v2, p1, :cond_1

    goto :goto_2

    :cond_1
    move v4, v1

    .line 1631
    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setActivated(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V
    .locals 2

    .line 1231
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    .line 1233
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pageChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;

    if-eqz v1, :cond_0

    .line 1234
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 1236
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->adapterChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;

    if-eqz v0, :cond_1

    .line 1237
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 1241
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->currentVpSelectedListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1243
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->removeOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;)V

    .line 1244
    iput-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->currentVpSelectedListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;

    :cond_2
    if-eqz p1, :cond_6

    .line 1248
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 1251
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pageChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;

    if-nez v0, :cond_3

    .line 1252
    new-instance v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;-><init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pageChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;

    .line 1254
    :cond_3
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pageChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;->reset()V

    .line 1255
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pageChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 1258
    new-instance v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$ViewPagerOnTabSelectedListener;

    invoke-direct {v0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->currentVpSelectedListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;

    .line 1259
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;)V

    .line 1261
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1265
    invoke-virtual {p0, v0, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 1269
    :cond_4
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->adapterChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;

    if-nez v0, :cond_5

    .line 1270
    new-instance v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;-><init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->adapterChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;

    .line 1272
    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->adapterChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;

    invoke-virtual {v0, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;->setAutoRefresh(Z)V

    .line 1273
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->adapterChangeListener:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$AdapterChangeListener;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 1276
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_0

    .line 1280
    :cond_6
    iput-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 p1, 0x0

    .line 1281
    invoke-virtual {p0, v1, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 1284
    :goto_0
    iput-boolean p3, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setupViewPagerImplicitly:Z

    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2

    .line 1453
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabGravity:I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 1454
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 p0, 0x3f800000    # 1.0f

    .line 1455
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    :cond_0
    const/4 p0, -0x2

    .line 1457
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 p0, 0x0

    .line 1458
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_0
    return-void
.end method


# virtual methods
.method public addOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 756
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;Z)V

    return-void
.end method

.method public addTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;IZ)V
    .locals 1

    .line 676
    iget-object v0, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    if-ne v0, p0, :cond_1

    .line 679
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->configureTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;I)V

    .line 680
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addTabView(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    if-eqz p3, :cond_0

    .line 683
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->select()V

    :cond_0
    return-void

    .line 677
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab belongs to a different TabLayout."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;Z)V
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;IZ)V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    .line 1418
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .line 1423
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1433
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1428
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addViewInternal(Landroid/view/View;)V

    return-void
.end method

.method protected createTabFromPool()Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .locals 0

    .line 805
    sget-object p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {p0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-nez p0, :cond_0

    .line 807
    new-instance p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;-><init>()V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 3206
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedTabPosition()I
    .locals 0

    .line 838
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedTab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getPosition()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getTabAt(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .locals 1

    if-ltz p1, :cond_1

    .line 829
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public getTabCount()I
    .locals 0

    .line 823
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method getTabMaxWidth()I
    .locals 0

    .line 3210
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabMaxWidth:I

    return p0
.end method

.method public newTab()Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .locals 1

    .line 797
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->createTabFromPool()Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object v0

    .line 798
    iput-object p0, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    .line 799
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->createTabView(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1305
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 1307
    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    .line 1309
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    .line 1312
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1313
    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_0

    .line 1316
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1323
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 1325
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setupViewPagerImplicitly:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1327
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    const/4 v0, 0x0

    .line 1328
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setupViewPagerImplicitly:Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v0, 0x0

    .line 1485
    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1486
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1487
    instance-of v2, v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    if-eqz v2, :cond_0

    .line 1488
    check-cast v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-static {v1, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->access$200(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1492
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1472
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1473
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    .line 1477
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1475
    invoke-static {v0, p0, v1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object p0

    .line 1474
    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 1499
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getDefaultHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1500
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1509
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result p2

    add-int/2addr v0, p2

    .line 1508
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 1502
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-ne v1, v5, :cond_2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-lt v1, v0, :cond_2

    .line 1503
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1515
    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1516
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 1519
    iget v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->requestedTabMaxWidth:I

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    int-to-float v0, v0

    .line 1522
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v1, v0

    :goto_1
    iput v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabMaxWidth:I

    .line 1526
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 1528
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result p1

    if-ne p1, v5, :cond_8

    .line 1531
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1534
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    goto :goto_3

    .line 1543
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    if-eq v0, v1, :cond_7

    :goto_2
    move v4, v5

    goto :goto_3

    .line 1539
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    if-ge v0, v1, :cond_7

    goto :goto_2

    :cond_7
    :goto_3
    if-eqz v4, :cond_8

    .line 1552
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 1553
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1550
    invoke-static {p2, v0, v1}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result p2

    .line 1556
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result p0

    invoke-static {p0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 1557
    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    :cond_8
    return-void
.end method

.method populateFromPagerAdapter()V
    .locals 5

    .line 1358
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->removeAllTabs()V

    .line 1360
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_1

    .line 1361
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1363
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->newTab()Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v4, v2}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    invoke-virtual {p0, v3, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->addTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1367
    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    .line 1368
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 1369
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1370
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabAt(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    :cond_1
    return-void
.end method

.method protected releaseFromTabPool(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Z
    .locals 0

    .line 814
    sget-object p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {p0, p1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeAllTabs()V
    .locals 2

    .line 884
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 885
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->removeTabViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 889
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    .line 890
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 891
    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->reset()V

    .line 892
    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->releaseFromTabPool(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 895
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedTab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    return-void
.end method

.method public removeOnTabSelectedListener(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$BaseOnTabSelectedListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 780
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public selectTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V
    .locals 1

    const/4 v0, 0x1

    .line 1643
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;Z)V

    return-void
.end method

.method public selectTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;Z)V
    .locals 4

    .line 1655
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedTab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-ne v0, p1, :cond_0

    if-eqz v0, :cond_6

    .line 1659
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->dispatchTabReselected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    .line 1660
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->animateToTab(I)V

    goto :goto_2

    :cond_0
    const/4 v1, -0x1

    if-eqz p1, :cond_1

    .line 1663
    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getPosition()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz p2, :cond_4

    if-eqz v0, :cond_2

    .line 1665
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->getPosition()I

    move-result p2

    if-ne p2, v1, :cond_3

    :cond_2
    if-eq v2, v1, :cond_3

    const/4 p2, 0x0

    const/4 v3, 0x1

    .line 1668
    invoke-virtual {p0, v2, p2, v3}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_1

    .line 1670
    :cond_3
    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->animateToTab(I)V

    :goto_1
    if-eq v2, v1, :cond_4

    .line 1673
    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setSelectedTabView(I)V

    .line 1678
    :cond_4
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectedTab:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    if-eqz v0, :cond_5

    .line 1680
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->dispatchTabUnselected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 1683
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->dispatchTabSelected(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setElevation(F)V
    .locals 0

    .line 1465
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setElevation(F)V

    .line 1467
    invoke-static {p0, p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V
    .locals 2

    .line 1338
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    .line 1340
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1343
    :cond_0
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 1347
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    if-nez p2, :cond_1

    .line 1348
    new-instance p2, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$PagerAdapterObserver;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$PagerAdapterObserver;-><init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)V

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    .line 1350
    :cond_1
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1354
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->populateFromPagerAdapter()V

    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 1

    const/4 v0, 0x1

    .line 595
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setScrollPosition(IFZZ)V

    return-void
.end method

.method public setScrollPosition(IFZZ)V
    .locals 2

    int-to-float v0, p1

    add-float/2addr v0, p2

    .line 615
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_3

    .line 616
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 622
    iget-object p4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {p4, p1, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;->setIndicatorPositionFromTabPosition(IF)V

    .line 626
    :cond_1
    iget-object p4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 627
    iget-object p4, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 629
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->calculateScrollXForTab(IF)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    if-eqz p3, :cond_3

    .line 633
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setSelectedTabView(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1170
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 1171
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    .line 1172
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setSelectedTabIndicatorGravity(I)V
    .locals 1

    .line 968
    iget v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabIndicatorGravity:I

    if-eq v0, p1, :cond_0

    .line 969
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabIndicatorGravity:I

    .line 970
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setTabIndicatorFullWidth(Z)V
    .locals 0

    .line 1002
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabIndicatorFullWidth:Z

    .line 1003
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    const/4 v0, 0x1

    .line 1206
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1226
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    .line 1300
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabScrollRange()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method updateTabViews(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1775
    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1776
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->slidingTabIndicator:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1777
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getTabMinWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1778
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    if-eqz p1, :cond_0

    .line 1780
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
