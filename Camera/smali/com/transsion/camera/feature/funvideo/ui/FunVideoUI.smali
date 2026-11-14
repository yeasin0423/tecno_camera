.class public Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;
.super Ljava/lang/Object;
.source "FunVideoUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$UIHandler;,
        Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$VideoRecordingCallback;,
        Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$FunARChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mARLayout:Landroid/view/View;

.field private final mAllEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/funvideo/data/EffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mArIcon:Landroid/widget/ImageView;

.field private final mArRoot:Landroid/widget/RelativeLayout;

.field private mArShowFlag:Z

.field private mBuildInEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/funvideo/data/EffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDownAnimator:Landroid/animation/AnimatorSet;

.field private mDownloadEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/funvideo/data/EffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFunARChangeListener:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$FunARChangeListener;

.field private mFunArAdapter:Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;

.field private mFunVideoViewLayout:Landroid/view/View;

.field private volatile mIsRecording:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mMediaSpeedType:I

.field private final mModePickerArrowIconHeight:I

.field private mNeedShader:Z

.field private mParentViewGroup:Landroid/view/ViewGroup;

.field private mPause:Z

.field private mProgressView:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

.field private mProgressViewRoot:Landroid/view/View;

.field private mProgressViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

.field private mRecordingRootView:Landroid/view/View;

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mRecordingTimeViewGroup:Landroid/view/View;

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mResManager:Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;

.field private mTimeCount:I

.field private mUpAnimator:Landroid/animation/AnimatorSet;

.field private mVideoDuration:I

.field private mVideoRecordingCallback:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$VideoRecordingCallback;

.field private mVideoSpeed:D

