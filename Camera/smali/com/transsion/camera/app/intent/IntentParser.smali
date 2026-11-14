.class public final Lcom/transsion/camera/app/intent/IntentParser;
.super Ljava/lang/Object;
.source "IntentParser.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field public mAppointCameraId:Z

.field public mCameraId:Ljava/lang/String;

.field public mDelayTime:I

.field public mFromIntent:Z

.field public mGoingToDocument:Z

.field public mGoogleAssistantIntent:Z

.field public mLaunchSource:Ljava/lang/String;

.field public mOpenOnly:Z

.field public mPhotoIntent:Z

.field private mProjectSupportSat:Z

.field public mSpecifyASD:Z

.field public mSpecifyBokeh:Z

.field public mSpecifyFaceBeauty:Z

.field public mSpecifyFrontFunVideo:Z

.field public mSpecifyFunVideo:Z

.field public mSpecifyHDR:Z

.field public mSpecifyHDROff:Z

.field public mSpecifyMacro:Z

.field public mSpecifyMode:Z

.field public mSpecifyMultiFacebeauty:Z

.field public mSpecifySlimBody:Z

.field public mSpecifySuperDefinitionOff:Z

.field public mSpecifySuperDefinitionOn:Z

.field public mSpecifyWideAngle:Z

.field public mVideoIntent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/intent/IntentParser;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/intent/IntentParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 23
    iput-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    .line 61
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f050037

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/app/intent/IntentParser;->mProjectSupportSat:Z

    .line 62
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->parseIntent(Landroid/content/Intent;)V

    .line 63
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/intent/IntentParser;->parseMetaData(Landroid/os/Bundle;)V

    return-void
.end method

