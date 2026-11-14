.class public Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "LiveResultUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;,
        Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$LiveResultCallbackImpl;
    }
.end annotation


# static fields
.field private static final MSG_HIDE_VIEW:I = 0x66

.field private static final MSG_SHOW_VIEW:I = 0x65

.field private static final MSG_UPDATE_CAMERA_VALUE:I = 0x67

.field private static final MSG_UPDATE_SENSOR_VALUE:I = 0x68

.field private static final SENSOR_UPDATE_INTERVAL:I = 0xa

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final USE_GYRO:Z


# instance fields
.field private mCameraResult:Ljava/lang/CharSequence;

.field private mContentView:Landroid/widget/TextView;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mHandler:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;

.field private final mMySensorManager:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

.field private mSensorCount:I

.field private mSensorResult:Ljava/lang/CharSequence;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mStringBuilder:Landroid/text/SpannableStringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LiveResultUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 50
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 166
    new-instance v0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$1;-><init>(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mCameraResult:Ljava/lang/CharSequence;

    .line 262
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mSensorResult:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 263
    iput v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mSensorCount:I

    .line 53
    new-instance v0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mHandler:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;

    .line 54
    new-instance v0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mMySensorManager:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;Lcom/transsion/camera/feature/setting/liveresult/Result;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->updateCameraValue(Lcom/transsion/camera/feature/setting/liveresult/Result;)V

    return-void
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 36
    sget-object v0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mHandler:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->doShowView()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->registerSensorListeners()V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->doHideView()V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->unRegisterSensorListeners()V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;Lcom/transsion/camera/feature/setting/liveresult/Result;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->doUpdateCameraValue(Lcom/transsion/camera/feature/setting/liveresult/Result;)V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->doUpdateSensorValue()V

    return-void
.end method

.method private doHideView()V
    .locals 1

    .line 245
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 247
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private doShowView()V
    .locals 1

    .line 237
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->updateRootLayoutRect()V

    const/4 p0, 0x0

    .line 240
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private doUpdateCameraValue(Lcom/transsion/camera/feature/setting/liveresult/Result;)V
    .locals 1

    .line 253
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->printResult(Lcom/transsion/camera/feature/setting/liveresult/Result;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mCameraResult:Ljava/lang/CharSequence;

    .line 254
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 255
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mCameraResult:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 256
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mSensorResult:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    .line 257
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mSensorResult:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 259
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mContentView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private doUpdateSensorValue()V
    .locals 2

    .line 266
    iget v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mSensorCount:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mMySensorManager:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->printResult()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mSensorResult:Ljava/lang/CharSequence;

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mCameraResult:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 270
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mSensorResult:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mContentView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    :cond_1
    iget v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mSensorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mSensorCount:I

    return-void
.end method

.method private registerSensorListeners()V
    .locals 0

    return-void
.end method

.method private unRegisterSensorListeners()V
    .locals 0

    return-void
.end method

.method private updateCameraValue(Lcom/transsion/camera/feature/setting/liveresult/Result;)V
    .locals 1

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mHandler:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;

    const/16 v0, 0x67

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private updateRootLayoutRect()V
    .locals 3

    .line 102
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-eqz p0, :cond_1

    .line 109
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 110
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopBarHeight()I

    move-result p0

    const/4 v2, 0x0

    .line 111
    invoke-virtual {v1, v2, p0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private updateSensorValue()V
    .locals 1

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mHandler:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;

    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 69
    sget v0, Lcom/transsion/camera/feature/liveresult/R$layout;->live_result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 70
    sget p2, Lcom/transsion/camera/feature/liveresult/R$id;->live_result_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mContentView:Landroid/widget/TextView;

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mMySensorManager:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->setContext(Landroid/content/Context;)V

    return-object p1
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_live_result"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 131
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .locals 1

    .line 77
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mHandler:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    .line 137
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 139
    sget-object p1, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mDeviceSetting is null!"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    new-instance v0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$LiveResultCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$LiveResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

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
    .locals 1

    .line 146
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez p1, :cond_0

    .line 148
    sget-object p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public setupEntryView()V
    .locals 2

    .line 83
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    .line 84
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->doShowView()V

    .line 86
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->registerSensorListeners()V

    goto :goto_0

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->doHideView()V

    .line 89
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->unRegisterSensorListeners()V

    :goto_0
    return-void
.end method

.method public unInit()V
    .locals 3

    .line 59
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mHandler:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 64
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mMySensorManager:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->unInit()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->updateRootLayoutRect()V

    return-void
.end method
