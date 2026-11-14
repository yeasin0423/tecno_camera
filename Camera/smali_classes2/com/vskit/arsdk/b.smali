.class Lcom/vskit/arsdk/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vskit/arsdk/d;->onEffectSelected(Lcom/faceunity/entity/Effect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vskit/arsdk/d;


# direct methods
.method constructor <init>(Lcom/vskit/arsdk/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vskit/arsdk/b;->a:Lcom/vskit/arsdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vskit/arsdk/b;->a:Lcom/vskit/arsdk/d;

    invoke-static {v0}, Lcom/vskit/arsdk/d;->a(Lcom/vskit/arsdk/d;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/vskit/arsdk/b;->a:Lcom/vskit/arsdk/d;

    invoke-static {v0}, Lcom/vskit/arsdk/d;->a(Lcom/vskit/arsdk/d;)I

    move-result v0

    invoke-static {v0}, Lcom/vskit/arsdk/b/g;->a(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/vskit/arsdk/b;->a:Lcom/vskit/arsdk/d;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/vskit/arsdk/d;->a(Lcom/vskit/arsdk/d;I)I

    .line 4
    iget-object p0, p0, Lcom/vskit/arsdk/b;->a:Lcom/vskit/arsdk/d;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vskit/arsdk/d;->a(Lcom/vskit/arsdk/d;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
