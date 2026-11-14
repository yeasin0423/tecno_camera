.class public Lcom/transsion/camera/feature/mode/doc/DocumentMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "DocumentMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;,
        Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;,
        Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode<",
        "Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static sCheckDetectorLicense:Z


# instance fields
.field private mCallBack:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;

.field private mCount:I

.field private mDialog:Landroid/app/Dialog;

.field private mDialogCenterY:I

.field private mDocDetectorHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

.field private mDocHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

.field private mFlagDraw:Z

.field private mGLLine:Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

.field private final mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mIgnoreFrame:I

.field private mIsCheck:Z

.field private mIsModeInit:Z

.field private mIsShowDialog:Z

.field private mMaxHeight:F

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mShutterClick:Z

.field private mXnetDocDetector:Lcom/youtu/ocr/docprocess/DocDetector;

.field mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 76
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    .line 56
    sget-object p1, Lcom/youtu/ocr/docprocess/DocDetector;->sharedInstance:Lcom/youtu/ocr/docprocess/DocDetector;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mXnetDocDetector:Lcom/youtu/ocr/docprocess/DocDetector;

    .line 57
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsModeInit:Z

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsCheck:Z

    .line 69
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsShowDialog:Z

    .line 70
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mFlagDraw:Z

    .line 71
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mShutterClick:Z

    .line 310
    new-instance p1, Lcom/transsion/camera/feature/mode/doc/DocumentMode$4;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode$4;-><init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIgnoreFrame:I

    return p0
.end method

.method static synthetic access$1002(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/mode/doc/DocumentMode;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIgnoreFrame:I

    return p1
.end method

.method static synthetic access$108(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)I
    .locals 2

    .line 49
    iget v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIgnoreFrame:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIgnoreFrame:I

    return v0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Landroid/content/Context;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/graphics/Bitmap;)Landroid/app/Dialog;
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->showDialog(Landroid/graphics/Bitmap;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/youtu/ocr/docprocess/DocDetector;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mXnetDocDetector:Lcom/youtu/ocr/docprocess/DocDetector;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Landroid/content/Context;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Landroid/content/Context;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mGLLine:Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    return-object p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;)Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mGLLine:Lcom/transsion/camera/feature/mode/doc/GLObject/GLLine;

    return-object p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsCheck:Z

    return p0
.end method

.method static synthetic access$302(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsCheck:Z

    return p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mFlagDraw:Z

    return p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mFlagDraw:Z

    return p1
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mShutterClick:Z

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->resetTips()V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsModeInit:Z

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/media/Image;II)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->detectorImage(Landroid/media/Image;II)V

    return-void
.end method

