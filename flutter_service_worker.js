'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "634861187cd95de4c014e030b56ce12c",
".git/config": "6a12feaa7b7066fec6d4f42a05dec775",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "7bcfbaaeb7bb848143c8d96e0bc58d25",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "1b98c58cbc4b37cfe4fb5ee6be1d8ada",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "c65c28a629d2cecc704422189b9e766c",
".git/logs/refs/heads/web-page": "27e1aeb9247b7bc64c22768d0d757eed",
".git/logs/refs/remotes/origin/web-page": "7c2690a20db20adb11fe23ae8f1d6380",
".git/objects/08/32d0db2def1613c1c45aa4fe9156a1c6b7d589": "e05df183e5eeaddf39672a2516f9c41d",
".git/objects/08/35ef5bc0bc690b3ba327b2c6fd9ebfb2a30a98": "16575eea218dd39d22e4dd7575c898ff",
".git/objects/19/7f5a513f04a036a7fce165e1ddef773bd3f7da": "5a7db25a1bb500179120ba5f79a5228f",
".git/objects/19/fcd5a36dc9bf300678c06eb7ed3ba31a006ffc": "e8b2cfd3e9142589dd262d0be18bfffa",
".git/objects/1a/1ea1826990b86219557f615248bc803f1a732b": "c0102da6426cfcee944ea242b32dafca",
".git/objects/1f/45b5bcaac804825befd9117111e700e8fcb782": "7a9d811fd6ce7c7455466153561fb479",
".git/objects/28/7dac50d3f16c12da5924bfd927e3f75a16483f": "35a63d4d34fb48ab1b209e950b3dd3a5",
".git/objects/30/aa460c25f60e8b72edb236c6afbe53f9fd55ae": "1402b0c9929808161d9ae871933b213f",
".git/objects/32/aa3cae58a7432051fc105cc91fca4d95d1d011": "4f8558ca16d04c4f28116d3292ae263d",
".git/objects/34/7c7879e14b9c8069245d06da5fa9905a719ff1": "64c2e5f56b7d1b8cbdb4b06a5ed27e29",
".git/objects/35/7ebb6313e08cf20bb251b51018472cf542c461": "fdc26fbbb3af7b3ea9a8e34070a9012f",
".git/objects/3a/7525f2996a1138fe67d2a0904bf5d214bfd22c": "ab6f2f6356cba61e57d5c10c2e18739d",
".git/objects/40/0d5b186c9951e294699e64671b9dde52c6f6a0": "f6bd3c7f9b239e8898bace6f9a7446b9",
".git/objects/44/a8b8e41b111fcf913a963e318b98e7f6976886": "5014fdb68f6b941b7c134a717a3a2bc6",
".git/objects/46/bec9dd321e58462e42a85fdaee935e2b1e3391": "f641fb999914a99a2591283a9837848e",
".git/objects/4f/db3352e319fdead512c69f369a8aff0bcabf3d": "82280a246cf56c74b76b1c68327426b4",
".git/objects/51/3c309dc7f039ea519d4436b7434dce8ea604ae": "bbcd7c4dba83fcf5f72b6a8841836e2a",
".git/objects/55/4b75eeca8f019e8ae8566fc9393c76e1a28943": "2710468dd823381178d8d07574bf5953",
".git/objects/5c/16360b5bc73ad11cb12bb9096f85f97711d5d0": "cbd2b2664ba0e2fe4452a94f46e420a7",
".git/objects/61/e75ffa2d8f86a66e7d795adf4f8f9f2efa6d84": "e1da47b3c070945054858f3a78c0a913",
".git/objects/6b/aa88725bdd05a1216b2bf2cdcb80c2c23a78df": "be77bc8e4738f69c30548d970af0ab97",
".git/objects/6b/e909fbf40b23748412f0ea89bf0fae827ed976": "5f118419157d9534688915220cc803f7",
".git/objects/7c/09d499f23e8c9cfadbd067e09e62b423cd8b4a": "4f5d6ea007527788d254cd3ceeb9b8a8",
".git/objects/7f/b617a898c10e78dd88836cd433c94e5d9c70a0": "749e9a41d6e392bd30d2fd0809336ec1",
".git/objects/82/68eb3f63342f7ecaf1ae1885c2a086523b3b60": "0244350790b5e4f944d9733425eac00f",
".git/objects/83/b5df0306692590681e84942a2f2c004c98c0cd": "3a0f1ec7f29a62eef11cb1503d50ac6e",
".git/objects/83/c24539b65c51b5bbd3d573e74d1610bcf3275d": "877b18c9a3e90132b3e498232822bab2",
".git/objects/84/0516208d35dcb4298847ab835e2ef84ada92fa": "36a4a870d8d9c1c623d8e1be329049da",
".git/objects/85/6a39233232244ba2497a38bdd13b2f0db12c82": "eef4643a9711cce94f555ae60fecd388",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/88/d347d5d9bb571877b6bc0f747ecb49d2a5790a": "d5f20902ed2b44c9ccd68fb4c5c61ce5",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/90/bcfcf0a77ab618a826db0fd8b0942963b653af": "fc109675cdf1233dd6599a4c3c0a7a69",
".git/objects/92/7e3fd4e1d02df1e27ce5a78720148cb634396a": "e0ef9c5254812f9eb31b21d65ddb79fa",
".git/objects/98/57c9b3b0448c92818efc5fda0f206b21914168": "ecbde07c564dabbec0f249821051b8af",
".git/objects/98/b8a23cd4bf392844b0973e6381ffb73d8dc81c": "1de5074ec9c4f267b4d38f824a631734",
".git/objects/98/d647c40c12c8098904726da37aecc2dca69788": "848a868a638fcfb91ccf23d29380f5bb",
".git/objects/9b/59de3cd4499ec56291dfea743069a5bd428d30": "a052c05f106377c74189bfee351da4a0",
".git/objects/ab/12b578214ccb1aa5b8234c53edd0a203b54344": "52e0637eba801fcd11ce42c7bafbe8b5",
".git/objects/b1/5ad935a6a00c2433c7fadad53602c1d0324365": "8f96f41fe1f2721c9e97d75caa004410",
".git/objects/b3/854f44f04680c37404298b64f1db48c6640672": "09b04c07f8f684d0fa521782fd26ddd8",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/ba/5317db6066f0f7cfe94eec93dc654820ce848c": "9b7629bf1180798cf66df4142eb19a4e",
".git/objects/c2/33c966ae6eb691df35d6ecb45d01c175845f9b": "01b8a4cbfa4d5d47edbd47480b19c60f",
".git/objects/ca/8482c88c44dcfdf9ead9d3726df9574ac9775c": "81cbf504c8b90bc81a07b514349a4ac5",
".git/objects/ca/f3b55c53043675cec4b366996455f99cdf1eac": "cc2862f9c2d07b289b15642a116c7043",
".git/objects/d0/23371979cf1e985205df19078051c10de0a82d": "700b71074bad7afee32068791dec7442",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d5/bb50b3c3bc534b51ba035a5e8495ba7af5025b": "81d30e6f235d2cd1960b1a0d917b3043",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/da/fd65422747502c19b5c74b4230282644d2169c": "d8a62caf99a372ff6c7692e143787ce3",
".git/objects/e4/56b2a2f2b365f175b16813dc3d5b1117f2e0da": "1c62e18af38908875644b116bc51857d",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ef/8f172d0bc9a52a59b5d4f6a96572437e0fb3cc": "e42a3be383e078980bad4d37cf03546b",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/refs/heads/web-page": "2f2cf3961b37b722ffb4df48229323f3",
".git/refs/remotes/origin/web-page": "2f2cf3961b37b722ffb4df48229323f3",
"assets/AssetManifest.bin": "d7e52a5b5142e70f7e75cbc5660e4e78",
"assets/AssetManifest.bin.json": "29b83326ce30fee3ac042da0b1326771",
"assets/AssetManifest.json": "fa473215b634f06cc630b868946846c6",
"assets/assets/fonts/Battleground.ttf": "b59428e5fb1a5586594fb8b4d127ef10",
"assets/FontManifest.json": "1d697b801f7aca1fc4b24a9106dba3c0",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/NOTICES": "18614ab5e00488a8b9eb7cfa1ee38e4e",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/text_3d/assets/images/inset.png": "188b50c26035b68380b5fcede2659692",
"assets/packages/text_3d/assets/images/insetAngle.png": "f751e046e525eb802dd39616b2092771",
"assets/packages/text_3d/assets/images/perspectiveInset.png": "2422001bb3b2a0c5aa815e92ba65ddcc",
"assets/packages/text_3d/assets/images/perspectiveLeft.png": "4d869dac9886ab777dfbf7c36b982f80",
"assets/packages/text_3d/assets/images/perspectiveRaised.png": "ce344d8dff11885a2b9af0958b9437a7",
"assets/packages/text_3d/assets/images/perspectiveRight.png": "026974b5995ca31cda713192c15b1b64",
"assets/packages/text_3d/assets/images/raised.png": "b11106c96148e40dd2fd1cb14890a727",
"assets/packages/text_3d/assets/images/standard.png": "1e8296f404d366468a08936585a26c6b",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "08391a8f50a0775c04b51142f7f05bc8",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "155f98aa7503883dc3206690fcee26e1",
"/": "155f98aa7503883dc3206690fcee26e1",
"main.dart.js": "6e52eda846cf6fc0227c2249ea9ceaa9",
"manifest.json": "e3653540279937c106d10c2f3fa0b1ba",
"version.json": "003fb3889ecfce7d63ccc77b14e66493"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
