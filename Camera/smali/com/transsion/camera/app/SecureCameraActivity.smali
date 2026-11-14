.class public Lcom/transsion/camera/app/SecureCameraActivity;
.super Lcom/transsion/camera/app/CameraActivity;
.source "SecureCameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sSecureAlbumId:I


# instance fields
.field private mIsFinished:Z

.field private mIsReceiverRegisted:Z

.field private mPath:Ljava/lang/String;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private final mSecureItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/SecureCameraActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraActivity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mIsReceiverRegisted:Z

    .line 199
    new-instance v0, Lcom/transsion/camera/app/SecureCameraActivity$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/SecureCameraActivity$1;-><init>(Lcom/transsion/camera/app/SecureCameraActivity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 41
    sget-object v0, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/SecureCameraActivity;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mIsFinished:Z

    return p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/app/SecureCameraActivity;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mIsFinished:Z

    return p1
.end method

.method private addSecureAlbumItem(Landroid/net/Uri;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 316
    :cond_0
    new-instance v0, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 317
    iget-object p1, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 318
    iget-object p0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private synthetic lambda$notifyNewMedia$1(Landroid/net/Uri;)V
    .locals 0

    .line 310
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/SecureCameraActivity;->addSecureAlbumItem(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic lambda$retainLiveItem$0(Ljava/util/List;Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;)Z
    .locals 2

    .line 257
    invoke-virtual {p1}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private retainLiveItem(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;",
            ">;)V"
        }
    .end annotation

    .line 224
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 225
    sget-object v1, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[retainLiveItem] albumCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    const-string v4, ")"

    const-string v5, "_id=("

    if-nez v3, :cond_0

    .line 229
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;

    invoke-virtual {v5}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->getId()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v6, " OR "

    .line 231
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;

    invoke-virtual {v5}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->getId()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v0, "_id"

    .line 235
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "_id DESC"

    const-string v1, "external"

    .line 242
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 243
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_4

    .line 244
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 246
    :cond_2
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 247
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    goto :goto_3

    :catchall_0
    move-exception v1

    if-eqz p0, :cond_3

    .line 243
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v1

    :cond_4
    :goto_3
    if-eqz p0, :cond_5

    .line 250
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 251
    sget-object v1, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[retainLiveItem] exception: "

    invoke-static {v1, v2, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    :cond_5
    :goto_4
    sget-object p0, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[retainLiveItem] live ids: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 254
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_6

    .line 255
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_5

    .line 257
    :cond_6
    new-instance p0, Lcom/transsion/camera/app/-$$Lambda$SecureCameraActivity$2j7f4SXdCR4wS3bjnIq2l6l7vw8;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/-$$Lambda$SecureCameraActivity$2j7f4SXdCR4wS3bjnIq2l6l7vw8;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 259
    :goto_5
    sget-object p0, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[retainLiveItem] done. albumCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected buildGotoGalleryIntent(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 4

    .line 170
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/CameraActivity;->buildGotoGalleryIntent(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 171
    iget-object p2, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 172
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    new-array v0, p2, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 175
    iget-object v2, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;

    .line 176
    invoke-virtual {v2}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->getAlbum()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 177
    invoke-virtual {v2}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_0
    invoke-virtual {v2}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->getId()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p2, "isCamera"

    .line 182
    invoke-virtual {p1, p2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string p2, "isSecureCamera"

    const/4 v1, 0x1

    .line 183
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "secureAlbum"

    .line 184
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 185
    iget-object p2, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mPath:Ljava/lang/String;

    const-string p3, "securePath"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    iget p2, p0, Lcom/transsion/camera/app/CameraActivity;->mChoseGallery:I

    if-eq p2, v1, :cond_2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_3

    :cond_2
    const-string p2, "com.google.android.apps.photos.api.secure_mode_ids"

    .line 187
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const-string p2, "com.google.android.apps.photos.api.secure_mode"

    .line 188
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    const p2, 0x888000

    .line 190
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result p0

    if-eqz p0, :cond_4

    const/high16 p0, 0x10000000

    .line 193
    invoke-virtual {p1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4
    return-object p1
.end method

.method protected canShowPermissionsDialog()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected isPowerScreenOn(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "power"

    .line 337
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 338
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    return p0
.end method

.method protected isSecureCamera()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$notifyNewMedia$1$SecureCameraActivity(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/SecureCameraActivity;->lambda$notifyNewMedia$1(Landroid/net/Uri;)V

    return-void
.end method

.method protected loadLatestThumbnail()V
    .locals 0

    return-void
.end method

.method public notifyNewMedia(Landroid/net/Uri;ZZ)V
    .locals 0

    .line 308
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/CameraActivity;->notifyNewMedia(Landroid/net/Uri;ZZ)V

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 310
    :cond_0
    new-instance p2, Lcom/transsion/camera/app/-$$Lambda$SecureCameraActivity$YhfoI6yYKfO8n1oY7KcZiQViCbU;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/app/-$$Lambda$SecureCameraActivity$YhfoI6yYKfO8n1oY7KcZiQViCbU;-><init>(Lcom/transsion/camera/app/SecureCameraActivity;Landroid/net/Uri;)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected onCreateTasks(Landroid/os/Bundle;)V
    .locals 4

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 102
    sget v1, Lcom/transsion/camera/app/SecureCameraActivity;->sSecureAlbumId:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/transsion/camera/app/SecureCameraActivity;->sSecureAlbumId:I

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/secure/all/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/transsion/camera/app/SecureCameraActivity;->sSecureAlbumId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mPath:Ljava/lang/String;

    .line 104
    invoke-super {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->onCreateTasks(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/transsion/camera/app/SecureCameraActivity;->registerScreenOff()V

    const-string p1, "com.android.systemui.camera_launch_source"

    .line 108
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "volume_double_tap"

    .line 107
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 110
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "lockscreen_affordance"

    .line 109
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez v1, :cond_0

    .line 111
    invoke-virtual {p0, p0}, Lcom/transsion/camera/app/SecureCameraActivity;->isPowerScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    sget-object v0, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "isPowerScreenOn false"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez v1, :cond_1

    if-eqz p1, :cond_2

    .line 117
    :cond_1
    sget-object p1, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "isLockScreenOn false"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method protected onDestroyTasks()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    invoke-virtual {p0}, Lcom/transsion/camera/app/SecureCameraActivity;->unRegisterScreenOff()V

    .line 165
    invoke-super {p0}, Lcom/transsion/camera/app/CameraActivity;->onDestroyTasks()V

    return-void
.end method

.method protected onPauseTasks()V
    .locals 0

    .line 147
    invoke-super {p0}, Lcom/transsion/camera/app/CameraActivity;->onPauseTasks()V

    return-void
.end method

.method protected onResumeTasks()V
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/CameraAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/SecureCameraActivity;->retainLiveItem(Ljava/util/ArrayList;)V

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/CameraAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    .line 130
    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/app/CameraActivity;->updateThumbnailUri(Landroid/net/Uri;Z)V

    .line 131
    iput-boolean v2, p0, Lcom/transsion/camera/app/CameraActivity;->mIsProcessingUri:Z

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;

    .line 134
    invoke-virtual {v0}, Lcom/transsion/camera/app/SecureCameraActivity$SecureItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 136
    iget-object v1, p0, Lcom/transsion/camera/app/CameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/CameraAppUI;

    iget-object v3, p0, Lcom/transsion/camera/app/CameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getAllBucketIds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/transsion/camera/app/ui/CameraAppUI;->loadThumbnailByUri(Ljava/util/ArrayList;Landroid/net/Uri;)V

    .line 137
    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/CameraActivity;->updateThumbnailUri(Landroid/net/Uri;Z)V

    .line 138
    iput-boolean v2, p0, Lcom/transsion/camera/app/CameraActivity;->mIsProcessingUri:Z

    .line 142
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/transsion/camera/app/CameraActivity;->onResumeTasks()V

    return-void
.end method

.method protected onStopTasks()V
    .locals 2

    .line 152
    invoke-super {p0}, Lcom/transsion/camera/app/CameraActivity;->onStopTasks()V

    .line 153
    iget-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mGoingToGallery:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/camera/app/CameraActivity;->mChoseGallery:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mSecureItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 155
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/CameraActivity;->updateThumbnailUri(Landroid/net/Uri;Z)V

    .line 156
    iput-boolean v1, p0, Lcom/transsion/camera/app/CameraActivity;->mIsProcessingUri:Z

    :cond_1
    return-void
.end method

.method protected registerBackgroundImagesObserver()V
    .locals 0

    return-void
.end method

.method protected registerScreenOff()V
    .locals 2

    .line 266
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 270
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CUSTOM_SCREEN_OFF"

    .line 271
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 273
    iput-boolean v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mIsReceiverRegisted:Z

    return-void
.end method

.method protected showWaitPage()V
    .locals 3

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/camera/app/SleepCameraActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "isSecureCamera"

    const/4 v2, 0x1

    .line 298
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 300
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 302
    sget-object v0, Lcom/transsion/camera/app/SecureCameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SleepCameraActivity not found"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected unRegisterBackgroundImagesObserver()V
    .locals 0

    return-void
.end method

.method protected unRegisterScreenOff()V
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mIsReceiverRegisted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 278
    iput-boolean v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mIsReceiverRegisted:Z

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/app/SecureCameraActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
