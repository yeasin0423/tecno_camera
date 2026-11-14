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

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00ff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09028f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/AllFilesAccessGate$1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/AllFilesAccessGate$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090290

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/AllFilesAccessGate$2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/AllFilesAccessGate$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

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
