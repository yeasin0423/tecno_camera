.class public abstract Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "AbstractFaceBeautyUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$MySettingChangeListener;,
        Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$UIHandler;
    }
.end annotation


# static fields
.field protected static final FACEBEAUTY_ANIMATOR_DURATION:I = 0x12c

.field protected static final FACEBEAUTY_ANIMATOR_OUT_DURATION:I = 0xc8

.field private static final FACEBEAUTY_LEVEL_HIDE_DELAY:I = 0x1388

.field private static final MSG_HIDE_FACEBEAUTY_LEVEL:I = 0x65

.field private static final MSG_ON_SETTING_VALUE_CHANGED:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mCurrentEntryValue:Ljava/lang/String;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mFaceBeautyClose:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mFaceBeautyEntry:Landroid/widget/FrameLayout;

.field protected mFaceBeautyIcon:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyIconView;

.field private mFaceBeautyLevelList:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;

.field protected mFaceBeautyLevelListOffsetY:I

.field private mFaceBeautyRoot:Landroid/view/ViewGroup;

.field private mInflater:Landroid/view/LayoutInflater;

.field mLevelChangeListener:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout$LevelChangeListener;

.field private mSelfTimerCapturing:Z

.field private mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field protected mSettingUISpec:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUISpec;

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field protected mSupportedEntries:[Ljava/lang/String;

.field private mSupportedEntryValues:[Ljava/lang/String;

.field private mTopOffset:I

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$UIHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AbstractFaceBeautyUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSelfTimerCapturing:Z

    .line 69
    new-instance v0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$MySettingChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$MySettingChangeListener;-><init>(Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 170
    new-instance v0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$2;-><init>(Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mLevelChangeListener:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout$LevelChangeListener;

    .line 81
    new-instance v0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$UIHandler;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mUIHandler:Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$UIHandler;

    .line 82
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->getSettingUISpec(Landroid/content/res/Resources;)Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUISpec;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSettingUISpec:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUISpec;

    const v0, 0x7f070106

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyLevelListOffsetY:I

    return-void
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 41
    sget-object v0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->doOnStatusChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;)Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyLevelList:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->hideLevelListImmediately()V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->showLevelListImmediately()V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->setValueByIndex(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;)Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$UIHandler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mUIHandler:Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$UIHandler;

    return-object p0
.end method

.method private doOnStatusChanged(Ljava/lang/String;)V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 450
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->updateEntryView()V

    :cond_0
    return-void
.end method

.method private hideLevelListImmediately()V
    .locals 4

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyIcon:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyIconView;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyClose:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyLevelList:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->fadeOut(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyIcon:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyIconView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyClose:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->updateLevel()V

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyLevelList:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 343
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "value_facebeauty_ui_off"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private hideWithoutAnimation()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyIcon:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyIconView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyIcon:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyIconView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyClose:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->updateLevel()V

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyLevelList:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 354
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "value_facebeauty_ui_off"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private inflateEntryList()V
    .locals 8

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSupportedEntryValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 304
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 305
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0c0041

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyLevelList:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;

    invoke-virtual {v5, v6, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 307
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSettingUISpec:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUISpec;

    invoke-virtual {v6, v4}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v4

    .line 308
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSettingUISpec:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUISpec;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aget-object v4, v6, v4

    .line 309
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyLevelList:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private setValueByIndex(I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSupportedEntryValues:[Ljava/lang/String;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 365
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->updateEntryView()V

    .line 367
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_1

    .line 368
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showLevelListImmediately()V
    .locals 4

    .line 329
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyIcon:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyIconView;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyClose:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyLevelList:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->fadeIn(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyIcon:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyClose:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyLevelList:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 333
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->hideLevelList()V

    :cond_0
    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private updateEntryView()V
    .locals 6

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyLevelList:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 317
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyLevelList:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 318
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSettingUISpec:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUISpec;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_0

    const/4 v5, 0x1

    .line 320
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    .line 321
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyLevelList:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;

    invoke-virtual {v3, v4}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;->setCurrentPosition(I)V

    goto :goto_1

    .line 323
    :cond_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 122
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0040

    const/4 v1, 0x0

    .line 123
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 124
    iget p2, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mTopOffset:I

    if-eqz p2, :cond_0

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 126
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mTopOffset:I

    add-int/2addr v0, v2

    invoke-virtual {p2, v1, v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 127
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const p2, 0x7f0900ce

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyRoot:Landroid/view/ViewGroup;

    const p2, 0x7f0900cc

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyEntry:Landroid/widget/FrameLayout;

    const p2, 0x7f0900cb

    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyClose:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const p2, 0x7f0900cd

    .line 132
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyIconView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyIcon:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyIconView;

    const p2, 0x7f0900cf

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyLevelList:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mLevelChangeListener:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout$LevelChangeListener;

    invoke-virtual {p2, v0}, Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;->setLevelChangeListener(Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout$LevelChangeListener;)V

    .line 137
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyEntry:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$1;-><init>(Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method protected abstract fadeIn(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;)Z
.end method

.method protected abstract fadeOut(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;)Z
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSettingUISpec:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getSettingUISpec(Landroid/content/res/Resources;)Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hideEntryView()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mUIHandler:Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyLevelList:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 167
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->hideLevelListImmediately()V

    return-void
.end method

.method protected hideLevelList()V
    .locals 4

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mUIHandler:Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 359
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mUIHandler:Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$UIHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    const/16 v2, 0xb

    const/4 v3, 0x4

    const/16 v4, 0x65

    if-eq p1, v2, :cond_4

    const/16 v2, 0xc

    if-eq p1, v2, :cond_3

    const/16 v2, 0x1b

    if-eq p1, v2, :cond_2

    const/16 v2, 0x2d

    if-eq p1, v2, :cond_4

    const/16 v2, 0x2e

    if-eq p1, v2, :cond_3

    const/16 v2, 0x48

    if-eq p1, v2, :cond_1

    const/16 v2, 0x49

    if-eq p1, v2, :cond_0

    const/16 v2, 0x4b

    if-eq p1, v2, :cond_0

    const/16 v2, 0x4c

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSelfTimerCapturing:Z

    if-nez p1, :cond_7

    .line 424
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 425
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 426
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->setEnable(Z)V

    goto :goto_0

    .line 415
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 416
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 417
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->setEnable(Z)V

    .line 418
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->hideWithoutAnimation()V

    goto :goto_0

    .line 403
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->updateLevel()V

    .line 404
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSelfTimerCapturing:Z

    goto :goto_0

    .line 396
    :cond_3
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSelfTimerCapturing:Z

    .line 397
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 398
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 399
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->setEnable(Z)V

    .line 400
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mUIHandler:Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$UIHandler;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 388
    :cond_4
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSelfTimerCapturing:Z

    .line 389
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mUIHandler:Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$UIHandler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 390
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 391
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 392
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->setEnable(Z)V

    goto :goto_0

    .line 412
    :cond_5
    invoke-virtual {p0, v1}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->setEnable(Z)V

    goto :goto_0

    .line 408
    :cond_6
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->setEnable(Z)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyIcon:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyIconView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyClose:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyLevelList:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;

    if-eqz v0, :cond_2

    .line 191
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 194
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyLevelList:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 195
    check-cast v3, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onSingleTapUp(FF)Z
    .locals 0

    .line 374
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyLevelList:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 376
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyLevelList:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 377
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->hideLevelListImmediately()V

    :cond_1
    return p2
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    .line 245
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 247
    sget-object p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 251
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 254
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    .line 256
    sget-object p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting\'s support is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSettingUISpec:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUISpec;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->createSupportedEntries(Ljava/util/List;)V

    .line 261
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSettingUISpec:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSupportedEntryValues:[Ljava/lang/String;

    .line 262
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSettingUISpec:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSupportedEntries:[Ljava/lang/String;

    .line 264
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSupportedEntryValues:[Ljava/lang/String;

    array-length p1, p1

    if-nez p1, :cond_2

    .line 265
    sget-object p1, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "support value is null! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSettingUISpec:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 270
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSettingUISpec:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUISpec;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 272
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSupportedEntryValues:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 273
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_3

    .line 274
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public setEnable(Z)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyEntry:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 211
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyLevelList:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;

    if-eqz p0, :cond_1

    .line 212
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    .line 284
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSettingUISpec:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 285
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->registerKeyToMonitor(Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_0
    sget-object p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null! maybe flow is wrong!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setTopOffset(I)V
    .locals 0

    .line 444
    iput p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mTopOffset:I

    return-void
.end method

.method public setupEntryView()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyIcon:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyIconView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->updateLevel()V

    .line 156
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->inflateEntryList()V

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyLevelList:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 159
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->updateEntryView()V

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 228
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyIcon:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyClose:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyLevelList:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mFaceBeautyLevelList:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mUIHandler:Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->mSettingUISpec:Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautySettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected abstract updateLevel()V
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
