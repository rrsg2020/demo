FROM qmrlab/mcrgui:vRRSG

RUN cd $HOME; \
    git clone --single-branch -b binder_fix https://github.com/rrsg2020/demo.git

WORKDIR $HOME

USER $NB_UID
