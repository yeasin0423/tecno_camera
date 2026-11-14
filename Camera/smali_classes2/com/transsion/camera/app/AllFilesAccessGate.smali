.class public Lcom/transsion/camera/app/AllFilesAccessGate;
.super Ljava/lang/Object;
.source "AllFilesAccessGate.java"


# static fields
.field private static sShown:Z
.field private static sDone:Z


# direct methods
.method public static maybePrompt(Landroid/app/Activity;)Z
    .locals 5

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :allow

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v2

    if-nez v2, :allow

    sget-boolean v2, Lcom/transsion/camera/app/AllFilesAccessGate;->sDone:Z

    if-nez v2, :allow

    sget-boolean v2, Lcom/transsion/camera/app/AllFilesAccessGate;->sShown:Z

    if-nez v2, :block

    const/4 v2, 0x1

    sput-boolean v2, Lcom/transsion/camera/app/AllFilesAccessGate;->sShown:Z

    new-instance v2, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera_permission_title"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    const-string v0, "For normal use, this function should be allowed permission to All files."

    invoke-virtual {v2, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "permission_allow"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/AllFilesAccessGate$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/AllFilesAccessGate$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    const/high16 v0, 0x1040000

    new-instance v1, Lcom/transsion/camera/app/AllFilesAccessGate$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/AllFilesAccessGate$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCancelable(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    :block
    const/4 p0, 0x1

    return p0

    :allow
    const/4 p0, 0x0

    return p0
.end method

.method public static markChoiceDone()V
    .locals 1

    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/camera/app/AllFilesAccessGate;->sDone:Z

    return-void
.end method
