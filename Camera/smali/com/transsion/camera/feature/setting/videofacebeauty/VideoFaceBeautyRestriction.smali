.class public Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeautyRestriction;
.super Ljava/lang/Object;
.source "VideoFaceBeautyRestriction.java"


# static fields
.field private static sVideFaceBeautyRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 16
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeautyRestriction;->sVideFaceBeautyRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_video_facebeauty"

    .line 19
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeautyRestriction;->sVideFaceBeautyRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_anti_video,key_video_portrait,key_night_hawk"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeautyRestriction;->sVideFaceBeautyRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "video_facebeauty_on"

    invoke-direct {v2, v1, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_anti_video"

    const-string v3, "off"

    const-string v4, "off,on"

    .line 24
    invoke-virtual {v2, v1, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v1, "key_video_portrait"

    .line 25
    invoke-virtual {v2, v1, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v1, "key_night_hawk"

    const-string v3, "on"

    .line 26
    invoke-virtual {v2, v1, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 27
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method static getVideoFaceBeautyRelation()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 32
    sget-object v0, Lcom/transsion/camera/feature/setting/videofacebeauty/VideoFaceBeautyRestriction;->sVideFaceBeautyRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
