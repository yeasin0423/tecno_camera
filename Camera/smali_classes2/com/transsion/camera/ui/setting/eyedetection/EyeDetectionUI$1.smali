.class Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$1;
.super Ljava/lang/Object;
.source "EyeDetectionUI.java"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->doSvgaAnim(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->access$700(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    .line 315
    new-instance v0, Lcom/opensource/svgaplayer/SVGADrawable;

    invoke-direct {v0, p1}, Lcom/opensource/svgaplayer/SVGADrawable;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 316
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->access$700(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->access$700(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->access$700(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->access$800(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 319
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->access$700(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    .line 320
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI$1;->this$0:Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->access$900(Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;Z)V

    return-void
.end method

.method public onError()V
    .locals 1

    .line 325
    invoke-static {}, Lcom/transsion/camera/ui/setting/eyedetection/EyeDetectionUI;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "load svga resource error"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
