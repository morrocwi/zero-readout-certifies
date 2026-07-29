FROM coqorg/coq:8.20.1

WORKDIR /workspace
COPY --chown=coq:coq . .

RUN make verify COQC=coqc

CMD ["make", "verify", "COQC=coqc"]
