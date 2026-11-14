.class public Lcom/transsion/camera/app/ui/mode/armode/ARAdapter;
.super Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$RecycleAdapter;
.source "ARAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/armode/ARAdapter$VH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$RecycleAdapter<",
        "Lcom/transsion/camera/app/ui/mode/armode/ARAdapter$VH;",
        "Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$RecycleAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    .line 34
    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/armode/ARAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 23
    check-cast p1, Lcom/transsion/camera/app/ui/mode/armode/ARAdapter$VH;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/armode/ARAdapter;->onBindViewHolder(Lcom/transsion/camera/app/ui/mode/armode/ARAdapter$VH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/app/ui/mode/armode/ARAdapter$VH;I)V
    .locals 5

    .line 39
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/mode/armode/R$id;->ar_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 42
    :try_start_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/armode/ARAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$RecycleAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    iget-object v4, v4, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$RecycleAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    iget-object v4, v4, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->iconRes:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 44
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/armode/HorizontalRecycleView$RecycleAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;

    iget p0, p0, Lcom/transsion/camera/app/ui/mode/armode/data/ARStickerItemData;->type:I

    const/4 p2, 0x1

    if-ne p0, p2, :cond_0

    .line 46
    sget p0, Lcom/transsion/camera/feature/mode/armode/R$drawable;->ar_icon_bg:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 50
    :goto_0
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    invoke-static {v2}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    .line 52
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    :goto_2
    return-void

    :goto_3
    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 55
    throw p0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/armode/ARAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/mode/armode/ARAdapter$VH;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/mode/armode/ARAdapter$VH;
    .locals 1

    .line 60
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/transsion/camera/feature/mode/armode/R$layout;->ar_item:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 62
    new-instance p1, Lcom/transsion/camera/app/ui/mode/armode/ARAdapter$VH;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/mode/armode/ARAdapter$VH;-><init>(Landroid/view/View;)V

    return-object p1
.end method
