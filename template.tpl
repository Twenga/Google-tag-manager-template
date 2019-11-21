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
  "displayName": "Joyfully_Testing_Templates",
  "categories": ["AFFILIATE_MARKETING"],
  "brand": {
    "id": "brand_dummy",
    "displayName": ""
  },
  "description": "Joy is nice",
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
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const copyFromDataLayer = require('copyFromDataLayer');
const sendPixel = require('sendPixel');
const encodeUri = require('encodeUri');
const makeString = require('makeString');
const query = require('queryPermission');
const logToConsole = require('logToConsole');
const sha256 = require('sha256');

var TwgT = {
    sendRequest : function(oTwgTConfig) {
        var sFileName = '';
        if (oTwgTConfig) {
            const sHost = oTwgTConfig.host;
            const sEvent = oTwgTConfig.event;
            if (sHost && sEvent && oTwgTConfig.order_id) {
              
              //Old school rudimentary stringify from the depth of doom
              var sTwgTConfig = '{"host": "'+sHost+'","master_site_id": "'+oTwgTConfig.master_site_id+'","event": "'+sEvent+'","order_id": "'+oTwgTConfig.order_id+'","currency": "'+oTwgTConfig.currency+'","attribution_weight": "'+oTwgTConfig.attribution_weight+'","items": [';
              var aItems = [];
              for (var item in oTwgTConfig.items) {
                aItems.push('{"ref_id":"'+item.ref_id+'", "qty":"'+item.qty+'", "price_et":"'+item.price_et+'"}');
              }
				sTwgTConfig += aItems.join(',')+']}'; 
              
                //var sObjJsonB64 = encodeUri(sTwgTConfig); //That don't work fool!
//logToConsole(sTwgTConfig);
              sha256(sTwgTConfig, (digest)=>{
                sFileName = sEvent+'_'+digest+'.png';
                var url = sHost+'/'+sFileName;
                if (query('send_pixel', url)) {
                  sendPixel(url, function(){data.gtmOnSuccess();}, function(){data.gtmOnFailure();});
                }
              }, data.gtmOnFailure());
            }
        }
      	data.gtmOnFailure();
    },

    sendRequestGtm : function() {
        var oTwgTConfig = {};
      
        oTwgTConfig.host = data.host;
        oTwgTConfig.event = data.event;
        oTwgTConfig.master_site_id = data.master_site_id;
        
        const orderIdKey = 'order_id';
		if (query('read_data_layer', orderIdKey)) {
            oTwgTConfig.order_id = copyFromDataLayer(orderIdKey);
        }
      
      	const currencyKey = 'currency';
		if (query('read_data_layer', currencyKey)) {
            oTwgTConfig.currency = copyFromDataLayer(currencyKey);
        }
      
        const itemsKey = 'items';
		if (query('read_data_layer', itemsKey)) {
            oTwgTConfig.items = copyFromDataLayer(itemsKey);
        }
//logToConsole('life\'s too short', oTwgTConfig);
        TwgT.sendRequest(oTwgTConfig);
    }
};
TwgT.sendRequestGtm();


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
                "string": "order_id"
              },
              {
                "type": 1,
                "string": "currency"
              },
              {
                "type": 1,
                "string": "items"
              },
              {
                "type": 1,
                "string": "attribution_weight"
              },
              {
                "type": 1,
                "string": "price"
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
                "string": "https://twenga.twgdemoshop.com/t/*"
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
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Epic success
  code: |-
    mock('sendPixel', function(url, onSuccess, onFailure) {
        onSuccess();
    });

    mock('query', true);

    mock('copyFromDataLayer', function(DLVar){
      if (DLVar == 'order_id') {return 666;}
      else if (DLVar == 'currency') {return 'EUR';}
      else if (DLVar == 'items') {return [{'price_et':10.00,'ref_id':666666,'qty':1}];}
      else{return false;}
    });

    // Call runCode to run the template's code.
    runCode({event: 'tx', host:'https://twenga.twgdemoshop.com', master_site_id:666});

    // Verify that the tag finished successfully.
    assertApi('gtmOnSuccess').wasCalled();
- name: Failure Pixel error
  code: |-
    mock('sendPixel', function(url, onSuccess, onFailure) {
        onFailure();
    });

    mock('query', true);

    mock('copyFromDataLayer', function(DLVar){
      if (DLVar == 'order_id') {return 666;}
      else if (DLVar == 'currency') {return 'EUR';}
      else if (DLVar == 'items') {return [{'price_et':10.00,'ref_id':666666,'qty':1}];}
      else{return false;}
    });

    // Call runCode to run the template's code.
    runCode({event: 'tx', host:'https://twenga.twgdemoshop.com', master_site_id:666});

    // Verify that the tag finished successfully.
    assertApi('gtmOnFailure').wasCalled();
- name: Failure Datalayer missing order_id
  code: |-
    mock('sendPixel', function(url, onSuccess, onFailure) {
        onSuccess();
    });

    mock('query', true);

    mock('copyFromDataLayer', function(DLVar){
      if (DLVar == 'order_id') {return undefined;}
      else if (DLVar == 'currency') {return 'EUR';}
      else if (DLVar == 'items') {return [{'price_et':10.00,'ref_id':666666,'qty':1}];}
      else{return false;}
    });

    // Call runCode to run the template's code.
    runCode({event: 'tx', host:'https://twenga.twgdemoshop.com', master_site_id:666});

    // Verify that the tag finished successfully.
    assertApi('gtmOnFailure').wasCalled();


___NOTES___

Created on 19/11/2019 à 16:06:59


