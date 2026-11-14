.class Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$1;
.super Ljava/util/ArrayList;
.source "FeatureLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 14

    .line 81
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    new-instance v6, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    sget v2, Lcom/transsion/camera/feature/slimbody/R$layout;->slimbody_feature_item:I

    sget v3, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_preset_close:I

    sget v4, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_slimbody_switch:I

    const/4 v1, 0x0

    const-string v5, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":6,\"shoulderSlim\":100,\"waistSlim\":100}"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v0, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    sget v9, Lcom/transsion/camera/feature/slimbody/R$layout;->slimbody_feature_item:I

    sget v10, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_preset_reset:I

    sget v11, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_slimbody_reset:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const/4 v8, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v0, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    sget v4, Lcom/transsion/camera/feature/slimbody/R$layout;->slimbody_feature_item:I

    sget v5, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_preset_ai:I

    sget v6, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_slimbody_ai:I

    const/4 v3, 0x2

    const-string v7, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100, \"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":1,\"shoulderSlim\":100,\"waistSlim\":100}"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v0, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    sget v10, Lcom/transsion/camera/feature/slimbody/R$layout;->slimbody_feature_item:I

    sget v11, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_custom_body_slim:I

    sget v12, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_slimbody_bodyslim:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/4 v9, 0x3

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v0, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    sget v4, Lcom/transsion/camera/feature/slimbody/R$layout;->slimbody_feature_item:I

    sget v5, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_custom_head_shrink:I

    sget v6, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_slimbody_headshrink:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x4

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v0, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    sget v10, Lcom/transsion/camera/feature/slimbody/R$layout;->slimbody_feature_item:I

    sget v11, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_custom_shoulder_slim:I

    sget v12, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_slimbody_shoulderslim:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/4 v9, 0x5

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v0, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    sget v4, Lcom/transsion/camera/feature/slimbody/R$layout;->slimbody_feature_item:I

    sget v5, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_custom_waist_slim:I

    sget v6, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_slimbody_waistslim:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x6

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v0, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    sget v10, Lcom/transsion/camera/feature/slimbody/R$layout;->slimbody_feature_item:I

    sget v11, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_custom_butt_plump:I

    sget v12, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_slimbody_buttplump:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/4 v9, 0x7

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v0, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    sget v4, Lcom/transsion/camera/feature/slimbody/R$layout;->slimbody_feature_item:I

    sget v5, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_custom_leg_slim:I

    sget v6, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_slimbody_legslim:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/16 v3, 0x8

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v0, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    sget v10, Lcom/transsion/camera/feature/slimbody/R$layout;->slimbody_feature_item:I

    sget v11, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_custom_leg_lengthen:I

    sget v12, Lcom/transsion/camera/feature/slimbody/R$drawable;->btn_slimbody_leglengthen:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/16 v9, 0x9

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
