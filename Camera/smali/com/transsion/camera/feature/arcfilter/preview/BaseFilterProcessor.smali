.class public Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;
.super Ljava/lang/Object;
.source "BaseFilterProcessor.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IFilterProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;,
        Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;,
        Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;
    }
.end annotation


# static fields
.field private static final IS_SUPPORT_POST_VIEW:Z

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mArcFilterEngine:Lcom/arcsoft/filter/ArcFilterEngine;

.field private mCallback:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;

.field protected mContext:Landroid/content/Context;

.field protected volatile mCurrentFilterId:I

.field protected volatile mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

.field private mFilterSupportIds:[I

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mResPath:Ljava/lang/String;

.field protected mSurfaceHeight:I

.field protected mSurfaceTextureMatrix:[F

.field protected mSurfaceWidth:I

.field private mThumbBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 28
    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mSurfaceTextureMatrix:[F

    .line 29
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->UNDEFINED:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    .line 33
    new-instance v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;-><init>(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$1;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCallback:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mResPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 22
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->initArcFilterEngine()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->uninitArcFilterEngine()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;[I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->handleLoadFilterIds([I)V

    return-void
.end method

.method private handleLoadFilterIds([I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 288
    aget v0, p1, v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    sget-object v1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->LOADED:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    if-eq v0, v1, :cond_1

    .line 293
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "prepareEngineEx in"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    invoke-virtual {v0, p1}, Lcom/arcsoft/filter/ArcFilterEngine;->PrepareEngineEx([I)I

    .line 295
    sget-object p1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->LOADED:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    .line 296
    sget-object p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "prepareEngineEx out"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private initArcFilterEngine()V
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    if-eqz v0, :cond_0

    return-void

    .line 179
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initArcFilterEngine(): init begin "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    new-instance v0, Lcom/arcsoft/filter/ArcFilterEngine;

    invoke-direct {v0}, Lcom/arcsoft/filter/ArcFilterEngine;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    if-eqz v0, :cond_2

    .line 183
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mResPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {v0, v1}, Lcom/arcsoft/filter/ArcFilterEngine;->Init(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {v0}, Lcom/arcsoft/filter/ArcFilterEngine;->Init()I

    move-result v0

    .line 188
    :goto_0
    sget-object v1, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initArcFilterEngine(): init end engine = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 190
    :cond_2
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initArcFilterEngine(): init end "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 191
    iget v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterSupportIds:[I

    if-eqz v0, :cond_3

    .line 193
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->handleLoadFilterIds([I)V

    :cond_3
    return-void
.end method

.method private loadFilterIdResources()V
    .locals 6

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterSupportIds:[I

    if-nez v0, :cond_0

    return-void

    .line 278
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 279
    iget-object v2, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    sget-object v3, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->UNDEFINED:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    if-ne v2, v3, :cond_1

    .line 280
    sget-object v2, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->LOADING:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    iput-object v2, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    .line 281
    iget-object v2, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterSupportIds:[I

    invoke-interface {v2, v3, v4}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResources(Z[I)V

    .line 283
    :cond_1
    sget-object v2, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadFilterIdResources spend "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms,mFilterIdsLoadedState = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", this:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private uninitArcFilterEngine()V
    .locals 2

    .line 198
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "uninitArcFilterEngine"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/arcsoft/filter/ArcFilterEngine;->UnInit()I

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mArcFilterEngine:Lcom/arcsoft/filter/ArcFilterEngine;

    .line 203
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;->UNDEFINED:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterIdsLoadedState:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterLoadState;

    return-void
.end method


# virtual methods
.method protected drawFilterPreview(Landroid/graphics/SurfaceTexture;III)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected drawFilterPreviewOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public filterSelected(Ljava/lang/String;)V
    .locals 0

    .line 141
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    .line 142
    iget p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCurrentFilterId:I

    if-eqz p1, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->loadFilterIdResources()V

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;)V
    .locals 0

    .line 53
    iput-object p3, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {p5}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->getSupportFilterIds(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterSupportIds:[I

    .line 56
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p1, :cond_0

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mCallback:Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$ArcFilterPreviewCallback;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    :cond_0
    return-void
.end method

.method protected initFilterPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V
    .locals 0

    return-void
.end method

.method public isValidFilter(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    return v1

    .line 128
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterSupportIds:[I

    if-eqz p0, :cond_2

    .line 129
    array-length v2, p0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, p0, v3

    if-ne v4, p1, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method protected loadGLResourceFilterPreviewCallback(I)V
    .locals 0

    return-void
.end method

.method protected loadGLResourcesFilterPreviewCallback([I)V
    .locals 0

    return-void
.end method

.method public onPostViewData(IIIZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShutterClick()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public pause()V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p0, :cond_0

    .line 88
    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modePause()V

    :cond_0
    return-void
.end method

.method protected pauseFilterPreviewCallBack()V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p0, :cond_0

    .line 81
    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeResume()V

    :cond_0
    return-void
.end method

.method protected resumeFilterPreviewCallBack()V
    .locals 0

    return-void
.end method

.method public setPrevieDataCallback(Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;)V
    .locals 0

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeUninit()V

    :cond_0
    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterSupportIds:[I

    return-void
.end method

.method protected unInitFilterPreviewCallback(Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor$FilterCBType;)V
    .locals 0

    return-void
.end method

.method public updateFilterSupportIds(Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-static {p1}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->getSupportFilterIds(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mFilterSupportIds:[I

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/preview/BaseFilterProcessor;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p0, :cond_0

    .line 66
    invoke-interface {p0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeReload()V

    :cond_0
    return-void
.end method
