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
    .locals 4

    .line 14
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v3, v2, :skip_predictive_back

    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/OnBackInvokedCallbackImpl;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/OnBackInvokedCallbackImpl;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    :skip_predictive_back
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
