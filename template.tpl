___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Twenga Pixel",
  "categories": ["CONVERSIONS", "AFFILIATE_MARKETING"],
  "brand": {
    "id": "brand_dummy",
    "displayName": "Twenga",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAJ9JREFUeNpi+P//vz0Qn/xPOjgGxE6MQOI5AwODBAN54D7IgP8M5IOPKAYINx5k+PD9D14dApwsDG/r7eEGMDFQCFBcALL94vPPYPaFZ18YirbcArP7fNQYDKR4wGx9SV6wK2AuYEF3nr2SIIYtIM3YxEGAYi+MGsDAwIJLAjm6QGyi0gG5SfkJkCFNpgF3GIAGeIByJBnZ+SFIL0CAAQChM62Q0Ee53AAAAABJRU5ErkJggg\u003d\u003d"
  },
  "description": "Twenga Pixel GTM tag template",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "master_site_id",
    "displayName": "master_site_id",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      },
      {
        "type": "NUMBER"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "host",
    "displayName": "host",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      },
      {
        "type": "REGEX",
        "args": [
          "^https:\\/\\/.*\\..*\\.[a-z]*$"
        ]
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "event",
    "displayName": "event",
    "macrosInSelect": true,
    "selectItems": [
      {
        "value": "tx",
        "displayValue": "Transaction"
      },
      {
        "value": "pp",
        "displayValue": "Product"
      }
    ],
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "currency",
    "displayName": "currency",
    "macrosInSelect": true,
    "selectItems": [
      {
        "value": "EUR",
        "displayValue": "EUR"
      },
      {
        "value": "GBP",
        "displayValue": "GBP"
      },
      {
        "value": "PLN",
        "displayValue": "PLN"
      }
    ],
    "simpleValueType": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const copyFromDataLayer = require('copyFromDataLayer');
const sendPixel = require('sendPixel');
const query = require('queryPermission');
var TwgT = {
	sendRequest : function() {
    	if (!data.host || !data.event) {
        	data.gtmOnFailure();return false;
        }

    	var oTwgTConfig = {"master_site_id":data.master_site_id};
		var sFileName = '';
		var sTwgTConfig = '';
		const sHost = data.host;
    	const sEvent = data.event;
          
    	oTwgTConfig.currency = data.currency;

		//Transaction case
		if (sEvent == "tx") {
            const orderIdKey = 'twenga_order_id';
            if (query('read_data_layer', orderIdKey)) {
				oTwgTConfig.order_id = copyFromDataLayer(orderIdKey);
            }

            const itemsKey = 'twenga_items';
            if (query('read_data_layer', itemsKey)) {
				oTwgTConfig.items = copyFromDataLayer(itemsKey);
            }

            const attributionWeightKey = 'twenga_attribution_weight';
            if (query('read_data_layer', attributionWeightKey)) {
				oTwgTConfig.attribution_weight = copyFromDataLayer(attributionWeightKey);
            }

            sTwgTConfig = '{"m":"'+oTwgTConfig.master_site_id+'","o":"'+oTwgTConfig.order_id+'","c":"'+oTwgTConfig.currency+'","w":"'+oTwgTConfig.attribution_weight+'","is":[';
            var aItems = [];
            for (var index in oTwgTConfig.items) {              
				aItems.push('{"i":"'+oTwgTConfig.items[index].id+'","q":"'+oTwgTConfig.items[index].quantity+'","p":"'+oTwgTConfig.items[index].price+'"}');
            }
            sTwgTConfig += aItems.join(',')+']}';
		} 
		//Product case
		else if (sEvent == "pp") {

            const priceKey = 'twenga_price';
            if (query('read_data_layer', priceKey)) {
              oTwgTConfig.price = copyFromDataLayer(priceKey);
            }

            const refidKey = 'twenga_ref_id';
            if (query('read_data_layer', refidKey)) {
              oTwgTConfig.ref_id = copyFromDataLayer(refidKey);
            }
            sTwgTConfig = '{"m":"'+oTwgTConfig.master_site_id+'","c":"'+oTwgTConfig.currency+'","i":"'+oTwgTConfig.ref_id+'","p":"'+oTwgTConfig.price+'"}';
		} else {
            data.gtmOnFailure();
            return false;
		}

		sFileName = sEvent+'_'+sTwgTConfig+'.png';
		var url = sHost+'/t/gtm/'+sFileName;
		if (query('send_pixel', url)) {
            sendPixel(url, function(){data.gtmOnSuccess();return true;}, function(){data.gtmOnFailure();return false;});
		}
    	data.gtmOnFailure();
	}
};
TwgT.sendRequest();


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "twenga_order_id"
              },
              {
                "type": 1,
                "string": "twenga_currency"
              },
              {
                "type": 1,
                "string": "twenga_items"
              },
              {
                "type": 1,
                "string": "twenga_attribution_weight"
              },
              {
                "type": 1,
                "string": "twenga_price"
              },
              {
                "type": 1,
                "string": "twenga_ref_id"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "send_pixel",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://*.twgdns.com/t/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]
___NOTES___

Created on 25/11/2019 à 15:41:11