.field private mVideoSpeedView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FunVideoUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .locals 3

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mPause:Z

    .line 69
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mIsRecording:Z

    .line 70
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArShowFlag:Z

    .line 72
    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mMediaSpeedType:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 73
    iput-wide v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mVideoSpeed:D

    .line 74
    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mTimeCount:I

    const/4 v1, 0x0

    .line 87
    iput-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mBuildInEffects:Ljava/util/List;

    .line 88
    iput-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mDownloadEffects:Ljava/util/List;

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAllEffects:Ljava/util/List;

    .line 91
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mNeedShader:Z

    .line 93
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    .line 94
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    .line 110
    iput-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 111
    iput-object p4, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 112
    new-instance p3, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$UIHandler;

    invoke-direct {p3, p0, v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$UIHandler;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$1;)V

    iput-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mMainHandler:Landroid/os/Handler;

    .line 113
    new-instance p3, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;

    invoke-direct {p3}, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;-><init>()V

    iput-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mResManager:Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;

    .line 114
    iput-object p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mParentViewGroup:Landroid/view/ViewGroup;

    .line 115
    sget p3, Lcom/transsion/camera/feature/funvideo/R$layout;->funvideo_recording_layout:I

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunVideoViewLayout:Landroid/view/View;

    .line 116
    sget v0, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_root_group:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecordingRootView:Landroid/view/View;

    .line 118
    iget-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunVideoViewLayout:Landroid/view/View;

    sget v0, Lcom/transsion/camera/feature/funvideo/R$id;->recording_time_group:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecordingTimeViewGroup:Landroid/view/View;

    .line 119
    iget-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunVideoViewLayout:Landroid/view/View;

    sget v0, Lcom/transsion/camera/feature/funvideo/R$id;->fun_video_recording_time:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    .line 121
    iget-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunVideoViewLayout:Landroid/view/View;

    sget v0, Lcom/transsion/camera/feature/funvideo/R$id;->fun_video_speed:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mVideoSpeedView:Landroid/widget/TextView;

    .line 123
    iget-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunVideoViewLayout:Landroid/view/View;

    sget v0, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_recording_progress:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    iput-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressView:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    .line 124
    iget-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunVideoViewLayout:Landroid/view/View;

    sget v0, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_rotate_framelayout:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iput-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 125
    iget-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunVideoViewLayout:Landroid/view/View;

    sget v0, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_recording_progress_root:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressViewRoot:Landroid/view/View;

    .line 127
    sget p3, Lcom/transsion/camera/feature/funvideo/R$layout;->funvideo_ar_layout:I

    invoke-virtual {p1, p3, p2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mARLayout:Landroid/view/View;

    .line 128
    sget p2, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_ar_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArRoot:Landroid/widget/RelativeLayout;

    .line 129
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mARLayout:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_ar_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArIcon:Landroid/widget/ImageView;

    const/4 p2, 0x4

    .line 130
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mARLayout:Landroid/view/View;

    sget p2, Lcom/transsion/camera/feature/funvideo/R$id;->funvideo_ar_recycler_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 132
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mARLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/funvideo/R$dimen;->mode_picker_arrow_icon_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mModePickerArrowIconHeight:I

    .line 133
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mContext:Landroid/content/Context;

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/funvideo/R$bool;->is_need_shader:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mNeedShader:Z

    if-eqz p1, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->initAnimator()V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)Landroid/view/View;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecordingRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)Landroid/view/View;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecordingTimeViewGroup:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mMediaSpeedType:I

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->updateVideoSpeedView(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mVideoDuration:I

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)D
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mVideoSpeed:D

    return-wide v0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressView:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)Landroid/widget/ImageView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method private composeList()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAllEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAllEffects:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mResManager:Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;

    const-string v2, "Cancel"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->generateCustomEffectItem(Ljava/lang/String;)Lcom/transsion/camera/feature/funvideo/data/EffectItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAllEffects:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mBuildInEffects:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mDownloadEffects:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAllEffects:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mDownloadEffects:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private filterAndSort(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/funvideo/data/EffectItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/funvideo/data/EffectItem;",
            ">;"
        }
    .end annotation

    .line 488
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/feature/funvideo/R$integer;->brand_type:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    if-eqz p0, :cond_8

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p0, v2, :cond_2

    if-eq p0, v3, :cond_1

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/feature/funvideo/R$array;->infinix_res:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 497
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/feature/funvideo/R$array;->tecno_res:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 494
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/feature/funvideo/R$array;->tecno_camon_res:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 503
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 504
    array-length p1, v1

    move v2, v0

    :goto_1
    if-ge v2, p1, :cond_5

    aget-object v4, v1, v2

    .line 505
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/feature/funvideo/data/EffectItem;

    .line 506
    invoke-virtual {v6}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->getBundleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 507
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    invoke-interface {p2, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 515
    :cond_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 516
    div-int/lit8 p2, p1, 0x2

    .line 517
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    if-ge v0, p1, :cond_7

    .line 519
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_6

    .line 520
    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/funvideo/data/EffectItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v0, -0x1

    .line 522
    div-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/funvideo/data/EffectItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return-object v1

    :cond_8
    return-object p2
.end method

.method private getVideoSpeed(I)D
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    return-wide p0

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    const-wide/high16 p0, 0x4008000000000000L    # 3.0

    return-wide p0

    :cond_1
    const/4 p0, 0x3

    if-ne p1, p0, :cond_2

    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    return-wide p0

    :cond_2
    const/4 p0, 0x4

    if-ne p1, p0, :cond_3

    const-wide p0, 0x3fd554c985f06f69L    # 0.3333

    return-wide p0

    :cond_3
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0
.end method

.method private initAnimator()V
    .locals 10

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressView:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 143
    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressView:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    new-array v4, v1, [F

    fill-array-data v4, :array_1

    const-string v5, "scaleY"

    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 144
    iget-object v4, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x15e

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v4, 0x3e800000    # 0.25f

    const v8, 0x3dcccccd    # 0.1f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v8, v4, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressView:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 149
    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressView:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    new-array v1, v1, [F

    fill-array-data v1, :array_3

    invoke-static {v2, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v8, v4, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f59999a    # 0.85f
    .end array-data

    :array_2
    .array-data 4
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f59999a    # 0.85f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$initFunVideoUI$2()V
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mVideoRecordingCallback:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$VideoRecordingCallback;

    if-eqz p0, :cond_0

    .line 278
    invoke-interface {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$VideoRecordingCallback;->onProgressEnd()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initGridViewUI$0(Landroid/view/View;)V
    .locals 2

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return-void

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 213
    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->showArGrid(ZZ)V

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->hideArGrid(ZZ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$initGridViewUI$1(Landroid/view/View;I)V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunArAdapter:Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->getBundleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vskit"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->launchVskitApp(Landroid/content/Context;Landroid/net/Uri;Z)V

    return-void

    .line 225
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mPause:Z

    if-eqz p1, :cond_1

    .line 226
    sget-object p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mode paused, mGridView is not clickable."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 229
    :cond_1
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->setSelect(I)V

    return-void
.end method

.method private synthetic lambda$setARRootVisibility$3(I)V
    .locals 0

    .line 476
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private loadBuildInEffects(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/funvideo/data/EffectItem;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mResManager:Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->getBuildInEffects(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 179
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->filterAndSort(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 181
    :goto_0
    sget-object p1, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadBuildInEffects size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method private loadDownloadEffects(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/funvideo/data/EffectItem;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mResManager:Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->getDownloadEffects(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private setSelect(I)V
    .locals 5

    .line 458
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunArAdapter:Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/funvideo/data/EffectItem;

    .line 459
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunARChangeListener:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$FunARChangeListener;

    if-eqz v1, :cond_0

    .line 460
    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->getEffect()Lcom/faceunity/entity/Effect;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$FunARChangeListener;->onARItemChange(Lcom/faceunity/entity/Effect;)V

    .line 462
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->getBundleName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "key_funvideo_item"

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 463
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunArAdapter:Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;->setSelect(I)V

    .line 464
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunArAdapter:Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private showTime(I)V
    .locals 4

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 404
    rem-int/lit8 v0, p1, 0x3c

    .line 405
    div-int/lit8 p1, p1, 0x3c

    .line 406
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "%02d:%02d"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 407
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateRecordingTime()V
    .locals 6

    .line 388
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mIsRecording:Z

    if-nez v0, :cond_0

    return-void

    .line 391
    :cond_0
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mVideoDuration:I

    iget v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mTimeCount:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 395
    :cond_1
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->showTime(I)V

    .line 396
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mTimeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mTimeCount:I

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mMainHandler:Landroid/os/Handler;

    const-wide v2, 0x408f400000000000L    # 1000.0

    iget-wide v4, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mVideoSpeed:D

    mul-double/2addr v4, v2

    double-to-long v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private updateVideoSpeedView(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "2x"

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "3x"

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const-string p1, "0.5x"

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const-string p1, "0.3x"

    goto :goto_0

    :cond_3
    const-string p1, "1x"

    .line 423
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mVideoSpeedView:Landroid/widget/TextView;

    if-eqz p0, :cond_4

    .line 424
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getArShowFlag()Z
    .locals 0

    .line 269
    iget-boolean p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArShowFlag:Z

    return p0
.end method

.method public hideArGrid(ZZ)V
    .locals 3

    .line 259
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArShowFlag:Z

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArIcon:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/feature/funvideo/R$drawable;->ic_fun_ar_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2, p2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideShutterPanel(ZZIZ)V

    .line 264
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 265
    iput-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArShowFlag:Z

    return-void
.end method

.method public initFunVideoUI(I)V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 274
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    .line 276
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressView:Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;

    new-instance v0, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoUI$1XTtZVihCotg3ITxDX4TyPdXs1w;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoUI$1XTtZVihCotg3ITxDX4TyPdXs1w;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView;->setProgressCallBack(Lcom/transsion/camera/feature/funvideo/ui/RecordingProgressView$ProgressCallBack;)V

    const/4 p1, 0x0

    .line 281
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mPause:Z

    return-void
.end method

.method public initGridViewUI()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mBuildInEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->loadBuildInEffects(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mBuildInEffects:Ljava/util/List;

    .line 203
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->composeList()V

    .line 205
    :cond_0
    new-instance v0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAllEffects:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunArAdapter:Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;

    .line 206
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoUI$o-BT61880WnynJQw9-QdfIoVlmg;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoUI$o-BT61880WnynJQw9-QdfIoVlmg;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mPause:Z

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunArAdapter:Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;

    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoUI$VCzfLwzazicWHot83Zfo0yoJkj0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoUI$VCzfLwzazicWHot83Zfo0yoJkj0;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->setOnItemClickListener(Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;)V

    return-void
.end method

.method public synthetic lambda$initFunVideoUI$2$FunVideoUI()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->lambda$initFunVideoUI$2()V

    return-void
.end method

.method public synthetic lambda$initGridViewUI$0$FunVideoUI(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->lambda$initGridViewUI$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initGridViewUI$1$FunVideoUI(Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->lambda$initGridViewUI$1(Landroid/view/View;I)V

    return-void
.end method

.method public synthetic lambda$setARRootVisibility$3$FunVideoUI(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->lambda$setARRootVisibility$3(I)V

    return-void
.end method

.method public loadGridViewRes()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->loadBuildInEffects(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mBuildInEffects:Ljava/util/List;

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->loadDownloadEffects(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mDownloadEffects:Ljava/util/List;

    .line 170
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->composeList()V

    return-void
.end method

.method public onHideRecordingUI()V
    .locals 2

    const/4 v0, 0x0

    .line 346
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mIsRecording:Z

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 305
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 306
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    :cond_0
    return-void
.end method

.method public onShowRecordingUI(II)V
    .locals 1

    const/4 v0, 0x1

    .line 336
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mIsRecording:Z

    .line 337
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mVideoDuration:I

    .line 338
    iput p2, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mMediaSpeedType:I

    .line 339
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->getVideoSpeed(I)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mVideoSpeed:D

    const/4 p1, 0x0

    .line 340
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mTimeCount:I

    .line 342
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mMainHandler:Landroid/os/Handler;

    const/16 p1, 0x66

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onShutterDown()V
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mNeedShader:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method public onShutterUp()V
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mNeedShader:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method public pauseFunVideoUI()V
    .locals 1

    const/4 v0, 0x1

    .line 285
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mPause:Z

    return-void
.end method

.method public resetToDefault()V
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunArAdapter:Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;->getCurSelect()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 484
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->setSelect(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public resumeFunVideoUI()V
    .locals 1

    const/4 v0, 0x0

    .line 289
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mPause:Z

    return-void
.end method

.method public setARRootVisibility(I)V
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoUI$TAY7oXpvV7VXzVJ10PcGYkRphF0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/-$$Lambda$FunVideoUI$TAY7oXpvV7VXzVJ10PcGYkRphF0;-><init>(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLayoutParam(III)V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecordingRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    if-lez p3, :cond_0

    .line 314
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressViewRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 315
    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 316
    iget-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressViewRoot:Landroid/view/View;

    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mProgressViewRoot:Landroid/view/View;

    invoke-virtual {p1, v1, v1, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 319
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p1

    .line 320
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x9

    mul-int/lit8 p1, p1, 0x10

    sub-int/2addr p2, p1

    .line 322
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 323
    iget-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePickRootHeight()I

    move-result p3

    sub-int/2addr p3, p2

    iget v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mModePickerArrowIconHeight:I

    sub-int/2addr p3, v0

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 324
    iget-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 327
    iget-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePickRootHeight()I

    move-result p3

    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArRoot:Landroid/widget/RelativeLayout;

    .line 328
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/funvideo/R$dimen;->funvideo_ar_diff:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr p3, v0

    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArRoot:Landroid/widget/RelativeLayout;

    .line 329
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/funvideo/R$dimen;->interactive_bottom_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr p3, v0

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 330
    iget-object p3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p3, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v1, v1, p2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public setOnArChangeListener(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$FunARChangeListener;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunARChangeListener:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$FunARChangeListener;

    return-void
.end method

.method public setVideoRecordingCallback(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$VideoRecordingCallback;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mVideoRecordingCallback:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$VideoRecordingCallback;

    return-void
.end method

.method public showArGrid(ZZ)V
    .locals 2

    .line 248
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArShowFlag:Z

    if-eqz v0, :cond_0

    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArIcon:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/feature/funvideo/R$drawable;->ic_fun_ar_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, v1, p2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideShutterPanel(ZZIZ)V

    .line 253
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 254
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 p2, 0x38

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const/4 p1, 0x1

    .line 255
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArShowFlag:Z

    return-void
.end method

.method public showArToggle()V
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x67

    .line 469
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 470
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public showModeUI()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArRoot:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 235
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArShowFlag:Z

    if-eqz v0, :cond_0

    .line 236
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    invoke-interface {p0, v1, v1, v1, v0}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideShutterPanel(ZZIZ)V

    :cond_0
    return-void
.end method

.method public unInitFunVideoUI()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mParentViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecordingRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 294
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArShowFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 295
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->hideArGrid(ZZ)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mParentViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mArRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mRecordingRootView:Landroid/view/View;

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mDownAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 300
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mUpAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    return-void
.end method

.method public updateCurrentIndex()V
    .locals 4

    .line 446
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_funvideo_item"

    const-string v3, ""

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 448
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunArAdapter:Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 449
    iget-object v3, p0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->mFunArAdapter:Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/funvideo/data/EffectItem;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->getBundleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 454
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->setSelect(I)V

    return-void
.end method
