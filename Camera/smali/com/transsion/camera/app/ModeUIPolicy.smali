.class public Lcom/transsion/camera/app/ModeUIPolicy;
.super Ljava/lang/Object;
.source "ModeUIPolicy.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;


# static fields
.field private static final SLIMBODY_AND_BEAUTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final CAMERA_MODE_REORDER_GAP:I

.field private final MIN_MODE_NUM:I

.field private final mAllEntryName:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBackCameraDefaultMode:Ljava/lang/String;

.field private final mBackCameraModeNames:[Ljava/lang/String;

.field private mBokehModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBundleInfo:Landroid/os/Bundle;

.field private mContext:Landroid/content/Context;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mFrontCameraDefaultMode:Ljava/lang/String;

.field private final mFrontCameraModeNames:[Ljava/lang/String;

.field private mIsSecureCamera:Z

.field private mIsSmartMode:Z

.field private mNewModeOrder:[Ljava/lang/String;

.field private mPanoramaModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSatCamera:Ljava/lang/String;

.field private mShortcutEntry:Ljava/lang/String;

.field private mSmartBackCameraModeNames:[Ljava/lang/String;

.field private mSmartFrontCameraModeNames:[Ljava/lang/String;

.field private mSourceIntent:Landroid/content/Intent;

.field private mSourceIntentFlag:Z

.field private mSupernightModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ModeUIPolicy"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 87
    new-instance v0, Lcom/transsion/camera/app/ModeUIPolicy$1;

    invoke-direct {v0}, Lcom/transsion/camera/app/ModeUIPolicy$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->SLIMBODY_AND_BEAUTY_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Ljava/util/Set;ZLcom/transsion/camera/app/common/storage/DataStore;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Landroid/os/Bundle;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/transsion/camera/app/common/storage/DataStore;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mIsSmartMode:Z

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.transsion.camera.feature.mode.portrait.PortraitModeEntry"

    const-string v2, "com.transsion.camera.feature.mode.portrait.BackPortraitModeEntry"

    const-string v3, "com.transsion.camera.feature.mode.vsdof.SdofPhotoModeEntry"

    const-string v4, "com.transsion.camera.feature.mode.vsdof.BackSdofPhotoModeEntry"

    const-string v5, "com.transsion.camera.feature.mode.stblurmode.BackSTBlurModeEntry"

    const-string v6, "com.transsion.camera.feature.mode.stblurmode.STBlurModeEntry"

    const-string v7, "com.transsion.camera.feature.mode.bwportrait.BWPortraitModeEntry"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBokehModeList:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.transsion.camera.feature.burstpmk.BurstPMKModeEntry"

    const-string v2, "com.transsion.camera.feature.wideselfie.WideSelfieModeEntry"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mPanoramaModeList:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    const-string v2, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSupernightModeList:Ljava/util/List;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    iput-object p7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSatCamera:Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    .line 100
    iput-object p3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBundleInfo:Landroid/os/Bundle;

    .line 101
    iput-object p4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mAllEntryName:Ljava/util/Set;

    .line 102
    iput-boolean p5, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mIsSecureCamera:Z

    .line 103
    iput-object p6, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const p1, 0x7f0a0018

    .line 104
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    const p1, 0x7f0a000b

    .line 105
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->CAMERA_MODE_REORDER_GAP:I

    const p1, 0x7f030014

    .line 106
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f030015

    .line 107
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    if-eqz p5, :cond_0

    const-string p3, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    const-string p4, "com.transsion.camera.feature.funvideo.mode.FunVideoModeEntry"

    .line 109
    invoke-static {p1, p3, p4}, Lcom/transsion/camera/app/ModeUIPolicy;->exchangePosition([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {p2, p3, p4}, Lcom/transsion/camera/app/ModeUIPolicy;->exchangePosition([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    .line 111
    invoke-static {p1, p4}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraModeNames:[Ljava/lang/String;

    .line 112
    invoke-static {p2, p4}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraModeNames:[Ljava/lang/String;

    goto :goto_0

    .line 114
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraModeNames:[Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraModeNames:[Ljava/lang/String;

    :goto_0
    const p1, 0x7f0f0061

    .line 117
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraDefaultMode:Ljava/lang/String;

    const p1, 0x7f0f00e0

    .line 118
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraDefaultMode:Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Lcom/transsion/camera/app/ModeUIPolicy;->updateSmartModeNames()V

    return-void
.end method

.method private doSwapArrayElement(II)V
    .locals 2

    .line 258
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    aget-object v0, p0, p1

    .line 259
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 260
    aput-object v0, p0, p2

    return-void
.end method

.method private static exchangePosition([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v1

    move v3, v2

    .line 274
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_3

    .line 275
    aget-object v4, p0, v0

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v0

    goto :goto_1

    .line 279
    :cond_1
    aget-object v4, p0, v0

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-eq v2, v1, :cond_4

    if-eq v3, v1, :cond_4

    .line 284
    aget-object p1, p0, v2

    .line 285
    aget-object p2, p0, v3

    aput-object p2, p0, v2

    .line 286
    aput-object p1, p0, v3

    :cond_4
    return-void
.end method

.method private executeSmartModeOrder(I)[Ljava/lang/String;
    .locals 9

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mContext:Landroid/content/Context;

    .line 136
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_preferences_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "build_in_features_mode_order"

    const-string v3, ""

    .line 137
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v5, ","

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    if-nez p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f030014

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    goto :goto_0

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f030015

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    .line 147
    iput-boolean v6, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mIsSmartMode:Z

    .line 150
    :goto_0
    new-instance p1, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_smart_mode_order"

    const-string v7, "off"

    invoke-virtual {p1, v4, v7, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "on"

    .line 153
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 154
    iget-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v3, p1

    iget v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    if-le v3, v4, :cond_4

    .line 155
    aget-object p1, p1, v2

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 156
    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    iget v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    sub-int/2addr v4, v6

    aget-object v3, v3, v4

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 157
    iget v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    :goto_1
    iget-object v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v8, v7

    if-ge v4, v8, :cond_4

    .line 158
    aget-object v7, v7, v4

    invoke-interface {v0, v7, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 159
    iget-object v8, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-direct {p0, v8}, Lcom/transsion/camera/app/ModeUIPolicy;->isVideoClassModes(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    sub-int/2addr v7, p1

    .line 160
    iget v8, p0, Lcom/transsion/camera/app/ModeUIPolicy;->CAMERA_MODE_REORDER_GAP:I

    if-lt v7, v8, :cond_3

    goto :goto_2

    :cond_2
    sub-int/2addr v7, v3

    .line 165
    iget v8, p0, Lcom/transsion/camera/app/ModeUIPolicy;->CAMERA_MODE_REORDER_GAP:I

    if-lt v7, v8, :cond_3

    :goto_2
    move p1, v6

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move p1, v2

    :goto_3
    if-eqz p1, :cond_10

    .line 175
    iget p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    :goto_4
    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v6

    if-ge p1, v3, :cond_7

    move v3, v2

    .line 176
    :goto_5
    iget-object v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v7, v4

    sub-int/2addr v7, v6

    sub-int/2addr v7, p1

    if-ge v3, v7, :cond_6

    .line 177
    iget v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    add-int/2addr v7, v3

    add-int/2addr v7, v6

    aget-object v4, v4, v7

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    iget v8, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    add-int/2addr v8, v3

    aget-object v7, v7, v8

    invoke-interface {v0, v7, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    sub-int/2addr v4, v7

    iget v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->CAMERA_MODE_REORDER_GAP:I

    if-lt v4, v7, :cond_5

    .line 179
    iget v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    add-int v7, v3, v4

    add-int/2addr v4, v3

    add-int/2addr v4, v6

    invoke-direct {p0, v7, v4}, Lcom/transsion/camera/app/ModeUIPolicy;->doSwapArrayElement(II)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 184
    :cond_7
    iget p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    :goto_6
    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v4, v3

    if-ge p1, v4, :cond_9

    .line 185
    aget-object v3, v3, p1

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ModeUIPolicy;->isVideoClassModes(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 186
    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->CAMERA_MODE_REORDER_GAP:I

    if-lt v3, v4, :cond_8

    .line 188
    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/ModeUIPolicy;->doSwapArrayElement(II)V

    goto :goto_7

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 194
    :cond_9
    :goto_7
    iget p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    :goto_8
    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v4, v3

    if-ge p1, v4, :cond_b

    .line 195
    aget-object v3, v3, p1

    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ModeUIPolicy;->isVideoClassModes(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 196
    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    iget v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    sub-int/2addr v7, v6

    aget-object v4, v4, v7

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->CAMERA_MODE_REORDER_GAP:I

    if-lt v3, v4, :cond_a

    .line 198
    iget v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    sub-int/2addr v3, v6

    invoke-direct {p0, v3, p1}, Lcom/transsion/camera/app/ModeUIPolicy;->doSwapArrayElement(II)V

    goto :goto_9

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 204
    :cond_b
    :goto_9
    iget p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    :goto_a
    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v4, v3

    sub-int/2addr v4, v6

    if-ge p1, v4, :cond_e

    move v3, v2

    .line 205
    :goto_b
    iget-object v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v7, v4

    sub-int/2addr v7, v6

    sub-int/2addr v7, p1

    if-ge v3, v7, :cond_d

    .line 206
    iget v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    add-int/2addr v7, v3

    add-int/2addr v7, v6

    aget-object v4, v4, v7

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    iget v8, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    add-int/2addr v8, v3

    aget-object v7, v7, v8

    invoke-interface {v0, v7, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    sub-int/2addr v4, v7

    iget v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->CAMERA_MODE_REORDER_GAP:I

    if-lt v4, v7, :cond_c

    .line 208
    iget v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    add-int v7, v3, v4

    add-int/2addr v4, v3

    add-int/2addr v4, v6

    invoke-direct {p0, v7, v4}, Lcom/transsion/camera/app/ModeUIPolicy;->doSwapArrayElement(II)V

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_d
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 213
    :cond_e
    iput-boolean v6, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mIsSmartMode:Z

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    aget-object v3, v3, v2

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v3, v6

    .line 215
    :goto_c
    iget-object v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_f

    .line 216
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 218
    :cond_f
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 220
    :cond_10
    iget-boolean p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mIsSecureCamera:Z

    if-eqz p1, :cond_16

    const/4 p1, 0x2

    const-string v0, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    const-string v1, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    .line 221
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    move v1, v2

    move v3, v1

    .line 223
    :goto_d
    iget v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    if-ge v1, v4, :cond_15

    .line 224
    iget-object v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 226
    iget v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    :goto_e
    iget-object v5, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v7, v5

    if-ge v4, v7, :cond_12

    if-eq v4, v3, :cond_11

    .line 228
    aget-object v5, v5, v4

    invoke-static {v0, v5}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, v5}, Lcom/transsion/camera/app/ModeUIPolicy;->isVideoClassModes(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 229
    invoke-direct {p0, v1, v4}, Lcom/transsion/camera/app/ModeUIPolicy;->doSwapArrayElement(II)V

    move v3, v4

    move v4, v6

    goto :goto_f

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_12
    move v4, v2

    :goto_f
    if-nez v4, :cond_14

    .line 237
    iget v4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    :goto_10
    iget-object v5, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v7, v5

    if-ge v4, v7, :cond_14

    if-eq v4, v3, :cond_13

    .line 239
    aget-object v5, v5, v4

    invoke-static {v0, v5}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 240
    invoke-direct {p0, v1, v4}, Lcom/transsion/camera/app/ModeUIPolicy;->doSwapArrayElement(II)V

    move v3, v4

    goto :goto_11

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_14
    :goto_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_15
    :goto_12
    if-ge v2, p1, :cond_16

    .line 250
    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    aget-object v3, v0, v2

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 254
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    return-object p0
.end method

.method private findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 292
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private findMatchMode([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_5

    .line 297
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_5

    .line 300
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 304
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 305
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p0, v0

    :cond_3
    if-nez p0, :cond_4

    .line 310
    invoke-static {p1, p3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move-object p3, p0

    :goto_0
    return-object p3

    :cond_5
    :goto_1
    return-object p0
.end method

.method private getNextMode(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 443
    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 444
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    .line 445
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getSpecifyCameraMode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    const-string v1, "SpecifyMode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ModeUIPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v1, "DocumentEntry"

    .line 319
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    .line 320
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p2, "SuperNightMode"

    .line 322
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    .line 323
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p2, "PortraitMode"

    .line 324
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    const-string p2, "BokehMode"

    .line 325
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    const-string p2, "BokehOffMode"

    .line 326
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string p2, "FaceBeautyMode"

    .line 328
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "FaceBeauty"

    .line 329
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "SlimBody"

    .line 330
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "MultiFaceBeautyMode"

    .line 331
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "MultiFaceBeautyOffMode"

    .line 332
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string p2, "FunVideoMode"

    .line 334
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "FunVideoOffMode"

    .line 335
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "FrontFunVideoMode"

    .line 336
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "FrontFunVideoOffMode"

    .line 337
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    const-string p2, "ASDMode"

    .line 339
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "HDRMode"

    .line 340
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "HDROffMode"

    .line 341
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "SuperDefinitionOffMode"

    .line 342
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "SuperDefinitionOnMode"

    .line 343
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "MacroMode"

    .line 344
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "WideAngleMode"

    .line 345
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "FrontASDMode"

    .line 346
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0

    :cond_6
    :goto_0
    const-string p2, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    .line 347
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_1
    const-string p2, "com.transsion.camera.feature.funvideo.mode.FunVideoModeEntry"

    .line 338
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 333
    :cond_8
    :goto_2
    sget-object p2, Lcom/transsion/camera/app/ModeUIPolicy;->SLIMBODY_AND_BEAUTY_LIST:Ljava/util/List;

    const-string v0, "com.transsion.camera.feature.mode.facebeauty.FaceBeautyModeEntry"

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 327
    :cond_9
    :goto_3
    iget-object p2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBokehModeList:Ljava/util/List;

    const-string v0, "com.transsion.camera.feature.mode.stblurmode.STBlurModeEntry"

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isNextCameraHasSameMode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 452
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ModeUIPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 453
    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p0, v1

    .line 454
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isVideoClassModes(Ljava/lang/String;)Z
    .locals 1

    .line 264
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0300e1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getDataStoreModeNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const-string v0, "1"

    .line 545
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "frontmodesstring"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "backmodesstring"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 551
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ModeUIPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ","

    .line 553
    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 354
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    if-eqz v0, :cond_a

    const-string v1, "open_camera_mode"

    .line 355
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceBeauty"

    .line 356
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ModeUIPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 358
    sget-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->SLIMBODY_AND_BEAUTY_LIST:Ljava/util/List;

    const-string v1, "com.transsion.camera.feature.mode.facebeauty.FaceBeautyModeEntry"

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 359
    sget-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultMode mode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 360
    iput-boolean v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    return-object p1

    :cond_0
    const-string v1, "Video"

    .line 362
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    if-eqz v0, :cond_1

    .line 363
    iput-boolean v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    return-object v1

    .line 366
    :cond_1
    iput-boolean v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    .line 368
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 369
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string v3, "android.media.action.FANS_IMAGE_CAPTURE"

    .line 371
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p0, "com.transsion.camera.feature.mode.autoscenedetection.IntentASDModeEntry"

    return-object p0

    :cond_3
    const-string v3, "android.media.action.VIDEO_CAPTURE"

    .line 373
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p0, "com.transsion.camera.feature.mode.video.IntentVideoModeEntry"

    return-object p0

    :cond_4
    const-string v3, "android.media.action.VIDEO_CAMERA"

    .line 375
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 376
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    const-string v3, "com.google.assistant.extra.OPEN_IN_VIDEO_MODE"

    .line 377
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 381
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBundleInfo:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    const-string v1, "ModeName"

    .line 382
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mShortcutEntry:Ljava/lang/String;

    .line 385
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.action.START_SPECIFY_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mShortcutEntry:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 386
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mShortcutEntry:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ModeUIPolicy;->getSpecifyCameraMode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    sget-object v1, Lcom/transsion/camera/app/ModeUIPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start specify camera mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 388
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    return-object v0

    :cond_8
    :goto_0
    return-object v1

    :cond_9
    :goto_1
    const-string p0, "com.transsion.camera.feature.mode.photo.IntentPhotoModeEntry"

    return-object p0

    :cond_a
    const-string v0, "1"

    .line 395
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 396
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraDefaultMode:Ljava/lang/String;

    return-object p0

    :cond_b
    const-string v0, "0"

    .line 397
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSatCamera:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_2

    :cond_c
    const/4 p0, 0x0

    return-object p0

    .line 398
    :cond_d
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraDefaultMode:Ljava/lang/String;

    return-object p0
.end method

.method public getModeNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 465
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 468
    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 471
    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v2

    if-nez v2, :cond_0

    .line 472
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraModeNames:[Ljava/lang/String;

    goto :goto_0

    .line 473
    :cond_0
    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 474
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraModeNames:[Ljava/lang/String;

    goto :goto_0

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraModeNames:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_7

    const/4 v0, -0x1

    .line 482
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_4

    const/16 v1, 0x31

    if-eq v2, v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    move v1, v0

    :goto_2
    if-eqz v1, :cond_6

    .line 488
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraModeNames:[Ljava/lang/String;

    goto :goto_3

    .line 484
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraModeNames:[Ljava/lang/String;

    :cond_7
    :goto_3
    return-object v0
.end method

.method public getRestoreMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    .line 406
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraDefaultMode:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "0"

    .line 408
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSatCamera:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 409
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraDefaultMode:Ljava/lang/String;

    return-object p0
.end method

.method public getShortcutEntry()Ljava/lang/String;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mShortcutEntry:Ljava/lang/String;

    return-object p0
.end method

.method public getSmartModeNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 499
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 502
    invoke-interface {v0, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 505
    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v2

    if-nez v2, :cond_0

    .line 506
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSmartBackCameraModeNames:[Ljava/lang/String;

    goto :goto_0

    .line 507
    :cond_0
    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 508
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSmartFrontCameraModeNames:[Ljava/lang/String;

    goto :goto_0

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSmartBackCameraModeNames:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_7

    const/4 v0, -0x1

    .line 516
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_4

    const/16 v1, 0x31

    if-eq v2, v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    move v1, v0

    :goto_2
    if-eqz v1, :cond_6

    .line 522
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSmartBackCameraModeNames:[Ljava/lang/String;

    goto :goto_3

    .line 518
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSmartFrontCameraModeNames:[Ljava/lang/String;

    :cond_7
    :goto_3
    return-object v0
.end method

.method public getSwitchMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 419
    invoke-direct {p0, p3, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->isNextCameraHasSameMode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 421
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBokehModeList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 422
    iget-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBokehModeList:Ljava/util/List;

    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/ModeUIPolicy;->getNextMode(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 423
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mPanoramaModeList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 424
    iget-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mPanoramaModeList:Ljava/util/List;

    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/ModeUIPolicy;->getNextMode(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 425
    :cond_2
    sget-object p1, Lcom/transsion/camera/app/ModeUIPolicy;->SLIMBODY_AND_BEAUTY_LIST:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 426
    sget-object p1, Lcom/transsion/camera/app/ModeUIPolicy;->SLIMBODY_AND_BEAUTY_LIST:Ljava/util/List;

    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/ModeUIPolicy;->getNextMode(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 427
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSupernightModeList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 428
    iget-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSupernightModeList:Ljava/util/List;

    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/ModeUIPolicy;->getNextMode(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_5

    .line 431
    iget-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mAllEntryName:Ljava/util/Set;

    if-eqz p1, :cond_5

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object p2

    .line 435
    :cond_5
    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/ModeUIPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isSmartModeOrder()Z
    .locals 0

    .line 532
    iget-boolean p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mIsSmartMode:Z

    return p0
.end method

.method public saveARCorePosition([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    const-string v0, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    .line 564
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    .line 565
    invoke-static {p2, v0}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    .line 566
    sget-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveARCorePosition,backPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,frontPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "backarcoreposition"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 569
    iget-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string v0, "frontarcoreposition"

    invoke-virtual {p1, v0, p2, p0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setSourceIntent(Landroid/content/Intent;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    const/4 p1, 0x1

    .line 538
    iput-boolean p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    .line 539
    sget-object p0, Lcom/transsion/camera/app/ModeUIPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mSourceIntentFlag = true"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateMetaInfo(Landroid/os/Bundle;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBundleInfo:Landroid/os/Bundle;

    return-void
.end method

.method public updateSmartModeNames()V
    .locals 1

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mIsSmartMode:Z

    .line 130
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ModeUIPolicy;->executeSmartModeOrder(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSmartBackCameraModeNames:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 131
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ModeUIPolicy;->executeSmartModeOrder(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSmartFrontCameraModeNames:[Ljava/lang/String;

    return-void
.end method
