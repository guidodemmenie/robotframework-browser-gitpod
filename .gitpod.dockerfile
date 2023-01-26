FROM gitpod/workspace-full

RUN pip install -r requirements.txt
RUN rfbrowser init