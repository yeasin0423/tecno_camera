.class Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;
.super Lcom/transsion/camera/app/common/preview/PreviewCallbacker;
.source "ARMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/armode/ARMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ARModePreviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/armode/ARMode;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/armode/ARMode;Lcom/transsion/camera/feature/mode/armode/ARMode$1;)V
    .locals 0

    .line 539
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;-><init>(Lcom/transsion/camera/feature/mode/armode/ARMode;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .locals 11

    .line 543
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$400(Lcom/transsion/camera/feature/mode/armode/ARMode;)[B

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget-object v3, v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    if-eqz v3, :cond_14

    iget-boolean v3, v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIsInited:Z

    if-eqz v3, :cond_14

    iget v0, v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIgnoreFrame:I

    const/4 v3, 0x5

    if-lt v0, v3, :cond_14

    invoke-static {}, Lcom/transsion/camera/featurelibs/ar/ARControl;->fuIsSetup()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_5

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mtx:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 550
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$500(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sGenderIdentificationSupport: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$600(Lcom/transsion/camera/feature/mode/armode/ARMode;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mGenderIdentification: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    .line 551
    invoke-static {v3}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 550
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 552
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$600(Lcom/transsion/camera/feature/mode/armode/ARMode;)Z

    move-result p1

    const/4 v0, 0x2

    if-nez p1, :cond_1

    .line 553
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$800(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object p1

    if-eqz p1, :cond_2

    .line 554
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$400(Lcom/transsion/camera/feature/mode/armode/ARMode;)[B

    move-result-object v4

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$900(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result v6

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1000(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result v7

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget v8, p1, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFrameId:I

    add-int/lit8 v5, v8, 0x1

    iput v5, p1, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFrameId:I

    new-array v9, v0, [I

    .line 555
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1100(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result p1

    aput p1, v9, v2

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$800(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object p1

    aget p1, p1, v2

    aput p1, v9, v1

    move v5, p2

    .line 554
    invoke-virtual/range {v3 .. v9}, Lcom/transsion/camera/feature/mode/armode/ARMode;->drawFrame([BIIII[I)I

    move-result p1

    goto/16 :goto_2

    .line 558
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 559
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$800(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object p1

    if-eqz p1, :cond_2

    .line 560
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$400(Lcom/transsion/camera/feature/mode/armode/ARMode;)[B

    move-result-object v4

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$900(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result v6

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1000(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result v7

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget v8, p1, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFrameId:I

    add-int/lit8 v5, v8, 0x1

    iput v5, p1, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFrameId:I

    new-array v9, v0, [I

    .line 561
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1100(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result p1

    aput p1, v9, v2

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$800(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object p1

    aget p1, p1, v2

    aput p1, v9, v1

    move v5, p2

    .line 560
    invoke-virtual/range {v3 .. v9}, Lcom/transsion/camera/feature/mode/armode/ARMode;->drawFrame([BIIII[I)I

    move-result p1

    goto/16 :goto_2

    :cond_2
    move p1, v2

    goto/16 :goto_2

    .line 564
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 566
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$400(Lcom/transsion/camera/feature/mode/armode/ARMode;)[B

    move-result-object v4

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$900(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result v6

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1000(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result v7

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget v8, p1, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFrameId:I

    add-int/lit8 v5, v8, 0x1

    iput v5, p1, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFrameId:I

    move v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/camera/feature/mode/armode/ARMode;->drawFrameMasked([BIIII)I

    move-result p1

    .line 568
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1200(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result p2

    if-ne p2, p3, :cond_4

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1300(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result p2

    if-eq p2, p4, :cond_7

    .line 569
    :cond_4
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2, p3}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1202(Lcom/transsion/camera/feature/mode/armode/ARMode;I)I

    .line 570
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2, p4}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1302(Lcom/transsion/camera/feature/mode/armode/ARMode;I)I

    .line 572
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1200(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result p2

    int-to-float p2, p2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$900(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr p2, v3

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1300(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p2, v3

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1000(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, p2, v3

    const/high16 v5, 0x40000000    # 2.0f

    if-lez v4, :cond_5

    .line 575
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1200(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1000(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {p2, v3}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1402(Lcom/transsion/camera/feature/mode/armode/ARMode;F)F

    .line 576
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2, v2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1502(Lcom/transsion/camera/feature/mode/armode/ARMode;I)I

    .line 577
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$900(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1400(Lcom/transsion/camera/feature/mode/armode/ARMode;)F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1300(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v3, v3

    invoke-static {p2, v3}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1602(Lcom/transsion/camera/feature/mode/armode/ARMode;I)I

    goto :goto_0

    :cond_5
    cmpg-float p2, p2, v3

    if-gez p2, :cond_6

    .line 580
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1300(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$900(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {p2, v3}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1402(Lcom/transsion/camera/feature/mode/armode/ARMode;F)F

    .line 581
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1000(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1400(Lcom/transsion/camera/feature/mode/armode/ARMode;)F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1200(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v3, v3

    invoke-static {p2, v3}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1502(Lcom/transsion/camera/feature/mode/armode/ARMode;I)I

    .line 582
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2, v2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1602(Lcom/transsion/camera/feature/mode/armode/ARMode;I)I

    goto :goto_0

    .line 584
    :cond_6
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1200(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1000(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {p2, v3}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1402(Lcom/transsion/camera/feature/mode/armode/ARMode;F)F

    .line 585
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2, v2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1502(Lcom/transsion/camera/feature/mode/armode/ARMode;I)I

    .line 586
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2, v2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1602(Lcom/transsion/camera/feature/mode/armode/ARMode;I)I

    .line 590
    :cond_7
    :goto_0
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->getFaceCount()I

    move-result p2

    .line 591
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "faceCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-lez p2, :cond_a

    .line 593
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1800(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result v3

    if-eq v3, p2, :cond_8

    .line 594
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    const/4 v4, 0x4

    new-array v0, v0, [I

    aput v4, v0, v1

    aput p2, v0, v2

    const-class v4, F

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    invoke-static {v3, v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1902(Lcom/transsion/camera/feature/mode/armode/ARMode;[[F)[[F

    .line 595
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0, p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1802(Lcom/transsion/camera/feature/mode/armode/ARMode;I)I

    :cond_8
    move v0, v2

    :goto_1
    if-ge v0, p2, :cond_9

    .line 599
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1900(Lcom/transsion/camera/feature/mode/armode/ARMode;)[[F

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v0, v4}, Lcom/transsion/camera/feature/mode/armode/ARMode;->getFaceRectData(I[F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 602
    :cond_9
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2000(Lcom/transsion/camera/feature/mode/armode/ARMode;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 603
    :try_start_0
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2100(Lcom/transsion/camera/feature/mode/armode/ARMode;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/transsion/camera/feature/mode/armode/ARMode;->findBestMatchFace(Ljava/util/List;)V

    .line 604
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_a
    if-nez p2, :cond_c

    .line 610
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2000(Lcom/transsion/camera/feature/mode/armode/ARMode;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 611
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2100(Lcom/transsion/camera/feature/mode/armode/ARMode;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2100(Lcom/transsion/camera/feature/mode/armode/ARMode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 612
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2100(Lcom/transsion/camera/feature/mode/armode/ARMode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 614
    :cond_b
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 616
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2200(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->fill([II)V

    .line 617
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2300(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->fill([II)V

    .line 618
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2400(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->fill([II)V

    .line 619
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2500(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 614
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 639
    :cond_c
    :goto_2
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget-object v0, p2, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    iget-object p2, p2, Lcom/transsion/camera/feature/mode/armode/ARMode;->mtx:[F

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/utils/gles/core/Program;->drawFrame(I[F)V

    .line 640
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2600(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result p1

    if-lez p1, :cond_13

    .line 641
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2610(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    .line 642
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2700(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2700(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object p1

    array-length p1, p1

    mul-int p2, p3, p4

    if-eq p1, p2, :cond_e

    .line 643
    :cond_d
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    mul-int p2, p3, p4

    new-array p2, p2, [I

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2702(Lcom/transsion/camera/feature/mode/armode/ARMode;[I)[I

    .line 645
    :cond_e
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2700(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object p1

    .line 646
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2802(Lcom/transsion/camera/feature/mode/armode/ARMode;Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    .line 647
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2800(Lcom/transsion/camera/feature/mode/armode/ARMode;)Ljava/nio/IntBuffer;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    .line 648
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    .line 649
    invoke-static {p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2800(Lcom/transsion/camera/feature/mode/armode/ARMode;)Ljava/nio/IntBuffer;

    move-result-object v9

    move v5, p3

    move v6, p4

    .line 648
    invoke-static/range {v3 .. v9}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 651
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2900(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object p2

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2900(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object p2

    array-length p2, p2

    mul-int v0, p3, p4

    if-eq p2, v0, :cond_10

    .line 652
    :cond_f
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    mul-int v0, p3, p4

    new-array v0, v0, [I

    invoke-static {p2, v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2902(Lcom/transsion/camera/feature/mode/armode/ARMode;[I)[I

    .line 654
    :cond_10
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$2900(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object p2

    move v0, v2

    :goto_3
    if-ge v0, p4, :cond_12

    mul-int v3, v0, p3

    sub-int v4, p4, v0

    sub-int/2addr v4, v1

    mul-int/2addr v4, p3

    move v5, v2

    :goto_4
    if-ge v5, p3, :cond_11

    add-int v6, v3, v5

    .line 661
    aget v6, p1, v6

    shr-int/lit8 v7, v6, 0x10

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v8, v6, 0x10

    const/high16 v9, 0xff0000

    and-int/2addr v8, v9

    const v9, -0xff0100

    and-int/2addr v6, v9

    or-int/2addr v6, v8

    or-int/2addr v6, v7

    add-int v7, v4, v5

    .line 665
    aput v6, p2, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 668
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 669
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 670
    new-instance v0, Landroid/graphics/YuvImage;

    invoke-static {p2, p3, p4}, Lcom/transsion/camera/utils/CameraUtil;->rgb2NV21NoAlpha([III)[B

    move-result-object v6

    const/16 v7, 0x11

    const/4 v10, 0x0

    move-object v5, v0

    move v8, p3

    move v9, p4

    invoke-direct/range {v5 .. v10}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 673
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v2, v2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p3, 0x64

    invoke-virtual {v0, p2, p3, p1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 675
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    const p3, 0x14000

    .line 677
    invoke-static {p2, p3}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromByte([BI)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 678
    new-instance p4, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;

    invoke-direct {p4}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;-><init>()V

    .line 679
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$3000(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 680
    invoke-virtual {p4, v0}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateLocation(Landroid/location/Location;)V

    .line 681
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v2

    invoke-static {v0, v2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$3100(Lcom/transsion/camera/feature/mode/armode/ARMode;I)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateOrientation(I)V

    .line 682
    invoke-virtual {p4, p3}, Lcom/transsion/camera/adapter/CameraResultsCustomImpl;->updateThumbnailSize(Landroid/graphics/Bitmap;)V

    .line 683
    invoke-static {p2, p3, p4}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->writeExif([BLandroid/graphics/Bitmap;Lcom/transsion/camera/adapter/CameraResults;)[B

    move-result-object p2

    .line 685
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p3, p2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$3200(Lcom/transsion/camera/feature/mode/armode/ARMode;[B)V

    .line 686
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, v3

    .line 687
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$3300(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EncodeCost :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " ms"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 689
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    const/4 p4, 0x0

    invoke-static {p3, p2, p4}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$3400(Lcom/transsion/camera/feature/mode/armode/ARMode;[BLandroid/graphics/Bitmap;)V

    .line 690
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$3500(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 p2, 0x1e

    invoke-interface {p0, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 691
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    :cond_13
    return v1

    .line 544
    :cond_14
    :goto_5
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIgnoreFrame:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIgnoreFrame:I

    return v2
.end method

.method public loadGLResourceCallback(I)V
    .locals 2

    .line 718
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$3900(Lcom/transsion/camera/feature/mode/armode/ARMode;)V

    const/16 v0, 0x64

    if-ne v0, p1, :cond_0

    .line 720
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4000(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 721
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4000(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    move-result-object p1

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->setEglContext(Landroid/opengl/EGLContext;)V

    goto/16 :goto_1

    :cond_0
    const/16 v0, 0x65

    if-ne v0, p1, :cond_1

    .line 724
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4100(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result p1

    invoke-static {p1}, Lcom/faceunity/wrapper/faceunity;->fuSetMaxFaces(I)I

    .line 725
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$800(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4200(Lcom/transsion/camera/feature/mode/armode/ARMode;[I)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x67

    if-ne v0, p1, :cond_3

    .line 726
    invoke-static {}, Lcom/transsion/camera/featurelibs/ar/ARControl;->fuIsSetup()I

    move-result p1

    if-lez p1, :cond_3

    .line 727
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuOnCameraChange()V

    .line 728
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    .line 729
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4300(Lcom/transsion/camera/feature/mode/armode/ARMode;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p1

    if-nez p1, :cond_2

    .line 730
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4400(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    sub-int/2addr p1, v0

    rem-int/lit16 p1, p1, 0x168

    div-int/lit8 p1, p1, 0x5a

    invoke-static {p1}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    goto :goto_0

    .line 732
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4400(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result v0

    add-int/2addr p1, v0

    rem-int/lit16 p1, p1, 0x168

    div-int/lit8 p1, p1, 0x5a

    invoke-static {p1}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    .line 734
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4100(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result p1

    invoke-static {p1}, Lcom/faceunity/wrapper/faceunity;->fuSetMaxFaces(I)I

    .line 735
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$800(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4200(Lcom/transsion/camera/feature/mode/armode/ARMode;[I)V

    .line 737
    :cond_3
    :goto_1
    invoke-static {}, Lcom/transsion/camera/featurelibs/ar/ARControl;->fuIsSetup()I

    move-result p1

    if-lez p1, :cond_4

    .line 738
    invoke-static {}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadGLResourceCallback mNeedDestroy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4500(Lcom/transsion/camera/feature/mode/armode/ARMode;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mOldEffectItem = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    .line 739
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4600(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 738
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 740
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4600(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4500(Lcom/transsion/camera/feature/mode/armode/ARMode;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 741
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4502(Lcom/transsion/camera/feature/mode/armode/ARMode;Z)Z

    .line 742
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4600(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object p1

    array-length p1, p1

    if-ge v0, p1, :cond_4

    .line 743
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4600(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object p1

    aget p1, p1, v0

    invoke-static {p1}, Lcom/faceunity/wrapper/faceunity;->fuDestroyItem(I)V

    .line 744
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4600(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object p1

    const/4 v1, -0x1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public loadGLResourcesCallback([I)V
    .locals 7

    .line 752
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;->loadGLResourcesCallback([I)V

    const/4 v0, 0x0

    .line 753
    aget v1, p1, v0

    const/4 v2, 0x1

    const/16 v3, 0x66

    if-ne v3, v1, :cond_4

    .line 754
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4100(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result v1

    invoke-static {v1}, Lcom/faceunity/wrapper/faceunity;->fuSetMaxFaces(I)I

    .line 755
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    .line 756
    invoke-static {v3}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v1

    if-nez v1, :cond_0

    .line 757
    invoke-static {v2}, Lcom/faceunity/wrapper/faceunity;->fuSetAsyncTrackFace(I)I

    goto :goto_0

    .line 759
    :cond_0
    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuSetAsyncTrackFace(I)I

    .line 761
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4800(Lcom/transsion/camera/feature/mode/armode/ARMode;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerInfo;->isARFaceBeautySupport(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 762
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1100(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result v1

    invoke-static {v1}, Lcom/transsion/camera/featurelibs/ar/ARBeauty;->buildARBeauty(I)V

    .line 765
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$800(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v1

    if-nez v1, :cond_2

    .line 766
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    array-length v3, p1

    sub-int/2addr v3, v2

    new-array v3, v3, [I

    invoke-static {v1, v3}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$802(Lcom/transsion/camera/feature/mode/armode/ARMode;[I)[I

    :cond_2
    move v1, v0

    .line 768
    :goto_1
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$800(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 769
    array-length v3, p1

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_3

    .line 770
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    new-array v4, v2, [I

    add-int/lit8 v5, v1, 0x1

    aget v6, p1, v5

    aput v6, v4, v0

    invoke-static {v3, v4}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$4200(Lcom/transsion/camera/feature/mode/armode/ARMode;[I)V

    .line 771
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$800(Lcom/transsion/camera/feature/mode/armode/ARMode;)[I

    move-result-object v3

    aget v4, p1, v5

    aput v4, v3, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/16 p0, 0x68

    .line 774
    aget v1, p1, v0

    if-ne p0, v1, :cond_5

    .line 775
    :goto_2
    array-length p0, p1

    sub-int/2addr p0, v2

    if-ge v0, p0, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 776
    aget p0, p1, v0

    invoke-static {p0}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public modeInitCallback()V
    .locals 2

    .line 698
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$3602(Lcom/transsion/camera/feature/mode/armode/ARMode;Z)Z

    .line 699
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 700
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 701
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    if-nez v0, :cond_0

    .line 702
    new-instance v0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    invoke-direct {v0}, Lcom/transsion/camera/utils/gles/ProgramTexture2d;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    :cond_0
    return-void
.end method

.method public modeUninitCallback()V
    .locals 5

    .line 708
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$3700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$3700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mShowBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget-object v2, v2, Lcom/transsion/camera/feature/mode/armode/ARMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 710
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "ShowStickerBar"

    .line 709
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 712
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIsInited:Z

    .line 713
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$3800(Lcom/transsion/camera/feature/mode/armode/ARMode;)V

    return-void
.end method

.method public surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 783
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$3602(Lcom/transsion/camera/feature/mode/armode/ARMode;Z)Z

    .line 784
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 785
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/armode/ARMode;->mStickerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 786
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iget-object v0, p1, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    if-nez v0, :cond_0

    .line 787
    new-instance v0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    invoke-direct {v0}, Lcom/transsion/camera/utils/gles/ProgramTexture2d;-><init>()V

    iput-object v0, p1, Lcom/transsion/camera/feature/mode/armode/ARMode;->mFullScreenFUDisplay:Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    .line 789
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$900(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$1000(Lcom/transsion/camera/feature/mode/armode/ARMode;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/faceunity/wrapper/faceunity;->fuSetOutputResolution(II)V

    return-void
.end method

.method public surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 794
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$3700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$3700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->mShowBar:Z

    if-eqz p1, :cond_0

    .line 795
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$3700(Lcom/transsion/camera/feature/mode/armode/ARMode;)Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/mode/armode/ARStickerUI;->controlARBar(I)V

    .line 797
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode$ARModePreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/armode/ARMode;

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/armode/ARMode;->mIsInited:Z

    .line 798
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/armode/ARMode;->access$3800(Lcom/transsion/camera/feature/mode/armode/ARMode;)V

    return-void
.end method
