.class Lcom/transsion/camera/feature/common/DataStream;
.super Ljava/lang/Object;
.source "DataStream.java"

# interfaces
.implements Lcom/transsion/camera/feature/common/IDataStream;
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDataListener:Lcom/transsion/camera/feature/common/IDataStream$IDataListener;

.field private final mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

.field private mFormatInit:Z

.field private mFrameData:[B

.field private final mGuardLock:Ljava/lang/Object;

.field private mHeight:I

.field private mImageFormat:I

.field private mStreamListener:Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;

.field private mStreamState:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/common/DataStream;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/common/DataStream;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    .line 32
    iput v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mImageFormat:I

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mStreamState:Z

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mGuardLock:Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Lcom/transsion/camera/feature/common/DataStream;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-void
.end method


# virtual methods
.method public createStream()V
    .locals 2

    .line 134
    sget-object v0, Lcom/transsion/camera/feature/common/DataStream;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createStream"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mGuardLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 136
    :try_start_0
    iput v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mWidth:I

    .line 137
    iput v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mHeight:I

    .line 138
    iput-boolean v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mFormatInit:Z

    .line 139
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    return-void

    :catchall_0
    move-exception p0

    .line 139
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public destroyStream()V
    .locals 2

    .line 153
    sget-object v0, Lcom/transsion/camera/feature/common/DataStream;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "destroyStream"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mGuardLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 155
    :try_start_0
    iput v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mWidth:I

    .line 156
    iput v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mHeight:I

    .line 157
    iput-boolean v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mFormatInit:Z

    .line 158
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/feature/common/DataStream;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    return-void

    :catchall_0
    move-exception p0

    .line 158
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onPreviewFrame(Landroid/media/Image;II)V
    .locals 8

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mGuardLock:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mFormatInit:Z

    const/16 v2, 0x11

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mWidth:I

    if-ne p2, v1, :cond_0

    iget v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mHeight:I

    if-eq p3, v1, :cond_2

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 54
    iput v2, p0, Lcom/transsion/camera/feature/common/DataStream;->mImageFormat:I

    goto :goto_0

    :cond_1
    const v1, 0x32315659

    .line 56
    iput v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mImageFormat:I

    .line 59
    :goto_0
    iput-boolean v3, p0, Lcom/transsion/camera/feature/common/DataStream;->mFormatInit:Z

    .line 60
    iput p2, p0, Lcom/transsion/camera/feature/common/DataStream;->mWidth:I

    .line 61
    iput p3, p0, Lcom/transsion/camera/feature/common/DataStream;->mHeight:I

    .line 62
    sget-object v1, Lcom/transsion/camera/feature/common/DataStream;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStreamAvailable mImageFormat: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/transsion/camera/feature/common/DataStream;->mImageFormat:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mWidth: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/transsion/camera/feature/common/DataStream;->mWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mHeight: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/transsion/camera/feature/common/DataStream;->mHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mStreamListener:Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;

    if-eqz v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mStreamListener:Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;

    iget v5, p0, Lcom/transsion/camera/feature/common/DataStream;->mImageFormat:I

    invoke-interface {v1, p2, p3, v5}, Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;->onStreamAvailable(III)V

    .line 70
    :cond_2
    iget-boolean v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mStreamState:Z

    if-nez v1, :cond_3

    .line 71
    monitor-exit v0

    return-void

    .line 73
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 76
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 77
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 81
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    aget-object v4, v6, v4

    .line 82
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 83
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    .line 85
    iget v7, p0, Lcom/transsion/camera/feature/common/DataStream;->mImageFormat:I

    if-ne v2, v7, :cond_6

    add-int p1, v5, v6

    add-int/2addr p1, v3

    .line 87
    iget-object v2, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    if-eqz v2, :cond_4

    array-length v2, v2

    if-eq v2, p1, :cond_5

    .line 88
    :cond_4
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    .line 91
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    invoke-virtual {v0, p1, v1, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 92
    iget-object p1, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    invoke-virtual {v4, p1, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 95
    :cond_6
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    aget-object p1, p1, v3

    .line 96
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int v3, v5, v2

    add-int/2addr v3, v6

    .line 100
    iget-object v7, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    if-eqz v7, :cond_7

    array-length v7, v7

    if-eq v7, v3, :cond_8

    .line 101
    :cond_7
    new-array v3, v3, [B

    iput-object v3, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    .line 104
    :cond_8
    iget-object v3, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    invoke-virtual {v0, v3, v1, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    invoke-virtual {v4, v0, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    add-int/2addr v5, v6

    invoke-virtual {p1, v0, v5, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 109
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/feature/common/DataStream;->mGuardLock:Ljava/lang/Object;

    monitor-enter p1

    .line 110
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mDataListener:Lcom/transsion/camera/feature/common/IDataStream$IDataListener;

    if-eqz v0, :cond_9

    .line 111
    sget-object v0, Lcom/transsion/camera/feature/common/DataStream;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataAvailable width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/common/DataStream;->mImageFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mDataListener:Lcom/transsion/camera/feature/common/IDataStream$IDataListener;

    iget-object v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget p0, p0, Lcom/transsion/camera/feature/common/DataStream;->mImageFormat:I

    invoke-interface {v0, v1, p2, p3, p0}, Lcom/transsion/camera/feature/common/IDataStream$IDataListener;->onDataAvailable([BIII)V

    .line 115
    :cond_9
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 73
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public setDataListener(Lcom/transsion/camera/feature/common/IDataStream$IDataListener;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mGuardLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    iput-object p1, p0, Lcom/transsion/camera/feature/common/DataStream;->mDataListener:Lcom/transsion/camera/feature/common/IDataStream$IDataListener;

    .line 122
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setStreamListener(Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mGuardLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_0
    iput-object p1, p0, Lcom/transsion/camera/feature/common/DataStream;->mStreamListener:Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;

    .line 129
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateState(Z)V
    .locals 3

    .line 145
    sget-object v0, Lcom/transsion/camera/feature/common/DataStream;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mGuardLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/common/DataStream;->mStreamState:Z

    .line 148
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
