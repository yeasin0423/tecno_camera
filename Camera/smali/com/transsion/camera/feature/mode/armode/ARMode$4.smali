.class Lcom/transsion/camera/feature/mode/armode/ARMode$4;
.super Ljava/lang/Object;
.source "ARMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/armode/ARMode;->saveJpegToFile([BLandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/armode/ARMode;)V
    .locals 0

    .line 1095
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$4;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;)V
    .locals 1

    .line 1098
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$4;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->doOnFileSaved(Landroid/net/Uri;ZZ)V

    return-void
.end method
