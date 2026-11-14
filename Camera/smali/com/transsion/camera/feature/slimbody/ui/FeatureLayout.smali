.class public Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;
.super Landroid/widget/LinearLayout;
.source "FeatureLayout.java"


# static fields
.field private static final FEATURE_INFO_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mContext:Landroid/content/Context;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mFaceAttributeSupport:Z

.field private mFeatureAdapter:Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;

.field private mFeatureRV:Landroidx/recyclerview/widget/RecyclerView;

.field private mFeatureRvListener:Lcom/transsion/camera/feature/slimbody/listener/RvListener;

.field private mGender:Ljava/lang/String;

.field private mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mIsBeingDragged:Z

.field private mIsClose:Z

.field private mLastMotionX:I

.field private mLastScroll:J

.field private mListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

.field private mOverScroller:Landroid/widget/OverScroller;

.field private mSBFeatureInfo:Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

.field private mScrollRange:I

.field private mSlimBodyDataInfo:Lcom/transsion/camera/feature/slimbody/data/SBItemData;

.field private mSlimbodyFeatureId:I

.field private mSlimbodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->FEATURE_INFO_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 386
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mIsClose:Z

    .line 102
    new-instance v0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;-><init>(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mFeatureRvListener:Lcom/transsion/camera/feature/slimbody/listener/RvListener;

    .line 430
    iput-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mIsBeingDragged:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 390
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 p2, 0x0

    .line 74
    iput-boolean p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mIsClose:Z

    .line 102
    new-instance v1, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;-><init>(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mFeatureRvListener:Lcom/transsion/camera/feature/slimbody/listener/RvListener;

    .line 430
    iput-boolean p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mIsBeingDragged:Z

    .line 391
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mContext:Landroid/content/Context;

    .line 392
    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->getInstance(Landroid/content/Context;)Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->getFaceAttributeSupport()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mFaceAttributeSupport:Z

    .line 394
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    .line 395
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOverScrollMode(I)V

    .line 396
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    const/high16 v0, 0x40000

    .line 397
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    .line 398
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 399
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 400
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mTouchSlop:I

    .line 401
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/feature/slimbody/R$dimen;->fake_item_layout_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mScrollRange:I

    .line 402
    sget p0, Lcom/transsion/camera/feature/slimbody/R$anim;->right_scroll_in:I

    invoke-static {p1, p0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 403
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/feature/slimbody/R$dimen;->scroll_threshold:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/storage/DataStore;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mIsClose:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->hideAutoHint()V

    return-void
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mIsClose:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->showResetDialog(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mFaceAttributeSupport:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mGender:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Ljava/lang/String;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->setSkinAndChangepostion(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mSlimbodyFeatureId:I

    return p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/feature/slimbody/data/SBItemData;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mSlimBodyDataInfo:Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mSBFeatureInfo:Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    return-object p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;)Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mSBFeatureInfo:Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    return-object p1
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mSlimbodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->showAutoHint(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private getDefaultSlimBodySetting()Ljava/lang/String;
    .locals 2

    .line 187
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mFaceAttributeSupport:Z

    const-string v1, "white"

    if-eqz v0, :cond_3

    .line 188
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->getDefaultSkin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "1"

    if-nez v0, :cond_1

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mGender:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "{\"bodySlim\":50,\"buttPlump\":50,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":88,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-83,\"waistSlim\":42}"

    return-object p0

    :cond_0
    const-string p0, "{\"bodySlim\":96,\"buttPlump\":-100,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":88,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":27,\"waistSlim\":79}"

    return-object p0

    .line 195
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mGender:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "{\"bodySlim\":50,\"buttPlump\":50,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":88,\"legLengthen\":57,\"legSlim\":20,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-83,\"waistSlim\":42}"

    return-object p0

    :cond_2
    const-string p0, "{\"bodySlim\":80,\"buttPlump\":0,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":88,\"legLengthen\":71,\"legSlim\":40,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":50,\"waistSlim\":63}"

    return-object p0

    .line 202
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->getDefaultSkin()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "{\"bodySlim\":50,\"buttPlump\":-31,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":88,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-84,\"waistSlim\":42}"

    return-object p0

    :cond_4
    const-string p0, "{\"bodySlim\":50,\"buttPlump\":-31,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":88,\"legLengthen\":57,\"legSlim\":20,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-84,\"waistSlim\":42}"

    return-object p0
.end method

.method private getProcessByFeatureId(Lcom/transsion/camera/feature/slimbody/data/SBItemData;)I
    .locals 0

    .line 241
    iget p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->featureId:I

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x64

    goto :goto_0

    .line 273
    :pswitch_0
    iget p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->waistUpper:I

    goto :goto_0

    .line 270
    :pswitch_1
    iget p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->armSlim:I

    goto :goto_0

    .line 267
    :pswitch_2
    iget p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->bellySlim:I

    goto :goto_0

    .line 264
    :pswitch_3
    iget p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->chestPlump:I

    goto :goto_0

    .line 261
    :pswitch_4
    iget p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->legLengthen:I

    goto :goto_0

    .line 258
    :pswitch_5
    iget p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->legSlim:I

    goto :goto_0

    .line 255
    :pswitch_6
    iget p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->buttPlump:I

    goto :goto_0

    .line 252
    :pswitch_7
    iget p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->waistSlim:I

    goto :goto_0

    .line 249
    :pswitch_8
    iget p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->shoulderSlim:I

    goto :goto_0

    .line 246
    :pswitch_9
    iget p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->headShrink:I

    goto :goto_0

    .line 243
    :pswitch_a
    iget p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->bodySlim:I

    :goto_0
    return p0

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

.method private getScrollRange()I
    .locals 0

    .line 551
    iget p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mScrollRange:I

    neg-int p0, p0

    return p0
.end method

.method private hideAutoHint()V
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p0, :cond_0

    .line 585
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private init()V
    .locals 5

    .line 370
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 371
    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->feature_rv:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mFeatureRV:Landroidx/recyclerview/widget/RecyclerView;

    .line 372
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 373
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mFeatureRV:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 374
    new-instance v0, Lcom/transsion/camera/feature/slimbody/adapter/FeatureAdapter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->FEATURE_INFO_LIST:Ljava/util/List;

    iget-object v4, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mFeatureRvListener:Lcom/transsion/camera/feature/slimbody/listener/RvListener;

    invoke-direct {v0, v2, v3, v4}, Lcom/transsion/camera/feature/slimbody/adapter/FeatureAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/slimbody/listener/RvListener;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mFeatureAdapter:Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;

    .line 375
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mFeatureRV:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 376
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mFeatureRV:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 377
    iget v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mScrollRange:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 378
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method private setSkinAndChangepostion(Ljava/lang/String;I)V
    .locals 0

    .line 666
    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->toObject(Ljava/lang/String;)Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    move-result-object p1

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 688
    :pswitch_0
    iget p1, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->legLengthen:I

    goto :goto_0

    .line 685
    :pswitch_1
    iget p1, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->legSlim:I

    goto :goto_0

    .line 682
    :pswitch_2
    iget p1, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->buttPlump:I

    goto :goto_0

    .line 679
    :pswitch_3
    iget p1, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->waistSlim:I

    goto :goto_0

    .line 676
    :pswitch_4
    iget p1, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->shoulderSlim:I

    goto :goto_0

    .line 673
    :pswitch_5
    iget p1, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->headShrink:I

    goto :goto_0

    .line 670
    :pswitch_6
    iget p1, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->bodySlim:I

    .line 692
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;->updateProgressForUI(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showAutoHint(Ljava/lang/String;)V
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 578
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 579
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showResetDialog(I)V
    .locals 3

    .line 590
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    .line 591
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 592
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_preset_showDialog:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 593
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_preset_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$4;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$4;-><init>(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 599
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_preset_sure:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;

    invoke-direct {v2, p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;-><init>(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;I)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 656
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 657
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 12

    .line 697
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 698
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v0

    .line 699
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v11

    .line 700
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    .line 701
    iget-object v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    .line 703
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->getScrollRange()I

    move-result v6

    .line 704
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOverScrollMode()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    :cond_0
    sub-int v3, v1, v0

    sub-int v4, v2, v11

    const/4 v7, 0x0

    .line 708
    iget v8, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mScrollRange:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v2, v3

    move v3, v4

    move v4, v0

    move v5, v11

    invoke-virtual/range {v1 .. v10}, Landroid/widget/LinearLayout;->overScrollBy(IIIIIIIIZ)Z

    .line 710
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v1, v2, v0, v11}, Landroid/widget/LinearLayout;->onScrollChanged(IIII)V

    :cond_1
    return-void
.end method

.method public defaultValueSlimBody()Ljava/lang/String;
    .locals 0

    .line 348
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->getInstance(Landroid/content/Context;)Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->getCloseDefaultSB()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "0"

    goto :goto_0

    :cond_0
    const-string p0, "2"

    :goto_0
    return-object p0
.end method

.method public featureScrollOut()V
    .locals 1

    const/16 v0, 0x8

    .line 302
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public getDefaultSkin()Ljava/lang/String;
    .locals 1

    const-string p0, "debug.vendor.sys.oobe.camera_skin"

    const-string v0, "0"

    .line 233
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideAwlaysHint()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public hideDialog()V
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 422
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 423
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->init()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 435
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mLastMotionX:I

    .line 438
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mFeatureRV:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 439
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 408
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 409
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    .line 411
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 413
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 414
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 415
    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {p0, v1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 8

    .line 558
    iget-object p4, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {p4}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p4

    if-nez p4, :cond_0

    .line 559
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p4

    .line 560
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v0

    .line 561
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setScrollX(I)V

    .line 562
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setScrollY(I)V

    .line 563
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 564
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2, p4, v0}, Landroid/widget/LinearLayout;->onScrollChanged(IIII)V

    if-eqz p3, :cond_1

    .line 566
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->getScrollRange()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    goto :goto_0

    .line 569
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 572
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->awakenScrollBars()Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    goto/16 :goto_1

    .line 475
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 476
    iget v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mLastMotionX:I

    sub-int/2addr v2, v0

    .line 477
    iget-boolean v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mIsBeingDragged:Z

    if-nez v3, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mTouchSlop:I

    if-le v3, v4, :cond_3

    .line 478
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 480
    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 482
    :cond_1
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mIsBeingDragged:Z

    if-lez v2, :cond_2

    .line 484
    iget v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mTouchSlop:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 486
    :cond_2
    iget v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mTouchSlop:I

    add-int/2addr v2, v3

    :cond_3
    :goto_0
    move v4, v2

    .line 489
    iget-boolean v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_9

    .line 491
    iput v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mLastMotionX:I

    .line 493
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    .line 494
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    .line 495
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->getScrollRange()I

    move-result v8

    .line 496
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOverScrollMode()I

    move-result v0

    const/4 v5, 0x0

    .line 499
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mScrollRange:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v12}, Landroid/widget/LinearLayout;->overScrollBy(IIIIIIIIZ)Z

    goto :goto_1

    .line 507
    :cond_4
    iget-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_9

    .line 508
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5

    .line 509
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 515
    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->smoothScrollTo(II)V

    .line 516
    iput-boolean v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mIsBeingDragged:Z

    goto :goto_1

    .line 460
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_7

    .line 461
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 463
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 466
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_8

    .line 467
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 471
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mLastMotionX:I

    .line 524
    :cond_9
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public resetProgressBarAndSetValue(I)V
    .locals 4

    .line 211
    iput p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mSlimbodyFeatureId:I

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mSlimbodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    .line 214
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->getDefaultSlimBodySetting()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_slimbody_custom"

    .line 213
    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->toObject(Ljava/lang/String;)Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    move-result-object v0

    .line 217
    iput p1, v0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->featureId:I

    .line 218
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->getProcessByFeatureId(Lcom/transsion/camera/feature/slimbody/data/SBItemData;)I

    move-result v1

    const/4 v2, 0x2

    if-le p1, v2, :cond_0

    .line 220
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    invoke-interface {v3, p1, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;->updateProgressForUI(II)V

    .line 221
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    invoke-interface {v1, v2}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;->updateStateForUI(I)V

    :cond_0
    if-nez p1, :cond_1

    .line 224
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mSlimbodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":0,\"shoulderSlim\":100,\"waistSlim\":100}"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 226
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mSlimbodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100, \"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":1,\"shoulderSlim\":100,\"waistSlim\":100}"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mSlimbodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->toJson(Lcom/transsion/camera/feature/slimbody/data/SBItemData;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mSlimbodySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 363
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    if-eqz p0, :cond_0

    const/4 p1, 0x3

    .line 364
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;->updateStateForUI(I)V

    :cond_0
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mGender:Ljava/lang/String;

    return-void
.end method

.method public setListener(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V
    .locals 3

    .line 329
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    .line 330
    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    const/4 p1, 0x0

    .line 335
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 338
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mFeatureAdapter:Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;

    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 339
    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->defaultValueSlimBody()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_slimbody_latested_featureid"

    .line 338
    invoke-virtual {p2, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/slimbody/adapter/RvAdapter;->updateSelectedItemByPosition(I)V

    .line 342
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mListener:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    if-eqz p0, :cond_0

    const/4 p1, 0x3

    .line 343
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;->updateStateForUI(I)V

    :cond_0
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 4

    .line 528
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 532
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mLastScroll:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 534
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result p2

    .line 535
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, p1, v2}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 536
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 539
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 541
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->scrollBy(II)V

    .line 543
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mLastScroll:J

    return-void
.end method

.method public final smoothScrollTo(II)V
    .locals 1

    .line 547
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->smoothScrollBy(II)V

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 382
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->hideAutoHint()V

    return-void
.end method

.method public updateSettingData(Lcom/transsion/camera/feature/slimbody/data/SBItemData;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mSlimBodyDataInfo:Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    if-eqz p1, :cond_0

    .line 309
    iget p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->mSlimbodyFeatureId:I

    iput p0, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->featureId:I

    :cond_0
    return-void
.end method
