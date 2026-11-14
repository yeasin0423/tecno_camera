.class Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$EditorItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ModeOrderEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditorItemDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$EditorItemDecoration;->this$0:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 178
    new-instance p0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class p1, Lcom/transsion/camera/app/ui/anim/EditorItemAnimator;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$1;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$EditorItemDecoration;-><init>(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 182
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 184
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$EditorItemDecoration;->this$0:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->access$200(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$EditorItemDecoration;->this$0:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->access$200(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method
