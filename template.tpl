﻿___TERMS_OF_SERVICE___

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
"categories": ["CONVERSIONS","AFFILIATE_MARKETING"],
"brand": {
"id": "twenga",
"displayName": "Twenga",
"thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEwAAABMCAIAAABI9cZ8AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAZFJREFUeNrs279LQlEUwHFfvtCWjJaGwBpqjJagRZqiP6KoraZoa3ON/gAb3YKWNiMHoSVoCBs0CcEanknQWyJbMpLogFs/zPPo5uX1PbxBrle5H+713PN4Vye2m4+EPQYi/yBAggQJEiRIkCBBggRpUbjaDywkRzfnJmfHhicSQ0ZHVm8+y/Wh8bH1unfhnd4+qL7KUd1PplPT6dRU32dmv3K3fnxpZLnKHNoglFidGZfLCFJWqT0/M9VgFMiR+KA9SEkKZNdQID8n3t9BHl379iBVu4gCmSl6Zf/JBqEMY/uk2nv/qLu40nvvbKkhW6uUAf1KQlIMHFbv13JleWGqGAgQsrsWlue7dFg6OO+sPUmYiZirrYGMlHVGFyHZFSRIkCBBggQJEiRIkCBBggQJEiRIkCBBggQJEiRIkCC7x48nGII9PLZuJjNF77u3cjU/JMids5svH5VL40a+8gcD0J3+CBat9lu21Gi+tONutHOAVHjSslW4Uh3iCBwOfy0ECRIkSJAgQYIECdKeeBdgAMdqddTmfQP5AAAAAElFTkSuQmCC"
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
"name": "masterSiteId",
"displayName": "masterSiteId",
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
},
{
"type": "TEXT",
"name": "order_id",
"displayName": "DataLayer Order Id",
"simpleValueType": true,
"help": "Datalayer variable containing the order id, for transaction events.",
"valueValidators": [
{
"type": "NON_EMPTY"
}
]
},
{
"type": "TEXT",
"name": "order_items",
"displayName": "DataLayer Items",
"simpleValueType": true,
"help": "Datalayer variable containing the order items list, for transaction events.",
"valueValidators": [
{
"type": "NON_EMPTY"
}
]
},
{
"type": "TEXT",
"name": "order_attribution_weight",
"displayName": "DataLayer order attribution weight",
"simpleValueType": true,
"help": "Datalayer variable containing the order attribution weight , for transaction events. The order attribution weight is optional."
},
{
"type": "TEXT",
"name": "item_ref_id_key",
"displayName": "DataLayer item ref id key",
"simpleValueType": true,
"help": "Key within the items list that contains the item ref id , for transaction events.",
"valueValidators": [
{
"type": "NON_EMPTY"
}
]
},
{
"type": "TEXT",
"name": "item_price_key",
"displayName": "DataLayer item price key",
"simpleValueType": true,
"help": "Key within the items list that contains the item price, for transaction events.",
"valueValidators": [
{
"type": "NON_EMPTY"
}
]
},
{
"type": "TEXT",
"name": "item_quantity_key",
"displayName": "DataLayer item quantity key",
"simpleValueType": true,
"help": "Key within the items list that contains the item quantity , for transaction events.",
"valueValidators": [
{
"type": "NON_EMPTY"
}
]
},
{
"type": "TEXT",
"name": "item_variant_id_key",
"displayName": "DataLayer item variant id key",
"simpleValueType": true,
"help": "Key within the items list that contains the item variant id, for transaction events. The variant id is optional."
},
{
"type": "TEXT",
"name": "product_price",
"displayName": "DataLayer product price",
"simpleValueType": true,
"help": "Datalayer variable containing the product price, for product display events.",
"valueValidators": [
{
"type": "NON_EMPTY"
}
]
},
{
"type": "TEXT",
"name": "product_ref_id",
"displayName": "DataLayer product ref id",
"simpleValueType": true,
"help": "Datalayer variable containing the product ref, for product display events.",
"valueValidators": [
{
"type": "NON_EMPTY"
}
]
},
{
"type": "TEXT",
"name": "product_variant_id",
"displayName": "DataLayer product variant id",
"simpleValueType": true,
"help": "Datalayer variable containing the product variant id, for product display events. The product variant id is optional."
},
{
"type": "TEXT",
"name": "country",
"displayName": "Datalayer country code",
"simpleValueType": true,
"help": "Datalayer variable containing the country code for both Product and Transaction events. The country code is optional.",
"canBeEmptyString": true
}
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const sendPixel = require('sendPixel');
const queryPermission = require('queryPermission');

