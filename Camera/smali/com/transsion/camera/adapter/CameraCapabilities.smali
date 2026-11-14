.class public abstract Lcom/transsion/camera/adapter/CameraCapabilities;
.super Ljava/lang/Object;
.source "CameraCapabilities.java"

# interfaces
.implements Lcom/transsion/camera/adapter/ICameraCapabilities;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/adapter/ICameraCapabilities;"
    }
.end annotation


# instance fields
.field private m4CellInOneSize:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private mDspSupport:Z

.field private mDualCamCalibrationSize:Landroid/util/Size;

.field private mExposureCompensationStep:Landroid/util/Rational;

.field private mFakeRAW_RAW_Support:Z

.field private mFakeRAW_YUV_Support:Z

.field private mFovCropRegion:Landroid/graphics/Rect;

.field private mHighSpeedVideoSupport:Z

.field private mHumanDetectSupport:Z

.field private mIsAutoExposureLockSupported:Z

.field private mIsBGServiceModeSupport:Z

.field private mIsSatModeSupport:Z

.field private mIsSupportNightHawkMode:Z

.field private mIsSupportPortraitEnhance:Z

.field private mIsSupportStableSuperNight:Z

.field private mMacroTorchSupport:Z

.field private mMaxExposureCompensation:I

.field private mMaxNumOfFocusAreas:I

.field private mMaxNumOfMeteringAreas:I

.field private mMinExposureCompensation:I

.field private mMultiDualCamTeleSupport:Z

.field private mPeriscopeCamSupport:Z

