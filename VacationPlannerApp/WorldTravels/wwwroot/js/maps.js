﻿function InitMap(locations) {
    var map = new atlas.Map('myMap', {
        center: [0, 0],
        zoom: 2,
        language: 'en-US',
        authOptions: {
            authType: 'subscriptionKey',
            subscriptionKey: 'abcdefghijklmnopqrst'
        }
    });

    map.events.add('ready', function () {
        var dataSource = new atlas.source.DataSource();
        map.sources.add(dataSource);
        
        
        if (locations && locations.length > 0) {
            locations.forEach(function (location) {
                console.log("Location:", location);

                dataSource.add(new atlas.data.Point([location.longitude, location.latitude]));
            });
        }
        var symbolLayer = new atlas.layer.SymbolLayer(dataSource, null);
        map.layers.add(symbolLayer);
    });
}
