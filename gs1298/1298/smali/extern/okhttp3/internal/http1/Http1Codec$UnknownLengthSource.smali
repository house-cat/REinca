.class Lextern/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;
.super Lextern/okhttp3/internal/http1/Http1Codec$AbstractSource;
.source "Http1Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnknownLengthSource"
.end annotation


# instance fields
.field private inputExhausted:Z

.field final synthetic this$0:Lextern/okhttp3/internal/http1/Http1Codec;


# direct methods
.method private constructor <init>(Lextern/okhttp3/internal/http1/Http1Codec;)V
    .locals 1

    .prologue
    .line 469
    iput-object p1, p0, Lextern/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lextern/okhttp3/internal/http1/Http1Codec$AbstractSource;-><init>(Lextern/okhttp3/internal/http1/Http1Codec;Lextern/okhttp3/internal/http1/Http1Codec$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lextern/okhttp3/internal/http1/Http1Codec;Lextern/okhttp3/internal/http1/Http1Codec$1;)V
    .locals 0
    .param p1, "x0"    # Lextern/okhttp3/internal/http1/Http1Codec;
    .param p2, "x1"    # Lextern/okhttp3/internal/http1/Http1Codec$1;

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lextern/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;-><init>(Lextern/okhttp3/internal/http1/Http1Codec;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    iget-boolean v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;->closed:Z

    if-eqz v0, :cond_0

    .line 493
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-boolean v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;->inputExhausted:Z

    if-nez v0, :cond_1

    .line 490
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lextern/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;->endOfInput(Z)V

    .line 492
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lextern/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;->closed:Z

    goto :goto_0
.end method

.method public read(Lextern/okio/Buffer;J)J
    .locals 8
    .param p1, "sink"    # Lextern/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const-wide/16 v2, -0x1

    .line 474
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-gez v4, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "byteCount < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 475
    :cond_0
    iget-boolean v4, p0, Lextern/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;->closed:Z

    if-eqz v4, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 476
    :cond_1
    iget-boolean v4, p0, Lextern/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;->inputExhausted:Z

    if-eqz v4, :cond_3

    move-wide v0, v2

    .line 484
    :cond_2
    :goto_0
    return-wide v0

    .line 478
    :cond_3
    iget-object v4, p0, Lextern/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;->this$0:Lextern/okhttp3/internal/http1/Http1Codec;

    # getter for: Lextern/okhttp3/internal/http1/Http1Codec;->source:Lextern/okio/BufferedSource;
    invoke-static {v4}, Lextern/okhttp3/internal/http1/Http1Codec;->access$600(Lextern/okhttp3/internal/http1/Http1Codec;)Lextern/okio/BufferedSource;

    move-result-object v4

    invoke-interface {v4, p1, p2, p3}, Lextern/okio/BufferedSource;->read(Lextern/okio/Buffer;J)J

    move-result-wide v0

    .line 479
    .local v0, "read":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 480
    iput-boolean v6, p0, Lextern/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;->inputExhausted:Z

    .line 481
    invoke-virtual {p0, v6}, Lextern/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;->endOfInput(Z)V

    move-wide v0, v2

    .line 482
    goto :goto_0
.end method