.class public Lcom/transsion/widgetslib/dialog/PromptDialog;
.super Landroid/app/Dialog;
.source "PromptDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    }
.end annotation


# instance fields
.field private mController:Lcom/transsion/widgetslib/dialog/PromptController;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 30
    invoke-static {p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 31
    new-instance p1, Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Lcom/transsion/widgetslib/dialog/PromptController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;I)I
    .locals 0

    .line 22
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/dialog/PromptDialog;)Lcom/transsion/widgetslib/dialog/PromptController;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    return-object p0
.end method

.method private static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 0

    const/high16 p0, 0x1000000

    if-lt p1, p0, :cond_0

    return p1

    .line 44
    :cond_0
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Dialog_Alert_Base:I

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 51
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->installContent()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog;->mController:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
