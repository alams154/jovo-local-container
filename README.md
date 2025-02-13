# jovo-local-container
Docker container that will allow development using the Jovo framework for voice apps


**<ins>Quick Notes - Alexa</ins>**
1. Requires proxy to debugger at http://localhost:4000
2. Alexa Skill project in Alexa Developer Console endpoint must point to https://<proxy-url>/<jovo-debug-id>
3. app.dev.js requires AlexaPlatform object
4. package.json requires additional flag in scripts.bundle `--external:@alexa/*`
5. jovo.project.js requires AlexaCli object `new AlexaCli({ locales: { en: ['en-US'] } })`