var TwgT = {
sendRequest : function() {
if (!data.host || !data.event) {
data.gtmOnFailure();return false;
}

var oTwgTConfig = {"master_site_id":data.masterSiteId};
var sFileName = '';
var sTwgTConfig = '';
const sHost = data.host;
const sEvent = data.event;

//Transaction items keys
const itemrefidKey = data.item_ref_id_key;
const itemquantityKey = data.item_quantity_key;
const itemvariantidKey = data.item_variant_id_key;
const itempriceKey = data.item_price_key;

if (data.currency) {
oTwgTConfig.currency = data.currency;
} else {
oTwgTConfig.currency = 'EUR';
}

//Country code
if (data.country) {
oTwgTConfig.country = data.country;
} else {
oTwgTConfig.country = undefined;
}

//Transaction case
if (sEvent == "tx") {
//Retrieving transaction data from dataLayer
oTwgTConfig.order_id = data.order_id;
if (!oTwgTConfig.order_id) {
oTwgTConfig.order_id = undefined;
}

oTwgTConfig.items = data.order_items;
if (!oTwgTConfig.items) {
oTwgTConfig.items = [];
}

oTwgTConfig.attribution_weight = data.order_attribution_weight;
if (!oTwgTConfig.attribution_weight) {
oTwgTConfig.attribution_weight = undefined;
}

//Building Json string
sTwgTConfig = '{"m":"'+oTwgTConfig.master_site_id+'","o":"'+oTwgTConfig.order_id+'","c":"'+oTwgTConfig.currency+'","cn":"'+oTwgTConfig.country+'","w":"'+oTwgTConfig.attribution_weight+'","is":[';
        var aItems = [];
        for (var index in oTwgTConfig.items) {
          var sItemConfig = '';
          sItemConfig = '{"i":"'+oTwgTConfig.items[index][itemrefidKey]+'","q":"'+oTwgTConfig.items[index][itemquantityKey]+'"';
          if (oTwgTConfig.items[index][itemvariantidKey]) {
            sItemConfig += ',"v":"'+oTwgTConfig.items[index][itemvariantidKey]+'"';
          }
          sItemConfig += ',"p":"'+oTwgTConfig.items[index][itempriceKey]+'"}';
          aItems.push(sItemConfig);
        }
        sTwgTConfig += aItems.join(',')+']}';
}

//Product case
else if (sEvent == "pp") {
//Retrieving product data from dataLayer
oTwgTConfig.price = data.product_price;
if (!oTwgTConfig.price) {
oTwgTConfig.price = undefined;
}

oTwgTConfig.ref_id = data.product_ref_id;
if (!oTwgTConfig.ref_id) {
oTwgTConfig.ref_id = undefined;
}

oTwgTConfig.variant_id = data.product_variant_id;
if (!oTwgTConfig.variant_id) {
oTwgTConfig.variant_id = undefined;
}

//Building Json string
sTwgTConfig = '{"m":"'+oTwgTConfig.master_site_id+'","c":"'+oTwgTConfig.currency+'","cn":"'+oTwgTConfig.country+'","i":"'+oTwgTConfig.ref_id+'"';

        if (oTwgTConfig.variant_id) {
          sTwgTConfig += ',"v":"'+oTwgTConfig.variant_id+'"';
        }
        sTwgTConfig += ',"p":"'+oTwgTConfig.price+'"}';

} else {
data.gtmOnFailure();
return false;
}

//Building tracking URL
sFileName = sEvent+'_'+sTwgTConfig+'.png';
var url = sHost+'/t/gtm/'+sFileName;

if (queryPermission('send_pixel', url)) {
var bResult = sendPixel(url, function(){data.gtmOnSuccess();return true;}, function(){data.gtmOnFailure();return false;});
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
"publicId": "send_pixel",
"versionId": "1"
},
"param": [
{
"key": "allowedUrls",
"value": {
"type": 1,
"string": "any"
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


___TESTS___

scenarios:
- name: Failure No Event
code: "mock('sendPixel', function(url, onSuccess, onFailure) {\n    onSuccess();\n\
});\n\nmock('queryPermission', true);\n\n// Call runCode to run the template's\
\ code.\nrunCode({\n  event: undefined, \n  host:'https://twenga.twgdns.com',\
\ \n  masterSiteId:666,\n  order_id:123,\n  order_items:\"[{'price':10.00,'id':666666,'quantity':1}]\"\
    ,\n  order_attribution_weight:1,\n  item_ref_id_key:'id',\n  item_price_key:'price',\n\
    \  item_quantity_key:'quantity',\n  item_variant_id:0,\n  product_price:0.25,\n\
    \  product_ref_id:123,\n  product_variant_id:0\n});\n\n// Verify that the tag\
    \ finished with failure.\nassertApi('gtmOnFailure').wasCalled();"
- name: Failure - No host
code: "mock('sendPixel', function(url, onSuccess, onFailure) {\n    onSuccess();\n\
});\n\nmock('queryPermission', true);\n\n// Call runCode to run the template's\
    \ code.\nrunCode({\n  event: 'pp', \n  host:'', \n  masterSiteId:666,\n  order_id:123,\n\
\  order_items:\"[{'price':10.00,'id':666666,'quantity':1}]\",\n  order_attribution_weight:1,\n\
    \  item_ref_id_key:'id',\n  item_price_key:'price',\n  item_quantity_key:'quantity',\n\
    \  item_variant_id:0,\n  product_price:0.25,\n  product_ref_id:123,\n  product_variant_id:0\n\
    });\n\n// Verify that the tag finished with failure.\nassertApi('gtmOnFailure').wasCalled();"
- name: Failure Send Pixel error
code: "mock('sendPixel', function(url, onSuccess, onFailure) {\n    onFailure();\n\
});\n\nmock('queryPermission', true);\n\n// Call runCode to run the template's\
    \ code.\nrunCode({\n  event: 'pp', \n  host:'https://twenga.twgdns.com', \n  masterSiteId:666,\n\
\  order_id:123,\n  order_items:\"[{'price':10.00,'id':666666,'quantity':1}]\"\
    ,\n  order_attribution_weight:1,\n  item_ref_id_key:'id',\n  item_price_key:'price',\n\
    \  item_quantity_key:'quantity',\n  item_variant_id:0,\n  product_price:0.25,\n\
    \  product_ref_id:123,\n  product_variant_id:0\n});\n\n// Verify that the tag\
    \ finished with failure.\nassertApi('gtmOnFailure').wasCalled();"
- name: Product - Success
code: "mock('sendPixel', function(url, onSuccess, onFailure) {\n    onSuccess();\n\
});\n\nmock('queryPermission', true);\n\n// Call runCode to run the template's\
    \ code.\nrunCode({\n  event: 'pp', \n  host:'https://twenga.twgdns.com', \n  masterSiteId:666,\n\
\  order_id:123,\n  order_items:\"[{'price':10.00,'id':666666,'quantity':1}]\"\
    ,\n  order_attribution_weight:1,\n  item_ref_id_key:'id',\n  item_price_key:'price',\n\
    \  item_quantity_key:'quantity',\n  item_variant_id:0,\n  product_price:0.25,\n\
    \  product_ref_id:123,\n  product_variant_id:0,\n  country:'FR'\n});\n\n// Verify\
    \ that the tag finished successfully.\nassertApi('gtmOnSuccess').wasCalled();"
- name: Product - Success - Minimum params
code: "mock('sendPixel', function(url, onSuccess, onFailure) {\n    onSuccess();\n\
});\n\nmock('queryPermission', true);\n\n// Call runCode to run the template's\
    \ code.\nrunCode({\n  event: 'pp', \n  host:'https://twenga.twgdns.com', \n  masterSiteId:666,\n\
\  order_id:undefined,\n  order_items:undefined,\n  order_attribution_weight:undefined,\n\
\  item_ref_id_key:'id',\n  item_price_key:'price',\n  item_quantity_key:'quantity',\n\
\  item_variant_id:undefined,\n  product_price:undefined,\n  product_ref_id:undefined,\n\
\  product_variant_id:undefined,\n  country:undefined\n});\n\n// Verify that the\
    \ tag finished successfully.\nassertApi('gtmOnSuccess').wasCalled();"
- name: Transaction - Success
code: "mock('sendPixel', function(url, onSuccess, onFailure) {\n    onSuccess();\n\
});\n\nmock('queryPermission', true);\n\n// Call runCode to run the template's\
    \ code.\nrunCode({\n  event: 'tx', \n  host:'https://twenga.twgdns.com', \n  masterSiteId:666,\n\
\  order_id:123,\n  order_items:[{'price':10.00,'id':666666,'quantity':1,'variant_id':'123ABC'},{'price':15.99,'id':784469,'quantity':8,'variant_id':'123ABC'},{'price':15048.43,'id':13548,'quantity':2,'variant_id':'123ABC'}],\n\
\  order_attribution_weight:1,\n  item_ref_id_key:'id',\n  item_price_key:'price',\n\
\  item_quantity_key:'quantity',\n  item_variant_id:0,\n  product_price:0.25,\n\
\  product_ref_id:123,\n  product_variant_id:0\n});\n\n// Verify that the tag\
    \ finished successfully.\nassertApi('gtmOnSuccess').wasCalled();"
- name: Transaction - Success - Missing order_id
code: "mock('sendPixel', function(url, onSuccess, onFailure) {\n    onSuccess();\n\
});\n\nmock('queryPermission', true);\n\nmock('copyFromDataLayer', function(DLVar){\n\
\  if (DLVar == 'twenga_order_id') {return undefined;}\n  else if (DLVar == 'twenga_currency')\
\ {return 'EUR';}\n  else if (DLVar == 'twenga_items') {return [{'price':10.00,'id':666666,'quantity':1}];}\n\
\  else{return false;}\n});\n\n// Call runCode to run the template's code.\nrunCode({\n\
\  event: 'tx', \n  host:'https://twenga.twgdns.com', \n  masterSiteId:666,\n\
\  order_id:undefined,\n  order_items:[{'price':10.00,'id':666666,'quantity':1,'variant_id':'123ABC'},{'price':15.99,'id':784469,'quantity':8,'variant_id':'123ABC'},{'price':15048.43,'id':13548,'quantity':2,'variant_id':'123ABC'}],\n\
\  order_attribution_weight:1,\n  item_ref_id_key:'id',\n  item_price_key:'price',\n\
\  item_quantity_key:'quantity',\n  item_variant_id:0,\n  product_price:0.25,\n\
\  product_ref_id:123,\n  product_variant_id:0\n});\n\n// Verify that the tag\
    \ finished with failure.\nassertApi('gtmOnSuccess').wasCalled();"
- name: Transaction - Success - Missing Currency (Defaults to EUR)
code: "mock('sendPixel', function(url, onSuccess, onFailure) {\n    onSuccess();\n\
});\n\nmock('queryPermission', true);\n\nrunCode({\n  event: 'tx', \n  currency:\
\ undefined,\n  host:'https://twenga.twgdns.com', \n  masterSiteId:666,\n  order_id:123,\n\
\  order_items:[{'price':10.00,'id':666666,'quantity':1,'variant_id':'123ABC'},{'price':15.99,'id':784469,'quantity':8,'variant_id':'123ABC'},{'price':15048.43,'id':13548,'quantity':2,'variant_id':'123ABC'}],\n\
\  order_attribution_weight:1,\n  item_ref_id_key:'id',\n  item_price_key:'price',\n\
\  item_quantity_key:'quantity',\n  item_variant_id:0,\n  product_price:0.25,\n\
\  product_ref_id:123,\n  product_variant_id:0\n});\n\n// Verify that the tag\
    \ finished successfully.\nassertApi('gtmOnSuccess').wasCalled();"
- name: Transaction - Success - Minimum params
code: "mock('sendPixel', function(url, onSuccess, onFailure) {\n    onSuccess();\n\
});\n\nmock('queryPermission', true);\n\nrunCode({\n  event: 'tx', \n  host:'https://twenga.twgdns.com',\
\ \n  masterSiteId:undefined,\n  currency:undefined,\n  order_id:123,\n  order_items:undefined,\n\
\  order_attribution_weight:1,\n  item_ref_id_key:'id',\n  item_price_key:'price',\n\
\  item_quantity_key:'quantity',\n  item_variant_id:0,\n  product_price:0.25,\n\
\  product_ref_id:123,\n  product_variant_id:0\n});\n\n// Verify that the tag\
    \ finished successfully.\nassertApi('gtmOnSuccess').wasCalled();"
- name: Transaction - Success - Missing variant_id
code: "mock('sendPixel', function(url, onSuccess, onFailure) {\n    onSuccess();\n\
});\n\nmock('queryPermission', true);\n\nrunCode({\n  event: 'tx', \n  host:'https://twenga.twgdns.com',\
\ \n  masterSiteId:666,\n  currency:'PLN',\n  order_id:123,\n  order_items:[{'price':10.00,'id':666666,'quantity':1,'variant_id':undefined},{'price':15.99,'id':784469,'quantity':8,'variant_id':undefined},{'price':15048.43,'id':13548,'quantity':2,'variant_id':undefined}],\n\
\  order_attribution_weight:1,\n  item_ref_id_key:'id',\n  item_price_key:'price',\n\
\  item_quantity_key:'quantity',\n  item_variant_id:0,\n  product_price:0.25,\n\
\  product_ref_id:123,\n  product_variant_id:0\n});\n\n// Verify that the tag\
    \ finished successfully.\nassertApi('gtmOnSuccess').wasCalled();"


___NOTES___

Created on 21/10/2020 à 11:33:30

