.class public Lcom/transsion/camera/app/common/storage/AppStorageManager;
.super Ljava/lang/Object;
.source "AppStorageManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field private mCurrentVolume:Ljava/lang/String;

.field private final mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

.field private mExternalStorageVolume:Landroid/os/storage/StorageVolume;

.field private final mIntentProxy:Lcom/transsion/camera/app/common/IApp$IIntentProxy;

.field private final mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

.field private mIsPermissionRequesting:Z

.field private mIsResumed:Z

.field private mIsSwitchExternalStorageManual:Z

.field private mNeedReCheckSdcardPermission:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStartActivityDirectoryTime:J

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mStorageAvailable:Z

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

.field private mStorageVolumeListener:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AppStorageManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IApp$IIntentProxy;)V
    .locals 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mCurrentVolume:Ljava/lang/String;

    const/4 v1, 0x0

    .line 53
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsPermissionRequesting:Z

    .line 54
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsResumed:Z

    .line 56
    new-instance v2, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    .line 57
    new-instance v2, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    .line 58
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    iput-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    .line 66
    new-instance v2, Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;

    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager$StorageChangeListener;-><init>(Lcom/transsion/camera/app/common/storage/AppStorageManager;Lcom/transsion/camera/app/common/storage/AppStorageManager$1;)V

    iput-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 70
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsSwitchExternalStorageManual:Z

    .line 73
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mNeedReCheckSdcardPermission:Z

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageAvailable:Z

    .line 404
    new-instance v0, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager$2;-><init>(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIntentProxy:Lcom/transsion/camera/app/common/IApp$IIntentProxy;

    .line 79
    const-class p2, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 44
    sget-object v0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/common/storage/AppStorageManager;Landroid/net/Uri;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->onExternalStoragePermissionGranted(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Landroid/os/storage/StorageManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object p0
.end method

.method static synthetic access$1200(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageVolume;)Z
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->isUsbStorage(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageVolume;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->onExternalStorageUnMounted()V

    return-void
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageVolumeListener:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    return-object p0
.end method

.method static synthetic access$1500(Landroid/os/storage/StorageVolume;)Z
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->isInternalStorage(Landroid/os/storage/StorageVolume;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageAvailable:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/transsion/camera/app/common/storage/AppStorageManager;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageAvailable:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/InternalStorageOperator;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/app/common/storage/AppStorageManager;Landroid/os/storage/StorageVolume;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->onExternalStorageMounted(Landroid/os/storage/StorageVolume;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsResumed:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/transsion/camera/app/common/storage/AppStorageManager;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsSwitchExternalStorageManual:Z

    return p1
.end method

.method static synthetic access$202(Lcom/transsion/camera/app/common/storage/AppStorageManager;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsPermissionRequesting:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->checkExternalStoragePermission()V

    return-void
.end method

.method static synthetic access$2200(Lcom/transsion/camera/app/common/storage/AppStorageManager;Ljava/lang/String;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->setCurrentVolume(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/common/storage/AppStorageManager;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->onExternalStoragePermissionDenied()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/common/storage/AppStorageManager;)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStartActivityDirectoryTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/transsion/camera/app/common/storage/AppStorageManager;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mNeedReCheckSdcardPermission:Z

    return p1
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/IApp$IIntentProxy;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIntentProxy:Lcom/transsion/camera/app/common/IApp$IIntentProxy;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Landroid/os/storage/StorageVolume;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    return-object p0
.end method

.method static synthetic access$800(Landroid/os/storage/StorageVolume;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->buildStorageVolumeTreeUri(Landroid/os/storage/StorageVolume;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/common/storage/AppStorageManager;)Lcom/transsion/camera/app/common/storage/StorageSetting;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    return-object p0
.end method

.method private static buildStorageVolumeTreeUri(Landroid/os/storage/StorageVolume;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 476
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.externalstorage.documents"

    .line 475
    invoke-static {v0, p0}, Landroid/provider/DocumentsContract;->buildTreeDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "%3A"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private checkExternalStoragePermission()V
    .locals 5

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->buildStorageVolumeTreeUri(Landroid/os/storage/StorageVolume;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->isUriGranted(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v1

    .line 253
    sget-object v2, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkExternalStoragePermission isGranted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 255
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->onExternalStoragePermissionGranted(Landroid/net/Uri;)V

    goto :goto_0

    .line 257
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsSwitchExternalStorageManual:Z

    if-eqz v0, :cond_1

    .line 258
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->requestExternalStoragePermission()V

    goto :goto_0

    :cond_1
    const-string v0, "internal"

    .line 260
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->saveVolumeToSetting(Ljava/lang/String;)V

    .line 261
    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->setCurrentVolume(Ljava/lang/String;I)V

    .line 264
    :goto_0
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsSwitchExternalStorageManual:Z

    return-void
.end method

.method private checkStorageVolume()V
    .locals 7

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 194
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    if-nez v2, :cond_1

    .line 196
    sget-object v2, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "checkStorageVolume volume is null."

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v3

    .line 200
    sget-object v4, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkStorageVolume volume: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", isPrimary: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 200
    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v4, 0x1

    if-le v1, v4, :cond_2

    .line 204
    iget-object v5, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {v5, v2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->isUsbStorage(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageVolume;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 208
    :cond_2
    invoke-static {v2}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->isInternalStorage(Landroid/os/storage/StorageVolume;)Z

    move-result v5

    const-string v6, "mounted"

    if-eqz v5, :cond_5

    .line 209
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v3

    const-string v5, "removed"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 210
    iput-boolean v3, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageAvailable:Z

    .line 211
    iget-object v5, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    invoke-virtual {v5, v3}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->setStorageAvailable(Z)V

    .line 213
    :cond_3
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 214
    iput-boolean v4, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageAvailable:Z

    .line 215
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->setStorageAvailable(Z)V

    .line 217
    :cond_4
    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->updateStorageVolume(Landroid/os/storage/StorageVolume;)V

    goto/16 :goto_0

    .line 218
    :cond_5
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    iput-boolean v4, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageAvailable:Z

    .line 220
    iput-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    .line 221
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->setStorageAvailable(Z)V

    .line 222
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v3, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->updateStorageVolume(Landroid/os/storage/StorageVolume;)V

    goto/16 :goto_0

    .line 226
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->isReady()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 227
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->doOnHasExternalStorage()V

    goto :goto_1

    .line 229
    :cond_7
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->doOnNoExternalStorage()V

    :goto_1
    return-void
.end method

.method private static checkUuidIsUsb(Landroid/os/storage/StorageManager;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "android.os.storage.VolumeInfo"

    .line 508
    invoke-static {v1}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "android.os.storage.DiskInfo"

    .line 509
    invoke-static {v2}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v1, :cond_5

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 514
    :cond_1
    const-class v3, Landroid/os/storage/StorageManager;

    new-array v4, v0, [Ljava/lang/Class;

    const-string v5, "getVolumes"

    invoke-static {v3, v5, v4}, Lcom/transsion/camera/utils/ReflectionUtils;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Class;

    const-string v5, "getDisk"

    .line 515
    invoke-static {v1, v5, v4}, Lcom/transsion/camera/utils/ReflectionUtils;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Class;

    const-string v6, "getFsUuid"

    .line 516
    invoke-static {v1, v6, v5}, Lcom/transsion/camera/utils/ReflectionUtils;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v5, v0, [Ljava/lang/Class;

    const-string v6, "isUsb"

    .line 517
    invoke-static {v2, v6, v5}, Lcom/transsion/camera/utils/ReflectionUtils;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-array v5, v0, [Ljava/lang/Object;

    .line 523
    invoke-static {v3, p0, v5}, Lcom/transsion/camera/utils/ReflectionUtils;->doMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_5

    .line 524
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 527
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    :goto_0
    if-ltz v3, :cond_5

    .line 528
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    .line 530
    invoke-static {v1, v6, v7}, Lcom/transsion/camera/utils/ReflectionUtils;->doMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 531
    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-array v7, v0, [Ljava/lang/Object;

    .line 532
    invoke-static {v4, v6, v7}, Lcom/transsion/camera/utils/ReflectionUtils;->doMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    .line 533
    invoke-static {v2, v6, v7}, Lcom/transsion/camera/utils/ReflectionUtils;->doMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_4

    .line 534
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    return v5

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0
.end method

.method private createOpenDocumentTreeIntent(Landroid/os/storage/StorageVolume;)Landroid/content/Intent;
    .locals 3

    .line 546
    :try_start_0
    const-class p0, Landroid/os/storage/StorageVolume;

    const-string v0, "createOpenDocumentTreeIntent"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    .line 547
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 549
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private doOnHasExternalStorage()V
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/StorageSetting;->enableExternalStorage()V

    .line 235
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->getVolumeFromSetting()Ljava/lang/String;

    move-result-object v0

    .line 236
    sget-object v1, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doOnHasExternalStorage storedVolumeValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v1, "external"

    .line 237
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mNeedReCheckSdcardPermission:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "internal"

    .line 241
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->setCurrentVolume(Ljava/lang/String;I)V

    goto :goto_1

    .line 238
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mNeedReCheckSdcardPermission:Z

    .line 239
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->checkExternalStoragePermission()V

    :goto_1
    return-void
.end method

.method private doOnNoExternalStorage()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/StorageSetting;->disableExternalStorage()V

    const-string v0, "internal"

    const/4 v1, 0x0

    .line 247
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->setCurrentVolume(Ljava/lang/String;I)V

    return-void
.end method

.method private externalPermissionGranted()Z
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_0

    .line 174
    sget-object p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "externalPermissionGranted mExternalStorageVolume is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v1, ""

    .line 177
    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->buildStorageVolumeTreeUri(Landroid/os/storage/StorageVolume;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->isUriGranted(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method private getVolumeFromSetting()Ljava/lang/String;
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/StorageSetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isInternalStorage(Landroid/os/storage/StorageVolume;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 492
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isUriGranted(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 1

    .line 481
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object p0

    .line 482
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/UriPermission;

    .line 483
    invoke-virtual {v0}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 484
    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static isUsbStorage(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageVolume;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 496
    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->isInternalStorage(Landroid/os/storage/StorageVolume;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 499
    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object p1

    .line 500
    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->checkUuidIsUsb(Landroid/os/storage/StorageManager;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private makeCameraDirectory()Z
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->makeCameraDirectory()Z

    move-result p0

    return p0
.end method

.method private onExternalStorageMounted(Landroid/os/storage/StorageVolume;)V
    .locals 3

    .line 379
    sget-object v0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExternalStorageMounted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 380
    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->isInternalStorage(Landroid/os/storage/StorageVolume;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 383
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    .line 384
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->doOnHasExternalStorage()V

    return-void
.end method

.method private onExternalStoragePermissionDenied()V
    .locals 2

    const-string v0, "internal"

    const/4 v1, 0x0

    .line 369
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->setCurrentVolume(Ljava/lang/String;I)V

    .line 370
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->saveVolumeToSetting(Ljava/lang/String;)V

    return-void
.end method

.method private onExternalStoragePermissionGranted(Landroid/net/Uri;)V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->updateStorageVolume(Landroid/os/storage/StorageVolume;)V

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->updateDocumentFolder(Landroidx/documentfile/provider/DocumentFile;)V

    const-string p1, "external"

    const/4 v0, 0x0

    .line 364
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->setCurrentVolume(Ljava/lang/String;I)V

    return-void
.end method

.method private onExternalStorageUnMounted()V
    .locals 2

    const-string v0, "internal"

    const/4 v1, 0x1

    .line 374
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->setCurrentVolume(Ljava/lang/String;I)V

    .line 375
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/StorageSetting;->disableExternalStorage()V

    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .line 388
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 389
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 390
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 391
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    .line 392
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    .line 393
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    .line 394
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    .line 395
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    .line 396
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private requestExternalStoragePermission()V
    .locals 5

    .line 303
    sget-object v0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestExternalStoragePermission externalStorageVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_0

    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    .line 310
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsPermissionRequesting:Z

    .line 312
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-gt v1, v2, :cond_1

    .line 313
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageVolume;->createAccessIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 315
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->createOpenDocumentTreeIntent(Landroid/os/storage/StorageVolume;)Landroid/content/Intent;

    move-result-object v1

    .line 317
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStartActivityDirectoryTime:J

    .line 318
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIntentProxy:Lcom/transsion/camera/app/common/IApp$IIntentProxy;

    new-instance v3, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;

    const/16 v4, 0x3e8

    invoke-direct {v3, p0, v1, v4, v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager$1;-><init>(Lcom/transsion/camera/app/common/storage/AppStorageManager;Landroid/content/Intent;ILandroid/content/ContentResolver;)V

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/IApp$IIntentProxy;->startActivityForResult(Lcom/transsion/camera/app/common/IApp$ActivityResultCallback;)V

    return-void
.end method

.method private saveVolumeToSetting(Ljava/lang/String;)V
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/StorageSetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method private setCurrentVolume(Ljava/lang/String;I)V
    .locals 3

    .line 268
    sget-object v0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StorageVolume changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mCurrentVolume:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mCurrentVolume:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 271
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mCurrentVolume:Ljava/lang/String;

    const-string v0, "external"

    .line 272
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iput-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    goto :goto_0

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    iput-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    .line 277
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->makeCameraDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->saveVolumeToSetting(Ljava/lang/String;)V

    .line 280
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageVolumeListener:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    if-eqz p1, :cond_2

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {p1, v0, p2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;->onOperatorChanged(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    goto :goto_1

    .line 284
    :cond_1
    sget-object p2, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeCameraDirectory fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 286
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->onExternalStoragePermissionDenied()V

    .line 287
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->doOnNoExternalStorage()V

    .line 290
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->clearTempFiles()V

    :cond_3
    return-void
.end method

.method private unregisterReceiver()V
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public getAllBucketIds()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/InternalStorageOperator;->getBucketId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-le v1, v2, :cond_1

    .line 159
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->externalPermissionGranted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    sget-object p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "external Permission don\'t Grant"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 164
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;->getBucketId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 166
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public getInternalStorageOperator()Lcom/transsion/camera/app/common/storage/InternalStorageOperator;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    return-object p0
.end method

.method public getStorageOperator()Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method public getStorageSetting()Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    return-object p0
.end method

.method public getStorageSettingKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_storage"

    return-object p0
.end method

.method public init(Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/setting/ISettingManager;)V
    .locals 2

    .line 83
    sget-object v0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p2

    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 85
    new-instance p2, Lcom/transsion/camera/app/common/storage/StorageSetting;

    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_storage"

    invoke-direct {p2, v1, p1, v0}, Lcom/transsion/camera/app/common/storage/StorageSetting;-><init>(Ljava/lang/String;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    .line 87
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string p2, "internal"

    .line 88
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "external"

    .line 89
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/storage/StorageSetting;->init(Ljava/util/List;Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    .line 93
    iget-object p2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    iget-object p2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->init(Landroid/content/Context;)V

    .line 97
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->init(Landroid/content/Context;)V

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsResumed:Z

    .line 128
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->unregisterReceiver()V

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsResumed:Z

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/StorageSetting;->reload()V

    .line 121
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->checkStorageVolume()V

    .line 122
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->makeCameraDirectory()Z

    .line 123
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->registerReceiver()V

    return-void
.end method

.method public setStorageVolumeListener(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageVolumeListener:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 101
    sget-object v0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unInit mIsPermissionRequesting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsPermissionRequesting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_storage"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 107
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsPermissionRequesting:Z

    if-eqz v0, :cond_1

    .line 108
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->onExternalStoragePermissionDenied()V

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mIsPermissionRequesting:Z

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mInternalStorageOperator:Lcom/transsion/camera/app/common/storage/InternalStorageOperator;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->unInit()V

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mExternalStorageOperator:Lcom/transsion/camera/app/common/storage/ExternalStorageOperator;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/AbstractStorageOperator;->unInit()V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mCurrentStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    .line 114
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/StorageSetting;->unInit()V

    .line 115
    iput-object v0, p0, Lcom/transsion/camera/app/common/storage/AppStorageManager;->mStorageSetting:Lcom/transsion/camera/app/common/storage/StorageSetting;

    return-void
.end method
