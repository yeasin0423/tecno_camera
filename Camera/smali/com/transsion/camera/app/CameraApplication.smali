.class public Lcom/transsion/camera/app/CameraApplication;
.super Landroid/app/Application;
.source "CameraApplication.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDataClearReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraApplication"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 69
    new-instance v0, Lcom/transsion/camera/app/CameraApplication$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/CameraApplication$1;-><init>(Lcom/transsion/camera/app/CameraApplication;)V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraApplication;->mDataClearReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)I
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/transsion/camera/app/CameraApplication;->getUid(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 32
    sget-object v0, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private static getUid(Landroid/content/Context;)I
    .locals 2

    .line 85
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 87
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 89
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private registerPackageDataClear()V
    .locals 3

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "package"

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/transsion/camera/app/CameraApplication;->mDataClearReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .line 38
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050004

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 41
    sget-object v2, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraApplication onCreate. debugLogEnable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 42
    invoke-static {v1}, Lcom/transsion/camera/utils/debug/Log;->setDebugLogEnable(Z)V

    .line 44
    sget-object v1, Lcom/transsion/camera/app/CameraApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/profiler/PerformanceTracker;->create(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->start()Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;

    .line 45
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 46
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/adapter/CameraAgentFactory;->createCameraAgent(Landroid/content/Context;)V

    const v2, 0x7f050005

    .line 50
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f030017

    .line 51
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/ReflectionUtils;->cacheClasses([Ljava/lang/String;)V

    const v2, 0x7f030013

    .line 52
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/ReflectionUtils;->cacheClasses([Ljava/lang/String;)V

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/CameraApplication;->registerPackageDataClear()V

    .line 56
    invoke-static {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->init(Landroid/content/Context;)V

    .line 57
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->createInstance()V

    .line 58
    invoke-static {p0}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->createInstance(Landroid/content/Context;)V

    .line 59
    invoke-interface {v1}, Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;->stop()V

    return-void
.end method
