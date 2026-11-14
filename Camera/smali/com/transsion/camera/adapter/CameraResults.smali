.class public abstract Lcom/transsion/camera/adapter/CameraResults;
.super Ljava/lang/Object;
.source "CameraResults.java"


# instance fields
.field private mApertureValue:Lcom/transsion/camera/utils/exif/Rational;

.field private mComponentsConfiguration:[S

.field private mCompression:S

.field private mDateTime:Ljava/lang/String;

.field private mDateTimeDigitized:Ljava/lang/String;

.field private mDateTimeOriginal:Ljava/lang/String;

.field private mExifVersion:Ljava/lang/String;

.field private mExposureMode:S

.field private mExposureProgram:S

.field private mExposureTime:Lcom/transsion/camera/utils/exif/Rational;

.field private mFNumber:Lcom/transsion/camera/utils/exif/Rational;

.field private mFlash:S

.field private mFocalLength:Lcom/transsion/camera/utils/exif/Rational;

.field private mGpsLatitude:D

.field private mGpsLongitude:D

.field private mGpsTimeStamp:J

.field private mImageLength:J

.field private mImageWidth:J

.field private mIsoSpeedRatings:S

.field private mMake:Ljava/lang/String;

.field private mMeteringMode:S

.field private mModel:Ljava/lang/String;

.field private mOrientation:S

.field private mOtherTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/exif/ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotometricInterpretation:S

.field private mResolutionUnit:S

.field private mSoftware:Ljava/lang/String;

.field private mWhiteBalance:S

.field private mXResolution:Lcom/transsion/camera/utils/exif/Rational;

.field private mYCBCRPositioning:S

.field private mYResolution:Lcom/transsion/camera/utils/exif/Rational;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraResults;->mOtherTags:Ljava/util/List;

    return-void
.end method

.method public static stub(Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;)Lcom/transsion/camera/adapter/CameraResults;
    .locals 1

    .line 305
    sget-object v0, Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;->API_1:Lcom/transsion/camera/adapter/CameraAgentFactory$CameraApi;

    if-ne v0, p0, :cond_0

    .line 306
    new-instance p0, Lcom/transsion/camera/adapter/CameraResultsImpl;

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraResultsImpl;-><init>()V

    return-object p0

    .line 308
    :cond_0
    new-instance p0, Lcom/transsion/camera/adapter/CameraResults2Impl;

    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraResults2Impl;-><init>()V

    return-object p0
.end method


# virtual methods
.method public getApertureValue()Lcom/transsion/camera/utils/exif/Rational;
    .locals 0

    .line 648
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraResults;->mApertureValue:Lcom/transsion/camera/utils/exif/Rational;

    return-object p0
.end method

.method public getComponentsConfiguration()[S
    .locals 0

    .line 624
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraResults;->mComponentsConfiguration:[S

    return-object p0
.end method

.method public getCompression()S
    .locals 0

    .line 336
    iget-short p0, p0, Lcom/transsion/camera/adapter/CameraResults;->mCompression:S

    return p0
.end method

.method public getDateTime()Ljava/lang/String;
    .locals 0

    .line 480
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraResults;->mDateTime:Ljava/lang/String;

    return-object p0
.end method

.method public getDateTimeOriginal()Ljava/lang/String;
    .locals 0

    .line 608
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraResults;->mDateTimeOriginal:Ljava/lang/String;

    return-object p0
.end method

.method public getExifVersion()Ljava/lang/String;
    .locals 0

    .line 600
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraResults;->mExifVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getExposureMode()S
    .locals 0

    .line 904
    iget-short p0, p0, Lcom/transsion/camera/adapter/CameraResults;->mExposureMode:S

    return p0
.end method

.method public getExposureProgram()S
    .locals 0

    .line 568
    iget-short p0, p0, Lcom/transsion/camera/adapter/CameraResults;->mExposureProgram:S

    return p0
.end method

.method public getExposureTime()Lcom/transsion/camera/utils/exif/Rational;
    .locals 0

    .line 552
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraResults;->mExposureTime:Lcom/transsion/camera/utils/exif/Rational;

    return-object p0
.end method

.method public getFNumber()Lcom/transsion/camera/utils/exif/Rational;
    .locals 0

    .line 560
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraResults;->mFNumber:Lcom/transsion/camera/utils/exif/Rational;

    return-object p0
.end method

.method public getFlash()S
    .locals 0

    .line 704
    iget-short p0, p0, Lcom/transsion/camera/adapter/CameraResults;->mFlash:S

    return p0
.end method

.method public getFocalLength()Lcom/transsion/camera/utils/exif/Rational;
    .locals 0

    .line 712
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraResults;->mFocalLength:Lcom/transsion/camera/utils/exif/Rational;

    return-object p0
.end method

.method public getGpsLatitude()D
    .locals 2

    .line 1016
    iget-wide v0, p0, Lcom/transsion/camera/adapter/CameraResults;->mGpsLatitude:D

    return-wide v0
.end method

.method public getGpsLongitude()D
    .locals 2

    .line 1032
    iget-wide v0, p0, Lcom/transsion/camera/adapter/CameraResults;->mGpsLongitude:D

    return-wide v0
.end method

.method public getGpsTimeStamp()J
    .locals 2

    .line 1056
    iget-wide v0, p0, Lcom/transsion/camera/adapter/CameraResults;->mGpsTimeStamp:J

    return-wide v0
.end method

.method public getImageLength()J
    .locals 2

    .line 320
    iget-wide v0, p0, Lcom/transsion/camera/adapter/CameraResults;->mImageLength:J

    return-wide v0
.end method

.method public getImageWidth()J
    .locals 2

    .line 312
    iget-wide v0, p0, Lcom/transsion/camera/adapter/CameraResults;->mImageWidth:J

    return-wide v0
.end method

.method public getIsoSpeedRatings()S
    .locals 0

    .line 584
    iget-short p0, p0, Lcom/transsion/camera/adapter/CameraResults;->mIsoSpeedRatings:S

    return p0
.end method

.method public getMake()Ljava/lang/String;
    .locals 0

    .line 360
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraResults;->mMake:Ljava/lang/String;

    return-object p0
.end method

.method public getMeteringMode()S
    .locals 0

    .line 688
    iget-short p0, p0, Lcom/transsion/camera/adapter/CameraResults;->mMeteringMode:S

    return p0
.end method

.method public getModel()Ljava/lang/String;
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraResults;->mModel:Ljava/lang/String;

    return-object p0
.end method

.method public getOrientation()S
    .locals 0

    .line 376
    iget-short p0, p0, Lcom/transsion/camera/adapter/CameraResults;->mOrientation:S

    return p0
.end method

.method public getOtherTags()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 1276
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraResults;->mOtherTags:Ljava/util/List;

    return-object p0
.end method

.method public getPhotometricInterpretation()S
    .locals 0

    .line 344
    iget-short p0, p0, Lcom/transsion/camera/adapter/CameraResults;->mPhotometricInterpretation:S

    return p0
.end method

.method public getResolutionUnit()S
    .locals 0

    .line 456
    iget-short p0, p0, Lcom/transsion/camera/adapter/CameraResults;->mResolutionUnit:S

    return p0
.end method

.method public getSoftware()Ljava/lang/String;
    .locals 0

    .line 472
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraResults;->mSoftware:Ljava/lang/String;

    return-object p0
.end method

.method public getWhiteBalance()S
    .locals 0

    .line 912
    iget-short p0, p0, Lcom/transsion/camera/adapter/CameraResults;->mWhiteBalance:S

    return p0
.end method

.method public getXResolution()Lcom/transsion/camera/utils/exif/Rational;
    .locals 0

    .line 432
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraResults;->mXResolution:Lcom/transsion/camera/utils/exif/Rational;

    return-object p0
.end method

.method public getYCBCRPositioning()S
    .locals 0

    .line 528
    iget-short p0, p0, Lcom/transsion/camera/adapter/CameraResults;->mYCBCRPositioning:S

    return p0
.end method

.method public getYResolution()Lcom/transsion/camera/utils/exif/Rational;
    .locals 0

    .line 440
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraResults;->mYResolution:Lcom/transsion/camera/utils/exif/Rational;

    return-object p0
.end method

.method protected resetAll()V
    .locals 4

    const-wide/16 v0, -0x1

    .line 168
    iput-wide v0, p0, Lcom/transsion/camera/adapter/CameraResults;->mImageWidth:J

    .line 169
    iput-wide v0, p0, Lcom/transsion/camera/adapter/CameraResults;->mImageLength:J

    const/4 v2, -0x1

    .line 171
    iput-short v2, p0, Lcom/transsion/camera/adapter/CameraResults;->mCompression:S

    .line 172
    iput-short v2, p0, Lcom/transsion/camera/adapter/CameraResults;->mPhotometricInterpretation:S

    const/4 v3, 0x0

    .line 174
    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraResults;->mMake:Ljava/lang/String;

    .line 175
    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraResults;->mModel:Ljava/lang/String;

    .line 176
    iput-short v2, p0, Lcom/transsion/camera/adapter/CameraResults;->mOrientation:S

    .line 187
    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraResults;->mXResolution:Lcom/transsion/camera/utils/exif/Rational;

    .line 188
    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraResults;->mYResolution:Lcom/transsion/camera/utils/exif/Rational;

    .line 190
    iput-short v2, p0, Lcom/transsion/camera/adapter/CameraResults;->mResolutionUnit:S

    .line 192
    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraResults;->mSoftware:Ljava/lang/String;

    .line 193
    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraResults;->mDateTime:Ljava/lang/String;

    .line 199
    iput-short v2, p0, Lcom/transsion/camera/adapter/CameraResults;->mYCBCRPositioning:S

    .line 204
    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraResults;->mExposureTime:Lcom/transsion/camera/utils/exif/Rational;

    .line 205
    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraResults;->mFNumber:Lcom/transsion/camera/utils/exif/Rational;

    .line 206
    iput-short v2, p0, Lcom/transsion/camera/adapter/CameraResults;->mExposureProgram:S

    .line 208
    iput-short v2, p0, Lcom/transsion/camera/adapter/CameraResults;->mIsoSpeedRatings:S

    .line 210
    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraResults;->mExifVersion:Ljava/lang/String;

    .line 211
    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraResults;->mDateTimeOriginal:Ljava/lang/String;

    .line 212
    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraResults;->mDateTimeDigitized:Ljava/lang/String;

    .line 213
    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraResults;->mComponentsConfiguration:[S

    .line 216
    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraResults;->mApertureValue:Lcom/transsion/camera/utils/exif/Rational;

    .line 221
    iput-short v2, p0, Lcom/transsion/camera/adapter/CameraResults;->mMeteringMode:S

    .line 223
    iput-short v2, p0, Lcom/transsion/camera/adapter/CameraResults;->mFlash:S

    .line 224
    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraResults;->mFocalLength:Lcom/transsion/camera/utils/exif/Rational;

    .line 248
    iput-short v2, p0, Lcom/transsion/camera/adapter/CameraResults;->mExposureMode:S

    .line 249
    iput-short v2, p0, Lcom/transsion/camera/adapter/CameraResults;->mWhiteBalance:S

    const-wide/16 v2, 0x0

    .line 264
    iput-wide v2, p0, Lcom/transsion/camera/adapter/CameraResults;->mGpsLatitude:D

    .line 266
    iput-wide v2, p0, Lcom/transsion/camera/adapter/CameraResults;->mGpsLongitude:D

    .line 269
    iput-wide v0, p0, Lcom/transsion/camera/adapter/CameraResults;->mGpsTimeStamp:J

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraResults;->mOtherTags:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected setApertureValue(Lcom/transsion/camera/utils/exif/Rational;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mApertureValue:Lcom/transsion/camera/utils/exif/Rational;

    return-void
.end method

.method protected setComponentsConfiguration([S)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mComponentsConfiguration:[S

    return-void
.end method

.method protected setCompression(S)V
    .locals 0

    .line 340
    iput-short p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mCompression:S

    return-void
.end method

.method protected setDateTime(Ljava/lang/String;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mDateTime:Ljava/lang/String;

    return-void
.end method

.method protected setDateTimeDigitized(Ljava/lang/String;)V
    .locals 0

    .line 620
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mDateTimeDigitized:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mDateTimeDigitized:Ljava/lang/String;

    return-void
.end method

.method protected setDateTimeOriginal(Ljava/lang/String;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mDateTimeOriginal:Ljava/lang/String;

    return-void
.end method

.method protected setExifVersion(Ljava/lang/String;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mExifVersion:Ljava/lang/String;

    return-void
.end method

.method protected setExposureMode(S)V
    .locals 0

    .line 908
    iput-short p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mExposureMode:S

    return-void
.end method

.method protected setExposureProgram(S)V
    .locals 0

    .line 572
    iput-short p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mExposureProgram:S

    return-void
.end method

.method protected setExposureTime(Lcom/transsion/camera/utils/exif/Rational;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mExposureTime:Lcom/transsion/camera/utils/exif/Rational;

    return-void
.end method

.method protected setFNumber(Lcom/transsion/camera/utils/exif/Rational;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mFNumber:Lcom/transsion/camera/utils/exif/Rational;

    return-void
.end method

.method protected setFlash(S)V
    .locals 0

    .line 708
    iput-short p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mFlash:S

    return-void
.end method

.method protected setFocalLength(Lcom/transsion/camera/utils/exif/Rational;)V
    .locals 0

    .line 716
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mFocalLength:Lcom/transsion/camera/utils/exif/Rational;

    return-void
.end method

.method public setGpsLatitude(D)V
    .locals 0

    .line 1020
    iput-wide p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mGpsLatitude:D

    return-void
.end method

.method public setGpsLongitude(D)V
    .locals 0

    .line 1036
    iput-wide p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mGpsLongitude:D

    return-void
.end method

.method public setGpsTimeStamp(J)V
    .locals 0

    .line 1060
    iput-wide p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mGpsTimeStamp:J

    return-void
.end method

.method public setImageLength(J)V
    .locals 0

    .line 324
    iput-wide p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mImageLength:J

    return-void
.end method

.method public setImageWidth(J)V
    .locals 0

    .line 316
    iput-wide p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mImageWidth:J

    return-void
.end method

.method protected setIsoSpeedRatings(S)V
    .locals 0

    .line 588
    iput-short p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mIsoSpeedRatings:S

    return-void
.end method

.method protected setMake(Ljava/lang/String;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mMake:Ljava/lang/String;

    return-void
.end method

.method protected setModel(Ljava/lang/String;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mModel:Ljava/lang/String;

    return-void
.end method

.method protected setOrientation(S)V
    .locals 0

    .line 380
    iput-short p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mOrientation:S

    return-void
.end method

.method public setOtherTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    .line 1272
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mOtherTags:Ljava/util/List;

    return-void
.end method

.method protected setPhotometricInterpretation(S)V
    .locals 0

    .line 348
    iput-short p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mPhotometricInterpretation:S

    return-void
.end method

.method protected setResolutionUnit(S)V
    .locals 0

    .line 460
    iput-short p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mResolutionUnit:S

    return-void
.end method

.method protected setSoftware(Ljava/lang/String;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mSoftware:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailQuality(B)V
    .locals 0

    return-void
.end method

.method public setThumbnailSize(Landroid/util/Size;)V
    .locals 0

    return-void
.end method

.method protected setWhiteBalance(S)V
    .locals 0

    .line 916
    iput-short p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mWhiteBalance:S

    return-void
.end method

.method protected setXResolution(Lcom/transsion/camera/utils/exif/Rational;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mXResolution:Lcom/transsion/camera/utils/exif/Rational;

    return-void
.end method

.method protected setYCBCRPositioning(S)V
    .locals 0

    .line 532
    iput-short p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mYCBCRPositioning:S

    return-void
.end method

.method protected setYResolution(Lcom/transsion/camera/utils/exif/Rational;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraResults;->mYResolution:Lcom/transsion/camera/utils/exif/Rational;

    return-void
.end method
