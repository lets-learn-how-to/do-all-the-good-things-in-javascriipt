const child_process = require('child_process');
const axios = require('axios');

let server;

beforeAll((done) => {
    server = child_process.spawn('node', ['server']);

    server.stdout.on('data', (data) => {
        if (data.toString().match(/Listening on: [0-9]+/)) {
            done();
        }
    });
});

afterAll(() => {
    server.kill();
});

describe('server.js', () => {
    describe('/healthcheck route', () => {
        it('responds with a 200', async () => {
            let response = await axios.get('http://localhost:8008/healthcheck');
            expect(response.status).toBe(200);
        });
    });
});

