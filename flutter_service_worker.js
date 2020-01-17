'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/assets/assets/fonts/Montserrat-Regular.ttf": "07689d4eaaa3d530d58826b5d7f84735",
"/assets/assets/fonts/Montserrat-Bold.ttf": "d3085f686df272f9e1a267cc69b2d24f",
"/assets/assets/images/lp_image.png": "5aad4d4216174954f5228d7d268546e8",
"/assets/LICENSE": "a17d9a6479741efe5b6b0897531a9972",
"/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "9a62a954b81a1ad45a58b9bcea89b50b",
"/assets/AssetManifest.json": "c6772928aa819ed8a8a332b108fccfdf",
"/assets/FontManifest.json": "957423d262d0760a97e6d1ba8e4280e1",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/index.html": "523e8344930597d4256b511ae9095e4b",
"/main.dart.js": "230c3e69a204822bde0684ae6a9236c5"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request, {
          credentials: 'include'
        });
      })
  );
});
