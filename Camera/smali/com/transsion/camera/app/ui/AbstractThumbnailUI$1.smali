.class Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;
.super Ljava/lang/Object;
.source "AbstractThumbnailUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->updateThumbnail(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$needAnimation:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;->val$needAnimation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;->val$bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->access$200(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->access$300(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->getDefaultDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->access$400(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] updateThumbnailView null."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->access$300(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 111
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 112
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 113
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->access$200(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->access$200(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->access$300(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->access$400(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] updateThumbnailView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 120
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 122
    :goto_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;->val$needAnimation:Z

    if-eqz v0, :cond_2

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThumbnailUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractThumbnailUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractThumbnailUI;->access$300(Lcom/transsion/camera/app/ui/AbstractThumbnailUI;)Landroid/widget/ImageView;

    move-result-object v0

    const-wide/16 v1, 0x50

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v6}, Lcom/transsion/camera/utils/AnimationUtils;->startScaleAnimation(Landroid/view/View;JFFFF)V

    :cond_2
    return-void
.end method
