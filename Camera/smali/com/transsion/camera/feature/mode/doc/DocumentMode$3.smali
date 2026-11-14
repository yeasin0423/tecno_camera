.class Lcom/transsion/camera/feature/mode/doc/DocumentMode$3;
.super Ljava/lang/Object;
.source "DocumentMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/doc/DocumentMode;->showDialog(Landroid/graphics/Bitmap;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/app/Dialog;)V
    .locals 0

    .line 281
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$3;->val$dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
