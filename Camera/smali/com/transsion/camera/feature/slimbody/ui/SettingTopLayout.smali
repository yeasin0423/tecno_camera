.class public Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;
.super Landroid/widget/LinearLayout;
.source "SettingTopLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;,
        Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;,
        Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;
    }
.end annotation


# instance fields
.field private mContractBar:Landroid/view/View;

.field private mContrastListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mFaceBeautyBar:Landroid/view/View;

.field private mListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;

.field private mSeekBar:Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;

.field private mSeekBarChangeListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;

.field private mSlimBodyBar:Landroid/view/View;

.field private mSwitchContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 199
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;)Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSeekBarChangeListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;

    return-object p0
.end method

.method private isSlimbodyClosed()Z
    .locals 4

    .line 78
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->getInstance(Landroid/content/Context;)Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/slimbody/setting/CustomConfigUtil;->getCloseDefaultSB()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, "2"

    .line 88
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_slimbody_latested_featureid"

    .line 89
    invoke-virtual {p0, v3, v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    move v1, p0

    :cond_2
    :goto_1
    return v1
.end method

.method private setSlimBodyIconState()V
    .locals 1

    .line 98
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->isSlimbodyClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSlimBodyBar:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSlimBodyBar:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getmContractBar()Landroid/view/View;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mContractBar:Landroid/view/View;

    return-object p0
.end method

.method public hideContractView()V
    .locals 1

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mContractBar:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 249
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isIconSelected(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mFaceBeautyBar:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSlimBodyBar:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public notifyProgress(II)V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSeekBar:Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;

    if-eqz p0, :cond_0

    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->updateSeekBarData(II)V

    :cond_0
    return-void
.end method

.method public notifyState(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v0, :cond_7

    const/4 v3, 0x2

    if-eq p1, v3, :cond_5

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    const/4 v3, 0x4

    if-eq p1, v3, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSeekBar:Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;

    if-eqz p1, :cond_1

    .line 191
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSlimBodyBar:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 187
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSlimBodyBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 179
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSeekBar:Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;

    if-eqz p1, :cond_4

    .line 180
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 182
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSwitchContainer:Landroid/view/View;

    if-eqz p0, :cond_9

    .line 183
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 170
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSeekBar:Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;

    if-eqz p1, :cond_6

    .line 171
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSwitchContainer:Landroid/view/View;

    if-eqz p1, :cond_9

    .line 174
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSlimBodyBar:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSlimBodyBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 162
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSeekBar:Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;

    if-eqz p1, :cond_8

    .line 163
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 165
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSwitchContainer:Landroid/view/View;

    if-eqz p0, :cond_9

    .line 166
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_0
    return-void
.end method

.method public notifySwitcBarSelected(ILcom/transsion/camera/feature/slimbody/data/SBPresetInfo;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const-string v1, "key_slimbody_facebeauty_switch"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mFaceBeautyBar:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    if-eqz p2, :cond_1

    .line 121
    iget p1, p2, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;->presetMode:I

    const/4 p2, 0x6

    if-eq p1, p2, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->isSlimbodyClosed()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 122
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSlimBodyBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 124
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSlimBodyBar:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-eqz p0, :cond_6

    .line 127
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    .line 126
    invoke-virtual {p0, v1, p2, p1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 112
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mFaceBeautyBar:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 113
    invoke-direct {p0}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->setSlimBodyIconState()V

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-eqz p0, :cond_6

    .line 116
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    .line 115
    invoke-virtual {p0, v1, p2, p1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 108
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mFaceBeautyBar:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSlimBodyBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;

    if-eqz p0, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;->barOnClick(I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 208
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 209
    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->face_beauty_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mFaceBeautyBar:Landroid/view/View;

    .line 210
    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->slimbody_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSlimBodyBar:Landroid/view/View;

    .line 211
    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->contrast:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mContractBar:Landroid/view/View;

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mFaceBeautyBar:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSlimBodyBar:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mContractBar:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 215
    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->switch_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSwitchContainer:Landroid/view/View;

    .line 216
    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->seek_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSeekBar:Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;

    .line 217
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSeekBar:Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;

    new-instance v1, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$1;-><init>(Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->setOnSeekBarChangeListener(Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 34
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_0

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mContrastListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

    if-eqz p0, :cond_2

    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->contrast:I

    if-ne v0, p2, :cond_2

    const/4 p2, 0x0

    .line 44
    invoke-interface {p0, p2}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;->closeContrast(Z)V

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 36
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mContrastListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

    if-eqz p0, :cond_2

    sget p2, Lcom/transsion/camera/feature/slimbody/R$id;->contrast:I

    if-ne v0, p2, :cond_2

    .line 37
    invoke-interface {p0}, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;->openContrast()V

    .line 38
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    :goto_0
    return v1
.end method

.method public resetToInitState()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSeekBar:Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 230
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 232
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSwitchContainer:Landroid/view/View;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setListener(Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;

    .line 154
    iput-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mSeekBarChangeListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$SeekBarChangeListener;

    .line 155
    iput-object p3, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mContrastListener:Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$ContrastListener;

    return-void
.end method

.method public showContractView()V
    .locals 1

    .line 242
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout;->mContractBar:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 243
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
