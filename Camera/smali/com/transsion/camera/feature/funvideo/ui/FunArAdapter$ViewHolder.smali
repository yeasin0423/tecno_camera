.class public Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FunArAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field iconView:Landroid/widget/ImageView;

.field musicView:Landroid/widget/ImageView;

.field root:Landroid/view/View;

.field selectView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;->root:Landroid/view/View;

    .line 34
    sget v0, Lcom/transsion/camera/feature/funvideo/R$id;->fun_ar_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    .line 35
    sget v0, Lcom/transsion/camera/feature/funvideo/R$id;->fun_ar_music:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;->musicView:Landroid/widget/ImageView;

    .line 36
    sget v0, Lcom/transsion/camera/feature/funvideo/R$id;->fun_ar_select:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/ui/FunArAdapter$ViewHolder;->selectView:Landroid/widget/ImageView;

    return-void
.end method