.method private detectorImage(Landroid/media/Image;II)V
    .locals 2

    .line 320
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->getNV21Buffer(Landroid/media/Image;)[B

    move-result-object p1

    .line 321
    iget v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mCount:I

    div-int/lit8 v1, v0, 0xa

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 322
    iput v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mCount:I

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocDetectorHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 325
    iput v1, v0, Landroid/os/Message;->what:I

    .line 326
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 327
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 328
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 329
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocDetectorHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 331
    iput v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mCount:I

    :goto_0
    return-void
.end method

.method private resetTips()V
    .locals 3

    .line 365
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsModeInit:Z

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/doc/R$string;->doc_mode_tips:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private showDialog(Landroid/graphics/Bitmap;)Landroid/app/Dialog;
    .locals 4

    .line 248
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 249
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 250
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->getExpectBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 251
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 253
    new-instance v2, Lcom/transsion/camera/feature/mode/doc/DocumentMode$1;

    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode$1;-><init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 263
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/doc/R$color;->dialog_color:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 264
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v3, 0x30

    .line 265
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 266
    iget v3, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDialogCenterY:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v3, p1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 p1, 0x1

    .line 267
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 268
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 269
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 270
    new-instance p1, Lcom/transsion/camera/feature/mode/doc/DocumentMode$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode$2;-><init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 280
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 281
    new-instance p1, Lcom/transsion/camera/feature/mode/doc/DocumentMode$3;

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode$3;-><init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/app/Dialog;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, p1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v0
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .locals 3

    .line 373
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->autoWatermark()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/mode/CaptureInfo;-><init>(IZZ)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->createImageProcessor()Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public createImageProcessor()Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;
    .locals 1

    .line 378
    new-instance v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method public doOnFileSaved(Landroid/net/Uri;ZZ)V
    .locals 3

    .line 347
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->doOnFileSaved(Landroid/net/Uri;ZZ)V

    const/4 p2, 0x0

    .line 348
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mShutterClick:Z

    .line 349
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p3, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-virtual {p3}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->shouldDiaplay()Z

    move-result p3

    .line 350
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOnFileSaved show dialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsShowDialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsShowDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 351
    iget-boolean p3, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsShowDialog:Z

    if-eqz p3, :cond_0

    .line 352
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 353
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 354
    iput v0, p2, Landroid/os/Message;->what:I

    .line 355
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 356
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 358
    :cond_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsCheck:Z

    .line 359
    iput p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIgnoreFrame:I

    .line 360
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->resetTips()V

    :goto_0
    return-void
.end method

.method public getDataFlowType()I
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x4

    .line 161
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getExpectBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 293
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 294
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 297
    iget v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mMaxHeight:F

    int-to-float v1, v3

    cmpg-float v2, v0, v1

    const/high16 v5, 0x3f800000    # 1.0f

    if-gez v2, :cond_0

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v5

    .line 300
    :goto_0
    iget v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mMaxHeight:F

    int-to-float v2, v4

    cmpg-float v6, v1, v2

    if-gez v6, :cond_1

    div-float v5, v1, v2

    :cond_1
    cmpg-float v1, v5, v0

    if-gez v1, :cond_2

    move v0, v5

    .line 304
    :cond_2
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 305
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 306
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p0

    rsub-int p0, p0, 0x168

    int-to-float p0, p0

    invoke-virtual {v5, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    .line 307
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 13

    .line 166
    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/DocumentRestriction;->getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    const-string v1, "on"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_picture_size"

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryEntryValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 v3, 0x0

    if-eqz p0, :cond_3

    .line 170
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    .line 173
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 174
    invoke-static {v7}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v8

    .line 175
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v9

    int-to-double v9, v9

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-double v11, v8

    div-double/2addr v9, v11

    sub-double/2addr v9, v4

    .line 176
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_0

    move-object v3, v7

    :cond_1
    if-nez v3, :cond_2

    .line 183
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v3, p0

    .line 185
    :cond_2
    invoke-virtual {v0, v1, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_3
    sget-object p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultPictureSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 0

    .line 97
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 98
    new-instance p1, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;-><init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Lcom/transsion/camera/feature/mode/doc/DocumentMode$1;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mCallBack:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;

    .line 99
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 100
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mCallBack:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocumentCallBack;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 101
    new-instance p1, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;-><init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    .line 102
    new-instance p1, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/DocumentThread;->getInstance()Lcom/transsion/camera/feature/mode/doc/DocumentThread;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;-><init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocDetectorHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

    const/4 p1, 0x1

    .line 103
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsModeInit:Z

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/doc/R$dimen;->dialog_image_max_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mMaxHeight:F

    .line 105
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/doc/R$dimen;->dialog_diff:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-double p1, p1

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    .line 106
    invoke-static {p3}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    int-to-double p3, p3

    const-wide p5, 0x3ff547ae147ae148L    # 1.33

    mul-double/2addr p3, p5

    const-wide/high16 p5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr p3, p5

    add-double/2addr p1, p3

    double-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDialogCenterY:I

    return-void
.end method

.method protected isShot2ShotEnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onModeCaptureFailed()V
    .locals 2

    .line 337
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onModeCaptureFailed()V

    .line 338
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onModeCaptureFailed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 339
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mShutterClick:Z

    const/4 v1, 0x1

    .line 340
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsCheck:Z

    .line 341
    iput v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIgnoreFrame:I

    .line 342
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->resetTips()V

    return-void
.end method

.method public onPostViewData([BIIII)V
    .locals 0

    return-void
.end method

.method public onSettingReady()V
    .locals 3

    .line 81
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 82
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCameraDeviceControl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->resetTips()V

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsCheck:Z

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocDetectorHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/DocumentThread;->getInstance()Lcom/transsion/camera/feature/mode/doc/DocumentThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;-><init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocDetectorHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocDetectorHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_1

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    :cond_1
    return-void
.end method

.method protected onShutterClickBefore(I)Z
    .locals 3

    .line 111
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClickBefore(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/doc/R$string;->doc_mode_tips_correcting:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    const/4 p1, 0x1

    .line 114
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsShowDialog:Z

    .line 115
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsCheck:Z

    .line 116
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mShutterClick:Z

    return p1

    :cond_0
    return v0
.end method

.method public pause()V
    .locals 2

    .line 129
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsShowDialog:Z

    .line 131
    iput v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIgnoreFrame:I

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 2

    .line 140
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeUninit()V

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mIsModeInit:Z

    .line 143
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mFlagDraw:Z

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mHintInfoAlways:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 146
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 150
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->mDocDetectorHandler:Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocDetectorHandler;

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 151
    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/DocumentThread;->quitDocThread()V

    return-void
.end method
