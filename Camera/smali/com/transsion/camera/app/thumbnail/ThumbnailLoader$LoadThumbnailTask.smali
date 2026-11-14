.class Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;
.super Landroid/os/AsyncTask;
.source "ThumbnailLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/transsion/camera/app/thumbnail/ThumbnailItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mBucketIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;",
            ")V"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 119
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;->mContentResolver:Ljava/lang/ref/WeakReference;

    .line 120
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;->mLoaderCallback:Ljava/lang/ref/WeakReference;

    .line 121
    iput-object p2, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;->mBucketIds:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;-><init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;)V

    .line 126
    iput-object p4, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;->mUri:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;Landroid/net/Uri;Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$1;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;-><init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;Landroid/net/Uri;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$1;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;-><init>(Landroid/content/ContentResolver;Ljava/util/ArrayList;Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;)V

    return-void
.end method

.method private static getBitmapFromExif(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    invoke-static {p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    invoke-static {}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBitmapFromExif fail: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 308
    :cond_0
    invoke-static {p1}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromExif(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    .line 310
    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 312
    :try_start_0
    invoke-static {p0}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromExif(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p2

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 310
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1

    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    .line 314
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 316
    :cond_3
    invoke-static {}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBitmapFromExif: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", path: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getBitmapFromVideo(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    invoke-static {p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    invoke-static {}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBitmapFromVideo fail: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x200

    .line 327
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/BitmapUtils;->createScaledBitmapFromVideo(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_3

    const-string v1, "r"

    .line 329
    invoke-virtual {p0, p2, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 331
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/BitmapUtils;->createScaledBitmapFromVideo(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 329
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1

    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    .line 333
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_3
    return-object p1
.end method

.method private getLatestMediaFromDatabase(Landroid/content/ContentResolver;)Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(media_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 177
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "media_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    .line 179
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;->getMediaFromDatabase(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;

    move-result-object p0

    return-object p0
.end method

.method private getMediaFromDatabase(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "external"

    .line 184
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const-string v2, "_id"

    const-string v3, "orientation"

    const-string v5, "datetaken"

    const-string v6, "_data"

    const-string v7, "media_type"

    .line 186
    filled-new-array {v2, v3, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    .line 193
    iget-object v2, v0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;->mBucketIds:Ljava/util/ArrayList;

    const/4 v9, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") AND ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v3, v9

    .line 195
    :goto_0
    iget-object v6, v0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;->mBucketIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    const/16 v6, 0x3d

    const-string v7, "bucket_id"

    if-nez v3, :cond_0

    .line 197
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;->mBucketIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v8, " OR "

    .line 199
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;->mBucketIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v0, ")"

    .line 202
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object/from16 v6, p2

    move-object v2, v6

    :goto_2
    const-string v8, "datetaken DESC,_id DESC"

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    move-object v6, v2

    .line 211
    :try_start_0
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 212
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v0, 0x1

    .line 214
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v0, 0x2

    .line 215
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const/4 v0, 0x3

    .line 216
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 217
    new-instance v0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;

    .line 218
    invoke-static {v1, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    const/4 v1, 0x4

    .line 219
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move-object v11, v0

    invoke-direct/range {v11 .. v19}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;-><init>(JIJLandroid/net/Uri;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v10, v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_3
    :goto_3
    if-eqz v3, :cond_4

    .line 225
    :goto_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v3, v10

    .line 222
    :goto_5
    :try_start_2
    invoke-static {}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    const-string v4, "query Thumbnail fail: "

    invoke-static {v1, v4, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_4

    goto :goto_4

    .line 229
    :cond_4
    :goto_6
    invoke-static {}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLatestMediaFromDatabase, media: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", selection: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v10

    :catchall_1
    move-exception v0

    move-object v10, v3

    :goto_7
    if-eqz v10, :cond_5

    .line 225
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 227
    :cond_5
    throw v0
.end method

.method private getMediaFromDatabaseByUri(Landroid/content/ContentResolver;)Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;->getMediaFromDatabase(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;

    move-result-object p0

    return-object p0
.end method

.method private static getThumbnailFromMedia(Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;Landroid/content/ContentResolver;)Lcom/transsion/camera/app/thumbnail/ThumbnailItem;
    .locals 13

    .line 234
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "%"

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    .line 237
    :cond_0
    new-instance v3, Lcom/transsion/camera/app/thumbnail/ThumbnailItem;

    invoke-direct {v3}, Lcom/transsion/camera/app/thumbnail/ThumbnailItem;-><init>()V

    .line 238
    iget v4, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->orientation:I

    .line 241
    :try_start_0
    iget v5, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->mediaType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0x1c

    const/4 v7, 0x3

    const-string v8, "external"

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v5, v9, :cond_5

    .line 242
    :try_start_1
    invoke-static {v8}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 243
    iget-wide v11, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->id:J

    invoke-static {v5, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v3, Lcom/transsion/camera/app/thumbnail/ThumbnailItem;->mUri:Landroid/net/Uri;

    .line 245
    iget-object v8, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-static {p1, v8, v5}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;->getBitmapFromExif(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-gt v0, v6, :cond_2

    if-nez v5, :cond_1

    .line 248
    iget-wide v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->id:J

    invoke-static {p1, v0, v1, v9, v2}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 251
    :cond_1
    invoke-static {v5, v4, v10}, Lcom/transsion/camera/utils/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    goto/16 :goto_0

    :cond_2
    if-nez v5, :cond_4

    .line 253
    iget-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getExternalStoragePublicDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Camera"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 256
    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 257
    aget-object v0, p0, v10

    aget-object v4, p0, v10

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v9

    aget-object v5, p0, v10

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 258
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "content://com.android.externalstorage.documents/tree/%1$s%2$s3A/document/%3$s%4$s3ADCIM%5$s2FCamera%6$s2F%7$s"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v10

    aput-object v1, v6, v9

    const/4 v8, 0x2

    aput-object v0, v6, v8

    aput-object v1, v6, v7

    const/4 v0, 0x4

    aput-object v1, v6, v0

    const/4 v0, 0x5

    aput-object v1, v6, v0

    const/4 v0, 0x6

    aget-object p0, p0, v9

    aput-object p0, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 259
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;->access$400()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p1, p0, v0, v2}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 261
    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 263
    iget-object p0, v3, Lcom/transsion/camera/app/thumbnail/ThumbnailItem;->mUri:Landroid/net/Uri;

    invoke-static {}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;->access$400()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p1, p0, v0, v2}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 268
    :cond_4
    :goto_0
    iput-object v5, v3, Lcom/transsion/camera/app/thumbnail/ThumbnailItem;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 269
    :cond_5
    iget v1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->mediaType:I

    if-ne v1, v7, :cond_9

    .line 270
    invoke-static {v8}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 273
    iget-wide v4, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->id:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v3, Lcom/transsion/camera/app/thumbnail/ThumbnailItem;->mUri:Landroid/net/Uri;

    if-gt v0, v6, :cond_6

    .line 275
    iget-wide v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->id:J

    invoke-static {p1, v0, v1, v9, v2}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 278
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 279
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 282
    iget-object v0, v3, Lcom/transsion/camera/app/thumbnail/ThumbnailItem;->mUri:Landroid/net/Uri;

    invoke-static {}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;->access$400()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_7
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_8

    .line 287
    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;->filePath:Ljava/lang/String;

    iget-object v0, v3, Lcom/transsion/camera/app/thumbnail/ThumbnailItem;->mUri:Landroid/net/Uri;

    invoke-static {p1, p0, v0}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;->getBitmapFromVideo(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 289
    :cond_8
    invoke-static {v0, v10, v10}, Lcom/transsion/camera/utils/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v3, Lcom/transsion/camera/app/thumbnail/ThumbnailItem;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 292
    invoke-static {}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "getThumbnailFromMedia fail: "

    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    :cond_9
    :goto_2
    iget-object p0, v3, Lcom/transsion/camera/app/thumbnail/ThumbnailItem;->mBitmap:Landroid/graphics/Bitmap;

    if-nez p0, :cond_a

    .line 296
    iput-object v2, v3, Lcom/transsion/camera/app/thumbnail/ThumbnailItem;->mUri:Landroid/net/Uri;

    :cond_a
    return-object v3
.end method

.method private static isValid(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "./"

    .line 342
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "~/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/transsion/camera/app/thumbnail/ThumbnailItem;
    .locals 2

    .line 136
    invoke-static {}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "[doInBackground] LoadThumbnailTask start."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 138
    invoke-static {}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[doInBackground] LoadThumbnailTask is cancelled, return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;->mContentResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentResolver;

    if-nez p1, :cond_1

    return-object v0

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 147
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;->getMediaFromDatabaseByUri(Landroid/content/ContentResolver;)Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;

    move-result-object v1

    goto :goto_0

    .line 149
    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;->getLatestMediaFromDatabase(Landroid/content/ContentResolver;)Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;

    move-result-object v1

    .line 151
    :goto_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 152
    invoke-static {}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[doInBackground] LoadThumbnailTask is cancelled after getLatestMedia, return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 156
    :cond_3
    invoke-static {v1, p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;->getThumbnailFromMedia(Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$Media;Landroid/content/ContentResolver;)Lcom/transsion/camera/app/thumbnail/ThumbnailItem;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 112
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;->doInBackground([Ljava/lang/Void;)Lcom/transsion/camera/app/thumbnail/ThumbnailItem;

    move-result-object p0

    return-object p0
.end method

.method protected onCancelled()V
    .locals 1

    .line 131
    invoke-static {}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "[onCancelled] LoadThumbnailTask is cancelled."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Lcom/transsion/camera/app/thumbnail/ThumbnailItem;)V
    .locals 3

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;->mLoaderCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;

    .line 163
    invoke-static {}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doInBackground] LoadThumbnailTask done. callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 165
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$TaskCallback;->onTaskDone(Lcom/transsion/camera/app/thumbnail/ThumbnailItem;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 112
    check-cast p1, Lcom/transsion/camera/app/thumbnail/ThumbnailItem;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailLoader$LoadThumbnailTask;->onPostExecute(Lcom/transsion/camera/app/thumbnail/ThumbnailItem;)V

    return-void
.end method
