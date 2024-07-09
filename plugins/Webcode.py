from aiohttp import web

routes = web.RouteTableDef()


async def bot_run():
    app = web.Application(client_max_size=30000000)
    app.add_routes(routes)
    return app

@routes.get("/", allow_head=True)
async def root_route_handler(request):
    return web.json_response("Mo_Tech_YT")
