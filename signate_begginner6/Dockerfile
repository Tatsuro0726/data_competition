FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
	sudo \
	wget \
	vim
# ------------------------------------
# 作業ディレクトリをrootから変更
# 一般的にopt
# ------------------------------------
WORKDIR /opt
# ------------------------------------
# ■Anacondaインストール
# ①インストーラをwgetでダウンロード
# ②インストーラ起動（バッチモード, opt/anaconda3)
# ③インストーラを削除
# ④pathを通す
# ------------------------------------
RUN wget https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh && \
	sh Anaconda3-2020.11-Linux-x86_64.sh -b -p /opt/anaconda3 && \
	rm -f Anaconda3-2020.11-Linux-x86_64.sh
ENV PATH /opt/anaconda3/bin:$PATH
# -------------------------------------
# ■pythonの設定
# ①pipのupdate
# ②ディレクトリ移動
# ③デフォルトコマンド設定
# 　・--ip: 接続許可
# 　・--allow-root: root権限で実行
#　 ・--LabApp.token: パスワードのトークン設定A
# -------------------------------------
WORKDIR /work

CMD ["jupyter", "lab","--no-browser","--port=8888" ,"--ip=0.0.0.0","--allow-root" ,"--NotebookApp.token=''"]









