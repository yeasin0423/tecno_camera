.class public Lcom/vskit/arsdk/a/d;
.super Lcom/vskit/arsdk/a/c;
.source "SourceFile"


# instance fields
.field private B:I

.field private C:I

.field private D:I

.field private E:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "attribute vec4 aPosition;                                  \nattribute vec4 aTextureCoord;                              \nvarying vec2 textureCoordinate;                            \nvoid main() {                                              \n    gl_Position = aPosition;                               \n    textureCoordinate = aTextureCoord.xy;                  \n}                                                          \n"

    const-string v1, "// \u9ed8\u8ba4\u6ee4\u955c\nprecision mediump float;\nvarying vec2 textureCoordinate;\nuniform sampler2D inputTexture;\nuniform int type;\nuniform int cameraType;\nvoid main() {\n    if (type == 2){\n        bool isFirst = cameraType == 1;\n        bool flag = textureCoordinate.x<=0.5;\n        if (isFirst){\n            if (flag){\n                gl_FragColor = texture2D(inputTexture, vec2(0.75-textureCoordinate.x, 1.0-textureCoordinate.y));\n            } else {\n                gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x-0.25, textureCoordinate.y));\n            }\n        } else {\n            if (flag){\n                gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x, textureCoordinate.y));\n            } else {\n                gl_FragColor = texture2D(inputTexture, vec2(1.0-textureCoordinate.x, 1.0-textureCoordinate.y));\n            }\n        }\n    } else if (type ==3){\n        float num = 1.0/3.0;\n        if (textureCoordinate.x<=num){\n            gl_FragColor = texture2D(inputTexture, vec2(num+textureCoordinate.x, textureCoordinate.y));\n        } else if (textureCoordinate.x>=num*2.0){\n            gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x-num, textureCoordinate.y));\n        } else {\n            gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x, 1.0-textureCoordinate.y));\n        }\n    } else if (type == 9){\n        float num = 1.0/3.0;\n        if (textureCoordinate.x<=num){\n            if (textureCoordinate.y<=num){\n                gl_FragColor = texture2D(inputTexture, vec2(num+textureCoordinate.x, num+textureCoordinate.y));\n            } else if (textureCoordinate.y<=num*2.0){\n                gl_FragColor = texture2D(inputTexture, vec2(num+textureCoordinate.x, textureCoordinate.y));\n            } else {\n                gl_FragColor = texture2D(inputTexture, vec2(num+textureCoordinate.x, textureCoordinate.y-num));\n            }\n        } else if (textureCoordinate.x<=num*2.0){\n            if (textureCoordinate.y<=num){\n                gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x, num+textureCoordinate.y));\n            } else if (textureCoordinate.y<=num*2.0){\n                gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x, textureCoordinate.y));\n            } else {\n                gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x, textureCoordinate.y-num));\n            }\n        } else {\n            if (textureCoordinate.y<=num){\n                gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x-num, num+textureCoordinate.y));\n            } else if (textureCoordinate.y<=num*2.0){\n                gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x-num, textureCoordinate.y));\n            } else {\n                gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x-num, textureCoordinate.y-num));\n            }\n        }\n    } else if (type == 5){\n        bool isFirst = cameraType == 1;\n        bool flag = textureCoordinate.y<=0.5;\n        if (isFirst){\n            if (flag){\n                gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x, 1.0-textureCoordinate.y));\n            } else {\n                gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x, textureCoordinate.y));\n            }\n        } else {\n            if (flag){\n                gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x, textureCoordinate.y));\n            } else {\n                gl_FragColor = texture2D(inputTexture, vec2(textureCoordinate.x, 1.0-textureCoordinate.y));\n            }\n        }\n    }else {\n        gl_FragColor = texture2D(inputTexture, textureCoordinate);\n    }\n}"

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/vskit/arsdk/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/vskit/arsdk/a/c;->c()V

    .line 2
    iget v0, p0, Lcom/vskit/arsdk/a/c;->l:I

    const-string v1, "type"

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vskit/arsdk/a/d;->D:I

    .line 3
    iget v0, p0, Lcom/vskit/arsdk/a/c;->l:I

    const-string v1, "cameraType"

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vskit/arsdk/a/d;->E:I

    const-string p0, "splitHandler"

    .line 4
    invoke-static {p0}, Lcom/vskit/arsdk/b/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/vskit/arsdk/a/d;->C:I

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/vskit/arsdk/a/d;->B:I

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/vskit/arsdk/a/c;->f()V

    .line 2
    iget v0, p0, Lcom/vskit/arsdk/a/d;->D:I

    iget v1, p0, Lcom/vskit/arsdk/a/d;->B:I

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glUniform1i(II)V

    .line 3
    iget v0, p0, Lcom/vskit/arsdk/a/d;->E:I

    iget p0, p0, Lcom/vskit/arsdk/a/d;->C:I

    invoke-static {v0, p0}, Landroid/opengl/GLES30;->glUniform1i(II)V

    return-void
.end method
