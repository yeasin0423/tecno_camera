.class public Lcom/transsion/camera/app/OnBackInvokedCallbackImpl;
.super Ljava/lang/Object;
.implements Landroid/window/OnBackInvokedCallback;
.source "OnBackInvokedCallbackImpl.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/OnBackInvokedCallbackImpl;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static registerBackCallback(Landroid/app/Activity;)V
    .locals 6

    .line 14
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v3, v2, :after_predictive_back

    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/OnBackInvokedCallbackImpl;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/OnBackInvokedCallbackImpl;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    :after_predictive_back
    const/16 v2, 0x1e

    const/4 v4, 0x0

    if-lt v3, v2, :done

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v4

    if-nez v4, :done

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "All files access"

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v2, "Camera needs All files access so it can save videos and AR effects to storage. Tap Allow, then turn it on."

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v2, Lcom/transsion/camera/app/OnBackInvokedCallbackImpl$1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/OnBackInvokedCallbackImpl$1;-><init>(Landroid/app/Activity;)V

    const-string v5, "Allow"

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v2, "Later"

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :done
    return-void
.end method


# virtual methods
.method public onBackInvoked()V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/transsion/camera/app/OnBackInvokedCallbackImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
