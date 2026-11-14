.class Lcom/vskit/arsdk/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vskit/arsdk/d;->onCameraChange(II)V
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
    iput-object p1, p0, Lcom/vskit/arsdk/c;->a:Lcom/vskit/arsdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vskit/arsdk/c;->a:Lcom/vskit/arsdk/d;

    invoke-static {v0}, Lcom/vskit/arsdk/d;->b(Lcom/vskit/arsdk/d;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/vskit/arsdk/c;->a:Lcom/vskit/arsdk/d;

    invoke-static {v1}, Lcom/vskit/arsdk/d;->a(Lcom/vskit/arsdk/d;)I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/vskit/arsdk/c;->a:Lcom/vskit/arsdk/d;

    invoke-static {v1}, Lcom/vskit/arsdk/d;->a(Lcom/vskit/arsdk/d;)I

    move-result v1

    invoke-static {v1}, Lcom/vskit/arsdk/b/g;->a(I)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/vskit/arsdk/c;->a:Lcom/vskit/arsdk/d;

    const/4 v1, -0x1

    invoke-static {p0, v1}, Lcom/vskit/arsdk/d;->a(Lcom/vskit/arsdk/d;I)I

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
