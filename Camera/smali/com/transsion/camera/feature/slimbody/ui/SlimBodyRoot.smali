.class public Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;
.super Landroid/widget/RelativeLayout;
.source "SlimBodyRoot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;
    }
.end annotation


# static fields
.field private static final PRESET_INFO_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final mPresetClose:Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;


# instance fields
.field private mConfigNotShowGuide:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentEntryValue:Ljava/lang/String;

.field private mFeatureDotAnimating:Z

.field private mFeatureDotView:Lcom/opensource/svgaplayer/SVGAImageView;

.field private mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

.field private mHanlder:Landroid/os/Handler;

.field private mHasInit:Z

.field private mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mIsFaceBeautySlimbodySupport:Z

.field private mListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

.field private mNeedToShowGuide:Z

.field private mPresetAdapter:Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;

.field private mPresetDotAnimating:Z

.field private mPresetDotView:Lcom/opensource/svgaplayer/SVGAImageView;

.field private mPresetOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mPresetRV:Landroidx/recyclerview/widget/RecyclerView;

.field private mPresetRvListener:Lcom/transsion/camera/feature/slimbody/listener/RvListener;

.field private mPresetScrollThreshold:I

.field private mSlimBodyDataInfo:Lcom/transsion/camera/feature/slimbody/data/SBItemData;

