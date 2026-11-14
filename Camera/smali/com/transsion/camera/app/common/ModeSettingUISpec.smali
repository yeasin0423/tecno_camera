.class public Lcom/transsion/camera/app/common/ModeSettingUISpec;
.super Ljava/lang/Object;
.source "ModeSettingUISpec.java"


# instance fields
.field private mFrontWideCameraSettingUIEntries:[Ljava/lang/String;

.field private mIsSupportAuxPreview:Z

.field private mIsSupportFrontWideCamera:Z

.field private mIsSupportMacroCamera:Z

.field private mIsSupportSat:Z

.field private mIsSupportTeleCamera:Z

.field private mIsSupportVideoCamera:Z

.field private mIsSupportWideCamera:Z

.field private mModeGuideLayoutsArrayId:I

.field private mModeInteractiveSettingUIEntries:[Ljava/lang/String;

.field private mModeOffsetPadding:I

.field private mModeSettingUIEntries:[Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPreferenceSettingUIEntries:[Ljava/lang/String;

.field private mSettingGuideLayoutsArrayId:I

.field private mTopBarSettingUIEntries:[Ljava/lang/String;

.field private mWideCameraSettingUIEntries:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportWideCamera:Z

    .line 22
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportMacroCamera:Z

    .line 23
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportFrontWideCamera:Z

    .line 24
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportVideoCamera:Z

    .line 25
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportTeleCamera:Z

    .line 26
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportAuxPreview:Z

    const/4 v1, -0x1

    .line 28
    iput v1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeGuideLayoutsArrayId:I

    .line 29
    iput v1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mSettingGuideLayoutsArrayId:I

    .line 30
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportSat:Z

    .line 31
    iput v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeOffsetPadding:I

    .line 34
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFrontWideCameraSettingUIEntries()[Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mFrontWideCameraSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getModeGuideLayoutsArrayId()I
    .locals 0

    .line 134
    iget p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeGuideLayoutsArrayId:I

    return p0
.end method

.method public getModeInteractiveSettingUIEntries()[Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeInteractiveSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getModeOffsetPadding()I
    .locals 0

    .line 158
    iget p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeOffsetPadding:I

    return p0
.end method

.method public getModeSettingUIEntries()[Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPreferenceSettingUIEntries()[Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mPreferenceSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getSettingGuideLayoutsArrayId()I
    .locals 0

    .line 142
    iget p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mSettingGuideLayoutsArrayId:I

    return p0
.end method

.method public getTopBarSettingUIEntries()[Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mTopBarSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getWideCameraSettingUIEntries()[Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mWideCameraSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public isSupportAuxPreview()Z
    .locals 0

    .line 166
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportAuxPreview:Z

    return p0
.end method

.method public isSupportFrontWideCamera()Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportFrontWideCamera:Z

    return p0
.end method

.method public isSupportMacroCamera()Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportMacroCamera:Z

    return p0
.end method

.method public isSupportSat()Z
    .locals 0

    .line 150
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportSat:Z

    return p0
.end method

.method public isSupportTeleCamera()Z
    .locals 0

    .line 122
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportTeleCamera:Z

    return p0
.end method

.method public isSupportVideoCamera()Z
    .locals 0

    .line 114
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportVideoCamera:Z

    return p0
.end method

.method public isSupportWideCamera()Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportWideCamera:Z

    return p0
.end method

.method public setFrontWideCameraSettingUIEntries([Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mFrontWideCameraSettingUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setModeGuideLayoutsArrayId(I)V
    .locals 0

    .line 130
    iput p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeGuideLayoutsArrayId:I

    return-void
.end method

.method public setModeInteractiveSettingUIEntries([Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeInteractiveSettingUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setModeSettingUIEntries([Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeSettingUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setPreferenceSettingUIEntries([Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mPreferenceSettingUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setSettingGuideLayoutsArrayId(I)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mSettingGuideLayoutsArrayId:I

    return-void
.end method

.method public setSupportAuxPreview(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportAuxPreview:Z

    return-void
.end method

.method public setSupportFrontWideCamera(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportFrontWideCamera:Z

    return-void
.end method

.method public setSupportMacroCamera(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportMacroCamera:Z

    return-void
.end method

.method public setSupportSat(Z)V
    .locals 0

    .line 146
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportSat:Z

    return-void
.end method

.method public setSupportTeleCamera(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportTeleCamera:Z

    return-void
.end method

.method public setSupportVideoCamera(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportVideoCamera:Z

    return-void
.end method

.method public setSupportWideCamera(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportWideCamera:Z

    return-void
.end method

.method public setTopBarSettingUIEntries([Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mTopBarSettingUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setWideCameraSettingUIEntries([Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mWideCameraSettingUIEntries:[Ljava/lang/String;

    return-void
.end method
