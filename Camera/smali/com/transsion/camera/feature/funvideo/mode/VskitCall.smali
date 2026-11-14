.class public Lcom/transsion/camera/feature/funvideo/mode/VskitCall;
.super Ljava/lang/Object;
.source "VskitCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/funvideo/mode/VskitCall$ResultCallback;
    }
.end annotation


# instance fields
.field private mAddMusic:Z

.field private mContext:Landroid/content/Context;

.field private mMusicPath:Ljava/lang/String;

.field private mOnHandleListener:Lcom/transnet/filter/listener/OnHandleListener;

.field private mResultCallback:Lcom/transsion/camera/feature/funvideo/mode/VskitCall$ResultCallback;

.field private mSecondTempPath:Ljava/lang/String;

.field private mSpeed:F

.field private mTempPath:Ljava/lang/String;

.field private mTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mAddMusic:Z

    .line 44
    new-instance v0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall$1;-><init>(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mOnHandleListener:Lcom/transnet/filter/listener/OnHandleListener;

    .line 41
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mAddMusic:Z

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mAddMusic:Z

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mTempPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mTempPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->getTempFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mSecondTempPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mSecondTempPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mMusicPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;)Lcom/transsion/camera/feature/funvideo/mode/VskitCall$ResultCallback;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mResultCallback:Lcom/transsion/camera/feature/funvideo/mode/VskitCall$ResultCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/transsion/camera/feature/funvideo/mode/VskitCall;F)F
    .locals 0

    .line 19
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mSpeed:F

    return p1
.end method

.method private static getAppOpenIntentByPackageName(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 4

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 170
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "android.intent.extra.STREAM"

    .line 172
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const p0, 0x10008000

    .line 173
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-nez p2, :cond_1

    return-object v1

    .line 178
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string p0, "android.intent.action.MAIN"

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p0, "android.intent.category.LAUNCHER"

    .line 179
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10200000

    .line 180
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_1
    const/4 p0, 0x1

    .line 183
    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    .line 185
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const-string v0, "com.yomobigroup.chat"

    const/4 v2, 0x0

    if-ge p1, p2, :cond_3

    .line 186
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 187
    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 188
    iget-object p0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    move-object p0, v2

    .line 192
    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v2

    .line 195
    :cond_4
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v1
.end method

.method private getTempFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0xc

    .line 129
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 133
    array-length v3, p0

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p0, v4

    if-eqz v5, :cond_0

    .line 134
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 135
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static launchVskitApp(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 1

    .line 144
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->getAppOpenIntentByPackageName(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 147
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p1, "palmplay://thirdlauncher.com/?entryType=AppDetail&itemID=s_23b28b4cf3ac450f9086b9e0637c7390&name=Vskit-Short Videos More Fun&utm_source=pushsdk"

    .line 153
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 155
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 157
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected setMusicPath(Ljava/lang/String;)V
    .locals 1

    .line 81
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mMusicPath:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 82
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mAddMusic:Z

    :cond_0
    return-void
.end method

.method protected setSpeed(I)F
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 102
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mSpeed:F

    goto :goto_0

    :cond_0
    const p1, 0x3eaaa64c    # 0.3333f

    .line 99
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mSpeed:F

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f000000    # 0.5f

    .line 96
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mSpeed:F

    goto :goto_0

    :cond_2
    const/high16 p1, 0x40400000    # 3.0f

    .line 93
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mSpeed:F

    goto :goto_0

    :cond_3
    const/high16 p1, 0x40000000    # 2.0f

    .line 90
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mSpeed:F

    .line 105
    :goto_0
    iget p0, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mSpeed:F

    return p0
.end method

.method protected start(Ljava/lang/String;Lcom/transsion/camera/feature/funvideo/mode/VskitCall$ResultCallback;)Z
    .locals 8

    .line 109
    iput-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mResultCallback:Lcom/transsion/camera/feature/funvideo/mode/VskitCall$ResultCallback;

    .line 110
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->getTempFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 114
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".tmp.mp4"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mTempPath:Ljava/lang/String;

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mTime:J

    .line 116
    iget p2, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mSpeed:F

    float-to-double v1, p2

    const-wide v3, 0x3f1a36e2eb1c432dL    # 1.0E-4

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double p2, v1, v3

    const/4 v1, 0x1

    if-lez p2, :cond_1

    .line 117
    iget p2, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mSpeed:F

    float-to-double v3, p2

    iget-object v5, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mTempPath:Ljava/lang/String;

    iget-boolean p2, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mAddMusic:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v7, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mOnHandleListener:Lcom/transnet/filter/listener/OnHandleListener;

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcom/transnet/filter/TransCoder;->speedChange(Ljava/lang/String;DLjava/lang/String;Ljava/lang/Boolean;Lcom/transnet/filter/listener/OnHandleListener;)V

    const/4 p1, 0x0

    .line 118
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mSpeed:F

    return v1

    .line 120
    :cond_1
    iget-boolean p2, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mAddMusic:Z

    if-eqz p2, :cond_2

    .line 121
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mAddMusic:Z

    .line 122
    iget-object p2, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mMusicPath:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mTempPath:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->mOnHandleListener:Lcom/transnet/filter/listener/OnHandleListener;

    invoke-static {p1, p2, v0, v2, p0}, Lcom/transnet/filter/TransCoder;->addBGMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/transnet/filter/listener/OnHandleListener;)V

    return v1

    :cond_2
    return v0
.end method