.field private mSlimbodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SlimBodyRoot"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 69
    new-instance v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->PRESET_INFO_LIST:Ljava/util/List;

    .line 80
    new-instance v0, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;

    sget v3, Lcom/transsion/camera/feature/slimbody/R$layout;->slimbody_preset_item:I

    sget v5, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_slimbody_switch:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v6, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":6,\"shoulderSlim\":100,\"waistSlim\":100}"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;-><init>(IIIILjava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetClose:Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 554
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100, \"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":1,\"shoulderSlim\":100,\"waistSlim\":100}"

    .line 51
    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mCurrentEntryValue:Ljava/lang/String;

    const/4 p2, 0x0

    .line 62
    iput p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mType:I

    .line 82
    new-instance p2, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$2;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetRvListener:Lcom/transsion/camera/feature/slimbody/listener/RvListener;

    .line 125
    new-instance p2, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$3;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$3;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 304
    new-instance p2, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$4;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$4;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mHanlder:Landroid/os/Handler;

    .line 555
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mContext:Landroid/content/Context;

    .line 556
    sget p2, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_preset_custom:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 557
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/feature/slimbody/R$dimen;->scroll_threshold:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetScrollThreshold:I

    .line 558
    sget p2, Lcom/transsion/camera/feature/slimbody/R$anim;->left_scroll_in:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 559
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/feature/slimbody/R$bool;->show_dot_view_guide:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mConfigNotShowGuide:Z

    .line 560
    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->getInstance(Landroid/content/Context;)Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->getBothSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mIsFaceBeautySlimbodySupport:Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mSlimbodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mType:I

    return p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->hideFeatureDotView()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetScrollThreshold:I

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->showPresetDotView()V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->showFeatureDotView()V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->hidePresetDotView()V

    return-void
.end method

.method private handleDotViewForFeatureIn()V
    .locals 3

    .line 434
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->hidePresetDotView()V

    .line 435
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mNeedToShowGuide:Z

    if-nez v0, :cond_0

    return-void

    .line 438
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mHanlder:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private handleDotViewForFeatureOut()V
    .locals 3

    .line 442
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->hideFeatureDotView()V

    .line 444
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDotViewForFeatureOut mNeedToShowGuide = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mNeedToShowGuide:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mHasInit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mHasInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 446
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mNeedToShowGuide:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mHasInit:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 449
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mHanlder:Landroid/os/Handler;

    const/4 v0, 0x0

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private handleGuide(Z)V
    .locals 2

    .line 378
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mNeedToShowGuide:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mConfigNotShowGuide:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 382
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mHanlder:Landroid/os/Handler;

    const/4 p1, 0x0

    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 384
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->hidePresetDotView()V

    :cond_2
    :goto_0
    return-void
.end method

.method private hideFeatureDotView()V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mHanlder:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mFeatureDotAnimating:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 355
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mFeatureDotAnimating:Z

    .line 356
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mFeatureDotView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p0, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    .line 357
    sget-object p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "hideFeatureDotView"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 513
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 516
    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private hidePresetDotView()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mHanlder:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 336
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetDotAnimating:Z

    if-eqz v0, :cond_0

    .line 337
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetDotAnimating:Z

    .line 338
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetDotView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    .line 339
    sget-object p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "hidePresetDotView"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    .line 370
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 371
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->initPresetView()V

    .line 372
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->initFeatureLayout()V

    .line 373
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->intDotView()V

    .line 374
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mHasInit:Z

    return-void
.end method

.method private initFeatureLayout()V
    .locals 1

    .line 272
    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->feature_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    const/4 p0, 0x0

    .line 273
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    return-void
.end method

.method private initPresetView()V
    .locals 5

    .line 278
    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->preset_rv:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetRV:Landroidx/recyclerview/widget/RecyclerView;

    .line 279
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 280
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetRV:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 281
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mIsFaceBeautySlimbodySupport:Z

    if-eqz v0, :cond_0

    .line 282
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->PRESET_INFO_LIST:Ljava/util/List;

    sget-object v1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetClose:Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->PRESET_INFO_LIST:Ljava/util/List;

    sget-object v1, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetClose:Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 286
    :cond_0
    new-instance v0, Lcom/transsion/camera/feature/slimbody/adapter/PresetAdapter;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->PRESET_INFO_LIST:Ljava/util/List;

    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetRvListener:Lcom/transsion/camera/feature/slimbody/listener/RvListener;

    invoke-direct {v0, v1, v3, v4}, Lcom/transsion/camera/feature/slimbody/adapter/PresetAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/slimbody/listener/RvListener;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetAdapter:Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;

    .line 287
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetRV:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetRV:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetRV:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private intDotView()V
    .locals 1

    .line 362
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mConfigNotShowGuide:Z

    if-eqz v0, :cond_0

    return-void

    .line 365
    :cond_0
    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->preset_dot:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetDotView:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 366
    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->feature_dot:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mFeatureDotView:Lcom/opensource/svgaplayer/SVGAImageView;

    return-void
.end method

.method private setProcessToDataInfo(Lcom/transsion/camera/feature/slimbody/data/SBItemData;I)V
    .locals 0

    .line 453
    iget p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->featureId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 485
    :pswitch_0
    iput p2, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->waistUpper:I

    goto :goto_0

    .line 482
    :pswitch_1
    iput p2, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->armSlim:I

    goto :goto_0

    .line 479
    :pswitch_2
    iput p2, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->bellySlim:I

    goto :goto_0

    .line 476
    :pswitch_3
    iput p2, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->chestPlump:I

    goto :goto_0

    .line 473
    :pswitch_4
    iput p2, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->legLengthen:I

    goto :goto_0

    .line 470
    :pswitch_5
    iput p2, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->legSlim:I

    goto :goto_0

    .line 467
    :pswitch_6
    iput p2, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->buttPlump:I

    goto :goto_0

    .line 464
    :pswitch_7
    iput p2, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->waistSlim:I

    goto :goto_0

    .line 461
    :pswitch_8
    iput p2, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->shoulderSlim:I

    goto :goto_0

    .line 458
    :pswitch_9
    iput p2, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->headShrink:I

    goto :goto_0

    .line 455
    :pswitch_a
    iput p2, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->bodySlim:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showFeatureDotView()V
    .locals 1

    .line 344
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->hidePresetDotView()V

    .line 345
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mFeatureDotAnimating:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 346
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mFeatureDotAnimating:Z

    .line 347
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mFeatureDotView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    .line 348
    sget-object p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showFeatureDotView"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 506
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showPresetDotView()V
    .locals 1

    .line 326
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->hideFeatureDotView()V

    .line 327
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetDotAnimating:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 328
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetDotAnimating:Z

    .line 329
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetDotView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    .line 330
    sget-object p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showPresetDotView"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateGuideData()V
    .locals 1

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mNeedToShowGuide:Z

    return-void
.end method

.method private updateSettingData()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->toObject(Ljava/lang/String;)Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mSlimBodyDataInfo:Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    if-eqz v0, :cond_0

    .line 193
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSettingData info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mSlimBodyDataInfo:Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetAdapter:Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;

    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mSlimBodyDataInfo:Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    iget v1, v1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->featureId:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->updateSeletedItemById(I)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    if-eqz v0, :cond_1

    .line 198
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mSlimBodyDataInfo:Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->updateSettingData(Lcom/transsion/camera/feature/slimbody/data/SBItemData;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public featureRvScrollIn()V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 231
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCustomBar mCurrentEntryValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 233
    iget v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mType:I

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mSlimbodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "key_slimbody_custom"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mSlimbodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "key_video_slimbody_custom"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 239
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mSlimbodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mCurrentEntryValue:Ljava/lang/String;

    .line 241
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 242
    :cond_2
    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->toObject(Ljava/lang/String;)Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 244
    iput-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mSlimBodyDataInfo:Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    .line 245
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mSlimbodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 249
    :cond_3
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mConfigNotShowGuide:Z

    if-nez v0, :cond_4

    .line 250
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->handleDotViewForFeatureIn()V

    :cond_4
    return-void
.end method

.method public getCurrItem()Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;
    .locals 0

    .line 594
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetAdapter:Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->getCurrentItem()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public hideAwlaysHint()V
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetRV:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 527
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->hideAwlaysHint()V

    :cond_0
    return-void
.end method

.method public notifyExpand(Z)V
    .locals 0

    .line 430
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->handleGuide(Z)V

    return-void
.end method

.method public notifyHideHint()V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public notifyProgressChanged(I)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mSlimBodyDataInfo:Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->setProcessToDataInfo(Lcom/transsion/camera/feature/slimbody/data/SBItemData;I)V

    .line 185
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mSlimBodyDataInfo:Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->toJson(Lcom/transsion/camera/feature/slimbody/data/SBItemData;)Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->notifyValueChangedToUI(Ljava/lang/String;)V

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mSlimbodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method public notifyShowHint()V
    .locals 3

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetAdapter:Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->getCurrentItem()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 404
    instance-of v1, v0, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;

    if-eqz v1, :cond_1

    .line 405
    check-cast v0, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;

    .line 407
    iget v1, v0, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;->presetMode:I

    if-nez v1, :cond_0

    return-void

    .line 411
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, v0, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;->titleId:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 413
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_1
    return-void
.end method

.method public notifyValueChangedToUI(Ljava/lang/String;)V
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mCurrentEntryValue:Ljava/lang/String;

    .line 494
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->updateSettingData()V

    :cond_0
    return-void
.end method

.method public notifyVidoFaceBeautyHint(I)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 420
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mContext:Landroid/content/Context;

    const-string v1, "video_facebeauty_on_tips"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 422
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mContext:Landroid/content/Context;

    const-string v1, "video_slimbody_on_tips"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 424
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 425
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 426
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public onBackPressed()I
    .locals 1

    .line 541
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 542
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 565
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 566
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->init()V

    return-void
.end method

.method protected setBackToPreset()V
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetRV:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->featureScrollOut()V

    .line 585
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 586
    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;->updateStateForUI(I)V

    .line 588
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mConfigNotShowGuide:Z

    if-nez v0, :cond_1

    .line 589
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->handleDotViewForFeatureOut()V

    :cond_1
    return-void
.end method

.method public setBarClickListner(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    .line 163
    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mSlimbodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 500
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mCurrentEntryValue:Ljava/lang/String;

    .line 501
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->updateSettingData()V

    .line 502
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->updateGuideData()V

    return-void
.end method

.method public setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-void
.end method

.method public setType(I)V
    .locals 1

    .line 167
    iget v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mType:I

    if-eq v0, p1, :cond_0

    .line 168
    iput p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 170
    iget-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mIsFaceBeautySlimbodySupport:Z

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetAdapter:Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p1}, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->getList()Ljava/util/List;

    move-result-object p1

    .line 173
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetClose:Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetClose:Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetAdapter:Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->updateList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public stopDotViewAnimation()V
    .locals 3

    .line 570
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetDotView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetDotAnimating:Z

    if-eqz v2, :cond_0

    .line 571
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetDotAnimating:Z

    .line 572
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    .line 573
    sget-object v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "stopDotViewAnimation mPresetDotView"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mFeatureDotView:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mFeatureDotAnimating:Z

    if-eqz v2, :cond_1

    .line 576
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mFeatureDotAnimating:Z

    .line 577
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    .line 578
    sget-object p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "stopDotViewAnimation mFeatureDotView"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public unInit()V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->featureScrollOut()V

    .line 390
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mFeatureLayout:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->unInit()V

    .line 391
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetRV:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mPresetOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mHanlder:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 394
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->stopDotViewAnimation()V

    const/4 v0, 0x0

    .line 395
    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->mHasInit:Z

    return-void
.end method
