.class public Lcom/vskit/arsdk/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vskit/arsdk/portal/ARIManager;
.implements Lcom/vskit/arsdk/portal/ARCallback;


# instance fields
.field private c:Lcom/vskit/arsdk/portal/ARCallback;

.field private d:Landroid/content/Context;

.field private e:Lcom/faceunity/FURenderer;

.field private f:Lcom/faceunity/entity/Effect;

.field private g:Lcom/faceunity/entity/Effect;

.field private h:Lcom/vskit/arsdk/a/d;

.field private i:Lcom/vskit/arsdk/a/b;

.field private j:Lcom/vskit/arsdk/a/a;

.field private k:I

.field private l:I

.field private m:I

.field private final n:Ljava/lang/Object;

.field private final o:Ljava/lang/Object;

.field private p:[F

.field private q:[F

.field private r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/vskit/arsdk/d;->k:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/vskit/arsdk/d;->l:I

    .line 4
    iput v0, p0, Lcom/vskit/arsdk/d;->m:I

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vskit/arsdk/d;->n:Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vskit/arsdk/d;->o:Ljava/lang/Object;

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 7
    iput-object v1, p0, Lcom/vskit/arsdk/d;->p:[F

    new-array v0, v0, [F

    .line 8
    iput-object v0, p0, Lcom/vskit/arsdk/d;->q:[F

    return-void
.end method

.method private a(III)I
    .locals 2

    .line 12
    iget v0, p0, Lcom/vskit/arsdk/d;->k:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/vskit/arsdk/d;->a()V

    .line 14
    invoke-direct {p0, p2, p3}, Lcom/vskit/arsdk/d;->c(II)V

    .line 15
    invoke-direct {p0, p2, p3}, Lcom/vskit/arsdk/d;->a(II)V

    .line 16
    invoke-direct {p0, p2, p3}, Lcom/vskit/arsdk/d;->b(II)V

    .line 17
    invoke-direct {p0, p1}, Lcom/vskit/arsdk/d;->e(I)I

    move-result p1

    .line 18
    invoke-direct {p0, p1}, Lcom/vskit/arsdk/d;->d(I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/vskit/arsdk/d;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/vskit/arsdk/d;->l:I

    return p0
.end method

.method static synthetic a(Lcom/vskit/arsdk/d;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/vskit/arsdk/d;->l:I

    return p1
.end method

.method private a(Ljava/lang/String;II)I
    .locals 11

    .line 35
    iget-object v0, p0, Lcom/vskit/arsdk/d;->d:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/faceunity/c/l;->b(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "LSArManager"

    if-nez v0, :cond_0

    .line 36
    invoke-direct {p0, p1}, Lcom/vskit/arsdk/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    const-string v4, "getImageFromAssetsFile"

    .line 37
    invoke-static {v2, v4}, Lcom/vskit/arsdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "bitmap2 is null"

    const-string v5, "texture id = "

    const-string v6, "bitmap1 is null"

    const/16 v7, 0x10e

    const-string v8, "bitmap is null"

    const-string v9, "cropBitmapFromFile"

    const/4 v10, 0x0

    if-le p2, p3, :cond_6

    if-eqz v0, :cond_1

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p3, p2}, Lcom/vskit/arsdk/b/a;->a(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 39
    invoke-static {v2, v9}, Lcom/vskit/arsdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez v3, :cond_2

    .line 40
    invoke-static {v2, v8}, Lcom/vskit/arsdk/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    .line 41
    :cond_2
    iget p0, p0, Lcom/vskit/arsdk/d;->m:I

    if-ne p0, v1, :cond_3

    move p0, v1

    goto :goto_1

    :cond_3
    move p0, v10

    :goto_1
    invoke-static {v3, v10, p0, v1}, Lcom/vskit/arsdk/b/a;->a(Landroid/graphics/Bitmap;ZZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_4

    .line 42
    invoke-static {v2, v6}, Lcom/vskit/arsdk/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    .line 43
    :cond_4
    invoke-static {p0, v7, v1}, Lcom/vskit/arsdk/b/a;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_5

    .line 44
    invoke-static {v2, v4}, Lcom/vskit/arsdk/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    .line 45
    :cond_5
    invoke-static {p0}, Lcom/vskit/arsdk/b/g;->a(Landroid/graphics/Bitmap;)I

    move-result p1

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/vskit/arsdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return p1

    :cond_6
    if-eqz v0, :cond_7

    .line 48
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p2, p3}, Lcom/vskit/arsdk/b/a;->a(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 49
    invoke-static {v2, v9}, Lcom/vskit/arsdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-nez v3, :cond_8

    .line 50
    invoke-static {v2, v8}, Lcom/vskit/arsdk/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    .line 51
    :cond_8
    iget p0, p0, Lcom/vskit/arsdk/d;->m:I

    if-ne p0, v1, :cond_9

    move p0, v1

    goto :goto_2

    :cond_9
    move p0, v10

    :goto_2
    invoke-static {v3, v10, p0, v1}, Lcom/vskit/arsdk/b/a;->a(Landroid/graphics/Bitmap;ZZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_a

    .line 52
    invoke-static {v2, v6}, Lcom/vskit/arsdk/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    .line 53
    :cond_a
    invoke-static {p0, v7, v1}, Lcom/vskit/arsdk/b/a;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_b

    .line 54
    invoke-static {v2, v4}, Lcom/vskit/arsdk/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    .line 55
    :cond_b
    invoke-static {p0}, Lcom/vskit/arsdk/b/g;->a(Landroid/graphics/Bitmap;)I

    move-result p1

    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/vskit/arsdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return p1
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/vskit/arsdk/d;->d:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 31
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 32
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    const/4 p1, 0x0

    .line 34
    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object p1
.end method

.method private a(Landroid/content/Context;)Lcom/faceunity/FURenderer;
    .locals 1

    .line 4
    new-instance v0, Lcom/faceunity/FURenderer$b;

    invoke-direct {v0, p1}, Lcom/faceunity/FURenderer$b;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v0, p1}, Lcom/faceunity/FURenderer$b;->b(I)Lcom/faceunity/FURenderer$b;

    .line 6
    invoke-virtual {v0, p1}, Lcom/faceunity/FURenderer$b;->b(Z)Lcom/faceunity/FURenderer$b;

    .line 7
    invoke-virtual {v0, p0}, Lcom/faceunity/FURenderer$b;->b(Lcom/vskit/arsdk/portal/ARCallback;)Lcom/faceunity/FURenderer$b;

    .line 8
    invoke-virtual {v0, p0}, Lcom/faceunity/FURenderer$b;->d(Lcom/vskit/arsdk/portal/ARCallback;)Lcom/faceunity/FURenderer$b;

    .line 9
    invoke-virtual {v0, p0}, Lcom/faceunity/FURenderer$b;->a(Lcom/vskit/arsdk/portal/ARCallback;)Lcom/faceunity/FURenderer$b;

    .line 10
    invoke-virtual {v0, p0}, Lcom/faceunity/FURenderer$b;->c(Lcom/vskit/arsdk/portal/ARCallback;)Lcom/faceunity/FURenderer$b;

    .line 11
    invoke-virtual {v0}, Lcom/faceunity/FURenderer$b;->a()Lcom/faceunity/FURenderer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/vskit/arsdk/d;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/vskit/arsdk/d;->r:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a()V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/vskit/arsdk/d;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/vskit/arsdk/d;->r:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 21
    iget-object p0, p0, Lcom/vskit/arsdk/d;->r:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 22
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private a(II)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/vskit/arsdk/d;->i:Lcom/vskit/arsdk/a/b;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/vskit/arsdk/a/b;

    iget-object v1, p0, Lcom/vskit/arsdk/d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vskit/arsdk/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vskit/arsdk/d;->i:Lcom/vskit/arsdk/a/b;

    .line 25
    invoke-virtual {v0, p1, p2}, Lcom/vskit/arsdk/a/c;->a(II)V

    :cond_0
    return-void
.end method

.method private a(IIII)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/vskit/arsdk/d;->j:Lcom/vskit/arsdk/a/a;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/vskit/arsdk/a/a;

    iget-object v1, p0, Lcom/vskit/arsdk/d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vskit/arsdk/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vskit/arsdk/d;->j:Lcom/vskit/arsdk/a/a;

    .line 28
    invoke-virtual {v0, p1, p2}, Lcom/vskit/arsdk/a/c;->a(II)V

    .line 29
    iget-object p0, p0, Lcom/vskit/arsdk/d;->j:Lcom/vskit/arsdk/a/a;

    invoke-virtual {p0, p3, p4}, Lcom/vskit/arsdk/a/c;->b(II)V

    :cond_0
    return-void
.end method

.method private a(I)Z
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    const/16 p0, 0x9

    if-ne p1, p0, :cond_0

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

.method static synthetic b(Lcom/vskit/arsdk/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vskit/arsdk/d;->n:Ljava/lang/Object;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/vskit/arsdk/d;->h:Lcom/vskit/arsdk/a/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/vskit/arsdk/a/c;->g()V

    .line 10
    iput-object v1, p0, Lcom/vskit/arsdk/d;->h:Lcom/vskit/arsdk/a/d;

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/vskit/arsdk/d;->i:Lcom/vskit/arsdk/a/b;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/vskit/arsdk/a/c;->g()V

    .line 13
    iput-object v1, p0, Lcom/vskit/arsdk/d;->i:Lcom/vskit/arsdk/a/b;

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/vskit/arsdk/d;->j:Lcom/vskit/arsdk/a/a;

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {v0}, Lcom/vskit/arsdk/a/c;->g()V

    .line 16
    iput-object v1, p0, Lcom/vskit/arsdk/d;->j:Lcom/vskit/arsdk/a/a;

    .line 17
    :cond_2
    iget v0, p0, Lcom/vskit/arsdk/d;->l:I

    if-lez v0, :cond_3

    .line 18
    invoke-static {v0}, Lcom/vskit/arsdk/b/g;->a(I)V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/vskit/arsdk/d;->l:I

    .line 20
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDestroy Filter, Thread id"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LSArManager"

    invoke-static {v0, p0}, Lcom/vskit/arsdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(I)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/vskit/arsdk/d;->j:Lcom/vskit/arsdk/a/a;

    iget-object v1, p0, Lcom/vskit/arsdk/d;->q:[F

    invoke-virtual {v0, v1}, Lcom/vskit/arsdk/a/a;->a([F)V

    .line 7
    iget-object p0, p0, Lcom/vskit/arsdk/d;->j:Lcom/vskit/arsdk/a/a;

    invoke-virtual {p0, p1}, Lcom/vskit/arsdk/a/c;->a(I)V

    return-void
.end method

.method private b(II)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/vskit/arsdk/d;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, p0, Lcom/vskit/arsdk/d;->l:I

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/vskit/arsdk/d;->f:Lcom/faceunity/entity/Effect;

    invoke-virtual {v1}, Lcom/faceunity/entity/Effect;->getCoverPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/vskit/arsdk/d;->f:Lcom/faceunity/entity/Effect;

    invoke-virtual {v1}, Lcom/faceunity/entity/Effect;->getCoverPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/vskit/arsdk/d;->a(Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/vskit/arsdk/d;->l:I

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private c(I)I
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/vskit/arsdk/d;->j:Lcom/vskit/arsdk/a/a;

    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lcom/vskit/arsdk/d;->p:[F

    invoke-virtual {v0, v1}, Lcom/vskit/arsdk/a/a;->a([F)V

    .line 8
    iget-object p0, p0, Lcom/vskit/arsdk/d;->j:Lcom/vskit/arsdk/a/a;

    invoke-virtual {p0, p1}, Lcom/vskit/arsdk/a/c;->b(I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method private c(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vskit/arsdk/d;->h:Lcom/vskit/arsdk/a/d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/vskit/arsdk/a/d;

    iget-object v1, p0, Lcom/vskit/arsdk/d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vskit/arsdk/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vskit/arsdk/d;->h:Lcom/vskit/arsdk/a/d;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/vskit/arsdk/a/c;->a(II)V

    .line 4
    iget p1, p0, Lcom/vskit/arsdk/d;->m:I

    if-lez p1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/vskit/arsdk/d;->h:Lcom/vskit/arsdk/a/d;

    invoke-virtual {p0, p1}, Lcom/vskit/arsdk/a/d;->c(I)V

    :cond_0
    return-void
.end method

.method private d(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vskit/arsdk/d;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/vskit/arsdk/d;->l:I

    if-lez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/vskit/arsdk/d;->i:Lcom/vskit/arsdk/a/b;

    iget p0, p0, Lcom/vskit/arsdk/d;->l:I

    invoke-virtual {v1, p1, p0}, Lcom/vskit/arsdk/a/b;->d(II)I

    move-result p0

    monitor-exit v0

    return p0

    .line 4
    :cond_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private e(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vskit/arsdk/d;->h:Lcom/vskit/arsdk/a/d;

    iget v1, p0, Lcom/vskit/arsdk/d;->k:I

    invoke-virtual {v0, v1}, Lcom/vskit/arsdk/a/d;->d(I)V

    .line 2
    iget-object p0, p0, Lcom/vskit/arsdk/d;->h:Lcom/vskit/arsdk/a/d;

    invoke-virtual {p0, p1}, Lcom/vskit/arsdk/a/c;->b(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/vskit/arsdk/d;->d:Landroid/content/Context;

    .line 2
    new-instance p1, Lcom/faceunity/entity/Effect;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/faceunity/entity/Effect;-><init>(I)V

    iput-object p1, p0, Lcom/vskit/arsdk/d;->g:Lcom/faceunity/entity/Effect;

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "init and create renderar sdk version 2.1.0, Thread id = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LSArManager"

    .line 5
    invoke-static {p1, p0}, Lcom/vskit/arsdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBundleItemEffect(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vskit/arsdk/d;->c:Lcom/vskit/arsdk/portal/ARCallback;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lcom/vskit/arsdk/portal/ARCallback;->onBundleItemEffect(I)V

    :cond_0
    return-void
.end method

.method public onBundleLoadComplete(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vskit/arsdk/d;->c:Lcom/vskit/arsdk/portal/ARCallback;

    if-eqz v0, :cond_1

    .line 2
    iget v1, p0, Lcom/vskit/arsdk/d;->k:I

    if-lez v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/vskit/arsdk/d;->f:Lcom/faceunity/entity/Effect;

    invoke-virtual {p0}, Lcom/faceunity/entity/Effect;->getBundleName()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {v0, p1, p0}, Lcom/vskit/arsdk/portal/ARCallback;->onBundleLoadComplete(ILjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/vskit/arsdk/portal/ARCallback;->onBundleLoadComplete(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBundleLoadStart()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vskit/arsdk/d;->c:Lcom/vskit/arsdk/portal/ARCallback;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/vskit/arsdk/portal/ARCallback;->onBundleLoadStart()V

    :cond_0
    return-void
.end method

.method public onCameraChange(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    iget-object v3, v0, Lcom/vskit/arsdk/d;->e:Lcom/faceunity/FURenderer;

    if-eqz v3, :cond_0

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCameraChange: render, Thread id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LSArManager"

    invoke-static {v4, v3}, Lcom/vskit/arsdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v3, v0, Lcom/vskit/arsdk/d;->e:Lcom/faceunity/FURenderer;

    invoke-virtual {v3, v1, v2}, Lcom/faceunity/FURenderer;->onCameraChange(II)V

    .line 4
    :cond_0
    iget-object v3, v0, Lcom/vskit/arsdk/d;->p:[F

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 5
    iget-object v5, v0, Lcom/vskit/arsdk/d;->p:[F

    int-to-float v7, v2

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 6
    iget-object v3, v0, Lcom/vskit/arsdk/d;->q:[F

    invoke-static {v3, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 7
    iget-object v5, v0, Lcom/vskit/arsdk/d;->q:[F

    rsub-int v2, v2, 0x168

    int-to-float v7, v2

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    if-nez v1, :cond_1

    .line 8
    iget-object v11, v0, Lcom/vskit/arsdk/d;->p:[F

    const/4 v12, 0x0

    const/high16 v13, 0x43340000    # 180.0f

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 9
    iget-object v2, v0, Lcom/vskit/arsdk/d;->q:[F

    const/4 v3, 0x0

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 10
    :cond_1
    iput v1, v0, Lcom/vskit/arsdk/d;->m:I

    .line 11
    iget-object v2, v0, Lcom/vskit/arsdk/d;->h:Lcom/vskit/arsdk/a/d;

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v2, v1}, Lcom/vskit/arsdk/a/d;->c(I)V

    .line 13
    :cond_2
    iget-object v1, v0, Lcom/vskit/arsdk/d;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 14
    :try_start_0
    new-instance v2, Lcom/vskit/arsdk/c;

    invoke-direct {v2, v0}, Lcom/vskit/arsdk/c;-><init>(Lcom/vskit/arsdk/d;)V

    iput-object v2, v0, Lcom/vskit/arsdk/d;->r:Ljava/lang/Runnable;

    .line 15
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDrawFrameForOrientation([BIIIII)I
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDrawFrame: input tid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Thread id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LSArManager"

    .line 3
    invoke-static {v1, v0}, Lcom/vskit/arsdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/vskit/arsdk/d;->a()V

    .line 5
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/vskit/arsdk/d;->a(IIII)V

    .line 6
    invoke-direct {p0, p2}, Lcom/vskit/arsdk/d;->c(I)I

    move-result p2

    .line 7
    iget-object p5, p0, Lcom/vskit/arsdk/d;->e:Lcom/faceunity/FURenderer;

    if-eqz p5, :cond_0

    .line 8
    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/faceunity/FURenderer;->onDrawFrame([BIII)I

    move-result p2

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "onDrawFrame: render output tid = "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vskit/arsdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/vskit/arsdk/d;->a(III)I

    move-result p1

    .line 11
    invoke-direct {p0, p1}, Lcom/vskit/arsdk/d;->b(I)V

    return p1
.end method

.method public onEffectSelected(Lcom/faceunity/entity/Effect;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->getSplitType()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/vskit/arsdk/d;->e:Lcom/faceunity/FURenderer;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Lcom/vskit/arsdk/d;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/vskit/arsdk/d;->e:Lcom/faceunity/FURenderer;

    iget-object v2, p0, Lcom/vskit/arsdk/d;->g:Lcom/faceunity/entity/Effect;

    invoke-virtual {v1, v2}, Lcom/faceunity/FURenderer;->onEffectSelected(Lcom/faceunity/entity/Effect;)V

    .line 5
    iget-object v1, p0, Lcom/vskit/arsdk/d;->e:Lcom/faceunity/FURenderer;

    invoke-virtual {v1, p1}, Lcom/faceunity/FURenderer;->onEffectSelected(Lcom/faceunity/entity/Effect;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/vskit/arsdk/d;->e:Lcom/faceunity/FURenderer;

    iget-object v2, p0, Lcom/vskit/arsdk/d;->g:Lcom/faceunity/entity/Effect;

    invoke-virtual {v1, v2}, Lcom/faceunity/FURenderer;->onEffectSelected(Lcom/faceunity/entity/Effect;)V

    .line 7
    :goto_0
    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->getFilterName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/vskit/arsdk/d;->e:Lcom/faceunity/FURenderer;

    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->getFilterName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/faceunity/FURenderer;->onFilterNameSelected(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/vskit/arsdk/d;->e:Lcom/faceunity/FURenderer;

    const-string v2, "origin"

    invoke-virtual {v1, v2}, Lcom/faceunity/FURenderer;->onFilterNameSelected(Ljava/lang/String;)V

    .line 10
    :goto_1
    iput v0, p0, Lcom/vskit/arsdk/d;->k:I

    .line 11
    iput-object p1, p0, Lcom/vskit/arsdk/d;->f:Lcom/faceunity/entity/Effect;

    .line 12
    iget-object v0, p0, Lcom/vskit/arsdk/d;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 13
    :try_start_0
    new-instance v1, Lcom/vskit/arsdk/b;

    invoke-direct {v1, p0}, Lcom/vskit/arsdk/b;-><init>(Lcom/vskit/arsdk/d;)V

    iput-object v1, p0, Lcom/vskit/arsdk/d;->r:Ljava/lang/Runnable;

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onEffectSelected: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->getBundleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Thread id = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LSArManager"

    .line 17
    invoke-static {p1, p0}, Lcom/vskit/arsdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 18
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onFpsChange(DD)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vskit/arsdk/d;->c:Lcom/vskit/arsdk/portal/ARCallback;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/vskit/arsdk/portal/ARCallback;->onFpsChange(DD)V

    :cond_0
    return-void
.end method

.method public onMusicFilterTime(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vskit/arsdk/d;->e:Lcom/faceunity/FURenderer;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/faceunity/FURenderer;->onMusicFilterTime(J)V

    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/vskit/arsdk/d;->d:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/vskit/arsdk/d;->a(Landroid/content/Context;)Lcom/faceunity/FURenderer;

    move-result-object p1

    iput-object p1, p0, Lcom/vskit/arsdk/d;->e:Lcom/faceunity/FURenderer;

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/vskit/arsdk/d;->e:Lcom/faceunity/FURenderer;

    if-eqz p0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/faceunity/FURenderer;->onSurfaceCreated()V

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onSurfaceCreated: render, Thread id = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LSArManager"

    .line 13
    invoke-static {p1, p0}, Lcom/vskit/arsdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onSurfaceDestroyed(Z)V
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/vskit/arsdk/d;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/vskit/arsdk/d;->e:Lcom/faceunity/FURenderer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "LSArManager"

    .line 10
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "destroy effect, Thread id = "

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {p1, v1}, Lcom/vskit/arsdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/vskit/arsdk/d;->e:Lcom/faceunity/FURenderer;

    invoke-virtual {p1}, Lcom/faceunity/FURenderer;->onDestroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    const-string p1, "LSArManager"

    const-string v1, "destroy render and set render to null"

    .line 14
    :try_start_3
    invoke-static {p1, v1}, Lcom/vskit/arsdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/vskit/arsdk/d;->e:Lcom/faceunity/FURenderer;

    invoke-virtual {p1}, Lcom/faceunity/FURenderer;->onSurfaceDestroyed()V

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/vskit/arsdk/d;->e:Lcom/faceunity/FURenderer;

    .line 17
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/vskit/arsdk/d;->b()V

    .line 18
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public onSystemError(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vskit/arsdk/d;->c:Lcom/vskit/arsdk/portal/ARCallback;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lcom/vskit/arsdk/portal/ARCallback;->onSystemError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTrackingStatusChanged(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vskit/arsdk/d;->c:Lcom/vskit/arsdk/portal/ARCallback;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lcom/vskit/arsdk/portal/ARCallback;->onTrackingStatusChanged(I)V

    :cond_0
    return-void
.end method

.method public onUninit()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vskit/arsdk/d;->e:Lcom/faceunity/FURenderer;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUninit: render, Thread id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LSArManager"

    .line 4
    invoke-static {v1, v0}, Lcom/vskit/arsdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/vskit/arsdk/d;->e:Lcom/faceunity/FURenderer;

    invoke-virtual {v0}, Lcom/faceunity/FURenderer;->onSurfaceDestroyed()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/vskit/arsdk/d;->e:Lcom/faceunity/FURenderer;

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/vskit/arsdk/d;->b()V

    return-void
.end method

.method public setCallback(Lcom/vskit/arsdk/portal/ARCallback;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallback, Thread id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LSArManager"

    invoke-static {v1, v0}, Lcom/vskit/arsdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/vskit/arsdk/d;->c:Lcom/vskit/arsdk/portal/ARCallback;

    return-void
.end method

.method public setInputTextureType(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vskit/arsdk/d;->e:Lcom/faceunity/FURenderer;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInputTextureType: is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Thread id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LSArManager"

    .line 4
    invoke-static {v1, v0}, Lcom/vskit/arsdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/vskit/arsdk/d;->e:Lcom/faceunity/FURenderer;

    invoke-virtual {p0, p1}, Lcom/faceunity/FURenderer;->setInputTextureType(I)V

    :cond_0
    return-void
.end method

.method public setMaxFaces(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vskit/arsdk/d;->e:Lcom/faceunity/FURenderer;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/faceunity/FURenderer;->setMaxFaces(I)V

    :cond_0
    return-void
.end method

.method public setReset(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vskit/arsdk/d;->e:Lcom/faceunity/FURenderer;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/faceunity/FURenderer;->setResetFlag(I)V

    :cond_0
    return-void
.end method
