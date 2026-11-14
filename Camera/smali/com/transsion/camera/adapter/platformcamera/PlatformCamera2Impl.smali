.class public Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;
.super Ljava/lang/Object;
.source "PlatformCamera2Impl.java"

# interfaces
.implements Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;


# static fields
.field private static final DEFAULT_ISO_TABLE:[I

.field private static final FEATURE_VALUE_OFF:[I

.field private static final FEATURE_VALUE_ON:[I

.field private static final NON_ZSL_MODE:[B

.field private static final PREVIEW_SIZE_KEY_VALUE:[I

.field private static final SUPER_NIGHT_MODE_VALUE_OFF:[I

.field private static final SUPER_NIGHT_MODE_VALUE_ON:[I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final ZSL_MODE:[B


# instance fields
.field private mAiMoonMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mAntiVideoSupport:Z

.field private mAsdRequestMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mAutoWatermarkSupport:Z

.field private mAvailableFaceDetection3A:[I

.field private mAvailableKeyTranFaceDetectMode:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mBGServiceSupport:Z

.field private mBWPortraitSupport:Z

.field private mBackFake_RAW_YUV_Support:Z

.field private mBackFake_Second_YUV_Cam_Support:Z

.field private mCCUFlow:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mCaptureResultAsdMode:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mCaptureResultBrightness:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mCaptureResultMoonDetection:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mCaptureResultNightHawk:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mCaptureResultStreamId:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mCusIspAsdRequestMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mDenoiseMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mDofLevelKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mDofPreviewSizeKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mDspSupport:Z

.field private mDualLensWarningKey:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mFake_RAW_RAW_Support:Z

.field private mFlashCustomizedAvailable:Z

.field private mFrontFake_RAW_YUV_Support:Z

.field private mGenderAttributeValueSupport:Z

.field private mHfpsModeSupport:Z

.field private mHumanDetectSupport:Z

.field private mIsAllInitialized:Z

.field private mIsHdModeSupported:Z

.field private mIsMegSuperNightModeSupported:Z

.field private mIsStableSuperNightModeSupported:Z

.field private mIsSuperNightDetectModeSupported:Z

.field private mIsSuperNightModeSupported:Z

.field private mIsVideoMirrorSupport:Z

.field private mKeyAvailable4CellInOneSize:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableAntiVideoModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableAsdMode:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableAutoWaterMarkModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableBWPortraitModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableBgServiceModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableEyeDetection:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableFaceBeautyFeatures:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableFaceBeautyFeaturesLevelScope:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableFaceBeautyLevel:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableFaceBeautyMode:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableFakeDualCamera:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableFilterIds:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableFovCropRegion:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableGenderAttributeValueModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableHfpsMode:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableHumanDetect:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableHumanEffectMode:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableLuminanceValue:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableMaxISO:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableMultiCameraZoomSteps:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field private mKeyAvailableNightHawk:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableOIS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailablePeriscopeCam:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailablePeriscopeLens:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailablePhotoHDRModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailablePortraitModeEnhance:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableSMVRModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableSTBlurModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableSatMode:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableSuperresolution:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableTeleCamera:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableTranMultiDualCam:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableTranssionCameraMode:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableTranssionHDR:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableVideoCamera:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableVideoHDRModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableVideoPortraitLevelModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableVideoPortraitModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableVideoWaterMarkModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableWideCamera:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyDistortionCorrectionAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyMegSuperNightModeSupport:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyMultiCropRegion:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyPortraitModeEnhance:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyPostViewRequestSizeMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyScreenFlashAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyShot2shotAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeySlimBodyFeatures:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeySlimBodyModeSupport:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyStereoSensorCropRegion:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeySuperNightDetectModeSupport:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeySuperNightModeSupport:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeySupportedDofLevel:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeySupportedDualCamCalibSize:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeySupportedDualCamPictures:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeySupportedHdMode:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyThumbnailAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mLogicalCameraSupport:Z

.field private mLowLightHDR:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mLowLightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mMacroTorchSupport:Z

.field private mManualAWBValueKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mMiddleNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mMoonDetectionMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mMultiDualCamLogicalSupport:Z

.field private mMultiDualCamTeleCamSupport:Z

.field private mNightHawkMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mOISSupport:Z

.field private mPeriscopeCamSupport:Z

.field private mPeriscopeLensSupport:Z

.field private mQuickPreview:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyAntiVideoMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyAutoWaterMarkMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyBWConvert:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyBWPortraitMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyBgImageReaderId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyBgPrerelease:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyContinuousShotMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyDistortionCorrection:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyDistortionCorrectionPreview:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyEyeDetection:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyFaceBeautyFeatures:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyFaceBeautyLevel:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyFaceDetection3A:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyFilterId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyGenderAttributeValueMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyHDRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyHdMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyHfpsMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyHumanDetect:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyHumanEffectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyLuminanceValue:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyMacroLampValue:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyMegSuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyMeteringMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[B>;"
        }
    .end annotation
.end field

.field private mRequestKeyMirrorMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyPDAF:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyPortraitMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyRawDualCamera:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeySMVRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeySTBlurMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyScreenFlashMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyShot2Shot:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeySlimBodyLevels:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeySlimBodyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyStableSuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeySuperDefinition:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeySuperNightDetectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeySuperNightFilerId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeySuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeySuperrsolutionMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyTranFaceDetectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyTranssionCameraMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyTranssionPlugin:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyVideoMirrorMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyVideoPortraitLevel:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyVideoPortraitmode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyVideoRotationMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyVideointerpolation:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyYuvDualCamera:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyZSL:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[B>;"
        }
    .end annotation
.end field

.field private mResultKeyAfSearchState:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResultKeyAntiFaceInfoRect:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mResultKeyEyeDetection:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mResultKeyFlashCustomized:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[B>;"
        }
    .end annotation
.end field

.field private mResultKeyHumanDetect:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mResultKeyShot2Shot:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mResultKeyTranFaceInfo:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mSatModeSupport:Z

.field private mSatPictureSize:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mSupportLogicalCameraMode:[I

.field private mTeleCameraSupport:Z

.field private mThumbnailPostViewSupport:Z

.field private mTranssionCameraModeSupport:Z

.field private mTranssionHDR:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mUsePreAeCaptureFlow:Z

.field private mValueStereoCropRegion:Landroid/graphics/Rect;

.field private mVideoCameraSupport:Z

.field private mVideoPortraitSupport:Z

.field private mVideoWatermarkSupport:Z

.field private mVsdofKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mVsdofRTKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mWideCameraSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MTK-PlatformCam"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 41
    sput-object v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_OFF:[I

    new-array v1, v0, [I

    aput v0, v1, v2

    .line 42
    sput-object v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    new-array v1, v0, [I

    aput v0, v1, v2

    .line 112
    sput-object v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SUPER_NIGHT_MODE_VALUE_ON:[I

    new-array v1, v0, [I

    aput v2, v1, v2

    .line 113
    sput-object v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SUPER_NIGHT_MODE_VALUE_OFF:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 148
    fill-array-data v1, :array_0

    sput-object v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->PREVIEW_SIZE_KEY_VALUE:[I

    new-array v1, v0, [B

    aput-byte v2, v1, v2

    .line 290
    sput-object v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->NON_ZSL_MODE:[B

    new-array v1, v0, [B

    aput-byte v0, v1, v2

    .line 291
    sput-object v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->ZSL_MODE:[B

    const/16 v0, 0x16

    new-array v0, v0, [I

    .line 544
    fill-array-data v0, :array_1

    sput-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->DEFAULT_ISO_TABLE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x438
        0x780
    .end array-data

    :array_1
    .array-data 4
        0x32
        0x3c
        0x50
        0x64
        0x7d
        0xa0
        0xc8
        0xfa
        0x140
        0x190
        0x1f4
        0x280
        0x320
        0x3e8
        0x4e2
        0x640
        0x7d0
        0x960
        0xc80
        0xfa0
        0x1388
        0x1900
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsAllInitialized:Z

    .line 100
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsHdModeSupported:Z

    const/4 v1, 0x0

    .line 102
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHdMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 108
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsSuperNightModeSupported:Z

    .line 109
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 119
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsMegSuperNightModeSupported:Z

    .line 120
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMegSuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 125
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsStableSuperNightModeSupported:Z

    .line 126
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyStableSuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 134
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsSuperNightDetectModeSupported:Z

    .line 135
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightDetectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 138
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVsdofKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 139
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDualLensWarningKey:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 140
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDofLevelKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 141
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDofPreviewSizeKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 149
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVsdofRTKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 152
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mValueStereoCropRegion:Landroid/graphics/Rect;

    .line 175
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsVideoMirrorSupport:Z

    .line 235
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyPDAF:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 289
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyZSL:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 301
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAutoWatermarkSupport:Z

    .line 309
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVideoWatermarkSupport:Z

    .line 319
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAntiVideoSupport:Z

    .line 327
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBWPortraitSupport:Z

    .line 335
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMacroTorchSupport:Z

    .line 340
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableWideCamera:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 341
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mWideCameraSupport:Z

    .line 346
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailablePeriscopeLens:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 347
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mPeriscopeLensSupport:Z

    .line 352
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableTeleCamera:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 353
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mTeleCameraSupport:Z

    .line 357
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableOIS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 358
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mOISSupport:Z

    .line 366
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableTranMultiDualCam:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 367
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMultiDualCamLogicalSupport:Z

    .line 368
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMultiDualCamTeleCamSupport:Z

    .line 374
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLogicalCameraSupport:Z

    .line 413
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableBgServiceModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 414
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBgPrerelease:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 415
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBgImageReaderId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 416
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBGServiceSupport:Z

    .line 431
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFakeDualCamera:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 432
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyYuvDualCamera:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 433
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyRawDualCamera:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 434
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFake_RAW_RAW_Support:Z

    .line 435
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFrontFake_RAW_YUV_Support:Z

    .line 436
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBackFake_RAW_YUV_Support:Z

    .line 437
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBackFake_Second_YUV_Cam_Support:Z

    .line 455
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableVideoCamera:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 456
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVideoCameraSupport:Z

    .line 489
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mTranssionCameraModeSupport:Z

    .line 495
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableSMVRModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 588
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mGenderAttributeValueSupport:Z

    .line 609
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mSatModeSupport:Z

    .line 620
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailablePeriscopeCam:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 621
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mPeriscopeCamSupport:Z

    .line 632
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mUsePreAeCaptureFlow:Z

    .line 637
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mManualAWBValueKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    return-void
.end method

.method private static convertFaceBeautyValue(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 1717
    :pswitch_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported face beauty value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    const-string p0, "mild"

    return-object p0

    :pswitch_2
    const-string p0, "contrast_on"

    return-object p0

    :pswitch_3
    const-string p0, "custom"

    return-object p0

    :pswitch_4
    const-string p0, "pre3"

    return-object p0

    :pswitch_5
    const-string p0, "pre2"

    return-object p0

    :pswitch_6
    const-string p0, "pre1"

    return-object p0

    :pswitch_7
    const-string p0, "aiv2"

    return-object p0

    :pswitch_8
    const-string p0, "ai"

    return-object p0

    :pswitch_9
    const-string p0, "on"

    return-object p0

    :pswitch_a
    const-string p0, "off"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static convertHDRVendorValue(I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_5

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    goto :goto_0

    .line 1689
    :cond_2
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported HDR value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_0
    const-string p0, "auto"

    return-object p0

    :cond_4
    :goto_1
    const-string p0, "on"

    return-object p0

    :cond_5
    :goto_2
    const-string p0, "off"

    return-object p0
.end method

.method private getAvailableMaxISO(Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 3

    .line 2722
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableMaxISO:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    .line 2723
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 2724
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAvailableMaxISO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 2731
    array-length p1, p0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 2732
    aget p0, p0, p1

    move v0, p0

    :cond_0
    return v0
.end method

.method private initAvailableKeys(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 11

    .line 661
    const-class v0, [I

    const-string v1, "com.mediatek.hdrfeature.availableHdrModesPhoto"

    invoke-static {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailablePhotoHDRModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "com.mediatek.hdrfeature.availableHdrModesVideo"

    .line 662
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableVideoHDRModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "com.transsion.availableFaceBeautyMode"

    .line 663
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFaceBeautyMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "com.transsion.availableMaxFaceBeautyLevel"

    .line 664
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFaceBeautyLevel:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "com.transsion.availableMaxSensitivity"

    .line 665
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableMaxISO:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "com.transsion.availableslimbodyMode"

    .line 666
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySlimBodyModeSupport:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "com.transsion.slimbodyFeaturesize"

    .line 667
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySlimBodyFeatures:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "com.mediatek.control.capture.availableflipMode"

    .line 668
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "com.transsion.availablevideoflip"

    .line 669
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x1

    .line 670
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsVideoMirrorSupport:Z

    const-string v1, "com.transsion.availableAsdMode"

    .line 671
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableAsdMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "com.transsion.availHdrMode"

    .line 672
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableTranssionHDR:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "com.transsion.availNighthawk"

    .line 673
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableNightHawk:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "com.mediatek.facefeature.availableforceface3a"

    .line 674
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAvailableFaceDetection3A:[I

    const-string v1, "com.mediatek.control.capture.availablepostviewmodes"

    .line 675
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyThumbnailAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 676
    invoke-static {p1, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 677
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mThumbnailPostViewSupport:Z

    const-string v1, "com.mediatek.control.capture.early.notification.support"

    .line 678
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyShot2shotAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "com.transsion.availundistortmode"

    .line 680
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyDistortionCorrectionAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "com.transsion.availwatermarkMode"

    .line 682
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableAutoWaterMarkModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 684
    invoke-static {p1, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 685
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAutoWatermarkSupport:Z

    const-string v1, "com.transsion.availablevideowatermark"

    .line 687
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableVideoWaterMarkModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 688
    invoke-static {p1, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 689
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVideoWatermarkSupport:Z

    const-string v1, "com.transsion.availantivideoMode"

    .line 690
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableAntiVideoModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 691
    invoke-static {p1, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 692
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAntiVideoSupport:Z

    const-string v1, "com.transsion.istrancamera"

    .line 694
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableTranssionCameraMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 695
    invoke-static {p1, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 696
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mTranssionCameraModeSupport:Z

    const-string v1, "com.mediatek.stereofeature.supporteddoflevel"

    .line 697
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySupportedDofLevel:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "com.mediatek.stereofeature.stereosensorcropregion"

    .line 698
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyStereoSensorCropRegion:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 699
    invoke-static {p1, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 700
    array-length v5, v1

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 701
    iget-object v5, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mValueStereoCropRegion:Landroid/graphics/Rect;

    aget v6, v1, v4

    aget v7, v1, v2

    aget v8, v1, v4

    aget v9, v1, v3

    add-int/2addr v8, v9

    aget v9, v1, v2

    const/4 v10, 0x3

    aget v1, v1, v10

    add-int/2addr v9, v1

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    const-string v1, "com.transsion.wideMode"

    .line 703
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableWideCamera:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 704
    invoke-static {p1, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 705
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mWideCameraSupport:Z

    const-string v1, "com.transsion.periscopeLens"

    .line 707
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailablePeriscopeLens:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 708
    invoke-static {p1, v5}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 709
    invoke-static {v5, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mPeriscopeLensSupport:Z

    const-string v5, "com.transsion.teleMode"

    .line 710
    invoke-static {p1, v5, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableTeleCamera:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 711
    invoke-static {p1, v5}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 712
    invoke-static {v5, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mTeleCameraSupport:Z

    const-string v5, "com.transsion.tranOisSupport"

    .line 713
    invoke-static {p1, v5, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableOIS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 714
    invoke-static {p1, v5}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 715
    invoke-static {v5, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mOISSupport:Z

    const-string v5, "com.transsion.availTranMultiDualCamIndex"

    .line 716
    invoke-static {p1, v5, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableTranMultiDualCam:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 717
    invoke-static {p1, v5}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 718
    invoke-static {v5, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v6

    iput-boolean v6, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMultiDualCamLogicalSupport:Z

    .line 719
    invoke-static {v5, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMultiDualCamTeleCamSupport:Z

    const-string v3, "com.mediatek.multicamfeature.availableMultiCamFeatureMode"

    .line 720
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mSupportLogicalCameraMode:[I

    .line 721
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLogicalCameraSupport:Z

    const-string v3, "com.transsion.devicefunction"

    .line 722
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFakeDualCamera:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 723
    invoke-static {p1, v3}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    if-eqz v3, :cond_3

    .line 725
    array-length v5, v3

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_3

    aget v7, v3, v6

    and-int/lit8 v8, v7, 0xf

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    .line 734
    :pswitch_0
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFrontFake_RAW_YUV_Support:Z

    goto :goto_1

    .line 737
    :pswitch_1
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBackFake_RAW_YUV_Support:Z

    goto :goto_1

    .line 731
    :pswitch_2
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFake_RAW_RAW_Support:Z

    :goto_1
    and-int/lit16 v7, v7, 0xf0

    const/16 v8, 0xe0

    if-eq v7, v8, :cond_1

    goto :goto_2

    .line 745
    :cond_1
    iget-boolean v7, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBackFake_RAW_YUV_Support:Z

    if-nez v7, :cond_2

    .line 746
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFrontFake_RAW_YUV_Support:Z

    .line 748
    :cond_2
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBackFake_Second_YUV_Cam_Support:Z

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const-string v3, "com.transsion.availableflashLuminanceValue"

    .line 755
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableLuminanceValue:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "com.mediatek.bgservicefeature.availableprereleasemodes"

    .line 756
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableBgServiceModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 757
    invoke-static {p1, v3}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 758
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBGServiceSupport:Z

    const-string v3, "com.transsion.availablescreenflashmodes"

    .line 759
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyScreenFlashAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "com.transsion.supportedhdmode"

    .line 760
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySupportedHdMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 761
    invoke-static {p1, v3}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 762
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsHdModeSupported:Z

    const-string v3, "com.transsion.availsupernightMode"

    .line 763
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySuperNightModeSupport:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 764
    invoke-static {p1, v3}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 765
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsSuperNightModeSupported:Z

    const-string v3, "com.transsion.availmegSuperlowlightMode"

    .line 766
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyMegSuperNightModeSupport:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 767
    invoke-static {p1, v3}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 768
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsMegSuperNightModeSupported:Z

    const-string v3, "com.transsion.availTripodSupernightMode"

    .line 769
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 770
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsStableSuperNightModeSupported:Z

    const-string v3, "com.transsion.availmegSuperlowlightdetectMode"

    .line 771
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySuperNightDetectModeSupport:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 772
    invoke-static {p1, v3}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 773
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsSuperNightDetectModeSupported:Z

    const-string v3, "com.transsion.availableMaxFilterType"

    .line 775
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFilterIds:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "com.transsion.dualcampicturesize"

    .line 776
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySupportedDualCamPictures:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "com.transsion.dualcamcalimodepicturesize"

    .line 777
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySupportedDualCamCalibSize:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "com.transsion.availsingleblurMode"

    .line 778
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableSTBlurModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "com.transsion.zoomactiveregion"

    .line 779
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFovCropRegion:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "com.transsion.availfeaturesvalue"

    .line 780
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFaceBeautyFeatures:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "com.transsion.availfeaturescope"

    .line 782
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFaceBeautyFeaturesLevelScope:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "com.transsion.4cellpicturesize"

    .line 783
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailable4CellInOneSize:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "com.mediatek.streamingfeature.availableHfpsModes"

    .line 784
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableHfpsMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 785
    invoke-static {p1, v3}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 786
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mHfpsModeSupport:Z

    const-string v3, "com.transsion.videoMode"

    .line 787
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableVideoCamera:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 788
    invoke-static {p1, v3}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 789
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVideoCameraSupport:Z

    const-string v3, "com.transsion.availablefacedetectmode"

    .line 791
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAvailableKeyTranFaceDetectMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "com.transsion.isSupperNightid"

    .line 792
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_3

    :cond_4
    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDspSupport:Z

    .line 793
    const-class v3, [B

    const-string v5, "com.mediatek.flashfeature.customization.available"

    invoke-static {p1, v5, v3}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 794
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([BB)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFlashCustomizedAvailable:Z

    const-string v3, "com.mediatek.smvrfeature.availableSmvrModes"

    .line 795
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableSMVRModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "com.transsion.eyeDetectionSupport"

    .line 796
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableEyeDetection:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "com.transsion.humanDetectionSupport"

    .line 797
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableHumanDetect:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 798
    invoke-static {p1, v3}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 799
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mHumanDetectSupport:Z

    const-string v3, "com.transsion.macrolampsupport"

    .line 800
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    if-eqz v3, :cond_5

    move v4, v2

    :cond_5
    iput-boolean v4, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMacroTorchSupport:Z

    const-string v3, "com.transsion.availhumanlightMode"

    .line 802
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableVideoPortraitModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 803
    invoke-static {p1, v3}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 804
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVideoPortraitSupport:Z

    const-string v3, "com.transsion.availableMaxhumanlightType"

    .line 806
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableVideoPortraitLevelModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "com.transsion.availmegSuperresolutionMode"

    .line 807
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableSuperresolution:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "com.transsion.availSTPortraitMode"

    .line 808
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailablePortraitModeEnhance:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "com.transsion.availDualCamSinglePortrait"

    .line 809
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableBWPortraitModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 810
    invoke-static {p1, v3}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 811
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBWPortraitSupport:Z

    const-string v3, "com.transsion.availablefacedetectback"

    .line 812
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableGenderAttributeValueModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 813
    invoke-static {p1, v3}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 814
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mGenderAttributeValueSupport:Z

    const-string v3, "com.transsion.availMegHumanMode"

    .line 815
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableHumanEffectMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v3, "com.transsion.availTranSatMode"

    .line 816
    invoke-static {p1, v3, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableSatMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 817
    invoke-static {p1, v3}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 818
    invoke-static {v3, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mSatModeSupport:Z

    .line 819
    const-class v3, [F

    const-string v4, "com.mediatek.multicamfeature.multiCamZoomSteps"

    invoke-static {p1, v4, v3}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableMultiCameraZoomSteps:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 820
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailablePeriscopeCam:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 821
    invoke-static {p1, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 822
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mPeriscopeCamSupport:Z

    const-string v1, "com.transsion.aePreCapFlowSupport"

    .line 823
    invoke-static {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 824
    invoke-static {p1, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mUsePreAeCaptureFlow:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initCaptureRequestKeys(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 3

    .line 828
    const-class p1, [B

    const-class v0, [I

    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.mediatek.hdrfeature.hdrMode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHDRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 829
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.faceBeautyMode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 830
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.faceBeautyLevel"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyLevel:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 831
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.slimbodyLevel"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySlimBodyLevels:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 832
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.slimbodyMode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySlimBodyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 833
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.picselfie"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyPortraitMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 834
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.mediatek.control.capture.flipmode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMirrorMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 835
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.videoflip"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoMirrorMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 836
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.mediatek.configure.setting.initrequest"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mQuickPreview:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 837
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.controlccupoweron"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCCUFlow:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 838
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.3rdpluginenable"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyTranssionPlugin:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 839
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.asdMode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAsdRequestMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 840
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.cusIspAsd"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCusIspAsdRequestMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 841
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.hdrMode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mTranssionHDR:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 842
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.denoiseMode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDenoiseMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 843
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.lowLightMode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 844
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.dspLowlightHdrMode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLowLightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 845
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.LowlightHdrMode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLowLightHDR:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 846
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.mediatek.mfnrfeature.mfbmode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMiddleNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 847
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.nighthawkmode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mNightHawkMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 848
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.moonDetectionMode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMoonDetectionMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 849
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.aiMoonMode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAiMoonMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 850
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.mediatek.facefeature.forceface3a"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceDetection3A:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 851
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.mediatek.control.capture.postviewsize"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyPostViewRequestSizeMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 852
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.mediatek.multicamfeature.multiCamFeatureMode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVsdofKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 853
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.mediatek.vsdoffeature.vsdofFeaturePreviewSize"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDofPreviewSizeKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 854
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.mediatek.stereofeature.doflevel"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDofLevelKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 855
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.mediatek.3afeature.awbValue"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mManualAWBValueKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 856
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.mediatek.control.capture.early.notification.trigger"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyShot2Shot:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 857
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.undistortMode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyDistortionCorrection:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 858
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.satPreviewUndistortEnable"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyDistortionCorrectionPreview:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 859
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.watermarkMode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyAutoWaterMarkMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 860
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.videorotation"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoRotationMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 861
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.antivideoMode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyAntiVideoMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 862
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.DualCamSinglePortrait"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBWPortraitMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 863
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.convertBWmode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBWConvert:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 864
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.macrolamponoff"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMacroLampValue:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 865
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.mediatek.control.capture.zsl.mode"

    invoke-direct {v1, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyZSL:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 866
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.rtdofMode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVsdofRTKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 867
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.mediatek.bgservicefeature.prerelease"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBgPrerelease:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 868
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.mediatek.bgservicefeature.imagereaderid"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBgImageReaderId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 869
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.flashLuminanceValue"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyLuminanceValue:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 870
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.screenflashmode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyScreenFlashMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 871
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.hdmode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHdMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 872
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.mediatek.streamingfeature.hfpsMode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHfpsMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 873
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.supernightMode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 874
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.megSuperlowlightMode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMegSuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 875
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.tripodSupernightMode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyStableSuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 876
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.megSuperlowlightdetectMode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightDetectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 877
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.mediatek.cshotfeature.capture"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyContinuousShotMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 878
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.filtertype"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFilterId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 879
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.supernightfilter"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightFilerId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 880
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.singleblurMode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySTBlurMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 881
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.fakestereomode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyYuvDualCamera:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 882
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.mediatek.multicamfeature.fakeStereoFeatureMode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyRawDualCamera:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 883
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.facebeautyfeature"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyFeatures:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 884
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.mediatek.control.capture.remosaicenable"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperDefinition:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 885
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.shotVideoMode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideointerpolation:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 886
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.eyeDetection"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyEyeDetection:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 887
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.humanDetectionEnable"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHumanDetect:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 888
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.facedetectmode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyTranFaceDetectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 889
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.transsioncameramode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyTranssionCameraMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 890
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.humanlightMode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoPortraitmode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 891
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.mediatek.configure.setting.proprietaryRequest"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyPDAF:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 892
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.mediatek.smvrfeature.smvrMode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySMVRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 893
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.transsion.humanlightType"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoPortraitLevel:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 894
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v2, "com.mediatek.3afeature.aeMeteringMode"

    invoke-direct {v1, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMeteringMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 895
    new-instance p1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v1, "com.mediatek.3afeature.aeIsoSpeed"

    invoke-direct {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 896
    new-instance p1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v1, "com.transsion.megSuperresolutionMode"

    invoke-direct {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperrsolutionMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 897
    new-instance p1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v1, "com.transsion.STPortraitMode"

    invoke-direct {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyPortraitModeEnhance:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 898
    new-instance p1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v1, "com.transsion.facedetectback"

    invoke-direct {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyGenderAttributeValueMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 899
    new-instance p1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v1, "com.transsion.MegHumanMode"

    invoke-direct {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHumanEffectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 900
    new-instance p1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v1, "com.mediatek.multicamfeature.multiCamConfigScalerCropRegion"

    invoke-direct {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyMultiCropRegion:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 901
    new-instance p1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-string v1, "com.transsion.satCaptureJpegSize"

    invoke-direct {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mSatPictureSize:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    return-void
.end method

.method private initCaptureResultKeys(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 3

    .line 905
    const-class p1, [I

    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v1, "com.transsion.asdScene"

    invoke-direct {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultAsdMode:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 906
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v1, "com.mediatek.control.capture.next.ready"

    invoke-direct {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyShot2Shot:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 907
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v1, "com.mediatek.stereofeature.stereowarning"

    invoke-direct {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDualLensWarningKey:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 908
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v1, "com.transsion.brightnessValue"

    invoke-direct {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultBrightness:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 909
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-class v1, [B

    const-string v2, "com.mediatek.flashfeature.customizedResult"

    invoke-direct {v0, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyFlashCustomized:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 910
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v1, "com.transsion.availablefacedetectreturn"

    invoke-direct {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyTranFaceInfo:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 911
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v1, "com.transsion.antivideoFaceInfo"

    invoke-direct {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyAntiFaceInfoRect:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 912
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v1, "com.transsion.eyeInfo"

    invoke-direct {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyEyeDetection:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 913
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v1, "com.transsion.humanDetectionResult"

    invoke-direct {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyHumanDetect:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 914
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "com.transsion.afsearchstate"

    invoke-direct {v0, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyAfSearchState:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 915
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v1, "com.transsion.nighthawkresult"

    invoke-direct {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultNightHawk:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 916
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v1, "com.mediatek.multicamfeature.multiCamStreamingId"

    invoke-direct {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultStreamId:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 917
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v1, "com.transsion.moonDetectionScene"

    invoke-direct {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultMoonDetection:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 918
    new-instance p0, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v0, "com.mediatek.3afeature.awbAvailableRange"

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public aeStateFlashRequired(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 0

    .line 2854
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public checkAfSearchStateResult(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;
    .locals 1

    .line 2029
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyAfSearchState:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2032
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyAfSearchState:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public checkAsdResult(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    .line 1724
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultAsdMode:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1725
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultAsdMode:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    .line 1733
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultBrightness:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1734
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultBrightness:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public checkDualLensResult(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    .line 1774
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDualLensWarningKey:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1775
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDualLensWarningKey:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public checkEyeDetectionResult(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    .line 1765
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyEyeDetection:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1766
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyEyeDetection:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public checkHumanDetectResult(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    .line 1783
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyHumanDetect:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1784
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyHumanDetect:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public checkMoonDetectionResult(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    .line 1757
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultMoonDetection:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1758
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultMoonDetection:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public checkNightHawkResult(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    .line 1741
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultNightHawk:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1742
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultNightHawk:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public checkScreenFlashFireResult(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 3

    .line 2447
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyFlashCustomized:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2451
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyFlashCustomized:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 2452
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkScreenFlashFireResult value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2453
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2452
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_2

    .line 2454
    array-length p1, p0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    goto :goto_0

    .line 2457
    :cond_1
    aget-byte p0, p0, v1

    if-ne v0, p0, :cond_2

    move v1, v0

    :cond_2
    :goto_0
    return v1

    .line 2448
    :cond_3
    :goto_1
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mResultKeyFlashCustomized is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public checkShot2ShotResult(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    .line 2021
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyShot2Shot:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2024
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyShot2Shot:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public checkStreamIdResult(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    .line 2909
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultStreamId:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2910
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultStreamId:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public checkTranssionFaceInfo(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyTranFaceInfo:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyTranFaceInfo:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public enableBWConvert(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1605
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBWConvert:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1610
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBWConvert:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 1612
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBWConvert:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_OFF:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public declared-synchronized enableBWPortrait(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    monitor-enter p0

    .line 1592
    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBWPortraitSupport:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBWPortraitMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBWPortraitMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 1597
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBWPortraitMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 1599
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBWPortraitMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_OFF:[I

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1601
    :goto_0
    monitor-exit p0

    return-void

    .line 1593
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public enableBgServiceMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 2205
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[enableBgServiceMode] ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2206
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBgPrerelease:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 2211
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBgPrerelease:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 2213
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBgPrerelease:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_OFF:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 2207
    :cond_2
    :goto_1
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "enableBgService return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized enableCCUFlow(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    monitor-enter p0

    .line 1650
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCCUFlow:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCCUFlow:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1653
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[enableCCUFlow] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCCUFlow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCCUFlow:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1655
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCCUFlow:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 1657
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCCUFlow:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_OFF:[I

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1659
    :goto_0
    monitor-exit p0

    return-void

    .line 1651
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public enableContinuousShot(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 2394
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyContinuousShotMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2399
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyContinuousShotMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    return-void

    .line 2395
    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mRequestKeyContinuousShotMode is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized enableFace3A(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    monitor-enter p0

    .line 1939
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAvailableFaceDetection3A:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceDetection3A:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceDetection3A:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1940
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1945
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAvailableFaceDetection3A:[I

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1946
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceDetection3A:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v2, v0, [I

    aput v0, v2, v1

    invoke-virtual {p1, p2, v2}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 1949
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAvailableFaceDetection3A:[I

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1950
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceDetection3A:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v0, [I

    aput v1, v0, v1

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1953
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 1941
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public enableFakeDualLensMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 2406
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBackFake_Second_YUV_Cam_Support:Z

    if-eqz v0, :cond_1

    const/16 p1, 0xe0

    goto :goto_0

    .line 2408
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBackFake_RAW_YUV_Support:Z

    if-eqz v0, :cond_2

    const/16 p1, 0xe

    goto :goto_0

    .line 2410
    :cond_2
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFrontFake_RAW_YUV_Support:Z

    if-eqz v0, :cond_3

    const/16 p1, 0xf

    .line 2414
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFake_RAW_RAW_Support:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "mRequestKeyYuvDualCamera is null"

    if-eqz v0, :cond_6

    .line 2415
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyRawDualCamera:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 2419
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyRawDualCamera:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v2, [I

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_2

    .line 2416
    :cond_5
    :goto_1
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2421
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyYuvDualCamera:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    .line 2425
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyYuvDualCamera:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v2, [I

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :goto_2
    return-void

    .line 2422
    :cond_8
    :goto_3
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized enableMirror(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    monitor-enter p0

    .line 1579
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMirrorMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMirrorMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 1584
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMirrorMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 1586
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMirrorMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_OFF:[I

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1588
    :goto_0
    monitor-exit p0

    return-void

    .line 1580
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enableQuickPreview(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    monitor-enter p0

    .line 1637
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mQuickPreview:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mQuickPreview:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 1642
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mQuickPreview:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 1644
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mQuickPreview:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_OFF:[I

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1646
    :goto_0
    monitor-exit p0

    return-void

    .line 1638
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public enableRTDofMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 2150
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[enableRTDofMode] ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2151
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVsdofRTKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 2156
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVsdofRTKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_OFF:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 2158
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVsdofRTKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 2152
    :cond_2
    :goto_1
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "enableRTDofMode,return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public enableTranssionCameraMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 2462
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[enableTranssionCameraMode] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRequestKeyTranssionCameraMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyTranssionCameraMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2464
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyTranssionCameraMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2467
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyTranssionCameraMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public enableTranssionPlugin(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1670
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[enableTranssionPlugin] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRequestKeyTranssionPlugin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyTranssionPlugin:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1672
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyTranssionPlugin:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1675
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyTranssionPlugin:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public enableVideoInterpolation(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 2431
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[enableVideoInterpolation] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRequestKeyVideointerpolation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideointerpolation:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2433
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideointerpolation:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2436
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideointerpolation:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public enableVideoMirror(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1618
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsVideoMirrorSupport:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoMirrorMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_2

    .line 1619
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1624
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoMirrorMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 1626
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoMirrorMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_OFF:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public get4cellInOneSize(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 2367
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailable4CellInOneSize:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 2368
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2370
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 2372
    :goto_1
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 2373
    aget v1, p0, v0

    add-int/lit8 v2, v0, 0x1

    .line 2374
    aget v2, p0, v2

    .line 2375
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 2376
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public getAntiFaceInfoRect(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    .line 1449
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyAntiFaceInfoRect:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1450
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyAntiFaceInfoRect:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFovCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;
    .locals 5

    .line 1921
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1922
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFovCropRegion:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 1923
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 1924
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFovCropRegion return driver rect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 1925
    array-length p1, p0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1926
    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    aget v0, p0, v0

    const/4 v4, 0x2

    aget v4, p0, v4

    add-int/2addr v0, v4

    aget v2, p0, v2

    const/4 v4, 0x3

    aget p0, p0, v4

    add-int/2addr v2, p0

    invoke-direct {p1, v1, v3, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 1928
    :cond_0
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isFovCropSupport()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_1

    .line 1929
    new-instance p0, Landroid/graphics/Rect;

    const/16 p1, 0x96

    const/16 v0, 0x70

    const/16 v1, 0xc2a

    const/16 v2, 0x91e

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1930
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "getFovCropRegion return default rect."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0

    .line 1933
    :cond_1
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getFovCropRegion return null rect."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1934
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public getMultiCameraZoomSteps(Landroid/hardware/camera2/CameraCharacteristics;)[F
    .locals 0

    .line 2882
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableMultiCameraZoomSteps:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 2883
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSlimBodyFeatureSize(Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 1

    .line 1322
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySlimBodyFeatures:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1323
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_0

    .line 1324
    array-length p1, p0

    if-lez p1, :cond_0

    .line 1325
    aget v0, p0, v0

    :cond_0
    return v0
.end method

.method public getStereoSensorCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;
    .locals 0

    .line 1916
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mValueStereoCropRegion:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSupportLogicalCameraMode()[I
    .locals 0

    .line 2892
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mSupportLogicalCameraMode:[I

    return-object p0
.end method

.method public getSupportSMVRModeMetaData(Landroid/hardware/camera2/CameraCharacteristics;)[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;
    .locals 5

    .line 2477
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableSMVRModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2478
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getSupportSMVRModeMetaData, not support SMVR."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 2482
    :cond_0
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_4

    .line 2483
    array-length p1, p0

    if-eqz p1, :cond_4

    array-length p1, p0

    rem-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    goto/16 :goto_2

    .line 2490
    :cond_1
    array-length p1, p0

    div-int/lit8 p1, p1, 0x4

    .line 2491
    new-array v0, p1, [Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    .line 2493
    new-instance v2, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    invoke-direct {v2}, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;-><init>()V

    aput-object v2, v0, v1

    .line 2494
    aget-object v2, v0, v1

    mul-int/lit8 v3, v1, 0x4

    aget v4, p0, v3

    iput v4, v2, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->width:I

    .line 2495
    aget-object v2, v0, v1

    add-int/lit8 v4, v3, 0x1

    aget v4, p0, v4

    iput v4, v2, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->height:I

    .line 2496
    aget-object v2, v0, v1

    add-int/lit8 v4, v3, 0x2

    aget v4, p0, v4

    iput v4, v2, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->fpsMax:I

    .line 2497
    aget-object v2, v0, v1

    add-int/lit8 v3, v3, 0x3

    aget v3, p0, v3

    iput v3, v2, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->cusP2BatchSize:I

    .line 2498
    sget-object v2, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportSMVRModeMetaData metaDatas["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2499
    aget-object v2, v0, v1

    iget v2, v2, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->cusP2BatchSize:I

    aget-object v3, v0, v1

    iget v3, v3, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->fpsMax:I

    div-int/lit8 v3, v3, 0x1e

    if-ge v2, v3, :cond_2

    .line 2500
    sget-object v2, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "getSupportSMVRModeMetaData as Burst mode."

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2501
    aget-object v2, v0, v1

    sget-object v3, Lcom/transsion/camera/utils/SettingInfo$Pattern;->BURST:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    iput-object v3, v2, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->pattern:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    goto :goto_1

    .line 2503
    :cond_2
    sget-object v2, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "getSupportSMVRModeMetaData as Continuous mode."

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2504
    aget-object v2, v0, v1

    sget-object v3, Lcom/transsion/camera/utils/SettingInfo$Pattern;->CONTINUOUS:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    iput-object v3, v2, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->pattern:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    .line 2485
    :cond_4
    :goto_2
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getSupportSMVRModeMetaData, available modes info in meta data is not right, return null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSupportSTBlurModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 2

    .line 1369
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableSTBlurModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1370
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 1376
    array-length p1, p0

    new-array p1, p1, [Ljava/lang/String;

    .line 1377
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1378
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_2
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedAsdMode(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 2

    .line 1793
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableAsdMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1794
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 1800
    array-length p1, p0

    new-array p1, p1, [Ljava/lang/String;

    .line 1801
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1802
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_2
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedDistortionCorrection(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2351
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyDistortionCorrectionAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_1

    .line 2352
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 2354
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 2355
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 2356
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    .line 2361
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getSupportedDualCamCalibSize(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Size;
    .locals 2

    .line 2323
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySupportedDualCamCalibSize:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2324
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 2329
    array-length p1, p0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 2330
    new-instance v0, Landroid/util/Size;

    const/4 p1, 0x0

    aget p1, p0, p1

    const/4 v1, 0x1

    aget p0, p0, v1

    invoke-direct {v0, p1, p0}, Landroid/util/Size;-><init>(II)V

    :cond_1
    return-object v0
.end method

.method public getSupportedDualCamPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 2301
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySupportedDualCamPictures:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 2302
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2305
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 2308
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 2309
    aget v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 2310
    aget v2, p0, v0

    .line 2312
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 2313
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public getSupportedEyeDetection(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2536
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableEyeDetection:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_2

    .line 2537
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 2543
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 2544
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 2545
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    .line 2549
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 2539
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getSupportedFaceBeautyFeatures(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1248
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFaceBeautyFeatures:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 1249
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 1252
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 1253
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1254
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p1

    .line 1258
    :cond_2
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "please config key : com.transsion.availfeaturesvalue"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1260
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getSupportedFaceBeautyFeatures(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->getSupportedFaceBeautyFeatures(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedFaceBeautyFeaturesLevelScope(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1266
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFaceBeautyFeaturesLevelScope:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 1267
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 1270
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    .line 1271
    aget p0, p0, p1

    .line 1272
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    if-gt v0, p0, :cond_1

    .line 1274
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p1

    .line 1278
    :cond_2
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "please config key : com.transsion.availfeaturescope"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1280
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getSupportedFaceBeautyFeaturesLevelScope(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->getSupportedFaceBeautyFeaturesLevelScope(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedFaceBeautyLevels(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 3

    .line 1217
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFaceBeautyLevel:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1218
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 1219
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportedFaceBeautyLevels : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_3

    .line 1226
    array-length p1, p0

    if-lez p1, :cond_0

    .line 1227
    aget p0, p0, v0

    goto :goto_0

    :cond_0
    move p0, v0

    .line 1228
    :goto_0
    new-array p1, p0, [Ljava/lang/String;

    const/4 v1, 0x1

    :goto_1
    if-ge v0, p0, :cond_2

    if-lt p0, v1, :cond_1

    .line 1233
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p1

    :cond_3
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_4
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedFaceBeautyModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 3

    .line 1193
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFaceBeautyMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1194
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 1195
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportedFaceBeautyModes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 1202
    array-length p1, p0

    .line 1203
    new-array v1, p1, [Ljava/lang/String;

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1205
    aget v2, p0, v0

    invoke-static {v2}, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->convertFaceBeautyValue(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_2
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedFilterIds(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 3

    .line 1286
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFilterIds:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 1287
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1290
    :goto_0
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSupportedFilterIds : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1291
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 1293
    array-length v0, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget v2, p0, v1

    .line 1294
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1297
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 1298
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedHdModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 2

    .line 1458
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySupportedHdMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1459
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 1465
    array-length p1, p0

    new-array p1, p1, [Ljava/lang/String;

    .line 1466
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1467
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_2
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedHumanEffectModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2693
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableHumanEffectMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v0, "0"

    if-eqz p0, :cond_2

    .line 2694
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 2695
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportedHumanEffectModes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 2702
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 2704
    aget v0, p0, v0

    :goto_0
    const/4 v1, 0x1

    aget v1, p0, v1

    if-gt v0, v1, :cond_0

    .line 2705
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    .line 2710
    :cond_1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 2697
    :cond_2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedISOValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2740
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 2741
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_4

    .line 2743
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->getAvailableMaxISO(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    const/4 p1, -0x1

    .line 2744
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2745
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 2746
    :cond_0
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    if-ge v2, p0, :cond_3

    .line 2748
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2749
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->DEFAULT_ISO_TABLE:[I

    array-length v0, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    aget v4, p1, v3

    if-le v4, v2, :cond_1

    if-ge v4, p0, :cond_1

    .line 2751
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2754
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2756
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    return-object v1
.end method

.method public getSupportedLuminanceValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2247
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableLuminanceValue:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 2248
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 2253
    array-length p1, p0

    const/4 v1, 0x2

    if-le p1, v1, :cond_1

    const/4 p1, 0x1

    .line 2254
    aget p1, p0, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2255
    aget p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public getSupportedManualWBRangeValue(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1875
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p1, "2000"

    .line 1876
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "9000"

    .line 1877
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "auto"

    .line 1878
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    if-gt p1, v0, :cond_0

    .line 1880
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x64

    goto :goto_0

    .line 1882
    :cond_0
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSupportedManualWBRangeValue, values:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method public getSupportedMeteringModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2626
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p1, "center"

    .line 2627
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "spot"

    .line 2628
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "average"

    .line 2629
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2630
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSupportedMeteringModes, values:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method public getSupportedPhotoHdrModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 3

    .line 960
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailablePhotoHDRModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 961
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 962
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportedPhotoHdrModes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 969
    array-length p1, p0

    .line 970
    new-array v1, p1, [Ljava/lang/String;

    :goto_0
    if-ge v0, p1, :cond_0

    .line 972
    aget v2, p0, v0

    invoke-static {v2}, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->convertHDRVendorValue(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_2
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedScreenFlashModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2262
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyScreenFlashAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 2263
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "screen flash is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 2266
    :cond_0
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_1

    .line 2268
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "supportedModes is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 2272
    :cond_1
    array-length p1, p0

    .line 2273
    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 2275
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2277
    :cond_2
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supported screen flash modes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2279
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedShot2Shot(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 2

    .line 2337
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyShot2shotAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 2338
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 2340
    array-length p1, p0

    new-array p1, p1, [Ljava/lang/String;

    .line 2341
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 2342
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedSuperNightModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1532
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1533
    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySuperNightModeSupport:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "off"

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 1534
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 1535
    invoke-static {p0, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "dsp_super_night"

    .line 1536
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1537
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1539
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyMegSuperNightModeSupport:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_2

    .line 1540
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 1541
    invoke-static {p0, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "meg_super_night"

    .line 1542
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1543
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object v0

    .line 1546
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method

.method public getSupportedTranFaceDetectMode(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 2

    .line 924
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAvailableKeyTranFaceDetectMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 925
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 931
    array-length p1, p0

    new-array p1, p1, [Ljava/lang/String;

    .line 932
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 933
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_2
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedTranssionHDR(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 6

    .line 1812
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableTranssionHDR:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1813
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 1817
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 1819
    array-length v1, p1

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget v4, p1, v2

    const/16 v5, 0x12

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_3

    if-eqz v3, :cond_3

    .line 1825
    array-length p1, p0

    new-array p1, p1, [Ljava/lang/String;

    .line 1826
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 1827
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p1

    :cond_3
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_4
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedVideoHdrModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 3

    .line 984
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableVideoHDRModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 985
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 992
    array-length p1, p0

    .line 993
    new-array v1, p1, [Ljava/lang/String;

    :goto_0
    if-ge v0, p1, :cond_0

    .line 995
    aget v2, p0, v0

    invoke-static {v2}, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->convertHDRVendorValue(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_2
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedVideoPortraitLevel(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 2

    .line 2577
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableVideoPortraitLevelModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 2578
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 2582
    array-length p1, p0

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    .line 2583
    aget p0, p0, v1

    add-int/lit8 p1, p0, 0x1

    .line 2584
    new-array p1, p1, [Ljava/lang/String;

    :goto_0
    if-gt v0, p0, :cond_0

    .line 2586
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_2
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedVsdofLevel(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 2

    .line 1898
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySupportedDofLevel:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1899
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 1904
    aget p0, p0, v0

    .line 1905
    new-array p1, p0, [Ljava/lang/String;

    :goto_0
    if-ge v0, p0, :cond_0

    .line 1907
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_2
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public initFirst(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0

    .line 647
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->initAvailableKeys(Landroid/hardware/camera2/CameraCharacteristics;)V

    return-void
.end method

.method public declared-synchronized initSecond(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1

    monitor-enter p0

    .line 652
    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsAllInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 653
    monitor-exit p0

    return-void

    .line 655
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->initCaptureRequestKeys(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 656
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->initCaptureResultKeys(Landroid/hardware/camera2/CameraCharacteristics;)V

    const/4 p1, 0x1

    .line 657
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsAllInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 658
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isAntiVideoSupport()Z
    .locals 0

    .line 2052
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAntiVideoSupport:Z

    return p0
.end method

.method public isAutoWaterMarkSupport()Z
    .locals 0

    .line 2037
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAutoWatermarkSupport:Z

    return p0
.end method

.method public isBGServiceModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 2229
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBGServiceSupport:Z

    return p0
.end method

.method public isBWPortraitSupport()Z
    .locals 0

    .line 2057
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBWPortraitSupport:Z

    return p0
.end method

.method public isDspSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 2389
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDspSupport:Z

    return p0
.end method

.method public isFakeRAW_RAWCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 2195
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFake_RAW_RAW_Support:Z

    return p0
.end method

.method public isFakeRAW_YUVCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 2200
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFrontFake_RAW_YUV_Support:Z

    if-nez p1, :cond_1

    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBackFake_RAW_YUV_Support:Z

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

.method public isGenderAttributeValueSupport()Z
    .locals 0

    .line 2777
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mGenderAttributeValueSupport:Z

    return p0
.end method

.method public isHighFpsSupport()Z
    .locals 0

    .line 1967
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mHfpsModeSupport:Z

    return p0
.end method

.method public isLogicalCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 2190
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLogicalCameraSupport:Z

    return p0
.end method

.method public isMacroTorchSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 2559
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMacroTorchSupport:Z

    return p0
.end method

.method public isMultiDualCamLogicalSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 2180
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMultiDualCamLogicalSupport:Z

    return p0
.end method

.method public isMultiDualCamTeleCamSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 2185
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMultiDualCamTeleCamSupport:Z

    return p0
.end method

.method public isOISSupport()Z
    .locals 0

    .line 2782
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mOISSupport:Z

    return p0
.end method

.method public isPeriscopeCamSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 2904
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mPeriscopeCamSupport:Z

    return p0
.end method

.method public isPeriscopeLensSupport()Z
    .locals 0

    .line 2170
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mPeriscopeLensSupport:Z

    return p0
.end method

.method public isPortraitModeEnhanceSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 2666
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailablePortraitModeEnhance:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 2667
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const-string p1, "1"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSMVRModeSupport()Z
    .locals 0

    .line 2472
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableSMVRModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSatModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 2874
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mSatModeSupport:Z

    return p0
.end method

.method public isScreenFlashFireSupport()Z
    .locals 3

    .line 2441
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isScreenFlashFireSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFlashCustomizedAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2442
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFlashCustomizedAvailable:Z

    return p0
.end method

.method public isSupportSlimBodyMode(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 1344
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySlimBodyModeSupport:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 1345
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportedHumanDetection(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 2554
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mHumanDetectSupport:Z

    return p0
.end method

.method public isSupportedNightHawkMode(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 1836
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableNightHawk:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 1837
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedStableSuperNight(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 1553
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsStableSuperNightModeSupported:Z

    return p0
.end method

.method public isSupportedSuperDefinition(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 1845
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailable4CellInOneSize:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 1846
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 1848
    array-length p0, p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedSuperResolution(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTeleCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 2175
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mTeleCameraSupport:Z

    return p0
.end method

.method public isThumbnailPostViewSupport()Ljava/lang/Boolean;
    .locals 0

    .line 1962
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mThumbnailPostViewSupport:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public isTranssionCameraModeSupport()Z
    .locals 0

    .line 2062
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mTranssionCameraModeSupport:Z

    return p0
.end method

.method public isVideoCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 2384
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVideoCameraSupport:Z

    return p0
.end method

.method public isVideoPortraitSupport()Z
    .locals 0

    .line 2563
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVideoPortraitSupport:Z

    return p0
.end method

.method public isVideoWaterMarkSupport()Z
    .locals 0

    .line 2042
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVideoWatermarkSupport:Z

    return p0
.end method

.method public isWideCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 2165
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mWideCameraSupport:Z

    return p0
.end method

.method public isZSLSupport()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needAfModeBeforePreAF()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needFakePostView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needFlipForVideoMirror()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needTriggerPreCapture(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;II)Z
    .locals 0

    const-string p0, "on"

    .line 2843
    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    return p1

    :cond_0
    const-string p0, "auto"

    .line 2845
    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    if-ne p3, p0, :cond_1

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    return p1

    :cond_2
    return p2
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public requestCancelFocus(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 2864
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x2

    .line 2865
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2864
    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public setAiMoonMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 1177
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAiMoonMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAiMoonMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setAntiVideoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 5

    .line 2067
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAntiVideoSupport:Z

    if-nez v0, :cond_0

    .line 2068
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "anti video is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2071
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyAntiVideoMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    .line 2077
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xddf

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x1ad6f

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v3

    goto :goto_0

    :cond_3
    const-string v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v4

    :cond_4
    :goto_0
    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    .line 2085
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal anti video mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_5
    move p1, v4

    goto :goto_1

    :cond_6
    move p1, v3

    .line 2088
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyAntiVideoMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v4, [I

    aput p1, v0, v3

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    return-void

    .line 2072
    :cond_7
    :goto_2
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mRequestKeyAntiVideoMode is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setAppMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized setAsdMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    monitor-enter p0

    .line 1109
    :try_start_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAsdMode enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mAsdRequestMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAsdRequestMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAsdRequestMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAsdRequestMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAsdRequestMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAutoWaterMarkMode(Ljava/lang/String;ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6

    .line 2093
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAutoWatermarkSupport:Z

    if-nez v0, :cond_0

    .line 2094
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "auto watermark is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2097
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyAutoWaterMarkMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v0, -0x1

    .line 2103
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xddf

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_3

    const v2, 0x1ad6f

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v4

    goto :goto_0

    :cond_3
    const-string v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v3

    :cond_4
    :goto_0
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    .line 2111
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal auto watermark mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_2

    :cond_6
    :goto_1
    move v0, v4

    .line 2114
    :goto_2
    sget-object v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " key:mRequestKeyAutoWaterMarkMode "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyAutoWaterMarkMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", mode:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2115
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyAutoWaterMarkMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v1, v3, [I

    aput v0, v1, v4

    invoke-virtual {p1, p3, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    .line 2117
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVideoWatermarkSupport:Z

    if-nez p1, :cond_7

    .line 2118
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "video watermark is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2121
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoRotationMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_3

    .line 2125
    :cond_8
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " key:mRequestKeyVideoRotationMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoRotationMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", orientation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2126
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoRotationMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array p1, v3, [I

    aput p2, p1, v4

    invoke-virtual {p0, p3, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    return-void

    .line 2122
    :cond_9
    :goto_3
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mRequestKeyVideoRotationMode is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2098
    :cond_a
    :goto_4
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mRequestKeyAutoWaterMarkMode is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

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

    return-void
.end method

.method public setBgImageReaderId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 2219
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBgImageReaderId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2220
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBgImageReaderId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2224
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBgImageReaderId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    return-void

    .line 2221
    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setBgImageReaderId return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setCusIspAsd([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1117
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCusIspAsdRequestMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1118
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCusIspAsdRequestMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setDenoiseMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    monitor-enter p0

    .line 1131
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDenoiseMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDenoiseMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDenoiseMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1134
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDistortionCorrection(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 1988
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyDistortionCorrection:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1989
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyDistortionCorrection:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 1991
    :cond_0
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "DistortionCorrection is not support or mRequestKeyShot2Shot is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setDistortionCorrectionPreview(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 2001
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDistortionCorrectionPreview enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mRequestKeyDistortionCorrectionPreview = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyDistortionCorrectionPreview:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2003
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyDistortionCorrectionPreview:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    .line 2005
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xddf

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    const v2, 0x1ad6f

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_2
    const-string v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v4

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    move p1, v4

    goto :goto_1

    :cond_4
    move p1, v3

    .line 2013
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyDistortionCorrectionPreview:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v3, [I

    aput p1, v0, v4

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_2

    .line 2015
    :cond_5
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setDistortionCorrectionPreview is not support or mRequestKeyShot2Shot is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public setEyeDetection(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 2520
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyEyeDetection:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2523
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyEyeDetection:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setFaceBeautyFeaturesLevel([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1100
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyFeatures:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyFeatures:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 1103
    :cond_0
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "please config key : com.transsion.facebeautyfeature"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized setFaceBeautyLevel(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1090
    monitor-exit p0

    return-void

    .line 1093
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyLevel:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyLevel:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1094
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyLevel:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1096
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFaceBeautyMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 13

    monitor-enter p0

    .line 1045
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1048
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFaceBeautyMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1049
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xa

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "video_facebeauty_off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v9

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "video_facebeauty_on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v3

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "pre3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v5

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "pre2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v6

    goto :goto_0

    :sswitch_4
    const-string v1, "pre1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v7

    goto :goto_0

    :sswitch_5
    const-string v1, "mild"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0xb

    goto :goto_0

    :sswitch_6
    const-string v1, "aiv2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v8

    goto :goto_0

    :sswitch_7
    const-string v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v10

    goto :goto_0

    :sswitch_8
    const-string v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v12

    goto :goto_0

    :sswitch_9
    const-string v1, "ai"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v11

    goto :goto_0

    :sswitch_a
    const-string v1, "custom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v4

    goto :goto_0

    :sswitch_b
    const-string v1, "contrast_on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v2

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 1082
    :pswitch_0
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v12, [I

    aput v2, v0, v11

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 1079
    :pswitch_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v12, [I

    aput v3, v0, v11

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 1076
    :pswitch_2
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v12, [I

    aput v4, v0, v11

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 1073
    :pswitch_3
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v12, [I

    aput v5, v0, v11

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 1070
    :pswitch_4
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v12, [I

    aput v6, v0, v11

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 1067
    :pswitch_5
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v12, [I

    aput v7, v0, v11

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 1064
    :pswitch_6
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v12, [I

    aput v8, v0, v11

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 1061
    :pswitch_7
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v12, [I

    aput v9, v0, v11

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 1058
    :pswitch_8
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v12, [I

    aput v11, v0, v11

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 1054
    :pswitch_9
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v12, [I

    aput v12, v0, v11

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 1051
    :pswitch_a
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v12, [I

    aput v10, v0, v11

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1085
    :goto_1
    monitor-exit p0

    return-void

    .line 1046
    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7daf97c4 -> :sswitch_b
        -0x5069748f -> :sswitch_a
        0xc28 -> :sswitch_9
        0xddf -> :sswitch_8
        0x1ad6f -> :sswitch_7
        0x2db0a4 -> :sswitch_6
        0x332414 -> :sswitch_5
        0x34a1ee -> :sswitch_4
        0x34a1ef -> :sswitch_3
        0x34a1f0 -> :sswitch_2
        0x342db601 -> :sswitch_1
        0x5189098d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public setFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1303
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFilterId mRequestKeyFilterId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFilterId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1305
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFilterId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1306
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFilterId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setGenderAttributeValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6

    .line 2787
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mGenderAttributeValueSupport:Z

    if-nez v0, :cond_0

    .line 2788
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "gender attribute value is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2791
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyGenderAttributeValueMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    .line 2797
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x31

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    const/16 v2, 0x32

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v4

    goto :goto_0

    :cond_3
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v3

    :cond_4
    :goto_0
    const/4 v1, 0x2

    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_6

    .line 2805
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal gender attribute value: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v1, v4

    .line 2808
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyGenderAttributeValueMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array p1, v4, [I

    aput v1, p1, v3

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    return-void

    .line 2792
    :cond_7
    :goto_2
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mRequestKeyGenderAttributeValueMode is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setHdMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    .line 1416
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsHdModeSupported:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHdMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    .line 1420
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x30

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0x31

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v3

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    goto :goto_1

    .line 1425
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHdMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_OFF:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 1422
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHdMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public setHighFpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    .line 1432
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mHfpsModeSupport:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHfpsMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, -0x1

    .line 1437
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x30

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0x31

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v3

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    goto :goto_1

    .line 1442
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHfpsMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_OFF:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 1439
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHfpsMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :goto_1
    return-void

    .line 1433
    :cond_6
    :goto_2
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[setHighFpsMode] mode,return. "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setHumanDetection(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 2528
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHumanDetect:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2529
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHumanDetect:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setHumanEffectMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 2715
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHumanEffectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2716
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHumanEffectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setISOParameter(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized setLowLightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    monitor-enter p0

    .line 1145
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLowLightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLowLightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLowLightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v3, v2, [I

    aput p1, v3, v1

    invoke-virtual {v0, p2, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLowLightHDR:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLowLightHDR:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1149
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLowLightHDR:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v2, v2, [I

    aput p1, v2, v1

    invoke-virtual {v0, p2, v2}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1151
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLuminanceValue(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    .line 2235
    monitor-exit p0

    return-void

    .line 2237
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyLuminanceValue:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyLuminanceValue:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2238
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyLuminanceValue:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2240
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMacroLampValue(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 2604
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMacroLampValue:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2608
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMacroLampValue:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    return-void

    .line 2605
    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[setMacroLampValue] mRequestKeyMacroLampValue is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setManualAWBValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1888
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setManualAWBValue value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mManualAWBValueKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mManualAWBValueKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1889
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mManualAWBValueKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1892
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mManualAWBValueKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMeteringMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6

    .line 2636
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMeteringMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 2639
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMeteringMode, mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2640
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x514d33ab

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_3

    const v2, -0x25a321e3

    if-eq v1, v2, :cond_2

    const v2, 0x35f902

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "spot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v5

    goto :goto_0

    :cond_2
    const-string v1, "average"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v3

    goto :goto_0

    :cond_3
    const-string v1, "center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v4

    :cond_4
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v5, :cond_6

    if-eq v0, v3, :cond_5

    goto :goto_1

    .line 2648
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMeteringMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array p1, v5, [B

    aput-byte v3, p1, v4

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 2645
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMeteringMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array p1, v5, [B

    aput-byte v5, p1, v4

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 2642
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMeteringMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array p1, v5, [B

    aput-byte v4, p1, v4

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public declared-synchronized setMiddleNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    monitor-enter p0

    .line 1155
    :try_start_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMiddleNightMode mfnr enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1156
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMiddleNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMiddleNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMiddleNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1159
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMoonDetectionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 1170
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMoonDetectionMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMoonDetectionMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setMultiCropRegion([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 2897
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyMultiCropRegion:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 2898
    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setNightHawkMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 1163
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mNightHawkMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1164
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mNightHawkMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    monitor-enter p0

    .line 1138
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1141
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPDAF(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1663
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyPDAF:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1664
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyPDAF:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setPhotoHdrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6

    monitor-enter p0

    .line 1005
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHDRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHDRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, -0x1

    .line 1008
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xddf

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x1ad6f

    if-eq v1, v2, :cond_2

    const v2, 0x2dddaf

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "auto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v3

    goto :goto_0

    :cond_2
    const-string v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v4

    goto :goto_0

    :cond_3
    const-string v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v5

    :cond_4
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v5, :cond_6

    if-eq v0, v3, :cond_5

    goto :goto_1

    .line 1016
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHDRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v5, [I

    aput v3, v0, v4

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 1013
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHDRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v5, [I

    aput v5, v0, v4

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 1010
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHDRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v5, [I

    aput v4, v0, v4

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1021
    :goto_1
    monitor-exit p0

    return-void

    .line 1006
    :cond_8
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPortraitMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    monitor-enter p0

    .line 1360
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyPortraitMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyPortraitMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1363
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyPortraitMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1364
    monitor-exit p0

    return-void

    .line 1361
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPortraitModeEnhanceMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 5

    .line 2674
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyPortraitModeEnhance:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, -0x1

    .line 2678
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xddf

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    const v2, 0x1ad6f

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_2
    const-string v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v4

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    move p1, v4

    goto :goto_1

    :cond_4
    move p1, v3

    .line 2686
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyPortraitModeEnhance:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v3, [I

    aput p1, v0, v4

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public setRecordingOrientation(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    return-void
.end method

.method public setSMVRMode([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 2512
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSMVRMode, key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySMVRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", values:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2513
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySMVRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2514
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySMVRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setSTBlurMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 1387
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySTBlurMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1390
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySTBlurMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSatPictureSize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 2918
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mSatPictureSize:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2919
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mSatPictureSize:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setScreenFlashMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 2284
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenFlashMode screenFlashMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2286
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyScreenFlashAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-nez p1, :cond_0

    .line 2287
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "screen flash is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2290
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyScreenFlashMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 2295
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyScreenFlashMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0x64

    aput v1, p1, v0

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    return-void

    .line 2291
    :cond_2
    :goto_0
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mRequestKeyScreenFlashMode is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setSdofPhotoLevel(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    monitor-enter p0

    .line 1570
    :try_start_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSdofPhotoLevel] sdoflevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mDofLevelKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDofLevelKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1571
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDofLevelKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDofLevelKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1574
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDofLevelKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1575
    monitor-exit p0

    return-void

    .line 1572
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSdofPhotoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 5

    .line 1395
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSdofPhotoMode] mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mVsdofKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVsdofKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1397
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVsdofKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    .line 1401
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xddf

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x1ad6f

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v4

    goto :goto_0

    :cond_2
    const-string v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v3

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_4

    .line 1409
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVsdofKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v4, [I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    aput p1, v0, v3

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 1406
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVsdofKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_OFF:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 1403
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVsdofKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public setSdofPreviewSize(Landroid/util/Size;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1558
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSdofPreviewSize] mDofPreviewSizeKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDofPreviewSizeKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", previewSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1560
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDofPreviewSizeKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1563
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->PREVIEW_SIZE_KEY_VALUE:[I

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    aput v2, v0, v1

    .line 1564
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->PREVIEW_SIZE_KEY_VALUE:[I

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    aput p1, v0, v1

    .line 1565
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDofPreviewSizeKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->PREVIEW_SIZE_KEY_VALUE:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setShot2ShotMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 1980
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyShot2Shot:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1981
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyShot2Shot:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 1983
    :cond_0
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "shot2shot is not support or mRequestKeyShot2Shot is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setSuperDefinitionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 1184
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperDefinition:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperDefinition:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setSuperNightFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1312
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSuperNightFilterId mRequestKeySuperNightFilerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightFilerId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1314
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightFilerId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1315
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightFilerId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setSuperNightMode(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6

    .line 1476
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSuperNightMode] mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", algoType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", dsp key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", meg key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMegSuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", detect key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightDetectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 1485
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsSuperNightModeSupported:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1486
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    goto :goto_0

    .line 1487
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsMegSuperNightModeSupported:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMegSuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1488
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMegSuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    return-void

    .line 1496
    :cond_3
    iget-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsStableSuperNightModeSupported:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyStableSuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1497
    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyStableSuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    :cond_4
    const/4 v2, -0x1

    .line 1500
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x6bcd88a5

    const/4 v5, 0x1

    if-eq v3, v4, :cond_7

    const v4, 0x252358

    if-eq v3, v4, :cond_6

    const v4, 0x47c73f8

    if-eq v3, v4, :cond_5

    goto :goto_1

    :cond_5
    const-string v3, "Night"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    const-string v3, "None"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const/4 v2, 0x2

    goto :goto_1

    :cond_7
    const-string v3, "Stable"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    move v2, v5

    :cond_8
    :goto_1
    if-eqz v2, :cond_a

    if-eq v2, v5, :cond_9

    .line 1511
    sget-object p2, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SUPER_NIGHT_MODE_VALUE_OFF:[I

    invoke-virtual {v0, p3, p2}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    if-eqz v1, :cond_b

    .line 1513
    sget-object p2, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SUPER_NIGHT_MODE_VALUE_OFF:[I

    invoke-virtual {v1, p3, p2}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    if-eqz v1, :cond_b

    .line 1506
    sget-object p2, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SUPER_NIGHT_MODE_VALUE_ON:[I

    invoke-virtual {v1, p3, p2}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_2

    .line 1502
    :cond_a
    sget-object p2, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SUPER_NIGHT_MODE_VALUE_ON:[I

    invoke-virtual {v0, p3, p2}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_b
    :goto_2
    const-string p2, "dsp_super_night"

    .line 1518
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_d

    const-string p2, "meg_super_night"

    .line 1519
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_3

    :cond_c
    const-string p2, "off"

    .line 1523
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1524
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsSuperNightDetectModeSupported:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightDetectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1525
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightDetectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SUPER_NIGHT_MODE_VALUE_OFF:[I

    invoke-virtual {p0, p3, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_4

    .line 1520
    :cond_d
    :goto_3
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsSuperNightDetectModeSupported:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightDetectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1521
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightDetectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SUPER_NIGHT_MODE_VALUE_ON:[I

    invoke-virtual {p0, p3, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_e
    :goto_4
    return-void
.end method

.method public setSuperResolutionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 1868
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperrsolutionMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1869
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperrsolutionMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setThumbnailPostViewSize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    monitor-enter p0

    .line 1972
    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mThumbnailPostViewSupport:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyPostViewRequestSizeMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyPostViewRequestSizeMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1973
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1974
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyPostViewRequestSizeMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1976
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTranFaceDetectMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 942
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyTranFaceDetectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 945
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyTranFaceDetectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized setTranssionHDR(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    monitor-enter p0

    .line 1124
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mTranssionHDR:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mTranssionHDR:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mTranssionHDR:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1127
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTranssionSlimBodyLevels([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    .line 1333
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySlimBodyLevels:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1335
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTranssionSlimBodyLevels : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [[I

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1337
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySlimBodyLevels:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setTranssionSlimBodyMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1352
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySlimBodyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1353
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTranssionSlimBodyMode mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1354
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySlimBodyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setVideoHdrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6

    monitor-enter p0

    .line 1025
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHDRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHDRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, -0x1

    .line 1028
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xddf

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x1ad6f

    if-eq v1, v2, :cond_2

    const v2, 0x2dddaf

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "auto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v3

    goto :goto_0

    :cond_2
    const-string v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v4

    goto :goto_0

    :cond_3
    const-string v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v5

    :cond_4
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v5, :cond_6

    if-eq v0, v3, :cond_5

    goto :goto_1

    .line 1036
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHDRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v5, [I

    const/4 v1, 0x4

    aput v1, v0, v4

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 1033
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHDRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v5, [I

    const/4 v1, 0x3

    aput v1, v0, v4

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 1030
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHDRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v5, [I

    aput v4, v0, v4

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1041
    :goto_1
    monitor-exit p0

    return-void

    .line 1026
    :cond_8
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setVideoPortraitLevel(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 2595
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoPortraitLevel:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2598
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setVideoPortraitLevel]  portraitLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2599
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoPortraitLevel:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVideoPortraitMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 2568
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoPortraitmode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2571
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoPortraitmode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setZSLMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 2136
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSupportZSLMode] mRequestKeyZSL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyZSL:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2137
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyZSL:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2141
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyZSL:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->ZSL_MODE:[B

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 2143
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyZSL:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->NON_ZSL_MODE:[B

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public supportZoomRatioKey()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateRequestExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;II)V
    .locals 0

    return-void
.end method

.method public useBitmapWaterMark()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public usePreAECaptureFlow(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 2925
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mUsePreAeCaptureFlow:Z

    return p0
.end method
