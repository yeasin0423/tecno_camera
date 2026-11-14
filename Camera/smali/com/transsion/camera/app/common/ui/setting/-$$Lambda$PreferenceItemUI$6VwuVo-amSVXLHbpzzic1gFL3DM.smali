.class public final synthetic Lcom/transsion/camera/app/common/ui/setting/-$$Lambda$PreferenceItemUI$6VwuVo-amSVXLHbpzzic1gFL3DM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/-$$Lambda$PreferenceItemUI$6VwuVo-amSVXLHbpzzic1gFL3DM;->f$0:Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/-$$Lambda$PreferenceItemUI$6VwuVo-amSVXLHbpzzic1gFL3DM;->f$0:Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->lambda$doCreatePreference$0$PreferenceItemUI(Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method
