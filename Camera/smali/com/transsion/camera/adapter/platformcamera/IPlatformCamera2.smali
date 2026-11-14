.class public interface abstract Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;
.super Ljava/lang/Object;
.source "IPlatformCamera2.java"


# virtual methods
.method public abstract aeStateFlashRequired(Landroid/hardware/camera2/CaptureResult;)Z
.end method

.method public abstract checkAfSearchStateResult(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;
.end method

.method public abstract checkAsdResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkDualLensResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkEyeDetectionResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkHumanDetectResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkMoonDetectionResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkNightHawkResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkScreenFlashFireResult(Landroid/hardware/camera2/CaptureResult;)Z
.end method

.method public abstract checkShot2ShotResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkStreamIdResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkTranssionFaceInfo(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract enableBWConvert(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableBWPortrait(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableBgServiceMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableCCUFlow(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableContinuousShot(Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableFace3A(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableFakeDualLensMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableMirror(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableQuickPreview(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableRTDofMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableTranssionCameraMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableTranssionPlugin(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableVideoInterpolation(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableVideoMirror(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract get4cellInOneSize(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getAntiFaceInfoRect(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract getFovCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;
.end method

.method public abstract getMultiCameraZoomSteps(Landroid/hardware/camera2/CameraCharacteristics;)[F
.end method

.method public abstract getSlimBodyFeatureSize(Landroid/hardware/camera2/CameraCharacteristics;)I
.end method

.method public abstract getStereoSensorCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;
.end method

.method public abstract getSupportLogicalCameraMode()[I
.end method

.method public abstract getSupportSMVRModeMetaData(Landroid/hardware/camera2/CameraCharacteristics;)[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;
.end method

.method public abstract getSupportSTBlurModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedAsdMode(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedDistortionCorrection(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedDualCamCalibSize(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Size;
.end method

.method public abstract getSupportedDualCamPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedEyeDetection(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedFaceBeautyFeatures(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedFaceBeautyFeaturesLevelScope(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedFaceBeautyLevels(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedFaceBeautyModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedFilterIds(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedHdModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedHumanEffectModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedISOValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedLuminanceValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedManualWBRangeValue(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedMeteringModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedPhotoHdrModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedScreenFlashModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedShot2Shot(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedSuperNightModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedTranFaceDetectMode(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedTranssionHDR(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedVideoHdrModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedVideoPortraitLevel(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedVsdofLevel(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract initFirst(Landroid/hardware/camera2/CameraCharacteristics;)V
.end method

.method public abstract initSecond(Landroid/hardware/camera2/CameraCharacteristics;)V
.end method

.method public abstract isAntiVideoSupport()Z
.end method

.method public abstract isAutoWaterMarkSupport()Z
.end method

.method public abstract isBGServiceModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isBWPortraitSupport()Z
.end method

.method public abstract isDspSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isFakeRAW_RAWCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isFakeRAW_YUVCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isGenderAttributeValueSupport()Z
.end method

.method public abstract isHighFpsSupport()Z
.end method

.method public abstract isLogicalCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isMacroTorchSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isMultiDualCamLogicalSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isMultiDualCamTeleCamSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isOISSupport()Z
.end method

.method public abstract isPeriscopeCamSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isPeriscopeLensSupport()Z
.end method

.method public abstract isPortraitModeEnhanceSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSMVRModeSupport()Z
.end method

.method public abstract isSatModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isScreenFlashFireSupport()Z
.end method

.method public abstract isSupportSlimBodyMode(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSupportedHumanDetection(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSupportedNightHawkMode(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSupportedStableSuperNight(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSupportedSuperDefinition(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSupportedSuperResolution(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isTeleCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isThumbnailPostViewSupport()Ljava/lang/Boolean;
.end method

.method public abstract isTranssionCameraModeSupport()Z
.end method

.method public abstract isVideoCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isVideoPortraitSupport()Z
.end method

.method public abstract isVideoWaterMarkSupport()Z
.end method

.method public abstract isWideCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isZSLSupport()Z
.end method

.method public abstract needAfModeBeforePreAF()Z
.end method

.method public abstract needFakePostView()Z
.end method

.method public abstract needFlipForVideoMirror()Z
.end method

.method public abstract needTriggerPreCapture(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;II)Z
.end method

.method public abstract release()V
.end method

.method public abstract requestCancelFocus(Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAiMoonMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAntiVideoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAppMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAsdMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAutoWaterMarkMode(Ljava/lang/String;ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAutoWaterMarkParameterList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setBgImageReaderId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setCusIspAsd([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setDenoiseMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setDistortionCorrection(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setDistortionCorrectionPreview(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setEyeDetection(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setFaceBeautyFeaturesLevel([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setFaceBeautyLevel(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setFaceBeautyMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setGenderAttributeValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setHdMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setHighFpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setHumanDetection(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setHumanEffectMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setISOParameter(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setLowLightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setLuminanceValue(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setMacroLampValue(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setManualAWBValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setMeteringMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setMiddleNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setMoonDetectionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setMultiCropRegion([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setNightHawkMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setPDAF(Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setPhotoHdrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setPortraitMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setPortraitModeEnhanceMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setRecordingOrientation(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSMVRMode([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSTBlurMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSatPictureSize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setScreenFlashMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSdofPhotoLevel(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSdofPhotoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSdofPreviewSize(Landroid/util/Size;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setShot2ShotMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSuperDefinitionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSuperNightFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSuperNightMode(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSuperResolutionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setThumbnailPostViewSize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranFaceDetectMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranssionHDR(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranssionSlimBodyLevels([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranssionSlimBodyMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoHdrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoPortraitLevel(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoPortraitMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setZSLMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract supportZoomRatioKey()Z
.end method

.method public abstract updateRequestExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;II)V
.end method

.method public abstract useBitmapWaterMark()Z
.end method

.method public abstract usePreAECaptureFlow(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method
