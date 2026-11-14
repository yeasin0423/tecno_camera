.class public Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;
.super Landroid/app/Activity;
.source "ThermalThrottleUrgentActivity.java"


# instance fields
.field private mConfirm:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ThermalThrottleUrgentActivity"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "isSecureCamera"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_0
    const p1, 0x7f0c00f8

    .line 28
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 30
    iget-object p1, p0, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;->mConfirm:Landroid/widget/TextView;

    if-nez p1, :cond_1

    const p1, 0x7f090122

    .line 31
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;->mConfirm:Landroid/widget/TextView;

    .line 32
    new-instance v0, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity$1;-><init>(Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
