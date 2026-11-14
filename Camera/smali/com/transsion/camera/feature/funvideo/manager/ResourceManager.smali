.class public Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FunRsManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private generateEffect(Ljava/lang/String;Ljava/io/File;)Lcom/faceunity/entity/Effect;
    .locals 5

    .line 141
    new-instance v0, Lcom/faceunity/entity/Effect;

    invoke-direct {v0}, Lcom/faceunity/entity/Effect;-><init>()V

    .line 142
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/faceunity/entity/Effect;->setBundleName(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "foreground"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :sswitch_1
    const-string v1, "music"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_2
    const-string v1, "none"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "normal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v2, :cond_1

    .line 156
    invoke-virtual {v0, v3}, Lcom/faceunity/entity/Effect;->setEffectType(I)V

    goto :goto_2

    :cond_1
    const/16 p1, 0xb

    .line 152
    invoke-virtual {v0, p1}, Lcom/faceunity/entity/Effect;->setEffectType(I)V

    goto :goto_2

    .line 149
    :cond_2
    invoke-virtual {v0, v4}, Lcom/faceunity/entity/Effect;->setEffectType(I)V

    goto :goto_2

    .line 145
    :cond_3
    invoke-virtual {v0, v4}, Lcom/faceunity/entity/Effect;->setNeedForground(Z)V

    .line 146
    invoke-virtual {v0, v4}, Lcom/faceunity/entity/Effect;->setEffectType(I)V

    .line 159
    :goto_2
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 160
    array-length p2, p1

    if-lez p2, :cond_9

    .line 161
    array-length p2, p1

    :goto_3
    if-ge v3, p2, :cond_9

    aget-object v1, p1, v3

    .line 162
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_8

    .line 163
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v4, "bundle"

    .line 165
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 166
    invoke-virtual {v0, v1}, Lcom/faceunity/entity/Effect;->setPath(Ljava/lang/String;)V

    :cond_4
    const-string v4, "cover"

    .line 168
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 169
    invoke-virtual {v0, v1}, Lcom/faceunity/entity/Effect;->setCoverPath(Ljava/lang/String;)V

    :cond_5
    const-string v4, "png"

    .line 171
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 172
    invoke-virtual {v0, v1}, Lcom/faceunity/entity/Effect;->setImgUrl(Ljava/lang/String;)V

    :cond_6
    const-string v4, "mp3"

    .line 174
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 175
    invoke-virtual {v0, v1}, Lcom/faceunity/entity/Effect;->setMusicPath(Ljava/lang/String;)V

    :cond_7
    const-string v4, "json"

    .line 177
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 178
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->parseConfig(Lcom/faceunity/entity/Effect;Ljava/lang/String;)V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3df94319 -> :sswitch_3
        0x33af38 -> :sswitch_2
        0x636ee25 -> :sswitch_1
        0x76486943 -> :sswitch_0
    .end sparse-switch
.end method

.method private generateEffectItem(Ljava/lang/String;Ljava/io/File;)Lcom/transsion/camera/feature/funvideo/data/EffectItem;
    .locals 0

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->generateEffect(Ljava/lang/String;Ljava/io/File;)Lcom/faceunity/entity/Effect;

    move-result-object p0

    .line 133
    new-instance p1, Lcom/transsion/camera/feature/funvideo/data/EffectItem;

    invoke-direct {p1}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;-><init>()V

    .line 134
    invoke-virtual {p0}, Lcom/faceunity/entity/Effect;->getBundleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->name:Ljava/lang/String;

    .line 135
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->setEffect(Lcom/faceunity/entity/Effect;)V

    const-string p0, "ready_to_use"

    .line 136
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->setState(Ljava/lang/String;)V

    return-object p1
.end method

.method private generateEffectList(Ljava/io/File;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/funvideo/data/EffectItem;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->getTypeByFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 105
    array-length v2, p1

    if-lez v2, :cond_1

    .line 106
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 107
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 108
    invoke-direct {p0, v1, v4}, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->generateEffectItem(Ljava/lang/String;Ljava/io/File;)Lcom/transsion/camera/feature/funvideo/data/EffectItem;

    move-result-object v5

    .line 109
    sget-object v6, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "generateEffectItem : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", item: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 110
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getTypeByFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 240
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, -0x3df94319

    const-string v1, "music"

    const-string v2, "normal"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p0, v0, :cond_2

    const v0, 0x636ee25

    if-eq p0, v0, :cond_1

    const v0, 0x62aaeb90

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "forground"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_6

    if-eq p0, v4, :cond_5

    if-eq p0, v3, :cond_4

    const-string p0, "none"

    return-object p0

    :cond_4
    return-object v2

    :cond_5
    return-object v1

    :cond_6
    const-string p0, "foreground"

    return-object p0
.end method

.method private isBuildChanged(Landroid/content/Context;)Z
    .locals 5

    const-string p0, "build_version"

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "BUILD_NUMBER"

    const/4 v1, 0x0

    .line 49
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 51
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 52
    sget-object v0, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBuildChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", FINGERPRINT: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 53
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 54
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private loadEffectsFromFolder(Ljava/io/File;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/funvideo/data/EffectItem;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 87
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 91
    array-length v1, p1

    if-lez v1, :cond_2

    .line 92
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 93
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->generateEffectList(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private parseConfig(Lcom/faceunity/entity/Effect;Ljava/lang/String;)V
    .locals 4

    const-string p0, "filtername"

    const-string v0, "splittype"

    const-string v1, "description"

    const-string v2, "maxface"

    .line 187
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 190
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/transsion/camera/utils/FileUtil;->getFileData(Ljava/io/File;)[B

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 194
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    .line 196
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v3, :cond_2

    .line 199
    :try_start_1
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/faceunity/entity/Effect;->setMaxFace(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 201
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 203
    :cond_2
    :goto_0
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v2, :cond_3

    .line 205
    :try_start_3
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/faceunity/entity/Effect;->setDescription(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 207
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    :cond_3
    :goto_1
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v1, :cond_4

    .line 211
    :try_start_5
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/faceunity/entity/Effect;->setSplitType(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 213
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
    :cond_4
    :goto_2
    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    if-eqz v0, :cond_5

    .line 217
    :try_start_7
    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/faceunity/entity/Effect;->setFilterName(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 219
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    .line 222
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_3
    return-void
.end method

.method private removeCache(Landroid/content/Context;)V
    .locals 3

    const-string p0, "effect"

    .line 42
    invoke-virtual {p1, p0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 43
    invoke-static {p0}, Lcom/transsion/camera/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result p1

    .line 44
    sget-object v0, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generateCustomEffectItem(Ljava/lang/String;)Lcom/transsion/camera/feature/funvideo/data/EffectItem;
    .locals 1

    .line 118
    new-instance p0, Lcom/faceunity/entity/Effect;

    invoke-direct {p0}, Lcom/faceunity/entity/Effect;-><init>()V

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, v0}, Lcom/faceunity/entity/Effect;->setEffectType(I)V

    const-string v0, ""

    .line 120
    invoke-virtual {p0, v0}, Lcom/faceunity/entity/Effect;->setImgUrl(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, p1}, Lcom/faceunity/entity/Effect;->setBundleName(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, v0}, Lcom/faceunity/entity/Effect;->setMusicPath(Ljava/lang/String;)V

    const-string p1, "origin"

    .line 123
    invoke-virtual {p0, p1}, Lcom/faceunity/entity/Effect;->setFilterName(Ljava/lang/String;)V

    .line 124
    new-instance p1, Lcom/transsion/camera/feature/funvideo/data/EffectItem;

    invoke-direct {p1}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;-><init>()V

    .line 125
    invoke-virtual {p0}, Lcom/faceunity/entity/Effect;->getBundleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->name:Ljava/lang/String;

    .line 126
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->setEffect(Lcom/faceunity/entity/Effect;)V

    const-string p0, "ready_to_use"

    .line 127
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->setState(Ljava/lang/String;)V

    return-object p1
.end method

.method public getBuildInEffects(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/funvideo/data/EffectItem;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 68
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->isBuildChanged(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "effect"

    if-eqz v0, :cond_1

    .line 71
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->removeCache(Landroid/content/Context;)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 73
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/utils/FileUtil;->copyAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->loadEffectsFromFolder(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDownloadEffects(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/funvideo/data/EffectItem;",
            ">;"
        }
    .end annotation

    const-string v0, "download_effect"

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 82
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->loadEffectsFromFolder(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
