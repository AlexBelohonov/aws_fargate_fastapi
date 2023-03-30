from fastapi import FastAPI
from health.api import router as health_api

app = FastAPI(title="FastAPI app", docs_url="/swagger")
app.include_router(health_api)
