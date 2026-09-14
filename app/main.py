from fastapi import FastAPI

app = FastAPI(title="跨境运单会签闸门")


@app.get("/health")
def health() -> dict[str, str]:
    return {"status": "ok"}
