.class public abstract Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$EncoderParams;
.super Ljava/lang/Object;
.source "TimeLapseVideoEncoder.java"

# interfaces
.implements Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$StatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EncoderParams"
.end annotation


# instance fields
.field protected mFD:Ljava/io/FileDescriptor;

.field protected mPath:Ljava/lang/String;

.field protected mTimeLapse:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/FileDescriptor;I)V
    .locals 0

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-object p1, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$EncoderParams;->mPath:Ljava/lang/String;

    .line 424
    iput-object p2, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$EncoderParams;->mFD:Ljava/io/FileDescriptor;

    .line 425
    iput p3, p0, Lcom/transsion/camera/utils/encoder/TimeLapseVideoEncoder$EncoderParams;->mTimeLapse:I

    return-void
.end method
