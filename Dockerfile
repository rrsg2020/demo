FROM qmrlab/mcrgui:v99.3.1

RUN cd $HOME; \
    git clone --single-branch -b binder_fix https://github.com/rrsg2020/demo.git;   \
    pip install --upgrade sos==0.17.7 \
                        sos-notebook==0.17.2 \
                        sos-python==0.9.12.1 \
                        sos-bash==0.12.3 \
                        sos-matlab==0.9.12.1 \
                        sos-ruby==0.9.15.0 \
                        sos-sas==0.9.12.3 \
                        sos-julia==0.9.12.1 \
                        sos-javascript==0.9.12.2 \
                        sos-r==0.9.12.2 \
                        plotly==3.10.0; \
    python -m sos_notebook.install

WORKDIR $HOME

USER $NB_UID
