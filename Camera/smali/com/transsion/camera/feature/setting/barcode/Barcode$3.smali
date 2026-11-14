.class Lcom/transsion/camera/feature/setting/barcode/Barcode$3;
.super Landroid/os/Handler;
.source "Barcode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/setting/barcode/Barcode;->initChildHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/barcode/Barcode;Landroid/os/Looper;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 264
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 265
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_7

    .line 266
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 267
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 268
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1100(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lnet/sourceforge/zbar/ImageScanner;

    move-result-object v2

    const/16 v3, 0x100

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v3, v5}, Lnet/sourceforge/zbar/ImageScanner;->setConfig(III)V

    .line 269
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1100(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lnet/sourceforge/zbar/ImageScanner;

    move-result-object v2

    const/16 v3, 0x101

    invoke-virtual {v2, v4, v3, v5}, Lnet/sourceforge/zbar/ImageScanner;->setConfig(III)V

    .line 270
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1100(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lnet/sourceforge/zbar/ImageScanner;

    move-result-object v2

    invoke-virtual {v2, v4, v4, v4}, Lnet/sourceforge/zbar/ImageScanner;->setConfig(III)V

    .line 271
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1100(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lnet/sourceforge/zbar/ImageScanner;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v3, v4, v5}, Lnet/sourceforge/zbar/ImageScanner;->setConfig(III)V

    .line 272
    rem-int/lit8 v2, v0, 0x40

    if-nez v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1200(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lnet/sourceforge/zbar/Image;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lnet/sourceforge/zbar/Image;->setSize(II)V

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1200(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lnet/sourceforge/zbar/Image;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    invoke-virtual {v0, p1}, Lnet/sourceforge/zbar/Image;->setData([B)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1200(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lnet/sourceforge/zbar/Image;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v3, v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1300(Lcom/transsion/camera/feature/setting/barcode/Barcode;I)I

    move-result v3

    iget-object v6, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v6, v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1300(Lcom/transsion/camera/feature/setting/barcode/Barcode;I)I

    move-result v6

    mul-int/2addr v6, v1

    div-int/2addr v6, v0

    invoke-virtual {v2, v3, v6}, Lnet/sourceforge/zbar/Image;->setSize(II)V

    .line 278
    :try_start_0
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1200(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lnet/sourceforge/zbar/Image;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v3, p1, v0, v1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1400(Lcom/transsion/camera/feature/setting/barcode/Barcode;[BII)[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/sourceforge/zbar/Image;->setData([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 280
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1100(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lnet/sourceforge/zbar/ImageScanner;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1200(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lnet/sourceforge/zbar/Image;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sourceforge/zbar/ImageScanner;->scanImage(Lnet/sourceforge/zbar/Image;)I

    move-result p1

    if-eqz p1, :cond_5

    .line 288
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1502(Lcom/transsion/camera/feature/setting/barcode/Barcode;J)J

    .line 289
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1200(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lnet/sourceforge/zbar/Image;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sourceforge/zbar/Image;->getSymbols()Lnet/sourceforge/zbar/SymbolSet;

    move-result-object p1

    .line 290
    invoke-virtual {p1}, Lnet/sourceforge/zbar/SymbolSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/zbar/Symbol;

    .line 291
    invoke-virtual {v0}, Lnet/sourceforge/zbar/Symbol;->getData()Ljava/lang/String;

    move-result-object v1

    .line 292
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-virtual {v0}, Lnet/sourceforge/zbar/Symbol;->getBounds()[I

    move-result-object v0

    iput-object v0, v2, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mQRLocation:[I

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1602(Lcom/transsion/camera/feature/setting/barcode/Barcode;[Ljava/lang/String;)[Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1600(Lcom/transsion/camera/feature/setting/barcode/Barcode;)[Ljava/lang/String;

    move-result-object v0

    aput-object v1, v0, v4

    .line 295
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1600(Lcom/transsion/camera/feature/setting/barcode/Barcode;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1200(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lnet/sourceforge/zbar/Image;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/zbar/Image;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    iget-object v2, v2, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mQRLocation:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1600(Lcom/transsion/camera/feature/setting/barcode/Barcode;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    iget-object v1, v1, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mQRLocation:[I

    aget v1, v1, v4

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1600(Lcom/transsion/camera/feature/setting/barcode/Barcode;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1200(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lnet/sourceforge/zbar/Image;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/zbar/Image;->getHeight()I

    move-result v1

    iget-object v6, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    iget-object v6, v6, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mQRLocation:[I

    aget v6, v6, v5

    sub-int/2addr v1, v6

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1600(Lcom/transsion/camera/feature/setting/barcode/Barcode;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v6, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    iget-object v6, v6, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mQRLocation:[I

    aget v2, v6, v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1600(Lcom/transsion/camera/feature/setting/barcode/Barcode;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1200(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lnet/sourceforge/zbar/Image;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/zbar/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1600(Lcom/transsion/camera/feature/setting/barcode/Barcode;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1200(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lnet/sourceforge/zbar/Image;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sourceforge/zbar/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 301
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1700(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    iget-object v1, v1, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mQRLocation:[I

    aget v2, v1, v5

    aget v1, v1, v3

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1800(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1200(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lnet/sourceforge/zbar/Image;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sourceforge/zbar/Image;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    iget-object v2, v2, Lcom/transsion/camera/feature/setting/barcode/Barcode;->mQRLocation:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1900(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1600(Lcom/transsion/camera/feature/setting/barcode/Barcode;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 305
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1700(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1700(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1700(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p1, v0

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_2

    .line 306
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1900(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1800(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1800(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1602(Lcom/transsion/camera/feature/setting/barcode/Barcode;[Ljava/lang/String;)[Ljava/lang/String;

    .line 308
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$400(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p1

    if-nez p1, :cond_3

    .line 309
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$402(Lcom/transsion/camera/feature/setting/barcode/Barcode;Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    goto :goto_2

    .line 310
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1600(Lcom/transsion/camera/feature/setting/barcode/Barcode;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$400(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 311
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$400(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1600(Lcom/transsion/camera/feature/setting/barcode/Barcode;)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v5}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 313
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1700(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 314
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1800(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 315
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1900(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    goto :goto_6

    .line 317
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$400(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p1

    if-nez p1, :cond_6

    .line 318
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$402(Lcom/transsion/camera/feature/setting/barcode/Barcode;Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    goto :goto_3

    .line 320
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$400(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p1

    const-string v0, "ViewClose"

    invoke-interface {p1, v0, v4}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    .line 322
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$1500(Lcom/transsion/camera/feature/setting/barcode/Barcode;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-lez p1, :cond_7

    .line 323
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$2000(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Landroid/os/HandlerThread;

    move-result-object p1

    monitor-enter p1

    .line 325
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0, v5}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$802(Lcom/transsion/camera/feature/setting/barcode/Barcode;Z)Z

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$2000(Lcom/transsion/camera/feature/setting/barcode/Barcode;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 327
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/barcode/Barcode$3;->this$0:Lcom/transsion/camera/feature/setting/barcode/Barcode;

    invoke-static {p0, v4}, Lcom/transsion/camera/feature/setting/barcode/Barcode;->access$802(Lcom/transsion/camera/feature/setting/barcode/Barcode;Z)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p0

    .line 329
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 331
    :goto_4
    monitor-exit p1

    goto :goto_6

    :goto_5
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_7
    :goto_6
    return-void
.end method
