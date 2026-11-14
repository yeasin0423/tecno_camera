.class public Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;
.super Lcom/transsion/camera/feature/arcfilter/setting/ui/AbstractTopBarItemUI;
.source "ArcFilterTopItemUI.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "key_filter"

.field private static final MSG_ON_SETTING_VALUE_CHANGED:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentEntryValue:Ljava/lang/String;

.field private mEntryView:Landroid/widget/ImageView;

.field private mISetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;

.field private mListener:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUIListener;

.field private mOverrideClickListener:Landroid/view/View$OnClickListener;

.field private mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSupportList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ArcFilterItemUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/AbstractTopBarItemUI;-><init>()V

    const-string p1, "0"

    .line 30
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 37
    new-instance p1, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI$1;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 44
    new-instance p1, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI$2;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;)Landroid/os/Handler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;)Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;

    return-object p0
.end method

.method private isFilterSelected(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "0"

    .line 79
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "-1"

    .line 80
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private updateEntryView()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->isFilterSelected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_arc_filter_selected:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_arc_filter:I

    .line 88
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mEntryView:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    .line 89
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mEntryView:Landroid/widget/ImageView;

    return-object p1
.end method

.method public doOnStatusChanged(Ljava/lang/String;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->updateEntryView()V

    :cond_0
    return-void
.end method

.method public getEntryView()Landroid/view/View;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mEntryView:Landroid/widget/ImageView;

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

    const-string p0, "key_filter"

    return-object p0
.end method

.method public getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mCurrentEntryValue:Ljava/lang/String;

    return-object p0
.end method

.method public overrideClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

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
    .locals 2

    if-nez p1, :cond_0

    .line 189
    sget-object p1, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDeviceSetting is null! :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 192
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mISetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 193
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 194
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mSupportList:Ljava/util/List;

    .line 195
    iget-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->registerKeyToMonitor(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mEntryView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 159
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V
    .locals 0

    return-void
.end method

.method public setItemSelectHook(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mItemSelectHook:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI$ItemSelectHook;

    return-void
.end method

.method public setListener(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUIListener;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mListener:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUIListener;

    if-eqz p1, :cond_0

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mISetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUIListener;->setListenerCallback(Lcom/transsion/camera/app/common/setting/ISetting;)V

    :cond_0
    return-void
.end method

.method public setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V
    .locals 0

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

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

.method public setupEntryView()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mSupportList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->updateEntryView()V

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mEntryView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mEntryView:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/feature/arcfilter/R$id;->setting_ui_item_arc_filter:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mEntryView:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI$3;-><init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mListener:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUIListener;

    if-eqz v0, :cond_1

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mISetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUIListener;->topItemInit(Lcom/transsion/camera/app/common/setting/ISetting;)V

    :cond_1
    return-void

    .line 107
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mEntryView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mListener:Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUIListener;

    if-eqz v0, :cond_1

    .line 181
    invoke-interface {v0}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUIListener;->topItemUninit()V

    .line 183
    :cond_1
    iput-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterTopItemUI;->mEntryView:Landroid/widget/ImageView;

    return-void
.end method
