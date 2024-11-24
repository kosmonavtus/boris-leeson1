from litestar import Litestar, get


@get("/")
def hello_world() -> dict[str, str]:
    """Keeping the tradition alive with hello world."""
    return {"Борис": "ты пидор!"}


app = Litestar(route_handlers=[hello_world])