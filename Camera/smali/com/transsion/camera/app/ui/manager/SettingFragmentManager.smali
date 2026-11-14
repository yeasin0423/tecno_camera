.class public Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;
.super Ljava/lang/Object;
.source "SettingFragmentManager.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;


# instance fields
.field private mFragmentManager:Landroid/app/FragmentManager;

.field mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

.field private mRootLayoutId:I

.field private mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

.field private mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

.field protected mSettingUIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mStorageSettingProvider:Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;ILcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/SettingFragment;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingUIList:Ljava/util/List;

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mFragmentManager:Landroid/app/FragmentManager;

    .line 53
    iput p2, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mRootLayoutId:I

    .line 54
    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-virtual {p0, p4, p2}, Lcom/transsion/camera/app/ui/SettingFragment;->setAppUiRootViewId(Lcom/transsion/camera/app/common/IAppUI;I)V

    return-void
.end method

.method private filterForNormalCamera(Ljava/util/List;ZZLjava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;",
            ">;ZZ",
            "Ljava/util/Iterator<",
            "Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 152
    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 154
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    .line 153
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    .line 154
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string p2, "key_storage"

    .line 155
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 156
    invoke-interface {p4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const-string p2, "key_location"

    .line 159
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p3, :cond_0

    .line 160
    invoke-interface {p4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private filterForSecureCamera(Ljava/util/List;ZLjava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;",
            ">;Z",
            "Ljava/util/Iterator<",
            "Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;",
            ">;)V"
        }
    .end annotation

    .line 124
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 126
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    .line 125
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    .line 126
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "key_storage"

    .line 127
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const-string v0, "key_location"

    .line 131
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 132
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    const-string v0, "key_restore_settings"

    .line 135
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    const-string v0, "key_order_editor"

    .line 139
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 140
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private initSettingUIList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;",
            ">;)V"
        }
    .end annotation

    .line 179
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    .line 180
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;->setSettingFragmentControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;)V

    .line 181
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_1

    .line 182
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    if-eqz v1, :cond_2

    .line 186
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 187
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 190
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mStorageSettingProvider:Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;

    if-eqz v1, :cond_0

    .line 191
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mStorageSettingProvider:Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;

    .line 192
    invoke-interface {v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;->getStorageSettingKey()Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mStorageSettingProvider:Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;->getStorageSetting()Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 194
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public enterSettingFragment()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/SettingFragment;->getEnterAnimation()I

    move-result v1

    .line 73
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/SettingFragment;->getExitAnimation()I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    if-eq v2, v3, :cond_0

    .line 75
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    :cond_0
    const-string v1, "setting_fragment"

    .line 78
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 79
    iget v1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mRootLayoutId:I

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    const-string v2, "Setting"

    invoke-virtual {v0, v1, p0, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public exitSettingFragment(Ljava/lang/String;)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "setting_fragment"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    if-eqz p1, :cond_0

    const-string v0, "key_order_editor"

    .line 86
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;->enterEditorFragment()V

    :cond_0
    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    if-eqz v0, :cond_1

    .line 64
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    return-void
.end method

.method public setSettingUIList(Ljava/util/List;ZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;",
            ">;ZZZ)V"
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->unInitSettingUIs()V

    .line 109
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 111
    invoke-direct {p0, p1, p4, v0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->filterForSecureCamera(Ljava/util/List;ZLjava/util/Iterator;)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-direct {p0, p1, p3, p4, v0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->filterForNormalCamera(Ljava/util/List;ZZLjava/util/Iterator;)V

    .line 116
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->initSettingUIList(Ljava/util/List;)V

    .line 117
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingUIList:Ljava/util/List;

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setSettingUIList(Ljava/util/List;)V

    return-void
.end method

.method public setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingFragment:Lcom/transsion/camera/app/ui/SettingFragment;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    return-void
.end method

.method public setStorageSettingProvider(Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mStorageSettingProvider:Lcom/transsion/camera/app/common/storage/IStorage$IStorageSettingProvider;

    return-void
.end method

.method public unInit()V
    .locals 0

    .line 175
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->unInitSettingUIs()V

    return-void
.end method

.method public unInitSettingUIs()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;

    .line 168
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_0

    .line 170
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;->mSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method
