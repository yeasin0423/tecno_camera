.class public Lcom/faceunity/FURenderer$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/faceunity/FURenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/faceunity/entity/Effect;

.field private c:I

.field private d:I

.field private final e:Landroid/content/Context;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field public p:Lcom/vskit/arsdk/portal/ARCallback;

.field public q:Lcom/vskit/arsdk/portal/ARCallback;

.field public r:Lcom/vskit/arsdk/portal/ARCallback;

.field public s:Lcom/vskit/arsdk/portal/ARCallback;

.field private t:Z

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/faceunity/FURenderer$b;->a:Z

    const/4 v1, 0x4

    .line 3
    iput v1, p0, Lcom/faceunity/FURenderer$b;->c:I

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lcom/faceunity/FURenderer$b;->d:I

    .line 5
    iput v0, p0, Lcom/faceunity/FURenderer$b;->f:I

    .line 6
    iput v0, p0, Lcom/faceunity/FURenderer$b;->g:I

    const/16 v2, 0x10e

    .line 7
    iput v2, p0, Lcom/faceunity/FURenderer$b;->h:I

    const/4 v2, -0x1

    .line 8
    iput v2, p0, Lcom/faceunity/FURenderer$b;->i:I

    .line 9
    iput-boolean v1, p0, Lcom/faceunity/FURenderer$b;->j:Z

    .line 10
    iput-boolean v0, p0, Lcom/faceunity/FURenderer$b;->k:Z

    .line 11
    iput-boolean v0, p0, Lcom/faceunity/FURenderer$b;->l:Z

    .line 12
    iput-boolean v0, p0, Lcom/faceunity/FURenderer$b;->m:Z

    .line 13
    iput-boolean v0, p0, Lcom/faceunity/FURenderer$b;->n:Z

    .line 14
    iput v1, p0, Lcom/faceunity/FURenderer$b;->o:I

    .line 15
    iput-object p1, p0, Lcom/faceunity/FURenderer$b;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/vskit/arsdk/portal/ARCallback;)Lcom/faceunity/FURenderer$b;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/faceunity/FURenderer$b;->p:Lcom/vskit/arsdk/portal/ARCallback;

    return-object p0
.end method

.method public a()Lcom/faceunity/FURenderer;
    .locals 3

    .line 5
    new-instance v0, Lcom/faceunity/FURenderer;

    iget-object v1, p0, Lcom/faceunity/FURenderer$b;->e:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/faceunity/FURenderer$b;->a:Z

    invoke-direct {v0, v1, v2}, Lcom/faceunity/FURenderer;-><init>(Landroid/content/Context;Z)V

    .line 6
    iget v1, p0, Lcom/faceunity/FURenderer$b;->c:I

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$702(Lcom/faceunity/FURenderer;I)I

    .line 7
    iget v1, p0, Lcom/faceunity/FURenderer$b;->d:I

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$302(Lcom/faceunity/FURenderer;I)I

    .line 8
    iget v1, p0, Lcom/faceunity/FURenderer$b;->f:I

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$4002(Lcom/faceunity/FURenderer;I)I

    .line 9
    iget v1, p0, Lcom/faceunity/FURenderer$b;->g:I

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$4102(Lcom/faceunity/FURenderer;I)I

    .line 10
    iget v1, p0, Lcom/faceunity/FURenderer$b;->h:I

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$902(Lcom/faceunity/FURenderer;I)I

    .line 11
    iget v1, p0, Lcom/faceunity/FURenderer$b;->i:I

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$4202(Lcom/faceunity/FURenderer;I)I

    .line 12
    iget-object v1, p0, Lcom/faceunity/FURenderer$b;->b:Lcom/faceunity/entity/Effect;

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$1302(Lcom/faceunity/FURenderer;Lcom/faceunity/entity/Effect;)Lcom/faceunity/entity/Effect;

    .line 13
    iget-boolean v1, p0, Lcom/faceunity/FURenderer$b;->j:Z

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$4302(Lcom/faceunity/FURenderer;Z)Z

    .line 14
    iget-boolean v1, p0, Lcom/faceunity/FURenderer$b;->n:Z

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$4402(Lcom/faceunity/FURenderer;Z)Z

    .line 15
    iget-boolean v1, p0, Lcom/faceunity/FURenderer$b;->k:Z

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$4502(Lcom/faceunity/FURenderer;Z)Z

    .line 16
    iget-boolean v1, p0, Lcom/faceunity/FURenderer$b;->l:Z

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$4602(Lcom/faceunity/FURenderer;Z)Z

    .line 17
    iget-boolean v1, p0, Lcom/faceunity/FURenderer$b;->m:Z

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$4702(Lcom/faceunity/FURenderer;Z)Z

    .line 18
    iget v1, p0, Lcom/faceunity/FURenderer$b;->o:I

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$802(Lcom/faceunity/FURenderer;I)I

    .line 19
    iget-object v1, p0, Lcom/faceunity/FURenderer$b;->q:Lcom/vskit/arsdk/portal/ARCallback;

    iput-object v1, v0, Lcom/faceunity/FURenderer;->mOnFUDebugListener:Lcom/vskit/arsdk/portal/ARCallback;

    .line 20
    iget-object v1, p0, Lcom/faceunity/FURenderer$b;->r:Lcom/vskit/arsdk/portal/ARCallback;

    iput-object v1, v0, Lcom/faceunity/FURenderer;->mOnTrackingStatusChangedListener:Lcom/vskit/arsdk/portal/ARCallback;

    .line 21
    iget-object v1, p0, Lcom/faceunity/FURenderer$b;->s:Lcom/vskit/arsdk/portal/ARCallback;

    iput-object v1, v0, Lcom/faceunity/FURenderer;->mOnSystemErrorListener:Lcom/vskit/arsdk/portal/ARCallback;

    .line 22
    iget-object v1, p0, Lcom/faceunity/FURenderer$b;->p:Lcom/vskit/arsdk/portal/ARCallback;

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$4802(Lcom/faceunity/FURenderer;Lcom/vskit/arsdk/portal/ARCallback;)Lcom/vskit/arsdk/portal/ARCallback;

    .line 23
    iget-boolean v1, p0, Lcom/faceunity/FURenderer$b;->t:Z

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$4902(Lcom/faceunity/FURenderer;Z)Z

    .line 24
    iget-boolean p0, p0, Lcom/faceunity/FURenderer$b;->u:Z

    invoke-static {v0, p0}, Lcom/faceunity/FURenderer;->access$5002(Lcom/faceunity/FURenderer;Z)Z

    return-object v0
.end method

.method public b(I)Lcom/faceunity/FURenderer$b;
    .locals 0

    .line 2
    iput p1, p0, Lcom/faceunity/FURenderer$b;->f:I

    return-object p0
.end method

.method public b(Lcom/vskit/arsdk/portal/ARCallback;)Lcom/faceunity/FURenderer$b;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/faceunity/FURenderer$b;->q:Lcom/vskit/arsdk/portal/ARCallback;

    return-object p0
.end method

.method public b(Z)Lcom/faceunity/FURenderer$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/faceunity/FURenderer$b;->t:Z

    return-object p0
.end method

.method public c(Lcom/vskit/arsdk/portal/ARCallback;)Lcom/faceunity/FURenderer$b;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/faceunity/FURenderer$b;->s:Lcom/vskit/arsdk/portal/ARCallback;

    return-object p0
.end method

.method public d(Lcom/vskit/arsdk/portal/ARCallback;)Lcom/faceunity/FURenderer$b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/faceunity/FURenderer$b;->r:Lcom/vskit/arsdk/portal/ARCallback;

    return-object p0
.end method
