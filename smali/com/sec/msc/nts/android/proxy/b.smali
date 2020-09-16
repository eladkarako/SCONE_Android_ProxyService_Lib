.class Lcom/sec/msc/nts/android/proxy/b;
.super Lcom/sec/msc/nts/android/proxy/f;


# instance fields
.field final synthetic a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;


# direct methods
.method constructor <init>(Lcom/sec/msc/nts/android/proxy/NTSCProxyService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/msc/nts/android/proxy/b;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    invoke-direct {p0}, Lcom/sec/msc/nts/android/proxy/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/b;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    sget-boolean v1, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->a(ZZ)I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/sec/msc/nts/android/proxy/b;->a:Lcom/sec/msc/nts/android/proxy/NTSCProxyService;

    invoke-virtual {v0}, Lcom/sec/msc/nts/android/proxy/NTSCProxyService;->c()I

    move-result v0

    return v0
.end method
