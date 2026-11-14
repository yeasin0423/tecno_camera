.class public Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;
.super Ljava/lang/Object;
.source "PreferenceItemUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$UIHandler;,
        Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$MySettingChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCommonRes:Landroid/graphics/drawable/Drawable;

.field private mCurrentEntryValue:Ljava/lang/String;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mDialogPreferenceListener:Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference$DialogListener;

.field private final mHandler:Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$UIHandler;

.field private mIsSellingPoint:Z

.field private mListPreferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mPointRes:Landroid/graphics/drawable/Drawable;

.field private mPreference:Landroid/preference/Preference;

.field private mSellingPointSp:Landroid/content/SharedPreferences;

.field private mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mSettingFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;

.field private mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSwitchPreferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PreferenceItemUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$MySettingChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$MySettingChangeListener;-><init>(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 404
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$1;-><init>(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSwitchPreferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 418
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$2;-><init>(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mListPreferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 431
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$3;-><init>(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mDialogPreferenceListener:Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference$DialogListener;

    .line 89
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 90
    new-instance p1, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$UIHandler;

    invoke-direct {p1, p0, v1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$UIHandler;-><init>(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mHandler:Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$UIHandler;

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->updatePreferenceUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$UIHandler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mHandler:Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$UIHandler;

    return-object p0
.end method

.method static synthetic access$600()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 45
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->doValueChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->exitSettingFragment(Ljava/lang/String;)V

    return-void
.end method

.method private createIconWithPoint(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/LayerDrawable;
    .locals 2

    .line 550
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 551
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 p3, 0x4

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    return-object p0
.end method

.method private createSupportEntries()Z
    .locals 4

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 323
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mDeviceSetting\'s support is null!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 327
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    .line 329
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v3, v2, v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->createSupportedEntries(Ljava/lang/String;Ljava/util/List;)V

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 332
    array-length v0, v0

    if-nez v0, :cond_1

    .line 333
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "support value is null! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private doCreatePreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 6

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getType()I

    move-result v0

    .line 147
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSellingPointSp:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_f

    if-eq v0, v3, :cond_d

    const/4 v4, 0x2

    if-eq v0, v4, :cond_7

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 242
    new-instance p0, Landroid/preference/Preference;

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 212
    :cond_0
    new-instance v0, Lcom/transsion/camera/app/common/ui/preference/FragmentPreference;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/ui/preference/FragmentPreference;-><init>(Landroid/content/Context;)V

    .line 213
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getCustomFragment()Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/preference/FragmentPreference;->seCustomFragment(Landroid/app/Fragment;)V

    .line 216
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 218
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mIsSellingPoint:Z

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSellingPointSp:Landroid/content/SharedPreferences;

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->isShowPoint(ZLandroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPointRes:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v2, p1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->createIconWithPoint(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-object v0

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v4

    .line 179
    array-length v5, v0

    if-le v5, v3, :cond_6

    array-length v5, v4

    if-gt v5, v3, :cond_4

    goto :goto_2

    .line 183
    :cond_4
    new-instance v1, Lcom/transsion/widgetslib/preference/OSListPreference;

    invoke-direct {v1, p1}, Lcom/transsion/widgetslib/preference/OSListPreference;-><init>(Landroid/content/Context;)V

    .line 184
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 185
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 188
    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/preference/OSListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {v1, v4}, Lcom/transsion/widgetslib/preference/OSListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 192
    sget v0, Lcom/transsion/camera/app/common/R$string;->btn_negative:I

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->setNegativeButtonText(I)V

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 196
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mIsSellingPoint:Z

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSellingPointSp:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->isShowPoint(ZLandroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPointRes:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, v2, p1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->createIconWithPoint(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p0

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_2
    return-object v1

    .line 152
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v4

    .line 155
    array-length v0, v0

    if-le v0, v3, :cond_c

    array-length v0, v4

    if-gt v0, v3, :cond_8

    goto :goto_4

    .line 159
    :cond_8
    new-instance v0, Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 160
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 164
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a

    .line 166
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mIsSellingPoint:Z

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSellingPointSp:Landroid/content/SharedPreferences;

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->isShowPoint(ZLandroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPointRes:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v2, p1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->createIconWithPoint(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p1

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 169
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 171
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;->setEntryDrawables([Landroid/graphics/drawable/Drawable;)V

    :cond_b
    return-object v0

    :cond_c
    :goto_4
    return-object v1

    .line 201
    :cond_d
    new-instance v0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;-><init>(Landroid/content/Context;)V

    .line 202
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->setKey(Ljava/lang/String;)V

    .line 203
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/DialogPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 204
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 206
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/DialogPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 208
    :cond_e
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    return-object v0

    .line 222
    :cond_f
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 223
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object p1

    .line 224
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v2

    .line 225
    array-length p1, p1

    if-le p1, v3, :cond_12

    array-length p1, v2

    if-gt p1, v3, :cond_10

    goto :goto_5

    .line 228
    :cond_10
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 229
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 230
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 232
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 234
    :cond_11
    new-instance p1, Lcom/transsion/camera/app/common/ui/setting/-$$Lambda$PreferenceItemUI$6VwuVo-amSVXLHbpzzic1gFL3DM;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/-$$Lambda$PreferenceItemUI$6VwuVo-amSVXLHbpzzic1gFL3DM;-><init>(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)V

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-object v0

    :cond_12
    :goto_5
    return-object v1
.end method

.method private doValueChange(Ljava/lang/String;)V
    .locals 4

    .line 454
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 458
    :cond_0
    instance-of v1, v0, Landroid/preference/DialogPreference;

    if-eqz v1, :cond_1

    .line 459
    check-cast v0, Landroid/preference/DialogPreference;

    invoke-virtual {v0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 460
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 466
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->createSupportEntries()Z

    .line 467
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v1

    .line 469
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/ArrayUtils;->equals([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 471
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_3

    .line 472
    :cond_2
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 473
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->updatePreferenceEntry()V

    .line 474
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->updatePreferenceUI()V

    :cond_3
    if-eqz v1, :cond_5

    .line 477
    array-length p1, v1

    if-gt p1, v2, :cond_4

    goto :goto_0

    .line 480
    :cond_4
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->showPreference()V

    goto :goto_1

    .line 478
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->hidePreference()V

    .line 483
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSellingPointSp:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreferenceItemSellingPoint"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 484
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSellingPointSp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 485
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    if-eqz p1, :cond_6

    .line 486
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    return-void
.end method

.method private exitSettingFragment(Ljava/lang/String;)V
    .locals 0

    .line 515
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;

    if-eqz p0, :cond_0

    .line 516
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;->exitSettingFragment(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private hidePreference()V
    .locals 4

    .line 492
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 495
    :cond_0
    invoke-virtual {v0}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    .line 496
    sget-object v1, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hidePreference because preference EntryValues, parent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 498
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private isShowPoint(ZLandroid/content/SharedPreferences;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 556
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreferenceItemSellingPoint"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$doCreatePreference$0(Landroid/preference/Preference;)Z
    .locals 0

    .line 235
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->exitSettingFragment(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private setupPreference()V
    .locals 2

    .line 340
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->updatePreferenceEntry()V

    .line 341
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->updatePreferenceUI()V

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    instance-of v1, v0, Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 343
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSwitchPreferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 344
    :cond_0
    instance-of v1, v0, Lcom/transsion/widgetslib/preference/OSListPreference;

    if-eqz v1, :cond_1

    .line 345
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mListPreferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 346
    :cond_1
    instance-of v1, v0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;

    if-eqz v1, :cond_2

    .line 347
    check-cast v0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mDialogPreferenceListener:Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference$DialogListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->setDialogListener(Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference$DialogListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private showPreference()V
    .locals 4

    .line 503
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 506
    :cond_0
    invoke-virtual {v0}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    .line 507
    sget-object v1, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showPreference because preference EntryValues, parent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 508
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 510
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private updatePreferenceEntry()V
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    instance-of v1, v0, Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 353
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 354
    check-cast v0, Landroid/preference/SwitchPreference;

    const-string v1, "on"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 356
    :cond_0
    instance-of v0, v0, Lcom/transsion/widgetslib/preference/OSListPreference;

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v1

    .line 360
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    check-cast v2, Lcom/transsion/widgetslib/preference/OSListPreference;

    invoke-virtual {v2, v0}, Lcom/transsion/widgetslib/preference/OSListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    check-cast v0, Lcom/transsion/widgetslib/preference/OSListPreference;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/preference/OSListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 364
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    check-cast p0, Lcom/transsion/widgetslib/preference/OSListPreference;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/preference/OSListPreference;->setValueIndex(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updatePreferenceUI()V
    .locals 3

    .line 371
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    instance-of v1, v0, Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 372
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntrySummaries()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 375
    array-length v1, v0

    if-lez v1, :cond_2

    .line 376
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 379
    :cond_0
    instance-of v1, v0, Lcom/transsion/widgetslib/preference/OSListPreference;

    if-eqz v1, :cond_1

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v1

    .line 383
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 385
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 389
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntrySummaries()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 390
    array-length v1, v0

    if-lez v1, :cond_2

    .line 391
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public createPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->doCreatePreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    if-eqz p1, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->setupPreference()V

    .line 132
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKeys()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreference()Landroid/preference/Preference;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    return-object p0
.end method

.method public init()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$doCreatePreference$0$PreferenceItemUI(Landroid/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->lambda$doCreatePreference$0(Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 0

    return-void
.end method

.method public setActionSound(Lcom/transsion/camera/utils/sound/IActionSound;)V
    .locals 0

    return-void
.end method

.method public setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .locals 0

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 1

    .line 247
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 249
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 253
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 255
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->createSupportEntries()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 260
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 262
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 263
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_2

    .line 265
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 269
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_3

    .line 270
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 271
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->registerKeyToMonitor(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_3
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null! maybe flow is wrong!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setDeviceSettingData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V
    .locals 0

    return-void
.end method

.method public setIsSellingPoint(Z)V
    .locals 0

    .line 311
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mIsSellingPoint:Z

    return-void
.end method

.method public setPointRes(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPointRes:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setSettingFragmentControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .locals 0

    return-void
.end method

.method public setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V
    .locals 0

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mHandler:Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 119
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    instance-of v0, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;

    if-eqz v0, :cond_1

    .line 121
    check-cast p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->hideDialog()V

    :cond_1
    return-void
.end method
