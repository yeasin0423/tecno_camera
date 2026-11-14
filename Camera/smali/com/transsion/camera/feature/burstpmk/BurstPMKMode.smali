.class public Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "BurstPMKMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode<",
        "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

.field private mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

.field private mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

.field private final mDirectionListener:Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;

.field private mPreviewSize:Landroid/util/Size;

.field private final mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

.field private final mStreamListener:Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;

.field private final mThumbnailOperator:Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

.field private mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    .line 46
    new-instance p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$1;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

    .line 104
    new-instance p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$2;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mThumbnailOperator:Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

    .line 123
    new-instance p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$3;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$3;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mDirectionListener:Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;

    .line 136
    new-instance p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$4;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$4;-><init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mStreamListener:Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;[B)V
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView([B)V

    return-void
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
            "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
            ">;"
        }
    .end annotation

    .line 302
    new-instance p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/NullImageProcessor;-><init>()V

    return-object p0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method protected getContinuousShotNotSupportMessage()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataFlowType()I
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x4

    .line 286
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 2

    .line 280
    invoke-static {}, Lcom/transsion/camera/feature/burstpmk/BurstPMKRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p0

    const-string v0, "on"

    const/4 v1, 0x1

    .line 281
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 264
    invoke-virtual {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->getScreenSize()Landroid/util/Size;

    move-result-object v7

    .line 265
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v0, v0

    .line 266
    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-double v2, v2

    div-double v1, v0, v2

    const/4 v4, 0x1

    const-wide v5, 0x3f947ae147ae147bL    # 0.02

    move-object v0, p1

    move-object v3, v7

    .line 267
    invoke-static/range {v0 .. v6}, Lcom/transsion/camera/utils/CameraUtil;->getPreviewSizeMatch64(Ljava/util/List;DLandroid/util/Size;ZD)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mPreviewSize:Landroid/util/Size;

    .line 269
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "targetSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviewSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 270
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method protected getScreenSize()Landroid/util/Size;
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 0

    .line 158
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 160
    new-instance p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    invoke-direct {p1, p3}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    .line 162
    new-instance p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    iget-object p6, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    invoke-direct {p1, p3, p6}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    .line 163
    iget-object p6, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mDirectionListener:Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;

    invoke-virtual {p1, p6}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->setDirectionListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;)V

    .line 164
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->initView()V

    .line 166
    new-instance p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    iget-object p6, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    invoke-direct {p1, p3, p6}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    .line 167
    invoke-virtual {p1}, Lcom/transsion/camera/feature/common/BasePreview;->modeInit()V

    .line 169
    new-instance p1, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-direct {p1, p5, p4, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;-><init>(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    .line 171
    invoke-virtual {p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->init()V

    .line 172
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->registerMoveListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;)V

    .line 173
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->registerMoveListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;)V

    .line 174
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->setThumbnailListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IThumbnailListener;)V

    .line 175
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->setSpeedListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$ISpeedListener;)V

    .line 176
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/common/BaseCapture;->setStatusListener(Lcom/transsion/camera/feature/common/ICapture$IStatusListener;)V

    .line 177
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mThumbnailOperator:Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/common/BaseCapture;->setThumbnailOperator(Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;)V

    .line 178
    iget-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mStreamListener:Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/common/BaseCapture;->setStreamStatusListener(Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->stopCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 236
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 258
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 259
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->updateOrientation(I)V

    return-void
.end method

.method public onSettingReady()V
    .locals 5

    .line 199
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->getScreenSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;->calculateThumbnailSize(Landroid/util/Size;Landroid/util/Size;)V

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->updateOrientation(I)V

    .line 202
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v3, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    iget v2, v2, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    invoke-direct {v1, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mUISpec:Lcom/transsion/camera/feature/burstpmk/BurstPMKUISpec;

    iget v4, v3, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    iget v3, v3, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    invoke-direct {v2, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->setThumbnailSize(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 205
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->createDataStream()V

    return-void
.end method

.method public onShutterClick(I)Z
    .locals 4

    .line 241
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 242
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onShutterClick space in not enough"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->showLowStorageHint()V

    const/4 p0, 0x0

    return p0

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->isModeTabScrolling()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "isModeTabScrolling return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 252
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->shutterClick()V

    return v0
.end method

.method public pause()V
    .locals 1

    .line 224
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseUI;->pause()V

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BasePreview;->pause()V

    .line 227
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->destroyDataStream()V

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->stopCapture()Z

    return-void
.end method

.method public resume()V
    .locals 1

    .line 217
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseUI;->resume()V

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BasePreview;->resume()V

    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    .line 193
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 194
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 183
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->unRegisterMoveListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;)V

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    iget-object v1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->unRegisterMoveListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;)V

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKUI:Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKUI;->unInitView()V

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKPreview:Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BasePreview;->modeUnInit()V

    .line 188
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->unInit()V

    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .locals 0

    .line 211
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->mBurstPMKCapture:Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/common/BaseCapture;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    return-void
.end method
