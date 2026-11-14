.class public Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "GoogleLensUI.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IGoogleLensUI;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$MainHandler;,
        Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$GoogleLensDataCallbackImpl;
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUE:Ljava/lang/String; = "on"

.field private static final KEY:Ljava/lang/String; = "key_google_lens"

.field private static final MSG_HIDE_GOOGLE_LENS:I = 0x2

.field private static final MSG_SHOW_GOOGLE_LENS:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mLensIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mLensSupport:Z

.field private mMainHandler:Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$MainHandler;

.field private mOrientation:I

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mVisibleState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mOrientation:I

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensSupport:Z

    .line 69
    new-instance v0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$MainHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$MainHandler;-><init>(Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mMainHandler:Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$MainHandler;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 45
    sget-object v0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;)Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$MainHandler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mMainHandler:Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$MainHandler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->showGoogleLensView()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->hideGoogleLensView()V

    return-void
.end method

.method private hideGoogleLensView()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v0, :cond_0

    .line 213
    sget-object p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mLensIconView is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 216
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->onVisibilityChanged(Z)V

    .line 217
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private initLensView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f09010d

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 83
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget p1, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mOrientation:I

    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_0
    return-void
.end method

.method private onVisibilityChanged(Z)V
    .locals 3

    .line 188
    sget-object v0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVisibilityChanged visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 190
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mVisibleState:Z

    if-eq v0, p1, :cond_1

    .line 191
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mVisibleState:Z

    if-eqz p1, :cond_0

    const-string p1, "google_lens_show"

    goto :goto_0

    :cond_0
    const-string p1, "google_lens_hide"

    :goto_0
    const-string v0, "key_google_lens_visible"

    .line 193
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->sendGoogleLensEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private sendGoogleLensEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 104
    sget-object v0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendGoogleLensEvent eventKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " eventValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez p0, :cond_0

    .line 107
    sget-object p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mStatusMonitor is null | eventValue: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 111
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private showGoogleLensView()V
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensSupport:Z

    if-nez v0, :cond_0

    .line 199
    sget-object p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "don\'t show GoogleLensView when Lens not support"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v0, :cond_1

    .line 204
    sget-object p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mLensIconView is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 207
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->onVisibilityChanged(Z)V

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public checkLensStatus()V
    .locals 2

    .line 172
    sget-object v0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "check google lens status"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "key_check_lens_status"

    const-string v1, "check_lens_status"

    .line 174
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->sendGoogleLensEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0050

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 76
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->initLensView(Landroid/view/View;)V

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

    const-string p0, "key_google_lens"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    .line 136
    sget-object p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "deviceSetting is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p0, "on"

    return-object p0

    .line 139
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 98
    sget-object p1, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "on google lens clicked"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p1, "key_google_lens_click"

    const-string v0, "google_lens_clicked"

    .line 100
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->sendGoogleLensEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2

    .line 159
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 161
    iput p1, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mOrientation:I

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez p0, :cond_0

    .line 164
    sget-object p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOrientationChanged mLensIconView is null orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 168
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    .line 144
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 146
    sget-object p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "deviceSetting is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 149
    :cond_0
    new-instance v0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$GoogleLensDataCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$GoogleLensDataCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 3

    .line 121
    sget-object v0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_0

    .line 124
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setGoogleLensSupport(Z)V
    .locals 3

    .line 178
    sget-object v0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGoogleLensSupport isGoogleLensSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mLensSupport:Z

    .line 182
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mVisibleState:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->hideGoogleLensView()V

    :cond_0
    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI;->mMainHandler:Lcom/transsion/camera/ui/setting/googlelens/GoogleLensUI$MainHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
