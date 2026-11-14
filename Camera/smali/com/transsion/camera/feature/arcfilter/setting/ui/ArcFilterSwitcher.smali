.class public Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;
.super Landroid/widget/FrameLayout;
.source "ArcFilterSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher$FilterSelectedListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mCurrentFilterItemView:Landroid/view/View;

.field private mFilterItemViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterOutSize:I

.field private mFiltersContainer:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterContainer;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher$FilterSelectedListener;

.field private mToTranslateX:F

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ArcFilterSwitcher"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 140
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mFilterItemViews:Ljava/util/List;

    .line 35
    new-instance p2, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher$1;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 141
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 142
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/arcfilter/R$dimen;->arc_filter_icon_size_out:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mFilterOutSize:I

    const/4 p1, 0x0

    new-array p1, p1, [F

    .line 143
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;)Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterContainer;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mFiltersContainer:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterContainer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;)F
    .locals 0

    .line 21
    iget p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mToTranslateX:F

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mFilterItemViews:Ljava/util/List;

    return-object p0
.end method

.method private notifyFilterSelected(Landroid/view/View;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mListener:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher$FilterSelectedListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mListener:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher$FilterSelectedListener;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->getStringResIdByFilterId(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher$FilterSelectedListener;->onFilterSelected(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateFilterSwitcherLayout(ZLandroid/view/View;)V
    .locals 4

    if-eqz p2, :cond_3

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 189
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mFiltersContainer:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterContainer;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result p1

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mFilterItemViews:Ljava/util/List;

    invoke-static {v0, p2, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitchHelper;->getTranslateXByView(Ljava/util/List;Landroid/view/View;Landroid/view/View;)F

    move-result p2

    .line 191
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v1, p1, p2

    .line 192
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    const/high16 v0, 0x43fa0000    # 500.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    const/16 v1, 0x50

    .line 193
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x1e0

    .line 194
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 195
    sget-object v1, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFilterSwicherLayout duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",currentTranslateX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",translateX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 198
    iput p2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mToTranslateX:F

    .line 199
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mValueAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 201
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 204
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mFilterItemViews:Ljava/util/List;

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitchHelper;->getTranslateXByView(Ljava/util/List;Landroid/view/View;Landroid/view/View;)F

    move-result p1

    .line 205
    iget-object p2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mFiltersContainer:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterContainer;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mFilterItemViews:Ljava/util/List;

    invoke-static {p1, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitchHelper;->updateCenterXForViews(FLjava/util/List;)V

    :cond_2
    :goto_0
    return-void

    .line 184
    :cond_3
    :goto_1
    sget-object p1, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFilterSwitcherLayout selectedView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mValueAnimator: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public destory()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public initFilterItemView(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 5

    if-nez p1, :cond_0

    .line 153
    sget-object p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "filter setting is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mFilterItemViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mFiltersContainer:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 158
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v0

    .line 159
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 160
    sget-object v1, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initFilterItemView  currentFilterId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    .line 161
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    goto :goto_1

    .line 164
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 165
    iget-object v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/transsion/camera/feature/arcfilter/R$layout;->arc_filter_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 166
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mFilterOutSize:I

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 168
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    sget v3, Lcom/transsion/camera/feature/arcfilter/R$id;->image_filter:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 170
    invoke-static {v1}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->getDrawableResIdByFilterId(Ljava/lang/String;)I

    move-result v4

    .line 171
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 172
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 173
    iget-object v3, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mFiltersContainer:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterContainer;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    iget-object v3, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mFilterItemViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-static {p1, v1}, Lcom/transsion/camera/feature/arcfilter/setting/utils/ArcFilterUtils;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    iput-object v2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mCurrentFilterItemView:Landroid/view/View;

    goto :goto_0

    .line 179
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mFiltersContainer:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterContainer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 221
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 222
    sget v0, Lcom/transsion/camera/feature/arcfilter/R$id;->arc_filter_item_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterContainer;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mFiltersContainer:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterContainer;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 212
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 213
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mFiltersContainer:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterContainer;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result p1

    .line 214
    sget-object p2, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onLayout translateX = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 215
    iget-object p2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mFilterItemViews:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitchHelper;->updateCenterXForViews(FLjava/util/List;)V

    .line 216
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mCurrentFilterItemView:Landroid/view/View;

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->updateFilterSwitcherLayout(ZLandroid/view/View;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 123
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mFiltersContainer:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterContainer;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result p1

    sub-float/2addr p1, p3

    .line 128
    iget-object p2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mFilterItemViews:Ljava/util/List;

    iget-object p3, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mFiltersContainer:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterContainer;

    invoke-static {p1, p2, p3, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitchHelper;->getValidTranslateX(FLjava/util/List;Landroid/view/View;Landroid/view/View;)F

    move-result p1

    .line 129
    iget-object p2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mFiltersContainer:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterContainer;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 130
    iget-object p2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mFilterItemViews:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitchHelper;->updateCenterXForViews(FLjava/util/List;)V

    .line 131
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mFilterItemViews:Ljava/util/List;

    invoke-static {p1, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitchHelper;->findNearestViewToCenter(Ljava/util/List;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 132
    iget-object p2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mCurrentFilterItemView:Landroid/view/View;

    if-eq p2, p1, :cond_1

    .line 133
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->notifyFilterSelected(Landroid/view/View;)V

    .line 134
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mCurrentFilterItemView:Landroid/view/View;

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/4 v0, 0x1

    .line 107
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->switchToFilter(FZ)V

    return v0
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mFilterItemViews:Ljava/util/List;

    invoke-static {p1, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitchHelper;->findNearestViewToCenter(Ljava/util/List;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 117
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->updateFilterSwitcherLayout(ZLandroid/view/View;)V

    :cond_1
    return v0
.end method

.method public setFilterDefaultSelected()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mCurrentFilterItemView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mListener:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher$FilterSelectedListener;

    if-eqz v1, :cond_0

    .line 59
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->notifyFilterSelected(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setFilterSelectedListener(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher$FilterSelectedListener;)V
    .locals 1

    .line 51
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mListener:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher$FilterSelectedListener;

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mCurrentFilterItemView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 53
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->notifyFilterSelected(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public switchToFilter(FZ)V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mFilterItemViews:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitchHelper;->getNeedToSelectViewByX(FLjava/util/List;)Landroid/view/View;

    move-result-object v0

    .line 93
    sget-object v1, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchToFilter selectedView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",mCurrentFilterItemView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mCurrentFilterItemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",x = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 95
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mCurrentFilterItemView:Landroid/view/View;

    if-eq p1, v0, :cond_1

    .line 96
    invoke-direct {p0, p2, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->updateFilterSwitcherLayout(ZLandroid/view/View;)V

    .line 97
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->notifyFilterSelected(Landroid/view/View;)V

    .line 98
    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mCurrentFilterItemView:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public switchToFilter(Ljava/lang/String;Z)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mFilterItemViews:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitchHelper;->getViewById(Ljava/util/List;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mCurrentFilterItemView:Landroid/view/View;

    if-eq v0, p1, :cond_1

    .line 82
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->updateFilterSwitcherLayout(ZLandroid/view/View;)V

    .line 83
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->notifyFilterSelected(Landroid/view/View;)V

    .line 84
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSwitcher;->mCurrentFilterItemView:Landroid/view/View;

    :cond_1
    return-void
.end method
