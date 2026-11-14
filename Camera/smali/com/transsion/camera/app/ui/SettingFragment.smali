.class public Lcom/transsion/camera/app/ui/SettingFragment;
.super Lcom/transsion/camera/app/ui/AbstractSettingFragment;
.source "SettingFragment.java"


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mCommonPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mRootViewId:I

.field private final mScreenPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mCommonPreferenceList:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mVideoPreferenceList:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mPhotoPreferenceList:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mScreenPreferenceList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/SettingFragment;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/SettingFragment;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mRootViewId:I

    return p0
.end method

.method private addCommonPreferenceList(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 151
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 152
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 153
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-nez v3, :cond_1

    .line 154
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_0

    .line 155
    invoke-direct {p0, v2, v4}, Lcom/transsion/camera/app/ui/SettingFragment;->setCustomPreferenceLayout(Landroid/preference/Preference;Z)V

    goto :goto_1

    .line 157
    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/transsion/camera/app/ui/SettingFragment;->setCustomPreferenceLayout(Landroid/preference/Preference;Z)V

    .line 159
    :goto_1
    invoke-virtual {p2, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 163
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    return-void
.end method

.method private addCustomFragmentTransaction(Landroid/preference/Preference;)V
    .locals 2

    .line 195
    instance-of v0, p1, Lcom/transsion/camera/app/common/ui/preference/FragmentPreference;

    if-eqz v0, :cond_0

    .line 196
    check-cast p1, Lcom/transsion/camera/app/common/ui/preference/FragmentPreference;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/preference/FragmentPreference;->getCustomFragment()Lcom/transsion/camera/app/common/ui/AbstractCustomFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    new-instance v1, Lcom/transsion/camera/app/ui/SettingFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/SettingFragment$1;-><init>(Lcom/transsion/camera/app/ui/SettingFragment;Lcom/transsion/camera/app/common/ui/AbstractCustomFragment;)V

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ui/preference/FragmentPreference;->setPreferenceListener(Lcom/transsion/camera/app/common/ui/preference/FragmentPreference$PreferenceListener;)V

    :cond_0
    return-void
.end method

.method private addOtherPreferenceList(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .line 168
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 169
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/SettingFragment;->setCustomPreferenceLayout(Landroid/preference/Preference;Z)V

    .line 171
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private clearPreferenceList()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mCommonPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mVideoPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mPhotoPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mScreenPreferenceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private setCustomPreferenceLayout(Landroid/preference/Preference;Z)V
    .locals 0

    .line 178
    instance-of p0, p1, Landroid/preference/SwitchPreference;

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    const p0, 0x7f0c00cb

    .line 180
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_0

    :cond_0
    const p0, 0x7f0c00ca

    .line 182
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const p0, 0x7f0c00c7

    .line 186
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_0

    :cond_2
    const p0, 0x7f0c00c6

    .line 188
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setLayoutResource(I)V

    :goto_0
    const/4 p0, 0x1

    .line 191
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setRecycleEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected addAllPreferences()V
    .locals 9

    .line 70
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SettingFragment;->clearPreferenceList()V

    const-string v0, "pref_common_category"

    .line 72
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    const-string v1, "pref_video_category"

    .line 73
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    const-string v2, "pref_photo_category"

    .line 74
    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    const-string v3, "pref_screen_top"

    .line 75
    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 77
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingUIList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    .line 78
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;->createPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 80
    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v8, "key_micro_pan_tilt_calibration"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v7, 0x7

    goto :goto_1

    :sswitch_1
    const-string v8, "key_guidelines"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v7, 0x3

    goto :goto_1

    :sswitch_2
    const-string v8, "key_shutter_sound"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v7, 0x2

    goto :goto_1

    :sswitch_3
    const-string v8, "key_volume_key"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v7, 0x4

    goto :goto_1

    :sswitch_4
    const-string v8, "key_location"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :sswitch_5
    const-string v8, "key_video_quality"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v7, 0x8

    goto :goto_1

    :sswitch_6
    const-string v8, "key_level"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v7, 0x5

    goto :goto_1

    :sswitch_7
    const-string v8, "key_restore_settings"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :sswitch_8
    const-string v8, "key_auto_focus_switch"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v7, 0x6

    :cond_1
    :goto_1
    packed-switch v7, :pswitch_data_0

    .line 98
    iget-object v6, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mPhotoPreferenceList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 95
    :pswitch_0
    iget-object v6, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mVideoPreferenceList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 91
    :pswitch_1
    iget-object v6, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mCommonPreferenceList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-direct {p0, v5}, Lcom/transsion/camera/app/ui/SettingFragment;->addCustomFragmentTransaction(Landroid/preference/Preference;)V

    goto/16 :goto_0

    .line 82
    :pswitch_2
    iget-object v6, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mScreenPreferenceList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 104
    :cond_2
    iget-object v4, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mCommonPreferenceList:Ljava/util/List;

    invoke-direct {p0, v4, v0}, Lcom/transsion/camera/app/ui/SettingFragment;->addCommonPreferenceList(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mPhotoPreferenceList:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/ui/SettingFragment;->addOtherPreferenceList(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mVideoPreferenceList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/SettingFragment;->addOtherPreferenceList(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mScreenPreferenceList:Ljava/util/List;

    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/ui/SettingFragment;->addOtherPreferenceList(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mVideoPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 110
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 113
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mPhotoPreferenceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_4

    if-eqz v2, :cond_4

    .line 114
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e1d74d5 -> :sswitch_8
        -0x62df776c -> :sswitch_7
        -0x627ee65c -> :sswitch_6
        -0x60d2d0a5 -> :sswitch_5
        -0x1d1a126b -> :sswitch_4
        0x8b4ed9a -> :sswitch_3
        0x6467fc5d -> :sswitch_2
        0x69d4e763 -> :sswitch_1
        0x751a8b45 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getEnterAnimation()I
    .locals 0

    const p0, 0x7f02001e

    return p0
.end method

.method public getExitAnimation()I
    .locals 0

    const p0, 0x7f02001f

    return p0
.end method

.method protected getPreferenceResource()I
    .locals 0

    const/high16 p0, 0x7f130000

    return p0
.end method

.method protected getToolbar(Landroid/view/View;)Landroid/widget/Toolbar;
    .locals 0

    const p0, 0x7f0901d7

    .line 51
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Toolbar;

    if-eqz p0, :cond_0

    .line 53
    invoke-virtual {p0}, Landroid/widget/Toolbar;->hideOverflowMenu()Z

    :cond_0
    return-object p0
.end method

.method protected initViews(Landroid/view/View;)V
    .locals 0

    .line 125
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->initViews(Landroid/view/View;)V

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    .line 127
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;->init()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected removeAllPreferences()V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/SettingFragment;->clearPreferenceList()V

    return-void
.end method

.method public setAppUiRootViewId(Lcom/transsion/camera/app/common/IAppUI;I)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 147
    iput p2, p0, Lcom/transsion/camera/app/ui/SettingFragment;->mRootViewId:I

    return-void
.end method

.method protected unInitViews()V
    .locals 1

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    .line 134
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_0

    :cond_0
    return-void
.end method
