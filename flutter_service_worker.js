'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "2ccf75b9cea677f0eeeb9893b4ecff1c",
"version.json": "7d53c66c39ed4091d82da59bd0c79464",
"favicon.ico": "7944bf8529ae40f204431ca6c18e5feb",
"index.html": "e030c7fc1e6800f3032905a52e7efe49",
"/": "e030c7fc1e6800f3032905a52e7efe49",
"main.dart.js": "951f33e082cb44252b3f86629d845d28",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"manifest.json": "528c045103c7dc62ed6a1221518371ac",
"assets/AssetManifest.json": "ff6b01a91bd8968ab0ee3c9357c231a8",
"assets/NOTICES": "15b211d276f352df8a3e488d922bf15a",
"assets/FontManifest.json": "7886a1235ecbec7ebb38c346c48d7faa",
"assets/AssetManifest.bin.json": "ff4d57f5de7a2de835dda4508cc9204d",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "391ff5f9f24097f4f6e4406690a06243",
"assets/packages/wakelock_plus/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "26d899d3d0e3f06c034ce13cc201d6d8",
"assets/fonts/MaterialIcons-Regular.otf": "1e478c7dd88a8a58a4d47ca6dcf83cc0",
"assets/assets/images/expo2image3.jpg": "ad63490f19c0322cc27841efc19a1e0c",
"assets/assets/images/lang.png": "6f69d7273ece62012bc1f1ce264a528c",
"assets/assets/images/wholesale1.json": "286c706c80d2bf97361b6fcb36406e43",
"assets/assets/images/decentralized.png": "870f17c77b631fd504121f31f5a8f810",
"assets/assets/images/line1.png": "18d7c2a1d6b75b29a882ee07cd97fc60",
"assets/assets/images/book.lottie": "35d3e24b72de4230e1bb6450c941e60b",
"assets/assets/images/googlePlay.png": "da36f71e454f3d13fb8f777be46b5ff8",
"assets/assets/images/arsmallbuttoncontactus.png": "6b67b8134add5e08f85bc96bc00d8f2f",
"assets/assets/images/expo3image2.jpeg": "afb0917a333dc0e8d84e5e62c6b42bae",
"assets/assets/images/expo2image2.jpg": "6d4b8492689adc11b70885085a16aaf6",
"assets/assets/images/retailstore.png": "fce1fd3b9cc8696cba4b89a68b51c3a9",
"assets/assets/images/telegram.png": "4599b23c651700dcd5f84d26f46cb8ce",
"assets/assets/images/line2.png": "dbc536d04861b560faa4d7258a41875b",
"assets/assets/images/enlargebuttondemo.png": "02c325f8dd9c098496fb126b9bf3cb09",
"assets/assets/images/egyptflag.png": "11980ae9945c1c202a8ffe33d94b25d3",
"assets/assets/images/goal.png": "667e3cf937301d5b5cbdfee3c1f0eaf9",
"assets/assets/images/line3.png": "1cb19ef703529374075fee036b8512b7",
"assets/assets/images/gold2.png": "fafcb16cdc7f6f946b3fc9c74f969ba3",
"assets/assets/images/day.png": "f3fcd5e884cb1556c69fc7a917539e08",
"assets/assets/images/expo2image1.jpg": "c762cb9b53fa85395c39a0cef03b136e",
"assets/assets/images/Comp%25201.lottie": "d29b476fde7e927f14aad9502dd10d2f",
"assets/assets/images/expo2image5.jpg": "727517f5b5d21f53c834ddde4e2b0655",
"assets/assets/images/vision.png": "14108bcc83119d28df6e6a251bfb46dd",
"assets/assets/images/ennebufeatures.png": "48bc99417162a7a68948243ba1de3d2f",
"assets/assets/images/longstory.png": "e6369a9ebafdd8cefe5410e1940c66c0",
"assets/assets/images/expo2image4.jpg": "d01de0e6d3bf9fdf58ba03a60022747e",
"assets/assets/images/expo3image3.jpeg": "740d8451289ba859b95d846377588984",
"assets/assets/images/store.png": "5f107426fa1dafb29fa91917acbbace4",
"assets/assets/images/line4.png": "db6f473a623e3b32ea1c7b7411cb8c85",
"assets/assets/images/team1.jpeg": "b213cac1fd263246c663f0de89ee288c",
"assets/assets/images/instagram.png": "3d9f1020499fb8018e160818af4a541a",
"assets/assets/images/profitimage21.png": "7a918fe45ca50e433a6bc873143c3290",
"assets/assets/images/massage.png": "66e3feb79431f2b43db29f6e712f851f",
"assets/assets/images/line5.png": "aebbc30c1d5147474671e70e3c6b52dc",
"assets/assets/images/enlargebuttoncontactus.png": "4b0161c8a4d1f344dc13f7fce809ad0f",
"assets/assets/images/enopenaccount.png": "0da9a0e39e6bc673fbf3c76330b38994",
"assets/assets/images/devices.png": "d3818f2b113a2e0b416d6b49b52485e1",
"assets/assets/images/holestore.png": "9ecdad9d31b061d66af8f35fb25119de",
"assets/assets/images/eventbackground.png": "f35d26b5e4a6e035627237d29840fd52",
"assets/assets/images/arlargebuttondemo.png": "823e8705da7881e32b0f8acf5b76df1f",
"assets/assets/images/ardevices.json": "b19674a771b827fe8f4c89a5ce6d794a",
"assets/assets/images/retail.png": "0905548787a95b55ce79ee0bded9823d",
"assets/assets/images/wholesale.png": "d519dae4835666f28761627675c33248",
"assets/assets/images/arlogo.png": "81cf38fef5f7de0bfc85c65d91587fd6",
"assets/assets/images/expo3image4.jpeg": "397fa1edab328a10106b863460055cd5",
"assets/assets/images/reporticon.png": "7c6cc4f995601a4615608bfffb52333c",
"assets/assets/images/expo3image5.jpeg": "4b0827d9be04bf9456dacf2973d93d2c",
"assets/assets/images/smallstory.png": "91e48e152da460b1946d57d2fb484eca",
"assets/assets/images/pie-charticon.png": "36d93a43fa209a72696581a145959a07",
"assets/assets/images/timeicon.png": "7af82ea32a8ec36c7469a767e4d0966f",
"assets/assets/images/jewlery.png": "a56ab7a3cd6f21d314248c5d19d59d7f",
"assets/assets/images/rolles.png": "278c4d817d691b10a9281613a8e8d278",
"assets/assets/images/mobile1.png": "5956d05544a2c22dcb476769daa7602e",
"assets/assets/images/appStore.png": "0a3905ea7f51327eb2ce711a279cfdf6",
"assets/assets/images/platforms.png": "51a9ed0f688cc920e7700cad102f4d48",
"assets/assets/images/management.png": "a90caa2bf9bae52b3889f6a5f2e6fac1",
"assets/assets/images/background.png": "329ef05a9d467030a0f5cba9c8eed5fa",
"assets/assets/images/usaflag.png": "18de5f35a22632c8f14d8c985f8e718e",
"assets/assets/images/light.png": "26fed66ad456cdf8ce181a45734cbb72",
"assets/assets/images/featureimage6.png": "be3d99ed0c80c3d9892b6c3f7f03dc1b",
"assets/assets/images/productimage4.png": "0d42de11a9eb25bf33c47407af3127c1",
"assets/assets/images/diamond.json": "4e22b10112d46a84d2309a871c1bb5d2",
"assets/assets/images/powerimage6.png": "a56536ac5c3391e460a3904869f0f5a8",
"assets/assets/images/ring.png": "0ec06672439b80af31ca5661ed51744d",
"assets/assets/images/powerimage4.png": "89a062296c0e442da6776d818a833f04",
"assets/assets/images/featureimage4.png": "be3d99ed0c80c3d9892b6c3f7f03dc1b",
"assets/assets/images/clickhere.png": "003b56499a8e014aae46ae130a0af960",
"assets/assets/images/featureimage5.png": "a1a10ea65082e9e944db8cfbd6d8aa6d",
"assets/assets/images/ensmallbuttondemo.png": "e73ea331beafe55811c2fb0d23fcf5de",
"assets/assets/images/diamond2.png": "3baad7784d670da0c73d9def3feb74c7",
"assets/assets/images/powerimage5.png": "f400e6fd2ab1b7ab2bb4a1203013ee71",
"assets/assets/images/logo.png": "5831b5efc133000d7be62932b9030102",
"assets/assets/images/cloud.png": "0e9b8b06a643c63c88c0eb8f806dcc9e",
"assets/assets/images/powerimage1.png": "cc28746ef51bc52a58dbb5e88d6c0012",
"assets/assets/images/nebufeatures.png": "a73349cb23ca1d6f967bcf781730db65",
"assets/assets/images/productimage3.png": "529611504ecd15f80ea499cf7235931d",
"assets/assets/images/whatsapp.json": "5edd4abf4b02115405e75ad68ca84631",
"assets/assets/images/featureimage1.png": "c93971dcccda67452da0efec4c9bb63e",
"assets/assets/images/smalllogo.png": "7944bf8529ae40f204431ca6c18e5feb",
"assets/assets/images/youtupe.png": "2445eb1234c44a723a352bf2515b5526",
"assets/assets/images/business.jpg": "62b75b166194b1ce51e36e74293da4a8",
"assets/assets/images/video.png": "ee363f4ef2498e8f57f9e9e3bba98436",
"assets/assets/images/powerimage2.png": "f1b6acb5fa1483b5fd3667c7052a5c3a",
"assets/assets/images/mobile.png": "5956d05544a2c22dcb476769daa7602e",
"assets/assets/images/inventoryicon.png": "94e5645a5905e3bd3bbe85d005888e99",
"assets/assets/images/featureimage2.png": "f31354bc91af4acbcd35a3a7ca56c1fa",
"assets/assets/images/enmanagement.png": "6620f85e3ba838e658be1ef45209afcf",
"assets/assets/images/featureimage3.png": "c9d7d918dde42d08394d754e12e768e2",
"assets/assets/images/call.png": "3a496c86a4c579b87f96b51105a95315",
"assets/assets/images/productimage1.png": "ad8138926073ee0f9fe083321abe5b66",
"assets/assets/images/profitsicon.png": "ae3d459f2ff24ebf0fe27bbb92a6e72b",
"assets/assets/images/powerimage3.png": "c81fc8f4e3f8e172724d12aa1d64c01b",
"assets/assets/images/diamond.png": "2ce00481b24f0a2cb6ba659acd2a1097",
"assets/assets/images/qr.png": "fecfbca117e68d6fe3ad7a06b3e4a4fe",
"assets/assets/images/clickon.png": "52e19ffcfcf9db6869b3b8210bfde288",
"assets/assets/images/homeImage.png": "09f5cf296bc238d1bc52090430232bcf",
"assets/assets/images/encrypt.png": "e4841e65c9ceef98e155e31fc6d707ae",
"assets/assets/images/backgroundMobile.png": "c58f78387b46e6df3107bfdc61d87670",
"assets/assets/images/profitimage5.png": "27bdc1a53727e3a4da5382e981060eb1",
"assets/assets/images/arsmallbuttondemo.png": "2baf1d16b6b175450e994e83b444a486",
"assets/assets/images/profitimage4.png": "94b81e4a2a4ed9304b494d3585931a76",
"assets/assets/images/bag.lottie": "d29b476fde7e927f14aad9502dd10d2f",
"assets/assets/images/invoices.png": "0c9a9466ac8690e4394300cf4ddb764e",
"assets/assets/images/image4.jpg": "727517f5b5d21f53c834ddde4e2b0655",
"assets/assets/images/openaccount.png": "506a2e3524b5ef2a3f12b4bdac2f8e9a",
"assets/assets/images/profitimage6.png": "51e79c375c85f681ad67107039aca25a",
"assets/assets/images/pictures.png": "2f8acb67b90a01da91dc390509e77543",
"assets/assets/images/largestory.png": "1dc3c7938853f4dc0b1e93b950c9ac33",
"assets/assets/images/ensmallbuttoncontactus.png": "728f1344b1f8636508bc5cd96822ddb5",
"assets/assets/images/invoiceicon.png": "934224f2bb741c7c5a414743ad0a7cf6",
"assets/assets/images/facebook.png": "68146bc5c6d0fd31ebba88b84c965649",
"assets/assets/images/tawasl%2520.png": "992ac21b10a94748713d8e43c52dad5c",
"assets/assets/images/profitimage3.png": "2ea166fdd54ab4bc4e3f670be0e41529",
"assets/assets/images/arlargebuttoncontactus.png": "de39d636b119a3cd956893ca1852aa44",
"assets/assets/images/play.json": "b4335ce59efbb67ba2ec573d802fe7b0",
"assets/assets/images/story.png": "170ce1a79863afc6421114e72f895a3a",
"assets/assets/images/endevices.json": "213d781ba34ae077f61f0b862019b24f",
"assets/assets/images/retail.json": "516576b6d77246c08d86f5e9d1529a4f",
"assets/assets/images/bag.png": "5032bd02160e61d9cecce93f005e49e1",
"assets/assets/images/gold.png": "ae4ebbadfc4115b8e1e14ddded2127ca",
"assets/assets/images/profitimage1.png": "1d2b0f0a466dc3edea1dd7a26fac6e50",
"assets/assets/images/eninvoices.png": "c3010c2428d05e20c6ae9aaba00de419",
"assets/assets/images/goldbar.json": "90a6cec2fd7a9686b55298d60f964045",
"assets/assets/images/image3.jpg": "25940c364d62f489bb324612ae6c1654",
"assets/assets/images/expo3image1.jpeg": "5e74321bb8de899b3c7b2652a8344d82",
"assets/assets/fonts/NotoKufiArabic-VariableFont_wght.ttf": "c9847eca7d550d32bbe9e56ab267744b",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
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
