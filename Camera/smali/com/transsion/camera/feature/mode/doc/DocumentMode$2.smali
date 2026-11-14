.class Lcom/transsion/camera/feature/mode/doc/DocumentMode$2;
.super Ljava/lang/Object;
.source "DocumentMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$2;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 273
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$2;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$600(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 274
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$2;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$302(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Z)Z

    .line 275
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$2;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$102(Lcom/transsion/camera/feature/mode/doc/DocumentMode;I)I

    .line 276
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$2;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$700(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V

    :cond_0
    return-void
.end method
