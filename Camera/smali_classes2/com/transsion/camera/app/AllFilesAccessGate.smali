.class public Lcom/transsion/camera/app/AllFilesAccessGate;
.super Ljava/lang/Object;
.source "AllFilesAccessGate.java"


# static fields
.field private static sShown:Z
.field private static sDone:Z


# direct methods
.method public static maybePrompt(Landroid/app/Activity;)Z
    .locals 3

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

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "All files access"

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v1, "Camera needs All files access so it can save videos and AR effects to storage. Tap Allow, then toggle it on."

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v1, Lcom/transsion/camera/app/AllFilesAccessGate$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/AllFilesAccessGate$1;-><init>(Landroid/app/Activity;)V

    const-string v0, "Allow"

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v0, Lcom/transsion/camera/app/AllFilesAccessGate$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/AllFilesAccessGate$2;-><init>(Landroid/app/Activity;)V

    const-string v1, "Later"

    invoke-virtual {v2, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

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
