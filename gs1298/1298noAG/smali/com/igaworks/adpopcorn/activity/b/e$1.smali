.class Lcom/igaworks/adpopcorn/activity/b/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adpopcorn/activity/b/e;->c()Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/igaworks/adpopcorn/activity/b/e;


# direct methods
.method constructor <init>(Lcom/igaworks/adpopcorn/activity/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/igaworks/adpopcorn/activity/b/e$1;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/igaworks/adpopcorn/activity/b/e$1;->a:Lcom/igaworks/adpopcorn/activity/b/e;

    invoke-virtual {v0}, Lcom/igaworks/adpopcorn/activity/b/e;->dismiss()V

    return-void
.end method
