.class public abstract Lcom/transsion/camera/app/PermissionActivity;
.super Lcom/transsion/camera/app/QuickActivity;
.source "PermissionActivity.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mActivityState:I

.field private mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field protected mGotoSDCardDirectoryCallback:Lcom/transsion/camera/app/common/IApp$IGotoSDCardDirectoryCallback;

.field private mIsDialogShow:Z

.field protected mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

.field private mSavedInstanceState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/PermissionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/PermissionActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/app/QuickActivity;-><init>()V

    const/4 v0, 0x4

    .line 45
    iput v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsDialogShow:Z

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 37
    sget-object v0, Lcom/transsion/camera/app/PermissionActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private hasDenyAndNeverShowDialog(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 267
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 268
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 269
    sget-object v3, Lcom/transsion/camera/app/PermissionActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasDenyAndNeverShowDialog result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ,deniedPermission:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$showGotoGallerySetting$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 281
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showGotoGallerySetting$1(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 283
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->canShowPermissionsDialog()Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "keyguard"

    .line 284
    invoke-virtual {p0, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/KeyguardManager;

    const/4 v0, 0x0

    .line 285
    invoke-virtual {p3, p0, v0}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    :cond_0
    const/4 p3, 0x0

    .line 288
    invoke-static {p0, p3, p1}, Lcom/transsion/camera/utils/CameraUtil;->gotoAppDetails(Landroid/content/Context;ZLjava/lang/String;)V

    .line 290
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private showConfirmationFragment(Lcom/transsion/camera/app/common/permission/PermissionManager;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 252
    iput-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsDialogShow:Z

    .line 253
    new-instance v0, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;-><init>(Landroid/app/FragmentManager;Lcom/transsion/camera/app/common/permission/PermissionManager;Z)V

    .line 254
    invoke-virtual {v0}, Lcom/transsion/camera/app/ConfirmationFragmentUIManager;->showDialogFragment()V

    return-void
.end method

.method private showDialogDirectory()Ljava/lang/String;
    .locals 3

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera_function_permission_head"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "storage_settings_entry_external"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 135
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private showDialogMsg()Ljava/lang/String;
    .locals 3

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera_function_permission_head"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "location_setting_title"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 129
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private showLocationPermissionsRequest()Z
    .locals 3

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 92
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 93
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 94
    :cond_1
    :goto_0
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "camera_permission_title"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 96
    invoke-direct {p0}, Lcom/transsion/camera/app/PermissionActivity;->showDialogMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    const/high16 v1, 0x1040000

    .line 97
    new-instance v2, Lcom/transsion/camera/app/PermissionActivity$1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/PermissionActivity$1;-><init>(Lcom/transsion/camera/app/PermissionActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "camera_permission_go_setting"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/PermissionActivity$2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/PermissionActivity$2;-><init>(Lcom/transsion/camera/app/PermissionActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 119
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 120
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected canShowPermissionsDialog()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public checkCameraLocationPermissions()Z
    .locals 0

    .line 325
    iget-object p0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    if-eqz p0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$showGotoGallerySetting$1$PermissionActivity(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/PermissionActivity;->lambda$showGotoGallerySetting$1(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method protected onCreateTasks(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroyTasks()V
    .locals 0

    return-void
.end method

.method protected onPauseTasks()V
    .locals 0

    return-void
.end method

.method protected onPermissionCreateTasks(Landroid/os/Bundle;)V
    .locals 1

    .line 139
    new-instance v0, Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/permission/PermissionManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    .line 140
    iput-object p1, p0, Lcom/transsion/camera/app/PermissionActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 147
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/PermissionActivity;->onCreateTasks(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 149
    iput p1, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    :cond_0
    return-void
.end method

.method protected onPermissionDestroyTasks()V
    .locals 2

    .line 203
    iget v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->onDestroyTasks()V

    .line 205
    iput v1, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    :cond_0
    return-void
.end method

.method protected onPermissionPauseTasks()V
    .locals 2

    .line 189
    iget v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->onPauseTasks()V

    const/4 v0, 0x3

    .line 191
    iput v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    :cond_0
    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsDialogShow:Z

    return-void
.end method

.method protected onPermissionRestartTasks()V
    .locals 0

    .line 155
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->onRestartTasks()V

    return-void
.end method

.method protected onPermissionResumeTasks()V
    .locals 2

    .line 170
    iget-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsDialogShow:Z

    if-eqz v0, :cond_0

    .line 171
    sget-object p0, Lcom/transsion/camera/app/PermissionActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mIsDialogShow,return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->canShowPermissionsDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->requestCameraLaunchPermissions()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    .line 180
    :cond_2
    iget v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/PermissionActivity;->onCreateTasks(Landroid/os/Bundle;)V

    :cond_3
    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 184
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->onResumeTasks()V

    const/4 v0, 0x2

    .line 185
    iput v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mActivityState:I

    return-void
.end method

.method protected onPermissionStartTasks()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->canShowPermissionsDialog()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 161
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 162
    iget-object v1, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/PermissionActivity;->showConfirmationFragment(Lcom/transsion/camera/app/common/permission/PermissionManager;Z)V

    return-void

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->onStartTasks()V

    return-void
.end method

.method protected onPermissionStopTasks()V
    .locals 1

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mIsDialogShow:Z

    .line 199
    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->onStopTasks()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 66
    sget-object v0, Lcom/transsion/camera/app/PermissionActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestPermissionsResult(), grantResults = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 67
    array-length v0, p3

    if-gtz v0, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->getDenyPermissions()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/PermissionActivity;->hasDenyAndNeverShowDialog(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object p1, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/PermissionActivity;->canShowPermissionsDialog()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/PermissionActivity;->showConfirmationFragment(Lcom/transsion/camera/app/common/permission/PermissionManager;Z)V

    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->getCameraLaunchPermissionRequestCode()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v0, p2, p3}, Lcom/transsion/camera/app/common/permission/PermissionManager;->isCameraLaunchPermissionsResultReady([Ljava/lang/String;[I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 84
    :cond_2
    iget-object p2, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/permission/PermissionManager;->getCameraLocationPermissionRequestCode()I

    move-result p2

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/transsion/camera/app/PermissionActivity;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    .line 85
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/permission/PermissionManager;->getDenyLocationPermissions()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/PermissionActivity;->hasDenyAndNeverShowDialog(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 86
    invoke-direct {p0}, Lcom/transsion/camera/app/PermissionActivity;->showLocationPermissionsRequest()Z

    :cond_3
    return-void
.end method

.method protected onRestartTasks()V
    .locals 0

    return-void
.end method

.method protected onResumeTasks()V
    .locals 0

    return-void
.end method

.method protected onStartTasks()V
    .locals 0

    return-void
.end method

.method protected onStopTasks()V
    .locals 0

    return-void
.end method

.method protected showDirectoryPermissionsRequest()V
    .locals 3

    .line 297
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 298
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "camera_permission_title"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 299
    invoke-direct {p0}, Lcom/transsion/camera/app/PermissionActivity;->showDialogDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 300
    new-instance v1, Lcom/transsion/camera/app/PermissionActivity$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/PermissionActivity$3;-><init>(Lcom/transsion/camera/app/PermissionActivity;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 306
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "camera_permission_go_setting"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/PermissionActivity$4;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/PermissionActivity$4;-><init>(Lcom/transsion/camera/app/PermissionActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 321
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->show()Lcom/transsion/widgetslib/dialog/PromptDialog;

    return-void
.end method

.method protected showGotoGallerySetting(Ljava/lang/String;)V
    .locals 3

    .line 278
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 279
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "camera_permission_title"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 280
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "goto_gallery_settings"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 281
    sget-object v1, Lcom/transsion/camera/app/-$$Lambda$PermissionActivity$K34uDyC1N6D750Xqksr_rPUxFnc;->INSTANCE:Lcom/transsion/camera/app/-$$Lambda$PermissionActivity$K34uDyC1N6D750Xqksr_rPUxFnc;

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 282
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "camera_permission_go_setting"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/-$$Lambda$PermissionActivity$LhCLyPOHU1VBTELGsYPjIvL2xqU;

    invoke-direct {v2, p0, p1}, Lcom/transsion/camera/app/-$$Lambda$PermissionActivity$LhCLyPOHU1VBTELGsYPjIvL2xqU;-><init>(Lcom/transsion/camera/app/PermissionActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 292
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/PermissionActivity;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 293
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
