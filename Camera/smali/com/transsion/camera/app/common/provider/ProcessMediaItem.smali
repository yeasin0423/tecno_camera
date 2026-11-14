.class public Lcom/transsion/camera/app/common/provider/ProcessMediaItem;
.super Ljava/lang/Object;
.source "ProcessMediaItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;,
        Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mContentValues:Landroid/content/ContentValues;

.field public mIsPreProcessed:Z

.field private final mMediaStoreId:J

.field private mProcessMode:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

.field private final mProcessStatus:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

.field private mProgressPercentage:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(JLcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mProgressPercentage:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mIsPreProcessed:Z

    .line 21
    iput-wide p1, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mMediaStoreId:J

    .line 22
    iput-object p3, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mProcessStatus:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    .line 23
    iput-object p5, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 24
    iput-object p6, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mUri:Landroid/net/Uri;

    .line 25
    iput-object p7, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mContentValues:Landroid/content/ContentValues;

    .line 26
    iput-object p4, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mProcessMode:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mContentValues:Landroid/content/ContentValues;

    return-object p0
.end method

.method public getMediaStoreId()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mMediaStoreId:J

    return-wide v0
.end method

.method public getPercentage()I
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mProgressPercentage:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getProcessMode()Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mProcessMode:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProcessMode;

    return-object p0
.end method

.method public getProcessStatus()Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mProcessStatus:Lcom/transsion/camera/app/common/provider/ProcessMediaItem$ProgressStatus;

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/ProcessMediaItem;->mUri:Landroid/net/Uri;

    return-object p0
.end method