.method private checkCameraId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 113
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    const-string p0, "0"

    .line 117
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "1"

    .line 118
    :cond_1
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private correctCameraIdForSpecifyMode(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "SpecifyMode"

    .line 155
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PortraitMode"

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FrontASDMode"

    .line 157
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MultiFaceBeautyMode"

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MultiFaceBeautyOffMode"

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FrontFunVideoMode"

    .line 160
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FrontFunVideoOffMode"

    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "1"

    .line 162
    iput-object p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private getDelayTimeFromIntent(Landroid/content/Intent;)I
    .locals 2

    const-string p0, "com.google.assistant.extra.TIMER_DURATION_SECONDS"

    const/4 v0, 0x3

    .line 223
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string v1, "android.intent.extra.TIMER_DURATION_SECONDS"

    .line 225
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 222
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private isEnterIntentMode(Landroid/content/Intent;)Z
    .locals 0

    .line 188
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.media.action.IMAGE_CAPTURE"

    .line 189
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 190
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "android.media.action.VIDEO_CAPTURE"

    .line 191
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

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

.method private isFromIntent(Landroid/content/Intent;)Z
    .locals 0

    .line 180
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.media.action.IMAGE_CAPTURE"

    .line 181
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 182
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "android.media.action.VIDEO_CAPTURE"

    .line 183
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "android.media.action.FANS_IMAGE_CAPTURE"

    .line 184
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

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

.method private isGoogleAssistantIntent(Landroid/content/Intent;)Z
    .locals 5

    const-string v0, "android.intent.extra.REFERRER_NAME"

    .line 197
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android-app://com.google.android.googlequicksearchbox/https/www.google.com"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "com.google.assistant.extra.OPEN_IN_VIDEO_MODE"

    .line 198
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 200
    :goto_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-gt v3, v4, :cond_3

    if-eqz v0, :cond_2

    .line 201
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->useBackCameraForTest(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    move v0, v1

    :cond_3
    return v0
.end method

.method private isOpenOnly(Landroid/content/Intent;)Z
    .locals 1

    const-string p0, "android.intent.extra.CAMERA_OPEN_ONLY"

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.google.assistant.extra.CAMERA_OPEN_ONLY"

    .line 231
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isPhotoIntent(Landroid/content/Intent;)Z
    .locals 0

    .line 216
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.media.action.STILL_IMAGE_CAMERA"

    .line 217
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 218
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

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

.method private isVideoIntent(Landroid/content/Intent;)Z
    .locals 2

    .line 208
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.media.action.VIDEO_CAMERA"

    .line 209
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 211
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "com.google.assistant.extra.OPEN_IN_VIDEO_MODE"

    .line 212
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private parseGoogleAssistantIntent(Landroid/content/Intent;)V
    .locals 1

    .line 167
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->isGoogleAssistantIntent(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mGoogleAssistantIntent:Z

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->isOpenOnly(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mOpenOnly:Z

    .line 170
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->getDelayTimeFromIntent(Landroid/content/Intent;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mDelayTime:I

    .line 172
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->isVideoIntent(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mVideoIntent:Z

    if-nez v0, :cond_0

    .line 174
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->isPhotoIntent(Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mPhotoIntent:Z

    :cond_0
    return-void
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_0

    .line 80
    sget-object p0, Lcom/transsion/camera/app/intent/IntentParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "parseIntent intent is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 83
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->isFromIntent(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mFromIntent:Z

    const-string v0, "com.android.systemui.camera_launch_source"

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 86
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->useFrontCamera(Landroid/content/Intent;)Z

    move-result v0

    .line 87
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->useBackCamera(Landroid/content/Intent;)Z

    move-result v1

    .line 88
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSatCameraLogicId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 90
    iput-boolean v3, p0, Lcom/transsion/camera/app/intent/IntentParser;->mAppointCameraId:Z

    const-string v0, "1"

    .line 91
    iput-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "0"

    if-eqz v1, :cond_3

    .line 93
    iput-boolean v3, p0, Lcom/transsion/camera/app/intent/IntentParser;->mAppointCameraId:Z

    if-eqz v2, :cond_2

    .line 94
    iget-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mProjectSupportSat:Z

    if-eqz v1, :cond_2

    .line 95
    iput-object v2, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto :goto_0

    .line 97
    :cond_2
    iput-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 100
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->isEnterIntentMode(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mProjectSupportSat:Z

    if-eqz v1, :cond_4

    .line 101
    iput-object v2, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    goto :goto_0

    .line 103
    :cond_4
    iput-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/intent/IntentParser;->checkCameraId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    .line 108
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->parseSpecifyModeIntent(Landroid/content/Intent;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->parseGoogleAssistantIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private parseMetaData(Landroid/os/Bundle;)V
    .locals 0

    if-nez p1, :cond_0

    .line 68
    sget-object p0, Lcom/transsion/camera/app/intent/IntentParser;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "parseMetaData data is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 71
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->useBackCamera(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mAppointCameraId:Z

    const-string p1, "0"

    .line 74
    iput-object p1, p0, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private parseSpecifyModeIntent(Landroid/content/Intent;)V
    .locals 2

    .line 127
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.action.START_SPECIFY_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mAppointCameraId:Z

    .line 130
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->correctCameraIdForSpecifyMode(Landroid/content/Intent;)V

    const-string v0, "SpecifyMode"

    .line 132
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ASDMode"

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyASD:Z

    const-string v0, "HDRMode"

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyHDR:Z

    const-string v0, "HDROffMode"

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyHDROff:Z

    const-string v0, "SuperDefinitionOffMode"

    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifySuperDefinitionOff:Z

    const-string v0, "SuperDefinitionOnMode"

    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifySuperDefinitionOn:Z

    const-string v0, "MacroMode"

    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMacro:Z

    const-string v0, "WideAngleMode"

    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyWideAngle:Z

    const-string v0, "FaceBeauty"

    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFaceBeauty:Z

    const-string v0, "SlimBody"

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifySlimBody:Z

    const-string v0, "FunVideoMode"

    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFunVideo:Z

    const-string v0, "FunVideoOffMode"

    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const-string v0, "BokehMode"

    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyBokeh:Z

    const-string v0, "BokehOffMode"

    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const-string v0, "FrontASDMode"

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const-string v0, "MultiFaceBeautyMode"

    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMultiFacebeauty:Z

    const-string v0, "MultiFaceBeautyOffMode"

    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const-string v0, "FrontFunVideoMode"

    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFrontFunVideo:Z

    const-string p0, "FrontFunVideoOffMode"

    .line 150
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private useBackCamera(Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "com.android.systemui.camera_launch_source"

    .line 242
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "volume_double_tap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 244
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "arcore_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/intent/IntentParser;->useBackCameraForTest(Landroid/content/Intent;)Z

    move-result p0

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

.method private useBackCamera(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "ModeName"

    .line 250
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DocumentEntry"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 252
    iput-boolean v0, p0, Lcom/transsion/camera/app/intent/IntentParser;->mGoingToDocument:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private useBackCameraForTest(Landroid/content/Intent;)Z
    .locals 1

    const-string p0, "isVoiceQuery"

    const/4 v0, 0x0

    .line 258
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "NoUiQuery"

    .line 259
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private useFrontCamera(Landroid/content/Intent;)Z
    .locals 1

    const-string p0, "com.google.assistant.extra.USE_FRONT_CAMERA"

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "android.intent.extra.USE_FRONT_CAMERA"

    .line 236
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    .line 237
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "selfie"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
