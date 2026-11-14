.class Lcom/transsion/camera/app/ui/widget/ConfirmationFragment$2;
.super Ljava/lang/Object;
.source "ConfirmationFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment$2;->this$0:Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 90
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment$2;->this$0:Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/permission/PermissionManager;->getDenyPermissions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 90
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment$2;->this$0:Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment$2;->this$0:Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;->mPermissionManager:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->requestCameraLaunchPermissions()Z

    goto :cond_1

    .line 89
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment$2;->this$0:Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;->access$000(Lcom/transsion/camera/app/ui/widget/ConfirmationFragment;)V

    :cond_1
    return-void
.end method