.field protected mSMVRMetaDatas:[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

.field private mScreenFlashFireSupport:Z

.field private mSensorRect:Landroid/graphics/Rect;

.field private mStereoSensorCropRegion:Landroid/graphics/Rect;

.field private mSupportAsdMode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportEyeDetection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportFaceBeautyFeaturesLevelScope:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportFaceBeautyLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportFaceBeautyModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportFilterIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportLuminanceValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportManualWBRangeValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportSTBlurModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportShot2Shot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportSuperDefinition:Z

.field private mSupportSuperNightModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportSuperResolution:Z

.field private mSupportTranssionHDR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportVideoPortraitLevel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportVsdofLevel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedAWBModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedDistortionCorrection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedDualCamPictureSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedExposureTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedFlashModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedFocusDistanceRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedFocusModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedHighPreviewFPSRange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mSupportedHighSpeedSizesAndFPS:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedISOValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedMeteringModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedPhotoHDRModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedPictureSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedPostViewSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedPreviewFPSRange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSupportedPreviewSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedScreenFlashModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedThumbnailSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedVideoHDRModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedVideoSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTeleCameraSupport:Z

.field private mUsePreAECaptureFlow:Z

.field private mVideoCameraSupport:Z

.field private mWideCameraSupport:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mWideCameraSupport:Z

    .line 91
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mTeleCameraSupport:Z

    .line 95
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMultiDualCamTeleSupport:Z

    .line 103
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mHighSpeedVideoSupport:Z

    .line 107
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFakeRAW_RAW_Support:Z

    .line 108
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFakeRAW_YUV_Support:Z

    .line 112
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mVideoCameraSupport:Z

    .line 113
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mDspSupport:Z

    .line 118
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMacroTorchSupport:Z

    .line 135
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mPeriscopeCamSupport:Z

    return-void
.end method


# virtual methods
.method buildAllCapabilities(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 139
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportSlimBodyMode(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportSlimBodyFeatureSize(Ljava/lang/Object;)I

    .line 141
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedPreviewSizes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPreviewSizes:Ljava/util/List;

    .line 142
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedPictureSizes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPictureSizes:Ljava/util/List;

    .line 143
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedDualCamPictureSizes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedDualCamPictureSizes:Ljava/util/List;

    .line 144
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedVideoSizes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedVideoSizes:Ljava/util/List;

    .line 145
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedFlashModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedFlashModes:Ljava/util/List;

    .line 146
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedPhotoHDRModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPhotoHDRModes:Ljava/util/List;

    .line 147
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedVideoHDRModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedVideoHDRModes:Ljava/util/List;

    .line 148
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedFocusModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedFocusModes:Ljava/util/List;

    .line 149
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedScreenFlashModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedScreenFlashModes:Ljava/util/List;

    .line 150
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildMaxNumOfSupportedFocusAreas(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMaxNumOfFocusAreas:I

    .line 151
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildMaxNumOfSupportedMeteringAreas(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMaxNumOfMeteringAreas:I

    .line 152
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedZoomRatios(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedZoomRatios:Ljava/util/List;

    .line 153
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedFaceBeautyModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportFaceBeautyModes:Ljava/util/List;

    .line 154
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedFaceBeautyLevels(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportFaceBeautyLevels:Ljava/util/List;

    .line 155
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedFaceBeautyFeatures(Ljava/lang/Object;)Ljava/util/List;

    .line 156
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedFaceBeautyFeaturesLevelScope(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportFaceBeautyFeaturesLevelScope:Ljava/util/List;

    .line 157
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedFilterIds(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportFilterIds:Ljava/util/List;

    .line 158
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedAsdMode(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportAsdMode:Ljava/util/List;

    .line 159
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedTranssionHDR(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportTranssionHDR:Ljava/util/List;

    .line 160
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedSuperDefinition(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSuperDefinition:Z

    .line 161
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedSuperResolution(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSuperResolution:Z

    .line 162
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedVsdofLevel(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportVsdofLevel:Ljava/util/List;

    .line 163
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedManualWBRangeValue(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportManualWBRangeValue:Ljava/util/List;

    .line 164
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildDualCamCalibrationSize(Ljava/lang/Object;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mDualCamCalibrationSize:Landroid/util/Size;

    .line 165
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildStereoSensorCropRegion(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mStereoSensorCropRegion:Landroid/graphics/Rect;

    .line 166
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildFovCropRegion(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFovCropRegion:Landroid/graphics/Rect;

    .line 167
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsAutoExposureLockSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsAutoExposureLockSupported:Z

    .line 168
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildMaxExposureCompensation(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMaxExposureCompensation:I

    .line 169
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildMinExposureCompensation(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMinExposureCompensation:I

    .line 170
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildExposureCompensationStep(Ljava/lang/Object;)Landroid/util/Rational;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mExposureCompensationStep:Landroid/util/Rational;

    .line 171
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedPreviewFPSRanges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPreviewFPSRange:Ljava/util/List;

    .line 172
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedPostViewSizes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPostViewSizes:Ljava/util/List;

    .line 173
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedThumbnailSizes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedThumbnailSizes:Ljava/util/List;

    .line 174
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsWideCameraSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mWideCameraSupport:Z

    .line 175
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsTeleCameraSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mTeleCameraSupport:Z

    .line 176
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsMultiDualCamLogicalSupported(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsMultiDualCamTeleSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMultiDualCamTeleSupport:Z

    .line 178
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsLogicalCameraSupported(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsFakeRAWRAWCameraSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFakeRAW_RAW_Support:Z

    .line 180
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsFakeRAWYUVCameraSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFakeRAW_YUV_Support:Z

    .line 181
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedLuminanceValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportLuminanceValues:Ljava/util/List;

    .line 182
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedShot2Shot(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportShot2Shot:Ljava/util/List;

    .line 183
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedHdModes(Ljava/lang/Object;)Ljava/util/List;

    .line 184
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedSuperNightModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSuperNightModes:Ljava/util/List;

    .line 185
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedStableSuperNight(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportStableSuperNight:Z

    .line 186
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedAWBModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedAWBModes:Ljava/util/List;

    .line 187
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedSTBlurModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSTBlurModes:Ljava/util/List;

    .line 188
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsBGServiceModeSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsBGServiceModeSupport:Z

    .line 189
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedDistortionCorrection(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedDistortionCorrection:Ljava/util/List;

    .line 190
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedMacro(Ljava/lang/Object;)Ljava/util/List;

    .line 191
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupport4CellInOneSize(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->m4CellInOneSize:Ljava/util/List;

    .line 192
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsVideoCameraSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mVideoCameraSupport:Z

    .line 193
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsDspSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mDspSupport:Z

    .line 194
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsMacroTorchSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMacroTorchSupport:Z

    .line 195
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildScreenFlashFireSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mScreenFlashFireSupport:Z

    .line 196
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportTranFaceDetect(Ljava/lang/Object;)Ljava/util/List;

    .line 197
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildHumanDetectionSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mHumanDetectSupport:Z

    .line 198
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSensorRect(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSensorRect:Landroid/graphics/Rect;

    .line 199
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsHighSpeedVideoSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mHighSpeedVideoSupport:Z

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedSMVRMetaDatas(Ljava/lang/Object;)[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSMVRMetaDatas:[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    .line 202
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedHighPreviewFPSRanges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedHighPreviewFPSRange:Ljava/util/List;

    .line 203
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedHighSpeedSizesAndFPS(Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedHighSpeedSizesAndFPS:Ljava/util/LinkedHashMap;

    .line 205
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedEyeDecetion(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportEyeDetection:Ljava/util/List;

    .line 206
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedVideoPortraitLevel(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportVideoPortraitLevel:Ljava/util/List;

    .line 207
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedExposureTimes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedExposureTimes:Ljava/util/List;

    .line 208
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedISOValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedISOValues:Ljava/util/List;

    .line 209
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedFocusDistanceRange(Ljava/lang/Object;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedFocusDistanceRange:Landroid/util/Range;

    .line 210
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedMeteringModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedMeteringModes:Ljava/util/List;

    .line 211
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsNightHawkSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportNightHawkMode:Z

    .line 212
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsPortraitEnhanceSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportPortraitEnhance:Z

    .line 213
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedHumanEffectModes(Ljava/lang/Object;)Ljava/util/List;

    .line 214
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportSatModeSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSatModeSupport:Z

    .line 215
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportMultiZoomSteps(Ljava/lang/Object;)[F

    .line 216
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildPeriscopeCamSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mPeriscopeCamSupport:Z

    .line 217
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->usePreAECaptureFlow(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mUsePreAECaptureFlow:Z

    .line 218
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsPeriscopeLensSupport(Ljava/lang/Object;)Z

    return-void
.end method

.method abstract buildDualCamCalibrationSize(Ljava/lang/Object;)Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/util/Size;"
        }
    .end annotation
.end method

.method abstract buildExposureCompensationStep(Ljava/lang/Object;)Landroid/util/Rational;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/util/Rational;"
        }
    .end annotation
.end method

.method abstract buildFovCropRegion(Ljava/lang/Object;)Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation
.end method

.method abstract buildHumanDetectionSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsAutoExposureLockSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsBGServiceModeSupport(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsDspSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsFakeRAWRAWCameraSupport(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsFakeRAWYUVCameraSupport(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsHighSpeedVideoSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsLogicalCameraSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsMacroTorchSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsMultiDualCamLogicalSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsMultiDualCamTeleSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsNightHawkSupport(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsPeriscopeLensSupport(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsPortraitEnhanceSupport(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsTeleCameraSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsVideoCameraSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsWideCameraSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildMaxExposureCompensation(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract buildMaxNumOfSupportedFocusAreas(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract buildMaxNumOfSupportedMeteringAreas(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract buildMinExposureCompensation(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract buildPeriscopeCamSupport(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildScreenFlashFireSupport(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildSensorRect(Ljava/lang/Object;)Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation
.end method

.method abstract buildStereoSensorCropRegion(Ljava/lang/Object;)Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation
.end method

.method abstract buildSupport4CellInOneSize(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportMultiZoomSteps(Ljava/lang/Object;)[F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[F"
        }
    .end annotation
.end method

.method abstract buildSupportSatModeSupport(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildSupportSlimBodyFeatureSize(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract buildSupportSlimBodyMode(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildSupportTranFaceDetect(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedAWBModes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedAsdMode(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedDistortionCorrection(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedDualCamPictureSizes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedExposureTimes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedEyeDecetion(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedFaceBeautyFeatures(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedFaceBeautyFeaturesLevelScope(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedFaceBeautyLevels(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedFaceBeautyModes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedFilterIds(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedFlashModes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedFocusDistanceRange(Ljava/lang/Object;)Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedFocusModes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedHdModes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedHighPreviewFPSRanges(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end method

.method abstract buildSupportedHighSpeedSizesAndFPS(Ljava/lang/Object;)Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedHumanEffectModes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedISOValues(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedLuminanceValues(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedMacro(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedManualWBRangeValue(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedMeteringModes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedPhotoHDRModes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedPictureSizes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedPostViewSizes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedPreviewFPSRanges(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end method

.method abstract buildSupportedPreviewSizes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedSMVRMetaDatas(Ljava/lang/Object;)[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[",
            "Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;"
        }
    .end annotation
.end method

.method abstract buildSupportedSTBlurModes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedScreenFlashModes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedShot2Shot(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedStableSuperNight(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildSupportedSuperDefinition(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildSupportedSuperNightModes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedSuperResolution(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildSupportedThumbnailSizes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedTranssionHDR(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedVideoHDRModes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedVideoPortraitLevel(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedVideoSizes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedVsdofLevel(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedZoomRatios(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public get4cellInOneSize()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 377
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->m4CellInOneSize:Ljava/util/List;

    return-object p0
.end method

.method public getDualCamCalibrationSize()Landroid/util/Size;
    .locals 0

    .line 486
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mDualCamCalibrationSize:Landroid/util/Size;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExposureCompensationStep()Landroid/util/Rational;
    .locals 0

    .line 451
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mExposureCompensationStep:Landroid/util/Rational;

    return-object p0
.end method

.method public getMaxExposureCompensation()I
    .locals 0

    .line 441
    iget p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMaxExposureCompensation:I

    return p0
.end method

.method public getMaxNumOfFocusAreas()I
    .locals 0

    .line 347
    iget p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMaxNumOfFocusAreas:I

    return p0
.end method

.method public getMaxNumOfMeteringAreas()I
    .locals 0

    .line 352
    iget p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMaxNumOfMeteringAreas:I

    return p0
.end method

.method public getMinExposureCompensation()I
    .locals 0

    .line 446
    iget p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMinExposureCompensation:I

    return p0
.end method

.method public getSensorRect()Landroid/graphics/Rect;
    .locals 0

    .line 600
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSensorRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getStereoSensorCropRegion()Landroid/graphics/Rect;
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mStereoSensorCropRegion:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSupportFakeDualCamera()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "off"

    .line 534
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFakeRAW_RAW_Support:Z

    if-eqz v1, :cond_0

    const-string p0, "raw_raw"

    .line 536
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 537
    :cond_0
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFakeRAW_YUV_Support:Z

    if-eqz p0, :cond_1

    const-string p0, "raw_yuv"

    .line 538
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getSupportSTBlurModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 575
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSTBlurModes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedAWBMode()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 570
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedAWBModes:Ljava/util/List;

    return-object p0
.end method

.method public getSupportedAsdModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportAsdMode:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedDistortionCorrection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 585
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedDistortionCorrection:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedDualCamPictureSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedDualCamPictureSizes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedExposureTimes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 641
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedExposureTimes:Ljava/util/List;

    return-object p0
.end method

.method public getSupportedEyeDetection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 631
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportEyeDetection:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedFaceBeautyFeaturesLevelScope()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportFaceBeautyFeaturesLevelScope:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedFaceBeautyLevels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportFaceBeautyLevels:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedFaceBeautyModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportFaceBeautyModes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedFilterIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 411
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportFilterIds:Ljava/util/List;

    return-object p0
.end method

.method public getSupportedFlashModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedFlashModes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedFocusDistanceRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 651
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedFocusDistanceRange:Landroid/util/Range;

    return-object p0
.end method

.method public getSupportedFocusModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedFocusModes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedHighSpeedFpsRanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedHighPreviewFPSRange:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 611
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedHighPreviewFPSRange:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportedISOValues()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 646
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedISOValues:Ljava/util/List;

    return-object p0
.end method

.method public getSupportedLuminanceScope()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 545
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportLuminanceValues:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedManualWBRangeValue()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 476
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportManualWBRangeValue:Ljava/util/List;

    return-object p0
.end method

.method public getSupportedMeteringModes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 656
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedMeteringModes:Ljava/util/List;

    return-object p0
.end method

.method public getSupportedPhotoHDRModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPhotoHDRModes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedPictureSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPictureSizes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedPostViewSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPostViewSizes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedPreviewFPSRanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPreviewFPSRange:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedPreviewSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPreviewSizes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedSMVRRequestParams(I)[I
    .locals 5

    .line 618
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSMVRMetaDatas:[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 622
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 623
    iget v4, v3, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->fpsMax:I

    if-ne v4, p1, :cond_1

    .line 624
    invoke-virtual {v3}, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->toRequestParams()[I

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getSupportedScreenFlashModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedScreenFlashModes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedShot2Shot()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 550
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportShot2Shot:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedSuperNightMode()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 560
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSuperNightModes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedThumbnailSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedThumbnailSizes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedTranssionHDR()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportTranssionHDR:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedVideoHDRModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedVideoHDRModes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedVideoPortraitLevel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 636
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportVideoPortraitLevel:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedVideoSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedVideoSizes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedVsdofLevel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 471
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportVsdofLevel:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedZoomRatios()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedZoomRatios:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isAutoExposureLockSupported()Z
    .locals 0

    .line 436
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsAutoExposureLockSupported:Z

    return p0
.end method

.method public isBgServiceModeSupport()Z
    .locals 0

    .line 580
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsBGServiceModeSupport:Z

    return p0
.end method

.method public isDspSupport()Z
    .locals 0

    .line 387
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mDspSupport:Z

    return p0
.end method

.method public isFakeDualLensSupport()Z
    .locals 1

    .line 523
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFakeRAW_RAW_Support:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFakeRAW_YUV_Support:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isHighSpeedVideoSupport()Z
    .locals 0

    .line 605
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mHighSpeedVideoSupport:Z

    return p0
.end method

.method public isHumanDetectionSupport()Z
    .locals 0

    .line 671
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mHumanDetectSupport:Z

    return p0
.end method

.method public isMacroTorchSupport()Z
    .locals 0

    .line 392
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMacroTorchSupport:Z

    return p0
.end method

.method public isMultiDualCamTeleSupport()Z
    .locals 0

    .line 514
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMultiDualCamTeleSupport:Z

    return p0
.end method

.method public isNightHawkModeSupport()Z
    .locals 0

    .line 661
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportNightHawkMode:Z

    return p0
.end method

.method public isPeriscopeCamSupport()Z
    .locals 0

    .line 700
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mPeriscopeCamSupport:Z

    return p0
.end method

.method public isPortraitModeEnhanceSupport()Z
    .locals 0

    .line 666
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportPortraitEnhance:Z

    return p0
.end method

.method public isSatModeSupport()Z
    .locals 0

    .line 694
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSatModeSupport:Z

    return p0
.end method

.method public isScreenFlashFireSupport()Z
    .locals 0

    .line 590
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mScreenFlashFireSupport:Z

    return p0
.end method

.method public isSupportedStableSuperNightMode()Z
    .locals 0

    .line 565
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportStableSuperNight:Z

    return p0
.end method

.method public isSupportedSuperDefinition()Z
    .locals 0

    .line 426
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSuperDefinition:Z

    return p0
.end method

.method public isSupportedSuperResolution()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTeleCameraSupport()Z
    .locals 0

    .line 504
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mTeleCameraSupport:Z

    return p0
.end method

.method public isVideoCameraSupport()Z
    .locals 0

    .line 382
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mVideoCameraSupport:Z

    return p0
.end method

.method public isWideCameraSupport()Z
    .locals 0

    .line 499
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mWideCameraSupport:Z

    return p0
.end method

.method public usePreAECaptureFlow()Z
    .locals 0

    .line 705
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mUsePreAECaptureFlow:Z

    return p0
.end method

.method abstract usePreAECaptureFlow(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
