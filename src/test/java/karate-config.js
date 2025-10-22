function fn() {
var env = karate.env; // get system property 'karate.env'
var baseUrl = ''


if (!env) {env = 'dev';}

if (env == 'dev') {
baseUrl = 'https://serverest.dev/'


}
else if (env == 'cert') {

}

var config = {
env: env,
baseUrl: baseUrl


}

return config;
}