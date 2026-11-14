.class public Lcom/transsion/camera/ui/setting/asd/AsdUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "AsdUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;,
        Lcom/transsion/camera/ui/setting/asd/AsdUI$AsdResultCallbackImpl;,
        Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;
    }
.end annotation


# static fields
.field private static final MSG_FACE_BEAUTY_HINT_HIDE:I = 0x66

.field private static final MSG_FACE_BEAUTY_HINT_SHOW:I = 0x65

.field private static final MSG_UPDATE_ASD_RESULT:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

.field protected mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mFakeAsdCameraVersion:I

.field protected mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private volatile mIsFaceBeautyAlwaysHintShow:Z

.field private mIsMacroEnable:Z

.field private mIsWideCamera:Z

.field private mResources:Landroid/content/res/Resources;

.field private mStatusChangeListener:Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;

.field private mWarningType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AsdUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3

    .line 84
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 74
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 75
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 76
    iput v1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mWarningType:I

    .line 78
    new-instance v0, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/asd/AsdUI;Lcom/transsion/camera/ui/setting/asd/AsdUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;

    .line 79
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mIsMacroEnable:Z

    .line 80
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mIsWideCamera:Z

    .line 82
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mIsFaceBeautyAlwaysHintShow:Z

    .line 85
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f0a0005

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mFakeAsdCameraVersion:I

    .line 87
    new-instance p1, Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;

    invoke-direct {p1, p0, v2}, Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/asd/AsdUI;Lcom/transsion/camera/ui/setting/asd/AsdUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mUIHandler:Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;

    return-void
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 63
    sget-object v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/asd/AsdUI;[II)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->doUpdateAsdResult([II)V

    return-void
.end method

.method static synthetic access$402(Lcom/transsion/camera/ui/setting/asd/AsdUI;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mIsFaceBeautyAlwaysHintShow:Z

    return p1
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/asd/AsdUI;)Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mUIHandler:Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;

    return-object p0
.end method

.method static synthetic access$702(Lcom/transsion/camera/ui/setting/asd/AsdUI;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mWarningType:I

    return p1
.end method

.method static synthetic access$802(Lcom/transsion/camera/ui/setting/asd/AsdUI;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mIsMacroEnable:Z

    return p1
.end method

.method static synthetic access$900(Lcom/transsion/camera/ui/setting/asd/AsdUI;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->hideAsdResult()V

    return-void
.end method

.method private checkWideMacroEnable()Z
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "key_macro"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mIsMacroEnable:Z

    .line 475
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mIsWideCamera:Z

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private doUpdateAsdResult([II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 196
    sget-object v3, Lcom/transsion/camera/ui/setting/asd/AsdUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doUpdateAsdResult: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", state: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_16

    .line 197
    array-length v3, v1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto/16 :goto_c

    :cond_0
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v2, v6, :cond_9

    .line 206
    aget v8, v1, v3

    .line 207
    aget v9, v1, v6

    .line 208
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v10

    const-string v11, "0"

    invoke-virtual {v10, v11}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setASDValue(Ljava/lang/String;)V

    const-string v10, ""

    if-eq v8, v6, :cond_4

    if-eq v8, v4, :cond_3

    const/4 v11, 0x4

    if-eq v8, v11, :cond_2

    const/4 v11, 0x7

    if-eq v8, v11, :cond_1

    move v13, v3

    move-object v11, v7

    move-object v12, v11

    goto/16 :goto_1

    .line 229
    :cond_1
    iget-object v11, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f080331

    invoke-virtual {v11, v12, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 230
    iget-object v12, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f0f0057

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 232
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setASDValue(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_2
    iget-object v11, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f08033b

    invoke-virtual {v11, v12, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 226
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setASDValue(Ljava/lang/String;)V

    move v13, v6

    move-object v12, v7

    goto :goto_1

    .line 217
    :cond_3
    iget-object v11, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f08032d

    invoke-virtual {v11, v12, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 218
    iget-object v12, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f0f0056

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 220
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setASDValue(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_4
    iget-object v11, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f080334

    invoke-virtual {v11, v12, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 212
    iget-object v12, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f0f0049

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 214
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setASDValue(Ljava/lang/String;)V

    :goto_0
    move v13, v6

    :goto_1
    packed-switch v9, :pswitch_data_0

    :pswitch_0
    move-object v3, v7

    move-object v14, v3

    goto/16 :goto_3

    .line 313
    :pswitch_1
    iget-object v13, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f08032a

    invoke-virtual {v13, v14, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 314
    iget-object v14, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0f0055

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 316
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit16 v9, v9, 0x3e8

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setASDValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 307
    :pswitch_2
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f08033d

    invoke-virtual {v3, v13, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 308
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f0f0054

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 310
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit16 v9, v9, 0x3e8

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setASDValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 301
    :pswitch_3
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f080337

    invoke-virtual {v3, v13, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 302
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f0f004c

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 304
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit16 v9, v9, 0x3e8

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setASDValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 295
    :pswitch_4
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f08032f

    invoke-virtual {v3, v13, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 296
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f0f0046

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 298
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit16 v9, v9, 0x3e8

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setASDValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 289
    :pswitch_5
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f080328

    invoke-virtual {v3, v13, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 290
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f0f0041

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 292
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit16 v9, v9, 0x3e8

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setASDValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 283
    :pswitch_6
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f080339

    invoke-virtual {v3, v13, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 284
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f0f004f

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 286
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit16 v9, v9, 0x3e8

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setASDValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 277
    :pswitch_7
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f08033c

    invoke-virtual {v3, v13, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 278
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f0f0053

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 280
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit16 v9, v9, 0x3e8

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setASDValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 271
    :pswitch_8
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f080338

    invoke-virtual {v3, v13, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 272
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f0f004d

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 274
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit16 v9, v9, 0x3e8

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setASDValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 265
    :pswitch_9
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f08032c

    invoke-virtual {v3, v13, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 266
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f0f0045

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 268
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit16 v9, v9, 0x3e8

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setASDValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 259
    :pswitch_a
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f08032b

    invoke-virtual {v3, v13, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 260
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f0f0044

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 262
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit16 v9, v9, 0x3e8

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setASDValue(Ljava/lang/String;)V

    goto :goto_2

    .line 253
    :pswitch_b
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f080329

    invoke-virtual {v3, v13, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 254
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f0f0051

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 256
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit16 v9, v9, 0x3e8

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setASDValue(Ljava/lang/String;)V

    goto :goto_2

    .line 247
    :pswitch_c
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v13, 0x7f08033a

    invoke-virtual {v3, v13, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 248
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f0f0050

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 250
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit16 v9, v9, 0x3e8

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setASDValue(Ljava/lang/String;)V

    :goto_2
    move-object v3, v13

    move v13, v6

    .line 321
    :goto_3
    iget v9, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mFakeAsdCameraVersion:I

    const v10, 0x7f0f0148

    if-ne v9, v6, :cond_7

    if-ne v8, v6, :cond_a

    .line 323
    iget v8, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mWarningType:I

    if-eq v8, v6, :cond_6

    if-eq v8, v4, :cond_5

    goto :goto_6

    .line 333
    :cond_5
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0f0149

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 338
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v4, v6}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    goto :goto_4

    .line 325
    :cond_6
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 330
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v4, v6}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    :goto_4
    move-object v12, v3

    goto :goto_5

    :cond_7
    if-eq v8, v4, :cond_a

    .line 344
    iget v4, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mWarningType:I

    if-eq v4, v6, :cond_8

    goto :goto_6

    .line 346
    :cond_8
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 351
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v3, v6}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    :goto_5
    move v13, v6

    move-object v3, v7

    move-object v11, v3

    move-object v14, v11

    goto :goto_6

    :cond_9
    move-object v3, v7

    move-object v11, v3

    move-object v12, v11

    move-object v14, v12

    const/4 v13, 0x0

    .line 357
    :cond_a
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->checkWideMacroEnable()Z

    move-result v4

    if-nez v4, :cond_b

    iget-boolean v4, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mIsFaceBeautyAlwaysHintShow:Z

    if-eqz v4, :cond_c

    :cond_b
    const/4 v13, 0x0

    :cond_c
    if-eqz v13, :cond_15

    .line 361
    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v2, :cond_16

    if-eqz v12, :cond_d

    .line 363
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2, v12}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_7

    .line 365
    :cond_d
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2, v7}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    :goto_7
    if-eqz v11, :cond_e

    .line 368
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2, v11}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 370
    :cond_e
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2, v7}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_8
    if-eqz v14, :cond_f

    .line 373
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2, v14}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    goto :goto_9

    .line 375
    :cond_f
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2, v7}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    :goto_9
    if-eqz v3, :cond_10

    .line 378
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    .line 380
    :cond_10
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2, v7}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_a
    if-eqz v12, :cond_11

    if-nez v11, :cond_12

    :cond_11
    if-eqz v14, :cond_13

    if-eqz v3, :cond_13

    .line 383
    :cond_12
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2, v6}, Lcom/transsion/camera/app/common/ui/HintInfo;->setIsAsdDynamic(Z)V

    .line 384
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    goto :goto_b

    :cond_13
    const/4 v3, 0x0

    .line 386
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;->setIsAsdDynamic(Z)V

    .line 388
    :goto_b
    sget-object v2, Lcom/transsion/camera/ui/setting/asd/AsdUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 389
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->isAsdDynamic()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v2, :cond_14

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 391
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-ne v2, v3, :cond_14

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 392
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 393
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-ne v2, v3, :cond_14

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 394
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    return-void

    :cond_14
    const/4 v2, 0x0

    .line 398
    aget v1, v1, v2

    .line 399
    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->updateSuperNightGuide(I)V

    .line 401
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 403
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 404
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v2, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->getOtherMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    .line 405
    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_c

    .line 408
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->hideAsdResult()V

    if-nez v2, :cond_16

    .line 410
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setASDValue(Ljava/lang/String;)V

    :cond_16
    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private hideAsdResult()V
    .locals 3

    .line 416
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 419
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 421
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setTwinkleEnabled(Z)V

    .line 422
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 424
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherMessage(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mCurrentAsdHint:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setOtherDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 426
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private registerListenerToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private unRegisterListenerToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/asd/AsdUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_asd"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 144
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    .line 150
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 152
    sget-object p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 155
    :cond_0
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object p1

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mIsWideCamera:Z

    .line 157
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    new-instance v0, Lcom/transsion/camera/ui/setting/asd/AsdUI$AsdResultCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/asd/AsdUI$AsdResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/asd/AsdUI;Lcom/transsion/camera/ui/setting/asd/AsdUI$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    const/4 p1, 0x0

    .line 158
    iput p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mWarningType:I

    .line 159
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_1

    const-string p1, "key_fake_asd_camera_status"

    .line 160
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->registerListenerToMonitor(Ljava/lang/String;)V

    const-string p1, "key_macro_status"

    .line 161
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->registerListenerToMonitor(Ljava/lang/String;)V

    const-string p1, "key_multi_face_beauty"

    .line 162
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->registerListenerToMonitor(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->hideAsdResult()V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mUIHandler:Lcom/transsion/camera/ui/setting/asd/AsdUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/asd/AsdUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1

    const-string v0, "key_fake_asd_camera_status"

    .line 178
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->unRegisterListenerToMonitor(Ljava/lang/String;)V

    const-string v0, "key_macro_status"

    .line 179
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->unRegisterListenerToMonitor(Ljava/lang/String;)V

    const-string v0, "key_multi_face_beauty"

    .line 180
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/asd/AsdUI;->unRegisterListenerToMonitor(Ljava/lang/String;)V

    .line 182
    :cond_1
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method protected updateSuperNightGuide(I)V
    .locals 0

    return-void
.end method
