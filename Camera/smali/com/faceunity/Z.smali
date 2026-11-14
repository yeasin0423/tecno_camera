.class Lcom/faceunity/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/FURenderer$c;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/faceunity/entity/MakeupEntity;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/faceunity/FURenderer$c;


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer$c;ILcom/faceunity/entity/MakeupEntity;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/faceunity/Z;->d:Lcom/faceunity/FURenderer$c;

    iput p2, p0, Lcom/faceunity/Z;->a:I

    iput-object p3, p0, Lcom/faceunity/Z;->b:Lcom/faceunity/entity/MakeupEntity;

    iput-object p4, p0, Lcom/faceunity/Z;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/faceunity/Z;->d:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$2000(Lcom/faceunity/FURenderer;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 2
    new-array v2, v0, [I

    .line 3
    iget-object v3, p0, Lcom/faceunity/Z;->d:Lcom/faceunity/FURenderer$c;

    iget-object v3, v3, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v3}, Lcom/faceunity/FURenderer;->access$2000(Lcom/faceunity/FURenderer;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    .line 4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v5, v4, 0x1

    .line 5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v2, v4

    move v4, v5

    goto :goto_0

    .line 6
    :cond_0
    iget v3, p0, Lcom/faceunity/Z;->a:I

    invoke-static {v3, v2}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_1

    .line 7
    aget v4, v2, v3

    .line 8
    invoke-static {v4}, Lcom/faceunity/wrapper/faceunity;->fuDestroyItem(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {}, Lcom/faceunity/FURenderer;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeup: unbind and destroy old child item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/faceunity/Z;->d:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$2000(Lcom/faceunity/FURenderer;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/faceunity/Z;->d:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$5300(Lcom/faceunity/FURenderer;)Lcom/faceunity/entity/MakeupEntity;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/faceunity/Z;->d:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$5300(Lcom/faceunity/FURenderer;)Lcom/faceunity/entity/MakeupEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/faceunity/entity/MakeupEntity;->getItemHandle()I

    move-result v0

    if-lez v0, :cond_3

    .line 13
    iget v3, p0, Lcom/faceunity/Z;->a:I

    new-array v4, v2, [I

    aput v0, v4, v1

    invoke-static {v3, v4}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    .line 14
    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuDestroyItem(I)V

    .line 15
    invoke-static {}, Lcom/faceunity/FURenderer;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeup: unbind and destroy old parent item: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lcom/faceunity/Z;->d:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$5300(Lcom/faceunity/FURenderer;)Lcom/faceunity/entity/MakeupEntity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/faceunity/entity/MakeupEntity;->setItemHandle(I)V

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/faceunity/Z;->b:Lcom/faceunity/entity/MakeupEntity;

    invoke-virtual {v0}, Lcom/faceunity/entity/MakeupEntity;->getItemHandle()I

    move-result v0

    if-lez v0, :cond_4

    .line 18
    iget v0, p0, Lcom/faceunity/Z;->a:I

    new-array v3, v2, [I

    iget-object v4, p0, Lcom/faceunity/Z;->b:Lcom/faceunity/entity/MakeupEntity;

    invoke-virtual {v4}, Lcom/faceunity/entity/MakeupEntity;->getItemHandle()I

    move-result v4

    aput v4, v3, v1

    invoke-static {v0, v3}, Lcom/faceunity/wrapper/faceunity;->fuBindItems(I[I)I

    .line 19
    invoke-static {}, Lcom/faceunity/FURenderer;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeup: bind new parent item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/faceunity/Z;->b:Lcom/faceunity/entity/MakeupEntity;

    invoke-virtual {v4}, Lcom/faceunity/entity/MakeupEntity;->getItemHandle()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/faceunity/Z;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 21
    new-array v0, v0, [I

    .line 22
    iget-object v3, p0, Lcom/faceunity/Z;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 23
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v4, v1, 0x1

    .line 24
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v1

    move v1, v4

    goto :goto_2

    .line 25
    :cond_5
    iget v1, p0, Lcom/faceunity/Z;->a:I

    invoke-static {v1, v0}, Lcom/faceunity/wrapper/faceunity;->fuBindItems(I[I)I

    .line 26
    invoke-static {}, Lcom/faceunity/FURenderer;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeup: bind new child item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v0, p0, Lcom/faceunity/Z;->d:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$2000(Lcom/faceunity/FURenderer;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/faceunity/Z;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 28
    :cond_6
    iget-object v0, p0, Lcom/faceunity/Z;->d:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$5200(Lcom/faceunity/FURenderer;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 32
    instance-of v4, v3, [D

    const-string v5, ", value: "

    const-string v6, "makeup: set param key: "

    if-eqz v4, :cond_8

    .line 33
    check-cast v3, [D

    .line 34
    iget v4, p0, Lcom/faceunity/Z;->a:I

    invoke-static {v4, v1, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;[D)I

    .line 35
    invoke-static {}, Lcom/faceunity/FURenderer;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 36
    :cond_8
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_7

    .line 37
    check-cast v3, Ljava/lang/Double;

    .line 38
    iget v4, p0, Lcom/faceunity/Z;->a:I

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v4, v1, v7, v8}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 39
    invoke-static {}, Lcom/faceunity/FURenderer;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 40
    :cond_9
    iget-object v0, p0, Lcom/faceunity/Z;->d:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$4200(Lcom/faceunity/FURenderer;)I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/faceunity/Z;->d:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$4200(Lcom/faceunity/FURenderer;)I

    move-result v0

    if-ne v0, v2, :cond_b

    .line 41
    :cond_a
    iget-object v0, p0, Lcom/faceunity/Z;->d:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$5400(Lcom/faceunity/FURenderer;)Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$5402(Lcom/faceunity/FURenderer;Z)Z

    .line 42
    :cond_b
    invoke-static {}, Lcom/faceunity/FURenderer;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeup: flip points: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/faceunity/Z;->d:Lcom/faceunity/FURenderer$c;

    iget-object v2, v2, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$5400(Lcom/faceunity/FURenderer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget v0, p0, Lcom/faceunity/Z;->a:I

    iget-object v1, p0, Lcom/faceunity/Z;->d:Lcom/faceunity/FURenderer$c;

    iget-object v1, v1, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v1}, Lcom/faceunity/FURenderer;->access$5400(Lcom/faceunity/FURenderer;)Z

    move-result v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-eqz v1, :cond_c

    move-wide v4, v2

    goto :goto_4

    :cond_c
    const-wide/16 v4, 0x0

    :goto_4
    const-string v1, "is_flip_points"

    invoke-static {v0, v1, v4, v5}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 44
    iget v0, p0, Lcom/faceunity/Z;->a:I

    const-string v1, "makeup_lip_mask"

    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 45
    iget v0, p0, Lcom/faceunity/Z;->a:I

    const-string v1, "makeup_intensity"

    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 46
    iget v0, p0, Lcom/faceunity/Z;->a:I

    const-string v1, "is_clear_makeup"

    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 47
    invoke-static {}, Lcom/faceunity/FURenderer;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind makeup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/faceunity/Z;->b:Lcom/faceunity/entity/MakeupEntity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", unbind makeup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/faceunity/Z;->d:Lcom/faceunity/FURenderer$c;

    iget-object v2, v2, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    invoke-static {v2}, Lcom/faceunity/FURenderer;->access$5300(Lcom/faceunity/FURenderer;)Lcom/faceunity/entity/MakeupEntity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/faceunity/Z;->d:Lcom/faceunity/FURenderer$c;

    iget-object v0, v0, Lcom/faceunity/FURenderer$c;->b:Lcom/faceunity/FURenderer;

    iget-object p0, p0, Lcom/faceunity/Z;->b:Lcom/faceunity/entity/MakeupEntity;

    invoke-static {v0, p0}, Lcom/faceunity/FURenderer;->access$5302(Lcom/faceunity/FURenderer;Lcom/faceunity/entity/MakeupEntity;)Lcom/faceunity/entity/MakeupEntity;

    return-void
.end method
