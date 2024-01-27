import Hummingbird

// create router
let router = HBRouter()

// add a GET / route
router.get("/") { request, _ -> String in
    "Hello"
}

// add a POST / route
router.post("/") { request, _ -> String in
    "Post"
}

// create application using router
let app = HBApplication(
    responder: router.buildResponder(),
    configuration: .init(address: .hostname("127.0.0.1", port: 8080))
)

// run hummingbird application
try await app.runService()
