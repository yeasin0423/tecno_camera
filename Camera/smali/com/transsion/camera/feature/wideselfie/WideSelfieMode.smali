.class public Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "WideSelfieMode.java"


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
.field private final mActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

.field private mPreviewSize:Landroid/util/Size;

.field private final mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

.field private final mStreamListener:Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;

.field private final mThumbnailOperator:Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

.field private mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

.field private mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

.field private mWideSelfiePreview:Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

.field private mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$1;-><init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

    .line 105
    new-instance p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$2;-><init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mThumbnailOperator:Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

    .line 124
    new-instance p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$3;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$3;-><init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    .line 136
    new-instance p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$4;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$4;-><init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mStreamListener:Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;[B)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView([B)V

    return-void
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfiePreview:Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method private updateOrientation(I)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->updateOrientation(I)V

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfiePreview:Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/common/BasePreview;->updateOrientation(I)V

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 216
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->updateOrientation(I)V

    return-void
.end method

.method private updateThumbnailSize(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    .line 222
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v2, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    iget v1, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    iget p0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    invoke-direct {v1, v2, p0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->setThumbnailSize(Landroid/graphics/Point;Landroid/graphics/Point;)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v2, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbWidth:I

    iget v1, v1, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbHeight:I

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget v2, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgWidth:I

    iget p0, p0, Lcom/transsion/camera/feature/common/BaseUISpec;->mThumbBgHeight:I

    invoke-direct {v1, v2, p0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->setThumbnailSize(Landroid/graphics/Point;Landroid/graphics/Point;)V

    :goto_0
    return-void
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

    .line 340
    new-instance p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/NullImageProcessor;-><init>()V

    return-object p0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

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

    .line 324
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 2

    .line 318
    invoke-static {}, Lcom/transsion/camera/feature/wideselfie/WideSelfieRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object p0

    const-string v0, "on"

    const/4 v1, 0x1

    .line 319
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

    .line 301
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x500

    const/16 v2, 0x3c0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    .line 302
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    .line 303
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    rem-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    :cond_0
    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    .line 305
    invoke-virtual {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->getScreenSize()Landroid/util/Size;

    move-result-object v4

    const/4 v5, 0x1

    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    move-object v1, p1

    .line 304
    invoke-static/range {v1 .. v7}, Lcom/transsion/camera/utils/CameraUtil;->getPreviewSizeMatch64(Ljava/util/List;DLandroid/util/Size;ZD)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    .line 307
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreviewSize mPreviewSize= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 308
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method protected getScreenSize()Landroid/util/Size;
    .locals 0

    .line 313
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
    new-instance p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    invoke-direct {p1, p3}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;-><init>(Lcom/transsion/camera/app/common/IAppUI;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    .line 162
    new-instance p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    iget-object p6, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    invoke-direct {p1, p3, p6}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    .line 163
    invoke-virtual {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->initView()V

    .line 165
    new-instance p1, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    iget-object p6, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    invoke-direct {p1, p3, p6}, Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfiePreview:Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    .line 166
    invoke-virtual {p1}, Lcom/transsion/camera/feature/common/BasePreview;->modeInit()V

    .line 168
    new-instance p1, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-direct {p1, p5, p4, p2}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;-><init>(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    .line 170
    invoke-virtual {p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->init()V

    .line 171
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfiePreview:Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->setThumbnailListener(Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IThumbnailListener;)V

    .line 172
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->setDirectionListener(Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IDirectionListener;)V

    .line 173
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mStatusListener:Lcom/transsion/camera/feature/common/ICapture$IStatusListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/common/BaseCapture;->setStatusListener(Lcom/transsion/camera/feature/common/ICapture$IStatusListener;)V

    .line 174
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mThumbnailOperator:Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/common/BaseCapture;->setThumbnailOperator(Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;)V

    .line 175
    iget-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    iget-object p2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mStreamListener:Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/common/BaseCapture;->setStreamStatusListener(Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;)V

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mActionCallback:Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;

    invoke-interface {p3, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->stopCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 269
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 3

    .line 291
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->stopCapture()Z

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    .line 294
    invoke-virtual {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->getScreenSize()Landroid/util/Size;

    move-result-object v2

    .line 293
    invoke-virtual {v0, v1, v2, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->calculateThumbnailSize(Landroid/util/Size;Landroid/util/Size;I)V

    .line 295
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->updateThumbnailSize(I)V

    .line 296
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->updateOrientation(I)V

    return-void
.end method

.method public onSettingReady()V
    .locals 4

    .line 197
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 198
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    .line 199
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mUISpec:Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;

    iget-object v2, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mPreviewSize:Landroid/util/Size;

    .line 200
    invoke-virtual {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->getScreenSize()Landroid/util/Size;

    move-result-object v3

    .line 199
    invoke-virtual {v1, v2, v3, v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUISpec;->calculateThumbnailSize(Landroid/util/Size;Landroid/util/Size;I)V

    .line 201
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->updateThumbnailSize(I)V

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->createDataStream()V

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_0

    .line 205
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    .line 206
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->registerFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    :cond_0
    return-void
.end method

.method public onShutterClick(I)Z
    .locals 4

    .line 274
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 275
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onShutterClick space in not enough"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->showLowStorageHint()V

    const/4 p0, 0x0

    return p0

    .line 280
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->isModeTabScrolling()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 281
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "isModeTabScrolling return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 285
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->shutterClick()V

    return v0
.end method

.method public pause()V
    .locals 2

    .line 253
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_0

    .line 255
    iget-object v1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    .line 256
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->unRegisterFrameResultCallback(Lcom/transsion/camera/adapter/CameraProxy$FrameResultCallback;)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseUI;->pause()V

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfiePreview:Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BasePreview;->pause()V

    .line 260
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->destroyDataStream()V

    .line 261
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->stopCapture()Z

    return-void
.end method

.method public resume()V
    .locals 1

    .line 245
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BaseUI;->resume()V

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfiePreview:Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BasePreview;->resume()V

    .line 248
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->updateOrientation(I)V

    return-void
.end method

.method public setModeChangeFlag(Z)V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    if-nez v0, :cond_0

    .line 346
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setModeChangeFlag mWideSelfieUI is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 349
    :cond_0
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/common/BaseUI;->setModeChangeFlag(Z)V

    return-void
.end method

.method public setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    .line 191
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 192
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->setModeStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 182
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieUI:Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->unInitView()V

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfiePreview:Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/common/BasePreview;->modeUnInit()V

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;->unInit()V

    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .locals 0

    .line 239
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    .line 240
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->mWideSelfieCapture:Lcom/transsion/camera/feature/wideselfie/WideSelfieCapture;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/common/BaseCapture;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    return-void
.end method
