.class Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TimeLapseRateUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mEntry:[Ljava/lang/String;

.field private mValues:[Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabAdapter;->this$0:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 492
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabAdapter;->mValues:[Ljava/lang/String;

    .line 493
    iput-object p3, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabAdapter;->mEntry:[Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Landroid/view/View;)V
    .locals 0

    .line 502
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabAdapter;->this$0:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->access$1100(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 519
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabAdapter;->mValues:[Ljava/lang/String;

    array-length p0, p0

    return p0
.end method

.method public synthetic lambda$onCreateViewHolder$0$TimeLapseRateUI$TabAdapter(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabAdapter;->lambda$onCreateViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 486
    check-cast p1, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabAdapter;->onBindViewHolder(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabViewHolder;I)V
    .locals 2

    .line 509
    iget-object v0, p1, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabAdapter;->mEntry:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v0, p1, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabAdapter;->mValues:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 511
    iget-object v0, p1, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabViewHolder;->mTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 512
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabAdapter;->this$0:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->access$900(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabAdapter;->mValues:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 513
    iget-object p1, p1, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabAdapter;->this$0:Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;->access$1000(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI;)Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0601ac

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 486
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabViewHolder;
    .locals 2

    .line 499
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00ee

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 500
    new-instance p2, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabViewHolder;

    invoke-direct {p2, p1}, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabViewHolder;-><init>(Landroid/view/View;)V

    .line 501
    iget-object p1, p2, Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabViewHolder;->mTextView:Landroid/widget/TextView;

    new-instance v0, Lcom/transsion/camera/ui/setting/timelapserate/-$$Lambda$TimeLapseRateUI$TabAdapter$04R3_tEYlR6-Fov5s_97iOvMwe0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/timelapserate/-$$Lambda$TimeLapseRateUI$TabAdapter$04R3_tEYlR6-Fov5s_97iOvMwe0;-><init>(Lcom/transsion/camera/ui/setting/timelapserate/TimeLapseRateUI$TabAdapter;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
