.class final Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;
.super Ljava/lang/Object;
.source "WideSelfieImpl.java"

# interfaces
.implements Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WideSelfieCallbackWrapper"
.end annotation


# instance fields
.field private mCachedResult:Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;

.field private mDelegate:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;)V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;->mDelegate:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$1;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;-><init>(Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;)V

    return-void
.end method

.method private cacheProcessResult(Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;)Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;->mCachedResult:Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;

    if-nez v0, :cond_0

    .line 211
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;->mCachedResult:Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;

    return-object p1

    .line 214
    :cond_0
    iget v1, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mCommand:I

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;->mCachedResult:Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;

    return-object p1

    .line 219
    :cond_1
    iget v1, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mProgress:I

    if-gez v1, :cond_2

    .line 220
    iget v0, v0, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mProgress:I

    iput v0, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mProgress:I

    .line 222
    :cond_2
    iget v0, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mDirection:I

    if-nez v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;->mCachedResult:Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;

    iget v0, v0, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mDirection:I

    iput v0, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mDirection:I

    .line 225
    :cond_3
    iget-object v0, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mData:[B

    if-nez v0, :cond_4

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;->mCachedResult:Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;

    iget v1, v0, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mImageWidth:I

    iput v1, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mImageWidth:I

    .line 227
    iget v1, v0, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mImageHeight:I

    iput v1, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mImageHeight:I

    .line 228
    iget v1, v0, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mImageFormat:I

    iput v1, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mImageFormat:I

    .line 229
    iget-object v1, v0, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mData:[B

    iput-object v1, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mData:[B

    .line 230
    iget-object v0, v0, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mThumbOffset:Landroid/graphics/Point;

    iput-object v0, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mThumbOffset:Landroid/graphics/Point;

    .line 232
    :cond_4
    iget-object v0, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mThumbLocation:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;->mCachedResult:Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;

    iget-object v0, v0, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mThumbLocation:Landroid/graphics/Rect;

    iput-object v0, p1, Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;->mThumbLocation:Landroid/graphics/Rect;

    .line 235
    :cond_5
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;->mCachedResult:Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;

    return-object p1
.end method


# virtual methods
.method public onProcessResult(ILcom/transsion/camera/featurelibs/wideselfie/ProcessResult;)V
    .locals 0

    .line 202
    invoke-direct {p0, p2}, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;->cacheProcessResult(Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;)Lcom/transsion/camera/featurelibs/wideselfie/ProcessResult;

    move-result-object p2

    .line 204
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/wideselfie/WideSelfieImpl$WideSelfieCallbackWrapper;->mDelegate:Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;

    if-eqz p0, :cond_0

    .line 205
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/featurelibs/wideselfie/IWideSelfie$WideSelfieCallback;->onProcessResult(ILcom/transsion/camera/featurelibs/wideselfie/ProcessResult;)V

    :cond_0
    return-void
.end method
