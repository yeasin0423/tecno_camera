.class public abstract Lcom/transsion/camera/adapter/CameraParameters;
.super Ljava/lang/Object;
.source "CameraParameters.java"


# static fields
.field static MAX_IMAGE_NUMBER:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAWBLockStatus:Z

.field private mAWBMode:Ljava/lang/String;

.field private mAeLock:Z

.field private mAiMoonMode:I

.field private mAlgorithmMigrate:Z

.field private mAntiVideo:Ljava/lang/String;

.field private mAsdIsp:[I

.field private mAsdMode:I

.field private mAutoWatermarkMode:Ljava/lang/String;

.field private mBGImageReaderId:I

.field private mBGServiceEnable:Z

.field private mBWConvertEnable:Z

.field private mBWPortraitEnable:Z

.field private mCCUFlowEnable:Z

.field private mDataFlowType:I

.field private mDenoiseMode:I

.field private mDistortionCorrectionMode:I

.field private mDistortionCorrectionPreviewEnable:Ljava/lang/String;

.field private mExposureCompensation:I

.field private mExposureTime:J

.field private mEyeDetection:Ljava/lang/String;

.field private mFaceBeautyFeaturesLevel:[I

.field private mFaceBeautyLevel:Ljava/lang/String;

.field private mFaceBeautyMode:Ljava/lang/String;

.field private mFakeDualLensMode:I

.field private mFilterId:I

.field private mFlashMode:Ljava/lang/String;

.field private mFocusAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusDistance:F

.field private mFocusMode:Ljava/lang/String;

.field private mGenderAttributeValue:Ljava/lang/String;

.field private mHdMode:Ljava/lang/String;

.field private mHighFpsMode:Ljava/lang/String;

.field private mHumanDetection:I

.field private mHumanEffectMode:Ljava/lang/String;

.field private mISOValue:I

.field private mJpegOrientation:I

.field private mJpegQuality:I

.field private mLocation:Landroid/location/Location;

.field private mLowLightMode:I

.field private mLuminanceValue:I

.field private mMacroLampValue:I

.field private mManualAWBValue:Ljava/lang/String;

.field private mMeteringAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteringMode:Ljava/lang/String;

.field private mMiddleNightMode:I

.field private mMirrorEnable:Z

.field private mMoonDetectionMode:I

.field private mMultiFaceBeautyMode:Ljava/lang/String;

.field private mNeedFocusModeAuto:Z

.field private mNightHawkMode:I

.field private mNightMode:I

.field private mOverrideSensorRect:Landroid/graphics/Rect;

.field private mPhotoHDRMode:Ljava/lang/String;

.field private mPictureSize:Landroid/util/Size;

.field private mPortraitMode:I

.field private mPortraitModeEnhanceMode:Ljava/lang/String;

.field private mPostViewSize:Landroid/util/Size;

.field private mPreviewFPSRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewSize:Landroid/util/Size;

.field private mQuickPreviewEnable:Z

.field private mRTDofEnable:Z

.field private mRecordingHint:Z

.field private mSMVRRequestParams:[I

.field private mSTBlurMode:I

.field private mSatPictureSize:Landroid/util/Size;

.field private mSceneMode:Ljava/lang/String;

.field private mScreenFlashMode:Ljava/lang/String;

.field private mShot2ShotMode:I

.field private mSlimBodyLevels:[I

.field private mSlimBodyMode:I

.field private mSuperDefinitionMode:I

.field private mSuperNightAlgoType:Ljava/lang/String;

.field private mSuperNightFilterId:I

.field private mSuperNightMode:Ljava/lang/String;

.field private mSuperResolutionMode:I

.field private mThumbnailSize:Landroid/util/Size;

.field private mTranFaceDetectMode:I

.field private mTranssionCameraModeEnable:I

.field private mTranssionHDR:I

.field private mTranssionPluginEnable:I

.field private mVideoHDRMode:Ljava/lang/String;

.field private mVideoInterpolationEnable:I

.field private mVideoOrientation:I

.field private mVideoPortraitLevel:I

.field private mVideoPortraitMode:I

.field private mVideoStabilizationEnable:Z

.field private mVsdofLevel:Ljava/lang/String;

.field private mWaterMarkParameterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;",
            ">;"
        }
    .end annotation
.end field

.field private mZSLEnable:Z

.field private mZoomRatio:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraParameters"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x1

    .line 32
    sput v0, Lcom/transsion/camera/adapter/CameraParameters;->MAX_IMAGE_NUMBER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDataFlowType:I

    const/4 v1, 0x0

    .line 50
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRecordingHint:Z

    .line 53
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mOverrideSensorRect:Landroid/graphics/Rect;

    .line 54
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNeedFocusModeAuto:Z

    const-string v2, "4"

    .line 59
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVsdofLevel:Ljava/lang/String;

    const/16 v2, 0x64

    .line 78
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZoomRatio:I

    .line 79
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoStabilizationEnable:Z

    .line 80
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMirrorEnable:Z

    .line 81
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWPortraitEnable:Z

    .line 82
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWConvertEnable:Z

    .line 83
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mQuickPreviewEnable:Z

    .line 84
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCCUFlowEnable:Z

    .line 85
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionPluginEnable:I

    .line 86
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoInterpolationEnable:I

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mWaterMarkParameterList:Ljava/util/List;

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringAreas:Ljava/util/List;

    .line 93
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusAreas:Ljava/util/List;

    const/4 v2, -0x1

    .line 95
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mISOValue:I

    const-wide/16 v2, -0x1

    .line 96
    iput-wide v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureTime:J

    const/4 v2, 0x0

    .line 97
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusDistance:F

    const-string v2, "auto"

    .line 98
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringMode:Ljava/lang/String;

    .line 100
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mJpegQuality:I

    .line 103
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZSLEnable:Z

    .line 104
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPortraitMode:I

    const-string v2, "None"

    .line 108
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoType:Ljava/lang/String;

    .line 109
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRTDofEnable:Z

    .line 113
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mShot2ShotMode:I

    .line 114
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDistortionCorrectionMode:I

    .line 117
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAWBLockStatus:Z

    .line 123
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurMode:I

    .line 125
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGServiceEnable:Z

    .line 126
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGImageReaderId:I

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLocation:Landroid/location/Location;

    .line 132
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionCameraModeEnable:I

    .line 134
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSMVRRequestParams:[I

    return-void
.end method


# virtual methods
.method public algorithmMigrate()Z
    .locals 0

    .line 448
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAlgorithmMigrate:Z

    return p0
.end method

.method public clearAll()V
    .locals 5

    const/4 v0, 0x1

    .line 146
    iput v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDataFlowType:I

    const/4 v1, 0x0

    .line 147
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodyLevels:[I

    const/4 v2, 0x0

    .line 148
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodyMode:I

    .line 149
    sput v0, Lcom/transsion/camera/adapter/CameraParameters;->MAX_IMAGE_NUMBER:I

    .line 150
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewSize:Landroid/util/Size;

    .line 151
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPictureSize:Landroid/util/Size;

    .line 152
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostViewSize:Landroid/util/Size;

    .line 153
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mThumbnailSize:Landroid/util/Size;

    .line 155
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashMode:Ljava/lang/String;

    .line 156
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusMode:Ljava/lang/String;

    .line 157
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPhotoHDRMode:Ljava/lang/String;

    .line 158
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoHDRMode:Ljava/lang/String;

    .line 159
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyMode:Ljava/lang/String;

    .line 160
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMultiFaceBeautyMode:Ljava/lang/String;

    .line 161
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyLevel:Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyFeaturesLevel:[I

    .line 163
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLuminanceValue:I

    const-string v3, "4"

    .line 164
    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVsdofLevel:Ljava/lang/String;

    .line 165
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdMode:I

    .line 166
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionHDR:I

    .line 167
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDenoiseMode:I

    .line 168
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightMode:I

    .line 169
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLowLightMode:I

    .line 170
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMiddleNightMode:I

    const/16 v3, 0x64

    .line 171
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZoomRatio:I

    .line 172
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoStabilizationEnable:Z

    .line 173
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMirrorEnable:Z

    .line 174
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWPortraitEnable:Z

    .line 175
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWConvertEnable:Z

    .line 176
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringAreas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 177
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusAreas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 178
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mJpegQuality:I

    .line 179
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mJpegOrientation:I

    .line 180
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZSLEnable:Z

    .line 181
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureCompensation:I

    .line 182
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAeLock:Z

    .line 183
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewFPSRange:Landroid/util/Range;

    .line 184
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSceneMode:Ljava/lang/String;

    .line 185
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mShot2ShotMode:I

    .line 186
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoWatermarkMode:Ljava/lang/String;

    .line 187
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mWaterMarkParameterList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 188
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAntiVideo:Ljava/lang/String;

    .line 189
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenFlashMode:Ljava/lang/String;

    .line 190
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionPluginEnable:I

    .line 191
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRecordingHint:Z

    .line 192
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFilterId:I

    .line 193
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightFilterId:I

    .line 194
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mOverrideSensorRect:Landroid/graphics/Rect;

    .line 195
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPortraitMode:I

    .line 196
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHdMode:Ljava/lang/String;

    .line 197
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighFpsMode:Ljava/lang/String;

    .line 198
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightMode:Ljava/lang/String;

    const-string v3, "None"

    .line 199
    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoType:Ljava/lang/String;

    .line 200
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurMode:I

    .line 201
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGServiceEnable:Z

    .line 202
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGImageReaderId:I

    .line 203
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFakeDualLensMode:I

    .line 204
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLocation:Landroid/location/Location;

    .line 205
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDistortionCorrectionMode:I

    .line 206
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperDefinitionMode:I

    .line 207
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperResolutionMode:I

    .line 208
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightHawkMode:I

    .line 209
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMoonDetectionMode:I

    .line 210
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAiMoonMode:I

    .line 211
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoInterpolationEnable:I

    .line 212
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEyeDetection:Ljava/lang/String;

    .line 213
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHumanDetection:I

    .line 214
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranFaceDetectMode:I

    .line 215
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionCameraModeEnable:I

    .line 216
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mQuickPreviewEnable:Z

    .line 217
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCCUFlowEnable:Z

    .line 218
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSMVRRequestParams:[I

    .line 219
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPortraitMode:I

    .line 220
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAlgorithmMigrate:Z

    .line 221
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMacroLampValue:I

    const/4 v0, -0x1

    .line 222
    iput v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mISOValue:I

    const-wide/16 v3, -0x1

    .line 223
    iput-wide v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureTime:J

    const/4 v0, 0x0

    .line 224
    iput v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusDistance:F

    const-string v0, "auto"

    .line 225
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringMode:Ljava/lang/String;

    .line 226
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAWBMode:Ljava/lang/String;

    .line 227
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPortraitModeEnhanceMode:Ljava/lang/String;

    .line 228
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGenderAttributeValue:Ljava/lang/String;

    .line 229
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdIsp:[I

    .line 230
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHumanEffectMode:Ljava/lang/String;

    .line 231
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNeedFocusModeAuto:Z

    .line 232
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSatPictureSize:Landroid/util/Size;

    return-void
.end method

.method public enableBGServiceMode(Z)V
    .locals 0

    .line 857
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGServiceEnable:Z

    return-void
.end method

.method public enableBWConvert(Z)V
    .locals 0

    .line 555
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWConvertEnable:Z

    return-void
.end method

.method public enableMirror(Z)V
    .locals 0

    .line 539
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMirrorEnable:Z

    return-void
.end method

.method public getAWBLockStatus()Z
    .locals 0

    .line 805
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAWBLockStatus:Z

    return p0
.end method

.method public getAWBMode()Ljava/lang/String;
    .locals 0

    .line 789
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAWBMode:Ljava/lang/String;

    return-object p0
.end method

.method public getAeLock()Z
    .locals 0

    .line 411
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAeLock:Z

    return p0
.end method

.method public getAiMoonMode()I
    .locals 0

    .line 965
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAiMoonMode:I

    return p0
.end method

.method public getAntiVideoMode()Ljava/lang/String;
    .locals 0

    .line 757
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAntiVideo:Ljava/lang/String;

    return-object p0
.end method

.method public getAutoWaterMarkParameterList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;",
            ">;"
        }
    .end annotation

    .line 749
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mWaterMarkParameterList:Ljava/util/List;

    return-object p0
.end method

.method public getAutoWatermarkMode()Ljava/lang/String;
    .locals 0

    .line 741
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoWatermarkMode:Ljava/lang/String;

    return-object p0
.end method

.method public getBGImageReaderId()I
    .locals 0

    .line 869
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGImageReaderId:I

    return p0
.end method

.method public getBodySlimMode()I
    .locals 0

    .line 646
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodyMode:I

    return p0
.end method

.method public getDataFlowType()I
    .locals 0

    .line 279
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDataFlowType:I

    return p0
.end method

.method public getDistortionCorrectionMode()I
    .locals 0

    .line 725
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDistortionCorrectionMode:I

    return p0
.end method

.method public getDistortionCorrectionPreviewEnablet()Ljava/lang/String;
    .locals 0

    .line 733
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDistortionCorrectionPreviewEnable:Ljava/lang/String;

    return-object p0
.end method

.method public getExposureCompensation()I
    .locals 0

    .line 403
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureCompensation:I

    return p0
.end method

.method public getExposureTime()J
    .locals 2

    .line 468
    iget-wide v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureTime:J

    return-wide v0
.end method

.method public getFaceBeautyFeaturesLevel()[I
    .locals 0

    .line 518
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyFeaturesLevel:[I

    return-object p0
.end method

.method public getFaceBeautyLevel()Ljava/lang/String;
    .locals 0

    .line 510
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyLevel:Ljava/lang/String;

    return-object p0
.end method

.method public getFaceBeautyMode()Ljava/lang/String;
    .locals 0

    .line 502
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyMode:Ljava/lang/String;

    return-object p0
.end method

.method public getFakeDualLensMode()I
    .locals 0

    .line 877
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFakeDualLensMode:I

    return p0
.end method

.method public getFlashMode()Ljava/lang/String;
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashMode:Ljava/lang/String;

    return-object p0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;"
        }
    .end annotation

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusAreas:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getFocusDistance()F
    .locals 0

    .line 476
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusDistance:F

    return p0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusMode:Ljava/lang/String;

    return-object p0
.end method

.method public getGenderAttributeValue()Ljava/lang/String;
    .locals 0

    .line 981
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGenderAttributeValue:Ljava/lang/String;

    return-object p0
.end method

.method public getHdMode()Ljava/lang/String;
    .locals 0

    .line 821
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHdMode:Ljava/lang/String;

    return-object p0
.end method

.method public getHighFpsMode()Ljava/lang/String;
    .locals 0

    .line 829
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighFpsMode:Ljava/lang/String;

    return-object p0
.end method

.method public getHumanEffectMode()Ljava/lang/String;
    .locals 0

    .line 989
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHumanEffectMode:Ljava/lang/String;

    return-object p0
.end method

.method public getISOValue()I
    .locals 0

    .line 460
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mISOValue:I

    return p0
.end method

.method public getJpegGPSLocation()Landroid/location/Location;
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLocation:Landroid/location/Location;

    return-object p0
.end method

.method public getJpegOrientation()I
    .locals 0

    .line 306
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mJpegOrientation:I

    return p0
.end method

.method public getJpegQuality()I
    .locals 0

    .line 294
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mJpegQuality:I

    return p0
.end method

.method public getLuminanceValue()I
    .locals 0

    .line 781
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLuminanceValue:I

    return p0
.end method

.method public getMacroLampValue()I
    .locals 0

    .line 941
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMacroLampValue:I

    return p0
.end method

.method public getManualAWBValue()Ljava/lang/String;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mManualAWBValue:Ljava/lang/String;

    return-object p0
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;"
        }
    .end annotation

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringAreas:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getMeteringMode()Ljava/lang/String;
    .locals 0

    .line 486
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringMode:Ljava/lang/String;

    return-object p0
.end method

.method public getMiddleNightMode()I
    .locals 0

    .line 670
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMiddleNightMode:I

    return p0
.end method

.method public getMoonDetection()I
    .locals 0

    .line 957
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMoonDetectionMode:I

    return p0
.end method

.method public getMultiFaceBeautyMode()Ljava/lang/String;
    .locals 0

    .line 506
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMultiFaceBeautyMode:Ljava/lang/String;

    return-object p0
.end method

.method public getNightHawkMode()I
    .locals 0

    .line 949
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightHawkMode:I

    return p0
.end method

.method public getOverrideSensorRect()Landroid/graphics/Rect;
    .locals 0

    .line 444
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mOverrideSensorRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPhotoHDRMode()Ljava/lang/String;
    .locals 0

    .line 589
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPhotoHDRMode:Ljava/lang/String;

    return-object p0
.end method

.method public getPictureSize()Landroid/util/Size;
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPictureSize:Landroid/util/Size;

    return-object p0
.end method

.method public getPortraitMode()I
    .locals 0

    .line 813
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPortraitMode:I

    return p0
.end method

.method public getPortraitModeEnhanceMode()Ljava/lang/String;
    .locals 0

    .line 973
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPortraitModeEnhanceMode:Ljava/lang/String;

    return-object p0
.end method

.method public getPostViewSize()Landroid/util/Size;
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostViewSize:Landroid/util/Size;

    return-object p0
.end method

.method public getPreviewFPSRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 419
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewFPSRange:Landroid/util/Range;

    return-object p0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method public getSMVRRequestParams()[I
    .locals 0

    .line 909
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSMVRRequestParams:[I

    return-object p0
.end method

.method public getSTBlurMode()I
    .locals 0

    .line 853
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurMode:I

    return p0
.end method

.method public getSatPictureSize()Landroid/util/Size;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSatPictureSize:Landroid/util/Size;

    return-object p0
.end method

.method public getSceneMode()Ljava/lang/String;
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSceneMode:Ljava/lang/String;

    return-object p0
.end method

.method public getScreenFlashMode()Ljava/lang/String;
    .locals 0

    .line 765
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenFlashMode:Ljava/lang/String;

    return-object p0
.end method

.method public getShot2ShotMode()I
    .locals 0

    .line 717
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mShot2ShotMode:I

    return p0
.end method

.method public getSlimBodyLevels()[I
    .locals 0

    .line 642
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodyLevels:[I

    return-object p0
.end method

.method public getSuperDefinitionMode()I
    .locals 0

    .line 686
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperDefinitionMode:I

    return p0
.end method

.method public getSuperNightAlgoType()Ljava/lang/String;
    .locals 0

    .line 845
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoType:Ljava/lang/String;

    return-object p0
.end method

.method public getSuperNightMode()Ljava/lang/String;
    .locals 0

    .line 837
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightMode:Ljava/lang/String;

    return-object p0
.end method

.method public getSuperResolutionMode()I
    .locals 0

    .line 694
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperResolutionMode:I

    return p0
.end method

.method public getThumbnailSize()Landroid/util/Size;
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mThumbnailSize:Landroid/util/Size;

    return-object p0
.end method

.method public getTranFaceDetectMode()I
    .locals 0

    .line 893
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranFaceDetectMode:I

    return p0
.end method

.method public getTranssionAsdMode()I
    .locals 0

    .line 606
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdMode:I

    return p0
.end method

.method public getTranssionCameraModeEnable()I
    .locals 0

    .line 901
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionCameraModeEnable:I

    return p0
.end method

.method public getTranssionCusIspAsd()[I
    .locals 0

    .line 614
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdIsp:[I

    return-object p0
.end method

.method public getTranssionEyeDetection()Ljava/lang/String;
    .locals 0

    .line 917
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEyeDetection:Ljava/lang/String;

    return-object p0
.end method

.method public getTranssionFilterId()I
    .locals 0

    .line 622
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFilterId:I

    return p0
.end method

.method public getTranssionHDR()I
    .locals 0

    .line 707
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionHDR:I

    return p0
.end method

.method public getTranssionHumanDetection()I
    .locals 0

    .line 925
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHumanDetection:I

    return p0
.end method

.method public getTranssionLowLightMode()I
    .locals 0

    .line 662
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLowLightMode:I

    return p0
.end method

.method public getTranssionNightMode()I
    .locals 0

    .line 654
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightMode:I

    return p0
.end method

.method public getTranssionPluginEnable()I
    .locals 0

    .line 773
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionPluginEnable:I

    return p0
.end method

.method public getTranssionSmartDenoise()I
    .locals 0

    .line 678
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDenoiseMode:I

    return p0
.end method

.method public getTranssionSuperNightFilterId()I
    .locals 0

    .line 630
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightFilterId:I

    return p0
.end method

.method public getVideoHDRMode()Ljava/lang/String;
    .locals 0

    .line 598
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoHDRMode:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoInterpolationEnable()I
    .locals 0

    .line 885
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoInterpolationEnable:I

    return p0
.end method

.method public getVideoOrientation()I
    .locals 0

    .line 310
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoOrientation:I

    return p0
.end method

.method public getVideoPortraitLevel()I
    .locals 0

    .line 535
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPortraitLevel:I

    return p0
.end method

.method public getVideoPortraitMode()I
    .locals 0

    .line 933
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPortraitMode:I

    return p0
.end method

.method public getVsdofLevel()Ljava/lang/String;
    .locals 0

    .line 531
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVsdofLevel:Ljava/lang/String;

    return-object p0
.end method

.method public getZoomRatio()I
    .locals 0

    .line 371
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZoomRatio:I

    return p0
.end method

.method public isBWConvertEnable()Z
    .locals 0

    .line 559
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWConvertEnable:Z

    return p0
.end method

.method public isBWPortraitEnable()Z
    .locals 0

    .line 551
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWPortraitEnable:Z

    return p0
.end method

.method public isBgServiceEnable()Z
    .locals 0

    .line 861
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGServiceEnable:Z

    return p0
.end method

.method public isCCUFlowEnable()Z
    .locals 0

    .line 571
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCCUFlowEnable:Z

    return p0
.end method

.method public isMirrorEnable()Z
    .locals 0

    .line 543
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMirrorEnable:Z

    return p0
.end method

.method public isQuickPreviewEnable()Z
    .locals 0

    .line 563
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mQuickPreviewEnable:Z

    return p0
.end method

.method public isRTDofEnable()Z
    .locals 0

    .line 387
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRTDofEnable:Z

    return p0
.end method

.method public isRecordingHint()Z
    .locals 0

    .line 436
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRecordingHint:Z

    return p0
.end method

.method public isVideoStabilizationEnable()Z
    .locals 0

    .line 395
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoStabilizationEnable:Z

    return p0
.end method

.method public isZSLEnable()Z
    .locals 0

    .line 379
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZSLEnable:Z

    return p0
.end method

.method public needFocusModeAuto()Z
    .locals 0

    .line 997
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNeedFocusModeAuto:Z

    return p0
.end method

.method public overrideSensorRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mOverrideSensorRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setAWBLockStatus(Z)V
    .locals 0

    .line 801
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAWBLockStatus:Z

    return-void
.end method

.method public setAWBMode(Ljava/lang/String;)V
    .locals 0

    .line 785
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAWBMode:Ljava/lang/String;

    return-void
.end method

.method public setAeLock(Z)V
    .locals 0

    .line 407
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAeLock:Z

    return-void
.end method

.method public setAntiVideoMode(Ljava/lang/String;)V
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAntiVideo:Ljava/lang/String;

    return-void
.end method

.method public setAutoWaterMarkParameterList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;",
            ">;)V"
        }
    .end annotation

    .line 745
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mWaterMarkParameterList:Ljava/util/List;

    return-void
.end method

.method public setAutoWatermarkMode(Ljava/lang/String;)V
    .locals 0

    .line 737
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoWatermarkMode:Ljava/lang/String;

    return-void
.end method

.method public setBGImageReaderId(I)V
    .locals 0

    .line 865
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGImageReaderId:I

    return-void
.end method

.method public setCCUFlow(Z)V
    .locals 0

    .line 575
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCCUFlowEnable:Z

    return-void
.end method

.method public setDataFlowType(I)V
    .locals 0

    .line 276
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDataFlowType:I

    return-void
.end method

.method public setDistortionCorrectionMode(I)V
    .locals 0

    .line 721
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDistortionCorrectionMode:I

    return-void
.end method

.method public setDistortionCorrectionPreviewEnable(Ljava/lang/String;)V
    .locals 0

    .line 729
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDistortionCorrectionPreviewEnable:Ljava/lang/String;

    return-void
.end method

.method public setExposureCompensation(I)V
    .locals 0

    .line 399
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureCompensation:I

    return-void
.end method

.method public setExposureTime(J)V
    .locals 0

    .line 464
    iput-wide p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureTime:J

    return-void
.end method

.method public setFaceBeautyFeaturesLevel([I)V
    .locals 0

    .line 514
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyFeaturesLevel:[I

    return-void
.end method

.method public setFaceBeautyLevel(Ljava/lang/String;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyLevel:Ljava/lang/String;

    return-void
.end method

.method public setFaceBeautyMode(Ljava/lang/String;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyMode:Ljava/lang/String;

    return-void
.end method

.method public setFakeDualLensMode(I)V
    .locals 0

    .line 873
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFakeDualLensMode:I

    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashMode:Ljava/lang/String;

    return-void
.end method

.method public setFocusAreas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;)V"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 333
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusAreas:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setFocusDistance(F)V
    .locals 0

    .line 472
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusDistance:F

    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusMode:Ljava/lang/String;

    return-void
.end method

.method public setFocusModeAuto(Z)V
    .locals 0

    .line 993
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNeedFocusModeAuto:Z

    return-void
.end method

.method public setGenderAttributeValue(Ljava/lang/String;)V
    .locals 0

    .line 977
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGenderAttributeValue:Ljava/lang/String;

    return-void
.end method

.method public setHighFpsMode(Ljava/lang/String;)V
    .locals 0

    .line 825
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighFpsMode:Ljava/lang/String;

    return-void
.end method

.method public setISOValue(I)V
    .locals 0

    .line 456
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mISOValue:I

    return-void
.end method

.method public setJpegGPSLocation(Landroid/location/Location;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLocation:Landroid/location/Location;

    return-void
.end method

.method public setJpegOrientation(I)V
    .locals 0

    .line 298
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mJpegOrientation:I

    return-void
.end method

.method public setLuminanceValue(I)V
    .locals 0

    .line 777
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLuminanceValue:I

    return-void
.end method

.method public setMacroLampValue(I)V
    .locals 0

    .line 937
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMacroLampValue:I

    return-void
.end method

.method public setManualAWBValue(Ljava/lang/String;)V
    .locals 0

    .line 793
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mManualAWBValue:Ljava/lang/String;

    return-void
.end method

.method public setMeteringAreas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;)V"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringAreas:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setMeteringMode(Ljava/lang/String;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringMode:Ljava/lang/String;

    return-void
.end method

.method public setMiddleNightMode(I)V
    .locals 0

    .line 666
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMiddleNightMode:I

    return-void
.end method

.method public setMultiFaceBeautyMode(Ljava/lang/String;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMultiFaceBeautyMode:Ljava/lang/String;

    return-void
.end method

.method public setNightHawkMode(I)V
    .locals 0

    .line 945
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightHawkMode:I

    return-void
.end method

.method public setPhotoHDRMode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "on"

    .line 579
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mtk_hdr"

    .line 580
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSceneMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "auto"

    .line 582
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSceneMode(Ljava/lang/String;)V

    .line 584
    :goto_0
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPhotoHDRMode:Ljava/lang/String;

    return-void
.end method

.method public setPictureSize(Landroid/util/Size;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPictureSize:Landroid/util/Size;

    return-void
.end method

.method public setPortraitMode(I)V
    .locals 0

    .line 809
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPortraitMode:I

    return-void
.end method

.method public setPortraitModeEnhanceMode(Ljava/lang/String;)V
    .locals 0

    .line 969
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPortraitModeEnhanceMode:Ljava/lang/String;

    return-void
.end method

.method public setPostViewSize(Landroid/util/Size;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostViewSize:Landroid/util/Size;

    return-void
.end method

.method public setPreviewFPSRange(Landroid/util/Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 415
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewFPSRange:Landroid/util/Range;

    return-void
.end method

.method public setPreviewSize(Landroid/util/Size;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewSize:Landroid/util/Size;

    return-void
.end method

.method public setQuickPreview(Z)V
    .locals 0

    .line 567
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mQuickPreviewEnable:Z

    return-void
.end method

.method public setRTDofEnable(Z)V
    .locals 0

    .line 384
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRTDofEnable:Z

    return-void
.end method

.method public setRecordingHint(Z)V
    .locals 0

    .line 432
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRecordingHint:Z

    return-void
.end method

.method public setSMVRRequestParams([I)V
    .locals 0

    .line 905
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSMVRRequestParams:[I

    return-void
.end method

.method public setSTBlurMode(I)V
    .locals 0

    .line 849
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurMode:I

    return-void
.end method

.method public setSatPictureSize(Landroid/util/Size;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSatPictureSize:Landroid/util/Size;

    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSceneMode:Ljava/lang/String;

    return-void
.end method

.method public setScreenFlashMode(Ljava/lang/String;)V
    .locals 0

    .line 761
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenFlashMode:Ljava/lang/String;

    return-void
.end method

.method public setShot2ShotMode(I)V
    .locals 0

    .line 713
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mShot2ShotMode:I

    return-void
.end method

.method public setSlimBodyLevels([I)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodyLevels:[I

    return-void
.end method

.method public setSlimBodyMode(I)V
    .locals 0

    .line 638
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodyMode:I

    return-void
.end method

.method public setSuperDefinitionMode(I)V
    .locals 0

    .line 682
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperDefinitionMode:I

    return-void
.end method

.method public setSuperNightAlgoType(Ljava/lang/String;)V
    .locals 0

    .line 841
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoType:Ljava/lang/String;

    return-void
.end method

.method public setSuperNightMode(Ljava/lang/String;)V
    .locals 0

    .line 833
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightMode:Ljava/lang/String;

    return-void
.end method

.method public setSuperResolutionMode(I)V
    .locals 0

    .line 690
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperResolutionMode:I

    return-void
.end method

.method public setThumbnailSize(Landroid/util/Size;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mThumbnailSize:Landroid/util/Size;

    return-void
.end method

.method public setTranFaceDetectMode(I)V
    .locals 0

    .line 889
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranFaceDetectMode:I

    return-void
.end method

.method public setTranssionAsdMode(I)V
    .locals 0

    .line 602
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdMode:I

    return-void
.end method

.method public setTranssionCameraModeEnable(I)V
    .locals 0

    .line 897
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionCameraModeEnable:I

    return-void
.end method

.method public setTranssionCusIspAsd([I)V
    .locals 0

    .line 610
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdIsp:[I

    return-void
.end method

.method public setTranssionEyeDetection(Ljava/lang/String;)V
    .locals 0

    .line 913
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEyeDetection:Ljava/lang/String;

    return-void
.end method

.method public setTranssionHDR(I)V
    .locals 2

    .line 698
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "hdr"

    .line 699
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSceneMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "auto"

    .line 701
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSceneMode(Ljava/lang/String;)V

    .line 703
    :goto_0
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionHDR:I

    return-void
.end method

.method public setTranssionHumanDetection(I)V
    .locals 0

    .line 921
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHumanDetection:I

    return-void
.end method

.method public setTranssionLowLightMode(I)V
    .locals 0

    .line 658
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLowLightMode:I

    return-void
.end method

.method public setTranssionNightMode(I)V
    .locals 0

    .line 650
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightMode:I

    return-void
.end method

.method public setTranssionPluginEnable(I)V
    .locals 0

    .line 769
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionPluginEnable:I

    return-void
.end method

.method public setTranssionSmartDenoise(I)V
    .locals 0

    .line 674
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDenoiseMode:I

    return-void
.end method

.method public setTranssionaFilterId(I)V
    .locals 0

    .line 618
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFilterId:I

    return-void
.end method

.method public setVideoInterpolation(I)V
    .locals 0

    .line 881
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoInterpolationEnable:I

    return-void
.end method

.method public setVideoOrientation(I)V
    .locals 0

    .line 302
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoOrientation:I

    return-void
.end method

.method public setVideoPortraitLevel(I)V
    .locals 0

    .line 527
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPortraitLevel:I

    return-void
.end method

.method public setVideoPortraitMode(I)V
    .locals 0

    .line 929
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPortraitMode:I

    return-void
.end method

.method public setVsdofModeLevel(Ljava/lang/String;)V
    .locals 3

    .line 522
    sget-object v0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVsdofModeLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 523
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVsdofLevel:Ljava/lang/String;

    return-void
.end method

.method public setZSLEnable(Z)V
    .locals 0

    .line 375
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZSLEnable:Z

    return-void
.end method

.method public setZoomRatio(IZ)V
    .locals 1

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 364
    sget-object p0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set invalid value in setZoomRatio: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 367
    :cond_0
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZoomRatio:I

    return-void
.end method
