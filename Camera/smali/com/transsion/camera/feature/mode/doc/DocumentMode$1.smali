.class Lcom/transsion/camera/feature/mode/doc/DocumentMode$1;
.super Ljava/lang/Object;
.source "DocumentMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/doc/DocumentMode;->showDialog(Landroid/graphics/Bitmap;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/app/Dialog;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$1;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 256
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$1;->val$dialog:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 257
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 258
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$1;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$500(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->gotoGallery()V

    :cond_0
    return-void
.end method
