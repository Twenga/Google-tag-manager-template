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
    "name": "order_id_key",
    "displayName": "DataLayer Order Id key",
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
    "name": "order_items_key",
    "displayName": "DataLayer Items key",
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
    "name": "order_attribution_weight_key",
    "displayName": "DataLayer order attribution weight key",
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
    "name": "product_price_key",
    "displayName": "DataLayer product price key",
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
    "name": "product_ref_id_key",
    "displayName": "DataLayer product ref id key",
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
    "name": "product_variant_id_key",
    "displayName": "DataLayer product variant id key",
    "simpleValueType": true,
    "help": "Datalayer variable containing the product variant id, for product display events. The product variant id is optional."
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const copyFromDataLayer = require('copyFromDataLayer');
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
      
      //Transaction data keys
      const orderIdKey = data.order_id_key;
      const itemsKey = data.order_items_key;
      const attributionWeightKey = data.order_attribution_weight_key;
      
	//Transaction items keys
	const itemrefidKey = data.item_ref_id_key;
    const itemquantityKey = data.item_quantity_key;
    const itemvariantidKey = data.item_variant_id_key;
	const itempriceKey = data.item_price_key;

	//Product data keys
	const refidKey = data.product_ref_id_key;
	const priceKey = data.product_price_key;
	const variantidKey = data.product_variant_id_key;

      if (data.currency) {
        oTwgTConfig.currency = data.currency;
      } else {
        oTwgTConfig.currency = 'EUR';
      }
        
      //Transaction case
      if (sEvent == "tx") {
        //Retrieving transaction data from dataLayer
        if (queryPermission('read_data_layer', orderIdKey)) {
          oTwgTConfig.order_id = copyFromDataLayer(orderIdKey);
          if (!oTwgTConfig.order_id) {
          	oTwgTConfig.order_id = undefined;
          }
        }
        
        if (queryPermission('read_data_layer', itemsKey)) {
          oTwgTConfig.items = copyFromDataLayer(itemsKey);
          if (!oTwgTConfig.items) {
          	oTwgTConfig.items = [];
          }
        }
        if (queryPermission('read_data_layer', attributionWeightKey)) {
          oTwgTConfig.attribution_weight = copyFromDataLayer(attributionWeightKey);
          if (!oTwgTConfig.attribution_weight) {
          	oTwgTConfig.attribution_weight = undefined;
          }
        }

        //Building Json string
        sTwgTConfig = '{"m":"'+oTwgTConfig.master_site_id+'","o":"'+oTwgTConfig.order_id+'","c":"'+oTwgTConfig.currency+'","w":"'+oTwgTConfig.attribution_weight+'","is":[';
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
        if (queryPermission('read_data_layer', priceKey)) {
          oTwgTConfig.price = copyFromDataLayer(priceKey);
          if (!oTwgTConfig.price) {
          	oTwgTConfig.price = undefined;
          }
        }

        if (queryPermission('read_data_layer', refidKey)) {
          oTwgTConfig.ref_id = copyFromDataLayer(refidKey);
          if (!oTwgTConfig.ref_id) {
          	oTwgTConfig.ref_id = undefined;
          }
        }
        
        if (queryPermission('read_data_layer', variantidKey)) {
          oTwgTConfig.variant_id = copyFromDataLayer(variantidKey);
          if (!oTwgTConfig.variant_id) {
          	oTwgTConfig.variant_id = undefined;
          }
        }

        //Building Json string
        sTwgTConfig = '{"m":"'+oTwgTConfig.master_site_id+'","c":"'+oTwgTConfig.currency+'","i":"'+oTwgTConfig.ref_id+'"';

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
        "publicId": "read_data_layer",
        "versionId": "1"
      },
      "param": []
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
                "string": "https://*.twgdns.com/"
              },
              {
                "type": 1,
                "string": "https://*.11teamsports.com/"
              },
              {
                "type": 1,
                "string": "https://*.24mx.de/"
              },
              {
                "type": 1,
                "string": "https://*.3suisses.fr/"
              },
              {
                "type": 1,
                "string": "https://*.99nails.de/"
              },
              {
                "type": 1,
                "string": "https://*.aboutyou.de/"
              },
              {
                "type": 1,
                "string": "https://*.adidas.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.adidas.de/"
              },
              {
                "type": 1,
                "string": "https://*.adidas.es/"
              },
              {
                "type": 1,
                "string": "https://*.adidas.fr/"
              },
              {
                "type": 1,
                "string": "https://*.adidas.it/"
              },
              {
                "type": 1,
                "string": "https://*.afbshop.de/"
              },
              {
                "type": 1,
                "string": "https://*.agrieuro.com/"
              },
              {
                "type": 1,
                "string": "https://*.airydress.com/"
              },
              {
                "type": 1,
                "string": "https://*.akkushop.de/"
              },
              {
                "type": 1,
                "string": "https://*.aktivshop.de/"
              },
              {
                "type": 1,
                "string": "https://*.aktivwelt.de/"
              },
              {
                "type": 1,
                "string": "https://*.aldi.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.alicesgarden.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.alicesgarden.fr/"
              },
              {
                "type": 1,
                "string": "https://*.aliexpress.com/"
              },
              {
                "type": 1,
                "string": "https://*.alinea.com/"
              },
              {
                "type": 1,
                "string": "https://*.allegro.pl/"
              },
              {
                "type": 1,
                "string": "https://*.allobebe.fr/"
              },
              {
                "type": 1,
                "string": "https://*.allroundfun.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.alternate.de/"
              },
              {
                "type": 1,
                "string": "https://*.amara.com/"
              },
              {
                "type": 1,
                "string": "https://*.amazon.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.amazon.de/"
              },
              {
                "type": 1,
                "string": "https://*.amazon.es/"
              },
              {
                "type": 1,
                "string": "https://*.amazon.fr/"
              },
              {
                "type": 1,
                "string": "https://*.amazon.it/"
              },
              {
                "type": 1,
                "string": "https://*.ambiendo.de/"
              },
              {
                "type": 1,
                "string": "https://*.ambientedirect.com/"
              },
              {
                "type": 1,
                "string": "https://*.animalhouseshop.de/"
              },
              {
                "type": 1,
                "string": "https://*.anthropologie.com/"
              },
              {
                "type": 1,
                "string": "https://*.antler.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.ao.com/"
              },
              {
                "type": 1,
                "string": "https://*.ao.de/"
              },
              {
                "type": 1,
                "string": "https://*.aosom.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.aosom.de/"
              },
              {
                "type": 1,
                "string": "https://*.aosom.es/"
              },
              {
                "type": 1,
                "string": "https://*.aosom.fr/"
              },
              {
                "type": 1,
                "string": "https://*.aosom.it/"
              },
              {
                "type": 1,
                "string": "https://*.apollo.de/"
              },
              {
                "type": 1,
                "string": "https://*.appliancesdirect.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.argos.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.arktis.de/"
              },
              {
                "type": 1,
                "string": "https://*.artelia.de/"
              },
              {
                "type": 1,
                "string": "https://*.arts-outdoors.de/"
              },
              {
                "type": 1,
                "string": "https://*.asgoodasnew.de/"
              },
              {
                "type": 1,
                "string": "https://*.asics.com/"
              },
              {
                "type": 1,
                "string": "https://*.asos.com/"
              },
              {
                "type": 1,
                "string": "https://*.asos.de/"
              },
              {
                "type": 1,
                "string": "https://*.asos.fr/"
              },
              {
                "type": 1,
                "string": "https://*.atu.de/"
              },
              {
                "type": 1,
                "string": "https://*.auchan.fr/"
              },
              {
                "type": 1,
                "string": "https://*.auer-packaging.com/"
              },
              {
                "type": 1,
                "string": "https://*.auna.de/"
              },
              {
                "type": 1,
                "string": "https://*.ausilium.it/"
              },
              {
                "type": 1,
                "string": "https://*.autobatterienbilliger.de/"
              },
              {
                "type": 1,
                "string": "https://*.avandeo.de/"
              },
              {
                "type": 1,
                "string": "https://*.avocadostore.de/"
              },
              {
                "type": 1,
                "string": "https://*.aw-lab.com/"
              },
              {
                "type": 1,
                "string": "https://*.b2computer.de/"
              },
              {
                "type": 1,
                "string": "https://*.baby-sweets.de/"
              },
              {
                "type": 1,
                "string": "https://*.baby-walz.de/"
              },
              {
                "type": 1,
                "string": "https://*.babyfootvintage.com/"
              },
              {
                "type": 1,
                "string": "https://*.babymarkt.de/"
              },
              {
                "type": 1,
                "string": "https://*.backmarket.de/"
              },
              {
                "type": 1,
                "string": "https://*.backmarket.es/"
              },
              {
                "type": 1,
                "string": "https://*.backmarket.fr/"
              },
              {
                "type": 1,
                "string": "https://*.backmarket.it/"
              },
              {
                "type": 1,
                "string": "https://*.badspiegel.org/"
              },
              {
                "type": 1,
                "string": "https://*.baidani.de/"
              },
              {
                "type": 1,
                "string": "https://*.bandel-online.de/"
              },
              {
                "type": 1,
                "string": "https://*.bandwerk.com/"
              },
              {
                "type": 1,
                "string": "https://*.banemo.de/"
              },
              {
                "type": 1,
                "string": "https://*.banggood.com/"
              },
              {
                "type": 1,
                "string": "https://*.barstuff.de/"
              },
              {
                "type": 1,
                "string": "https://*.basteln-de.buttinette.com/"
              },
              {
                "type": 1,
                "string": "https://*.batterie24.de/"
              },
              {
                "type": 1,
                "string": "https://*.bauhaus.es/"
              },
              {
                "type": 1,
                "string": "https://*.bauhaus.info/"
              },
              {
                "type": 1,
                "string": "https://*.baur.de/"
              },
              {
                "type": 1,
                "string": "https://*.baywa-baustoffe.de/"
              },
              {
                "type": 1,
                "string": "https://*.bcetablesports.com/"
              },
              {
                "type": 1,
                "string": "https://*.beautifulhalo.com/"
              },
              {
                "type": 1,
                "string": "https://*.beautywelt.de/"
              },
              {
                "type": 1,
                "string": "https://*.becquet.fr/"
              },
              {
                "type": 1,
                "string": "https://*.beleuchtungdirekt.de/"
              },
              {
                "type": 1,
                "string": "https://*.beliani.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.beliani.de/"
              },
              {
                "type": 1,
                "string": "https://*.beliani.es/"
              },
              {
                "type": 1,
                "string": "https://*.beliani.fr/"
              },
              {
                "type": 1,
                "string": "https://*.beliani.it/"
              },
              {
                "type": 1,
                "string": "https://*.benuta.de/"
              },
              {
                "type": 1,
                "string": "https://*.benz24.de/"
              },
              {
                "type": 1,
                "string": "https://*.bergfreunde.de/"
              },
              {
                "type": 1,
                "string": "https://*.bernstein-badshop.com/"
              },
              {
                "type": 1,
                "string": "https://*.bernstein-badshop.de/"
              },
              {
                "type": 1,
                "string": "https://*.bestdeals.today/"
              },
              {
                "type": 1,
                "string": "https://*.betten.de/"
              },
              {
                "type": 1,
                "string": "https://*.betterwalls.de/"
              },
              {
                "type": 1,
                "string": "https://*.bettwaren-shop.de/"
              },
              {
                "type": 1,
                "string": "https://*.bhv.fr/"
              },
              {
                "type": 1,
                "string": "https://*.bigbathroomshop.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.bike-angebot.de/"
              },
              {
                "type": 1,
                "string": "https://*.bike24.de/"
              },
              {
                "type": 1,
                "string": "https://*.bilderwelten.de/"
              },
              {
                "type": 1,
                "string": "https://*.bimago.de/"
              },
              {
                "type": 1,
                "string": "https://*.biosolex.com/"
              },
              {
                "type": 1,
                "string": "https://*.birkenstock.com/"
              },
              {
                "type": 1,
                "string": "https://*.bitiba.de/"
              },
              {
                "type": 1,
                "string": "https://*.blancheporte.fr/"
              },
              {
                "type": 1,
                "string": "https://*.blitzhandel24.de/"
              },
              {
                "type": 1,
                "string": "https://*.blue-tomato.com/"
              },
              {
                "type": 1,
                "string": "https://*.blumfeldt.de/"
              },
              {
                "type": 1,
                "string": "https://*.bobbinbikes.com/"
              },
              {
                "type": 1,
                "string": "https://*.bol.com/"
              },
              {
                "type": 1,
                "string": "https://*.boni-shop24.de/"
              },
              {
                "type": 1,
                "string": "https://*.bonmarche.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.bonprix.de/"
              },
              {
                "type": 1,
                "string": "https://*.bonprix.fr/"
              },
              {
                "type": 1,
                "string": "https://*.bonprix.it/"
              },
              {
                "type": 1,
                "string": "https://*.boohoo.com/"
              },
              {
                "type": 1,
                "string": "https://*.boomboomgadgets.de/"
              },
              {
                "type": 1,
                "string": "https://*.boots.com/"
              },
              {
                "type": 1,
                "string": "https://*.boozt.com/"
              },
              {
                "type": 1,
                "string": "https://*.boulanger.com/"
              },
              {
                "type": 1,
                "string": "https://*.bouyguestelecom.fr/"
              },
              {
                "type": 1,
                "string": "https://*.bradford.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.brands4friends.de/"
              },
              {
                "type": 1,
                "string": "https://*.breuninger.com/"
              },
              {
                "type": 1,
                "string": "https://*.bricoman.fr/"
              },
              {
                "type": 1,
                "string": "https://*.bricoprive.com/"
              },
              {
                "type": 1,
                "string": "https://*.bricozor.com/"
              },
              {
                "type": 1,
                "string": "https://*.brogle.de/"
              },
              {
                "type": 1,
                "string": "https://*.bruneau.fr/"
              },
              {
                "type": 1,
                "string": "https://*.bstn.com/"
              },
              {
                "type": 1,
                "string": "https://*.buecher.de/"
              },
              {
                "type": 1,
                "string": "https://*.bueromarkt-ag.de/"
              },
              {
                "type": 1,
                "string": "https://*.bueroshop24.de/"
              },
              {
                "type": 1,
                "string": "https://*.buerostuhl24.com/"
              },
              {
                "type": 1,
                "string": "https://*.burgia-sauerland.de/"
              },
              {
                "type": 1,
                "string": "https://*.business.currys.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.c-and-a.com/"
              },
              {
                "type": 1,
                "string": "https://*.cairo.de/"
              },
              {
                "type": 1,
                "string": "https://*.caliroots.fr/"
              },
              {
                "type": 1,
                "string": "https://*.camaieu.fr/"
              },
              {
                "type": 1,
                "string": "https://*.camif.fr/"
              },
              {
                "type": 1,
                "string": "https://*.canon.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.canon.de/"
              },
              {
                "type": 1,
                "string": "https://*.canon.es/"
              },
              {
                "type": 1,
                "string": "https://*.canon.fr/"
              },
              {
                "type": 1,
                "string": "https://*.canon.it/"
              },
              {
                "type": 1,
                "string": "https://*.canon.nl/"
              },
              {
                "type": 1,
                "string": "https://*.carpar.de/"
              },
              {
                "type": 1,
                "string": "https://*.carpetvista.de/"
              },
              {
                "type": 1,
                "string": "https://*.carphonewarehouse.com/"
              },
              {
                "type": 1,
                "string": "https://*.carrefour.es/"
              },
              {
                "type": 1,
                "string": "https://*.carrefour.fr/"
              },
              {
                "type": 1,
                "string": "https://*.casa.de/"
              },
              {
                "type": 1,
                "string": "https://*.casalsport.com/"
              },
              {
                "type": 1,
                "string": "https://*.casando.de/"
              },
              {
                "type": 1,
                "string": "https://*.caseable.com/"
              },
              {
                "type": 1,
                "string": "https://*.casehappy.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.castorama.fr/"
              },
              {
                "type": 1,
                "string": "https://*.catch.app/"
              },
              {
                "type": 1,
                "string": "https://*.cathkidston.com/"
              },
              {
                "type": 1,
                "string": "https://*.cdiscount.com/"
              },
              {
                "type": 1,
                "string": "https://*.cecil.de/"
              },
              {
                "type": 1,
                "string": "https://*.cellularishop.com/"
              },
              {
                "type": 1,
                "string": "https://*.ceramicstore.eu/"
              },
              {
                "type": 1,
                "string": "https://*.certideal.com/"
              },
              {
                "type": 1,
                "string": "https://*.certideal.es/"
              },
              {
                "type": 1,
                "string": "https://*.cewe.de/"
              },
              {
                "type": 1,
                "string": "https://*.chausport.com/"
              },
              {
                "type": 1,
                "string": "https://*.chaussures.fr/"
              },
              {
                "type": 1,
                "string": "https://*.childrensalon.com/"
              },
              {
                "type": 1,
                "string": "https://*.chilternoakfurniture.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.chloedesign.fr/"
              },
              {
                "type": 1,
                "string": "https://*.christ.de/"
              },
              {
                "type": 1,
                "string": "https://*.cisalfasport.it/"
              },
              {
                "type": 1,
                "string": "https://*.citadium.com/"
              },
              {
                "type": 1,
                "string": "https://*.clasohlson.com/"
              },
              {
                "type": 1,
                "string": "https://*.cleor.com/"
              },
              {
                "type": 1,
                "string": "https://*.clevertronic.de/"
              },
              {
                "type": 1,
                "string": "https://*.click-licht.de/"
              },
              {
                "type": 1,
                "string": "https://*.cnouch.de/"
              },
              {
                "type": 1,
                "string": "https://*.cobra.fr/"
              },
              {
                "type": 1,
                "string": "https://*.cocopanda.de/"
              },
              {
                "type": 1,
                "string": "https://*.coffeefair.de/"
              },
              {
                "type": 1,
                "string": "https://*.completecareshop.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.computeruniverse.net/"
              },
              {
                "type": 1,
                "string": "https://*.conforama.es/"
              },
              {
                "type": 1,
                "string": "https://*.conforama.fr/"
              },
              {
                "type": 1,
                "string": "https://*.connox.de/"
              },
              {
                "type": 1,
                "string": "https://*.conrad.de/"
              },
              {
                "type": 1,
                "string": "https://*.conrad.fr/"
              },
              {
                "type": 1,
                "string": "https://*.conrad.it/"
              },
              {
                "type": 1,
                "string": "https://*.conrad.nl/"
              },
              {
                "type": 1,
                "string": "https://*.conrad.pl/"
              },
              {
                "type": 1,
                "string": "https://*.contorion.de/"
              },
              {
                "type": 1,
                "string": "https://*.converse.com/"
              },
              {
                "type": 1,
                "string": "https://*.coolblue.nl/"
              },
              {
                "type": 1,
                "string": "https://*.corolle.com/"
              },
              {
                "type": 1,
                "string": "https://*.costomovil.es/"
              },
              {
                "type": 1,
                "string": "https://*.cotswoldco.com/"
              },
              {
                "type": 1,
                "string": "https://*.courir.com/"
              },
              {
                "type": 1,
                "string": "https://*.crazypricebeds.com/"
              },
              {
                "type": 1,
                "string": "https://*.creavea.com/"
              },
              {
                "type": 1,
                "string": "https://*.csl-computer.com/"
              },
              {
                "type": 1,
                "string": "https://*.cultfurniture.fr/"
              },
              {
                "type": 1,
                "string": "https://*.cupshe.com/"
              },
              {
                "type": 1,
                "string": "https://*.currys.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.cyberport.de/"
              },
              {
                "type": 1,
                "string": "https://*.d-c-fix.com/"
              },
              {
                "type": 1,
                "string": "https://*.daenischesbettenlager.de/"
              },
              {
                "type": 1,
                "string": "https://*.dafy-moto.com/"
              },
              {
                "type": 1,
                "string": "https://*.dancovershop.com/"
              },
              {
                "type": 1,
                "string": "https://*.danetti.com/"
              },
              {
                "type": 1,
                "string": "https://*.danielwellington.com/"
              },
              {
                "type": 1,
                "string": "https://*.darty.com/"
              },
              {
                "type": 1,
                "string": "https://*.de-store.acer.com/"
              },
              {
                "type": 1,
                "string": "https://*.debenhams.com/"
              },
              {
                "type": 1,
                "string": "https://*.debijenkorf.de/"
              },
              {
                "type": 1,
                "string": "https://*.decathlon.de/"
              },
              {
                "type": 1,
                "string": "https://*.decathlon.es/"
              },
              {
                "type": 1,
                "string": "https://*.decathlon.fr/"
              },
              {
                "type": 1,
                "string": "https://*.decathlon.it/"
              },
              {
                "type": 1,
                "string": "https://*.decoinparis.com/"
              },
              {
                "type": 1,
                "string": "https://*.def-shop.com/"
              },
              {
                "type": 1,
                "string": "https://*.def-shop.fr/"
              },
              {
                "type": 1,
                "string": "https://*.deghishop.it/"
              },
              {
                "type": 1,
                "string": "https://*.deguisetoi.fr/"
              },
              {
                "type": 1,
                "string": "https://*.dehner.de/"
              },
              {
                "type": 1,
                "string": "https://*.deichmann.com/"
              },
              {
                "type": 1,
                "string": "https://*.deichmann.com/"
              },
              {
                "type": 1,
                "string": "https://*.deindesign.de/"
              },
              {
                "type": 1,
                "string": "https://*.dell.com/"
              },
              {
                "type": 1,
                "string": "https://*.deporvillage.com/"
              },
              {
                "type": 1,
                "string": "https://*.depot-online.com/"
              },
              {
                "type": 1,
                "string": "https://*.desenio.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.design-bestseller.de/"
              },
              {
                "type": 1,
                "string": "https://*.designbaeder.com/"
              },
              {
                "type": 1,
                "string": "https://*.destock-sport-et-mode.com/"
              },
              {
                "type": 1,
                "string": "https://*.deubaxxl.de/"
              },
              {
                "type": 1,
                "string": "https://*.devred.com/"
              },
              {
                "type": 1,
                "string": "https://*.direct.asda.com/"
              },
              {
                "type": 1,
                "string": "https://*.diy.com/"
              },
              {
                "type": 1,
                "string": "https://*.docmorris.de/"
              },
              {
                "type": 1,
                "string": "https://*.dooerssneakers.com/"
              },
              {
                "type": 1,
                "string": "https://*.doorout.com/"
              },
              {
                "type": 1,
                "string": "https://*.douglas.de/"
              },
              {
                "type": 1,
                "string": "https://*.douglas.es/"
              },
              {
                "type": 1,
                "string": "https://*.downloadkeys.de/"
              },
              {
                "type": 1,
                "string": "https://*.dreams.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.dress-for-less.de/"
              },
              {
                "type": 1,
                "string": "https://*.dressinn.com/"
              },
              {
                "type": 1,
                "string": "https://*.druckerzubehoer.de/"
              },
              {
                "type": 1,
                "string": "https://*.dunelm.com/"
              },
              {
                "type": 1,
                "string": "https://*.duschmeister.de/"
              },
              {
                "type": 1,
                "string": "https://*.duzzle.it/"
              },
              {
                "type": 1,
                "string": "https://*.dwell.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.eastpak.com/"
              },
              {
                "type": 1,
                "string": "https://*.eastwest-trading.de/"
              },
              {
                "type": 1,
                "string": "https://*.easycosmetic.de/"
              },
              {
                "type": 1,
                "string": "https://*.easymeubles.fr/"
              },
              {
                "type": 1,
                "string": "https://*.easymoebel-shop.de/"
              },
              {
                "type": 1,
                "string": "https://*.ebay.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.ebay.com/"
              },
              {
                "type": 1,
                "string": "https://*.ebay.de/"
              },
              {
                "type": 1,
                "string": "https://*.ebay.es/"
              },
              {
                "type": 1,
                "string": "https://*.ebay.fr/"
              },
              {
                "type": 1,
                "string": "https://*.ebay.it/"
              },
              {
                "type": 1,
                "string": "https://*.edelstahl-tuerklingel.de/"
              },
              {
                "type": 1,
                "string": "https://*.efectoled.com/"
              },
              {
                "type": 1,
                "string": "https://*.elcorteingles.es/"
              },
              {
                "type": 1,
                "string": "https://*.electrocosto.com/"
              },
              {
                "type": 1,
                "string": "https://*.electrodepot.fr/"
              },
              {
                "type": 1,
                "string": "https://*.electronicworld.es/"
              },
              {
                "type": 1,
                "string": "https://*.electrotres.com/"
              },
              {
                "type": 1,
                "string": "https://*.eleganteinrichten.de/"
              },
              {
                "type": 1,
                "string": "https://*.elektro-wandelt.de/"
              },
              {
                "type": 1,
                "string": "https://*.ella-juwelen.de/"
              },
              {
                "type": 1,
                "string": "https://*.elv.com/"
              },
              {
                "type": 1,
                "string": "https://*.emero.de/"
              },
              {
                "type": 1,
                "string": "https://*.eminza.com/"
              },
              {
                "type": 1,
                "string": "https://*.eminza.de/"
              },
              {
                "type": 1,
                "string": "https://*.eminza.it/"
              },
              {
                "type": 1,
                "string": "https://*.emma-matratze.de/"
              },
              {
                "type": 1,
                "string": "https://*.emob-meubles.fr/"
              },
              {
                "type": 1,
                "string": "https://*.emotion-24.de/"
              },
              {
                "type": 1,
                "string": "https://*.emp.de/"
              },
              {
                "type": 1,
                "string": "https://*.en-uk.ring.com/"
              },
              {
                "type": 1,
                "string": "https://*.engelhorn.de/"
              },
              {
                "type": 1,
                "string": "https://*.epicstuff.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.eprice.it/"
              },
              {
                "type": 1,
                "string": "https://*.eram.fr/"
              },
              {
                "type": 1,
                "string": "https://*.ernstings-family.de/"
              },
              {
                "type": 1,
                "string": "https://*.ersatzteileshop.de/"
              },
              {
                "type": 1,
                "string": "https://*.erwinmueller.com/"
              },
              {
                "type": 1,
                "string": "https://*.erzgebirge-palast.de/"
              },
              {
                "type": 1,
                "string": "https://*.escarpe.it/"
              },
              {
                "type": 1,
                "string": "https://*.eschuhe.de/"
              },
              {
                "type": 1,
                "string": "https://*.esdownload.de/"
              },
              {
                "type": 1,
                "string": "https://*.espace-des-marques.com/"
              },
              {
                "type": 1,
                "string": "https://*.esprit.com/"
              },
              {
                "type": 1,
                "string": "https://*.estarta-computer.de/"
              },
              {
                "type": 1,
                "string": "https://*.etam.com/"
              },
              {
                "type": 1,
                "string": "https://*.etsy.com/"
              },
              {
                "type": 1,
                "string": "https://*.etuo.de/"
              },
              {
                "type": 1,
                "string": "https://*.eurekaelectrodomesticos.es/"
              },
              {
                "type": 1,
                "string": "https://*.euronics.de/"
              },
              {
                "type": 1,
                "string": "https://*.euronics.it/"
              },
              {
                "type": 1,
                "string": "https://*.europhones.de/"
              },
              {
                "type": 1,
                "string": "https://*.eustore.ifixit.com/"
              },
              {
                "type": 1,
                "string": "https://*.evanscycles.com/"
              },
              {
                "type": 1,
                "string": "https://*.expert.de/"
              },
              {
                "type": 1,
                "string": "https://*.expondo.de/"
              },
              {
                "type": 1,
                "string": "https://*.f.bettwaren-shop.de/"
              },
              {
                "type": 1,
                "string": "https://*.fahrrad-xxl.de/"
              },
              {
                "type": 1,
                "string": "https://*.fahrrad.de/"
              },
              {
                "type": 1,
                "string": "https://*.farfetch.com/"
              },
              {
                "type": 1,
                "string": "https://*.farnell.com/"
              },
              {
                "type": 1,
                "string": "https://*.fc-moto.de/"
              },
              {
                "type": 1,
                "string": "https://*.fietsenwinkel.nl/"
              },
              {
                "type": 1,
                "string": "https://*.fishpools.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.fixxoo.com/"
              },
              {
                "type": 1,
                "string": "https://*.flaconi.de/"
              },
              {
                "type": 1,
                "string": "https://*.floordirekt.de/"
              },
              {
                "type": 1,
                "string": "https://*.floryday.com/"
              },
              {
                "type": 1,
                "string": "https://*.floryday.net/"
              },
              {
                "type": 1,
                "string": "https://*.fluxcenter.quincaillerie.pro/"
              },
              {
                "type": 1,
                "string": "https://*.fnac.com/"
              },
              {
                "type": 1,
                "string": "https://*.fnac.es/"
              },
              {
                "type": 1,
                "string": "https://*.fnac.it/"
              },
              {
                "type": 1,
                "string": "https://*.footdistrict.com/"
              },
              {
                "type": 1,
                "string": "https://*.footlocker.de/"
              },
              {
                "type": 1,
                "string": "https://*.footlocker.es/"
              },
              {
                "type": 1,
                "string": "https://*.footlocker.fr/"
              },
              {
                "type": 1,
                "string": "https://*.footlocker.it/"
              },
              {
                "type": 1,
                "string": "https://*.footshop.fr/"
              },
              {
                "type": 1,
                "string": "https://*.footway.de/"
              },
              {
                "type": 1,
                "string": "https://*.footway.fr/"
              },
              {
                "type": 1,
                "string": "https://*.forumsport.com/"
              },
              {
                "type": 1,
                "string": "https://*.fossil.com/"
              },
              {
                "type": 1,
                "string": "https://*.fototapeten24.net/"
              },
              {
                "type": 1,
                "string": "https://*.found4you.de/"
              },
              {
                "type": 1,
                "string": "https://*.fresh-pool.de/"
              },
              {
                "type": 1,
                "string": "https://*.fressnapf.de/"
              },
              {
                "type": 1,
                "string": "https://*.friesenbank-shop.de/"
              },
              {
                "type": 1,
                "string": "https://*.fritz-berger.de/"
              },
              {
                "type": 1,
                "string": "https://*.fruugo.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.fruugo.de/"
              },
              {
                "type": 1,
                "string": "https://*.fruugo.fr/"
              },
              {
                "type": 1,
                "string": "https://*.furniture-work.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.furniture123.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.furniturechoice.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.furniturevillage.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.g-star.com/"
              },
              {
                "type": 1,
                "string": "https://*.galaxus.de/"
              },
              {
                "type": 1,
                "string": "https://*.galeria.de/"
              },
              {
                "type": 1,
                "string": "https://*.galerieslafayette.com/"
              },
              {
                "type": 1,
                "string": "https://*.game.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.game.es/"
              },
              {
                "type": 1,
                "string": "https://*.gap.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.gardenbuildingsdirect.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.garten-und-freizeit.de/"
              },
              {
                "type": 1,
                "string": "https://*.gartenmode.de/"
              },
              {
                "type": 1,
                "string": "https://*.gartenmoebel.de/"
              },
              {
                "type": 1,
                "string": "https://*.gartenpirat.de/"
              },
              {
                "type": 1,
                "string": "https://*.gastro-germany.de/"
              },
              {
                "type": 1,
                "string": "https://*.gastro-hero.de/"
              },
              {
                "type": 1,
                "string": "https://*.gdata.de/"
              },
              {
                "type": 1,
                "string": "https://*.gear4music.com/"
              },
              {
                "type": 1,
                "string": "https://*.gear4music.de/"
              },
              {
                "type": 1,
                "string": "https://*.gearbest.com/"
              },
              {
                "type": 1,
                "string": "https://*.gebrueder-goetz.de/"
              },
              {
                "type": 1,
                "string": "https://*.getlaidbeds.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.ggmgastro.com/"
              },
              {
                "type": 1,
                "string": "https://*.gifi.fr/"
              },
              {
                "type": 1,
                "string": "https://*.giordanoshop.com/"
              },
              {
                "type": 1,
                "string": "https://*.globus-baumarkt.de/"
              },
              {
                "type": 1,
                "string": "https://*.gltc.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.go-sport.com/"
              },
              {
                "type": 1,
                "string": "https://*.gocustomized.de/"
              },
              {
                "type": 1,
                "string": "https://*.goertz.de/"
              },
              {
                "type": 1,
                "string": "https://*.golf-shop.de/"
              },
              {
                "type": 1,
                "string": "https://*.gommeplanet.it/"
              },
              {
                "type": 1,
                "string": "https://*.goodwheel.de/"
              },
              {
                "type": 1,
                "string": "https://*.grahamandgreen.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.grandado.com/"
              },
              {
                "type": 1,
                "string": "https://*.gravis.de/"
              },
              {
                "type": 1,
                "string": "https://*.greatfurnituretradingco.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.greenfingers.com/"
              },
              {
                "type": 1,
                "string": "https://*.greenice.com/"
              },
              {
                "type": 1,
                "string": "https://*.greenstories.de/"
              },
              {
                "type": 1,
                "string": "https://*.greenweez.com/"
              },
              {
                "type": 1,
                "string": "https://*.groupon.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.groupon.fr/"
              },
              {
                "type": 1,
                "string": "https://*.gsm55.com/"
              },
              {
                "type": 1,
                "string": "https://*.gsm55.de/"
              },
              {
                "type": 1,
                "string": "https://*.gsm55.it/"
              },
              {
                "type": 1,
                "string": "https://*.guenstigeinrichten.de/"
              },
              {
                "type": 1,
                "string": "https://*.guess.eu/"
              },
              {
                "type": 1,
                "string": "https://*.guterkauf.com.de/"
              },
              {
                "type": 1,
                "string": "https://*.gymshark.com/"
              },
              {
                "type": 1,
                "string": "https://*.habitat.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.habitatetjardin.com/"
              },
              {
                "type": 1,
                "string": "https://*.hagebau.de/"
              },
              {
                "type": 1,
                "string": "https://*.halfords.com/"
              },
              {
                "type": 1,
                "string": "https://*.handy-wie-neu.de/"
              },
              {
                "type": 1,
                "string": "https://*.handyhuellen-24.de/"
              },
              {
                "type": 1,
                "string": "https://*.handyhuellen.de/"
              },
              {
                "type": 1,
                "string": "https://*.hans-natur.de/"
              },
              {
                "type": 1,
                "string": "https://*.happybeds.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.hardeck.de/"
              },
              {
                "type": 1,
                "string": "https://*.harlander.com/"
              },
              {
                "type": 1,
                "string": "https://*.hatstore.de/"
              },
              {
                "type": 1,
                "string": "https://*.hausratplus.de/"
              },
              {
                "type": 1,
                "string": "https://*.hayesgardenworld.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.hd-toner.de/"
              },
              {
                "type": 1,
                "string": "https://*.heimtextilien.com/"
              },
              {
                "type": 1,
                "string": "https://*.helline.fr/"
              },
              {
                "type": 1,
                "string": "https://*.hertie.de/"
              },
              {
                "type": 1,
                "string": "https://*.hessnatur.com/"
              },
              {
                "type": 1,
                "string": "https://*.hightech.leclerc/"
              },
              {
                "type": 1,
                "string": "https://*.histoiredor.com/"
              },
              {
                "type": 1,
                "string": "https://*.hjh-office.fr/"
              },
              {
                "type": 1,
                "string": "https://*.hoeffner.de/"
              },
              {
                "type": 1,
                "string": "https://*.holzprofi24.de/"
              },
              {
                "type": 1,
                "string": "https://*.home24.de/"
              },
              {
                "type": 1,
                "string": "https://*.home24.fr/"
              },
              {
                "type": 1,
                "string": "https://*.home24.it/"
              },
              {
                "type": 1,
                "string": "https://*.home24.nl/"
              },
              {
                "type": 1,
                "string": "https://*.homelavade.com/"
              },
              {
                "type": 1,
                "string": "https://*.hood.de/"
              },
              {
                "type": 1,
                "string": "https://*.hornbach.de/"
              },
              {
                "type": 1,
                "string": "https://*.houseofsneakers.de/"
              },
              {
                "type": 1,
                "string": "https://*.hse24.de/"
              },
              {
                "type": 1,
                "string": "https://*.hudsonreed.com/"
              },
              {
                "type": 1,
                "string": "https://*.huellegestalten.de/"
              },
              {
                "type": 1,
                "string": "https://*.huellendirekt.de/"
              },
              {
                "type": 1,
                "string": "https://*.hugoboss.com/"
              },
              {
                "type": 1,
                "string": "https://*.iconiclights.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.idealofsweden.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.idealofsweden.de/"
              },
              {
                "type": 1,
                "string": "https://*.idmarket.com/"
              },
              {
                "type": 1,
                "string": "https://*.ielectro.es/"
              },
              {
                "type": 1,
                "string": "https://*.ikea.com/"
              },
              {
                "type": 1,
                "string": "https://*.importforme.it/"
              },
              {
                "type": 1,
                "string": "https://*.inhofer.de/"
              },
              {
                "type": 1,
                "string": "https://*.inmac-wstore.com/"
              },
              {
                "type": 1,
                "string": "https://*.internet-bikes.com/"
              },
              {
                "type": 1,
                "string": "https://*.intersport.de/"
              },
              {
                "type": 1,
                "string": "https://*.intersport.fr/"
              },
              {
                "type": 1,
                "string": "https://*.intertoys.nl/"
              },
              {
                "type": 1,
                "string": "https://*.into-led.com/"
              },
              {
                "type": 1,
                "string": "https://*.iphonedisplayprofis.de/"
              },
              {
                "type": 1,
                "string": "https://*.iphonedisplayshop.de/"
              },
              {
                "type": 1,
                "string": "https://*.iphoneersatzteileshop.de/"
              },
              {
                "type": 1,
                "string": "https://*.ironmongerydirect.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.isolicht.com/"
              },
              {
                "type": 1,
                "string": "https://*.it-nerd24.de/"
              },
              {
                "type": 1,
                "string": "https://*.jacadi.de/"
              },
              {
                "type": 1,
                "string": "https://*.jacadi.fr/"
              },
              {
                "type": 1,
                "string": "https://*.jacob.de/"
              },
              {
                "type": 1,
                "string": "https://*.jako-o.com/"
              },
              {
                "type": 1,
                "string": "https://*.jalousiescout.de/"
              },
              {
                "type": 1,
                "string": "https://*.jbl.com/"
              },
              {
                "type": 1,
                "string": "https://*.jdsports.de/"
              },
              {
                "type": 1,
                "string": "https://*.jdsports.es/"
              },
              {
                "type": 1,
                "string": "https://*.jdsports.fr/"
              },
              {
                "type": 1,
                "string": "https://*.jdsports.it/"
              },
              {
                "type": 1,
                "string": "https://*.jjshouse.fr/"
              },
              {
                "type": 1,
                "string": "https://*.johnlewis.com/"
              },
              {
                "type": 1,
                "string": "https://*.jojomamanbebe.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.joom.com/"
              },
              {
                "type": 1,
                "string": "https://*.joueclub.fr/"
              },
              {
                "type": 1,
                "string": "https://*.jules.com/"
              },
              {
                "type": 1,
                "string": "https://*.juniqe.de/"
              },
              {
                "type": 1,
                "string": "https://*.kaputt.de/"
              },
              {
                "type": 1,
                "string": "https://*.kare.de/"
              },
              {
                "type": 1,
                "string": "https://*.karneval-megastore.de/"
              },
              {
                "type": 1,
                "string": "https://*.karstadtsports.de/"
              },
              {
                "type": 1,
                "string": "https://*.kartenmacherei.de/"
              },
              {
                "type": 1,
                "string": "https://*.kasanova.com/"
              },
              {
                "type": 1,
                "string": "https://*.kauf-unique.de/"
              },
              {
                "type": 1,
                "string": "https://*.kavehome.com/"
              },
              {
                "type": 1,
                "string": "https://*.keessmit.de/"
              },
              {
                "type": 1,
                "string": "https://*.keller-sports.de/"
              },
              {
                "type": 1,
                "string": "https://*.kfzteile24.de/"
              },
              {
                "type": 1,
                "string": "https://*.kiabi.com/"
              },
              {
                "type": 1,
                "string": "https://*.kibek.de/"
              },
              {
                "type": 1,
                "string": "https://*.kickz.com/"
              },
              {
                "type": 1,
                "string": "https://*.kiddies-kingdom.com/"
              },
              {
                "type": 1,
                "string": "https://*.kidly.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.killerinktattoo.de/"
              },
              {
                "type": 1,
                "string": "https://*.king-jouet.com/"
              },
              {
                "type": 1,
                "string": "https://*.kirstein.de/"
              },
              {
                "type": 1,
                "string": "https://*.klarmobil.de/"
              },
              {
                "type": 1,
                "string": "https://*.koffer-direkt.de/"
              },
              {
                "type": 1,
                "string": "https://*.lacasadelelectrodomestico.com/"
              },
              {
                "type": 1,
                "string": "https://*.lagranderecre.fr/"
              },
              {
                "type": 1,
                "string": "https://*.lahalle.com/"
              },
              {
                "type": 1,
                "string": "https://*.lakeland.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.lampe.de/"
              },
              {
                "type": 1,
                "string": "https://*.lampenwelt.de/"
              },
              {
                "type": 1,
                "string": "https://*.lapeyre.fr/"
              },
              {
                "type": 1,
                "string": "https://*.lapstore.de/"
              },
              {
                "type": 1,
                "string": "https://*.laptopsdirect.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.laredoute.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.laredoute.com/"
              },
              {
                "type": 1,
                "string": "https://*.laredoute.es/"
              },
              {
                "type": 1,
                "string": "https://*.laredoute.fr/"
              },
              {
                "type": 1,
                "string": "https://*.laredoute.it/"
              },
              {
                "type": 1,
                "string": "https://*.lascana.de/"
              },
              {
                "type": 1,
                "string": "https://*.ldlc.com/"
              },
              {
                "type": 1,
                "string": "https://*.lechuza.de/"
              },
              {
                "type": 1,
                "string": "https://*.led-homeshop.de/"
              },
              {
                "type": 1,
                "string": "https://*.led-lichtraum.de/"
              },
              {
                "type": 1,
                "string": "https://*.ledando.de/"
              },
              {
                "type": 1,
                "string": "https://*.ledkia.com/"
              },
              {
                "type": 1,
                "string": "https://*.ledpanelgrosshandel.de/"
              },
              {
                "type": 1,
                "string": "https://*.leds24.com/"
              },
              {
                "type": 1,
                "string": "https://*.lematelas.fr/"
              },
              {
                "type": 1,
                "string": "https://*.lenovo.com/"
              },
              {
                "type": 1,
                "string": "https://*.leroymerlin.fr/"
              },
              {
                "type": 1,
                "string": "https://*.leroymerlin.it/"
              },
              {
                "type": 1,
                "string": "https://*.leuchtenmarkt.de/"
              },
              {
                "type": 1,
                "string": "https://*.lg.com/"
              },
              {
                "type": 1,
                "string": "https://*.licensequeen.com/"
              },
              {
                "type": 1,
                "string": "https://*.lichterketten-experte.de/"
              },
              {
                "type": 1,
                "string": "https://*.lidl.de/"
              },
              {
                "type": 1,
                "string": "https://*.lidlonline.es/"
              },
              {
                "type": 1,
                "string": "https://*.life-is-good.de/"
              },
              {
                "type": 1,
                "string": "https://*.lifestyle4living.de/"
              },
              {
                "type": 1,
                "string": "https://*.lightinthebox.com/"
              },
              {
                "type": 1,
                "string": "https://*.lights4fun.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.lights4fun.de/"
              },
              {
                "type": 1,
                "string": "https://*.limango-outlet.de/"
              },
              {
                "type": 1,
                "string": "https://*.limango.de/"
              },
              {
                "type": 1,
                "string": "https://*.linkradquadrat.de/"
              },
              {
                "type": 1,
                "string": "https://*.liquipipe.de/"
              },
              {
                "type": 1,
                "string": "https://*.littlewoods.com/"
              },
              {
                "type": 1,
                "string": "https://*.living24.de/"
              },
              {
                "type": 1,
                "string": "https://*.livingfloor.com/"
              },
              {
                "type": 1,
                "string": "https://*.livingsocial.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.lizengo.de/"
              },
              {
                "type": 1,
                "string": "https://*.lizenzfuchs.de/"
              },
              {
                "type": 1,
                "string": "https://*.loberon.de/"
              },
              {
                "type": 1,
                "string": "https://*.loesdau.de/"
              },
              {
                "type": 1,
                "string": "https://*.lolahome.es/"
              },
              {
                "type": 1,
                "string": "https://*.lomado.de/"
              },
              {
                "type": 1,
                "string": "https://*.lookfantastic.com/"
              },
              {
                "type": 1,
                "string": "https://*.lookfantastic.de/"
              },
              {
                "type": 1,
                "string": "https://*.louis.de/"
              },
              {
                "type": 1,
                "string": "https://*.ltt-versand.de/"
              },
              {
                "type": 1,
                "string": "https://*.lucrin.de/"
              },
              {
                "type": 1,
                "string": "https://*.lumentec.eu/"
              },
              {
                "type": 1,
                "string": "https://*.luxvenum.com/"
              },
              {
                "type": 1,
                "string": "https://*.mach-dein-bad.de/"
              },
              {
                "type": 1,
                "string": "https://*.made.com/"
              },
              {
                "type": 1,
                "string": "https://*.madeinbebe.com/"
              },
              {
                "type": 1,
                "string": "https://*.madeindesign.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.madeindesign.com/"
              },
              {
                "type": 1,
                "string": "https://*.madeindesign.de/"
              },
              {
                "type": 1,
                "string": "https://*.main-moebel.de/"
              },
              {
                "type": 1,
                "string": "https://*.mainada.es/"
              },
              {
                "type": 1,
                "string": "https://*.maisonsdumonde.com/"
              },
              {
                "type": 1,
                "string": "https://*.mamasandpapas.com/"
              },
              {
                "type": 1,
                "string": "https://*.mandmdirect.com/"
              },
              {
                "type": 1,
                "string": "https://*.mandmdirect.de/"
              },
              {
                "type": 1,
                "string": "https://*.mandmdirect.fr/"
              },
              {
                "type": 1,
                "string": "https://*.mango.com/"
              },
              {
                "type": 1,
                "string": "https://*.manhattanshop.it/"
              },
              {
                "type": 1,
                "string": "https://*.manomano.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.manomano.de/"
              },
              {
                "type": 1,
                "string": "https://*.manomano.es/"
              },
              {
                "type": 1,
                "string": "https://*.manomano.fr/"
              },
              {
                "type": 1,
                "string": "https://*.manomano.it/"
              },
              {
                "type": 1,
                "string": "https://*.manufactum.de/"
              },
              {
                "type": 1,
                "string": "https://*.markenbaumarkt24.de/"
              },
              {
                "type": 1,
                "string": "https://*.markenkoffer.de/"
              },
              {
                "type": 1,
                "string": "https://*.markenschuhe.de/"
              },
              {
                "type": 1,
                "string": "https://*.marksandspencer.com/"
              },
              {
                "type": 1,
                "string": "https://*.massivholz-moebel24.de/"
              },
              {
                "type": 1,
                "string": "https://*.massivmoebel24.de/"
              },
              {
                "type": 1,
                "string": "https://*.massivum.de/"
              },
              {
                "type": 1,
                "string": "https://*.matalan.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.mathon.fr/"
              },
              {
                "type": 1,
                "string": "https://*.mattenlager.de/"
              },
              {
                "type": 1,
                "string": "https://*.maty.com/"
              },
              {
                "type": 1,
                "string": "https://*.maxiburo.fr/"
              },
              {
                "type": 1,
                "string": "https://*.maxicoffee.com/"
              },
              {
                "type": 1,
                "string": "https://*.maxisport.com/"
              },
              {
                "type": 1,
                "string": "https://*.maxitoys.fr/"
              },
              {
                "type": 1,
                "string": "https://*.mcm-systeme.de/"
              },
              {
                "type": 1,
                "string": "https://*.mdm.de/"
              },
              {
                "type": 1,
                "string": "https://*.mediamarkt.de/"
              },
              {
                "type": 1,
                "string": "https://*.mediamarkt.es/"
              },
              {
                "type": 1,
                "string": "https://*.mediawavestore.com/"
              },
              {
                "type": 1,
                "string": "https://*.mediaworld.it/"
              },
              {
                "type": 1,
                "string": "https://*.medimops.de/"
              },
              {
                "type": 1,
                "string": "https://*.medion.com/"
              },
              {
                "type": 1,
                "string": "https://*.medpex.de/"
              },
              {
                "type": 1,
                "string": "https://*.megabad.com/"
              },
              {
                "type": 1,
                "string": "https://*.megashop.brotz.de/"
              },
              {
                "type": 1,
                "string": "https://*.mein-gartenshop24.de/"
              },
              {
                "type": 1,
                "string": "https://*.meingartencenter24.de/"
              },
              {
                "type": 1,
                "string": "https://*.meintrendyhandy.de/"
              },
              {
                "type": 1,
                "string": "https://*.menzzo.es/"
              },
              {
                "type": 1,
                "string": "https://*.menzzo.fr/"
              },
              {
                "type": 1,
                "string": "https://*.merkal.com/"
              },
              {
                "type": 1,
                "string": "https://*.mesbagages.com/"
              },
              {
                "type": 1,
                "string": "https://*.mesem.de/"
              },
              {
                "type": 1,
                "string": "https://*.metro.de/"
              },
              {
                "type": 1,
                "string": "https://*.mhw-bike.de/"
              },
              {
                "type": 1,
                "string": "https://*.michaelkors.fr/"
              },
              {
                "type": 1,
                "string": "https://*.milanoo.com/"
              },
              {
                "type": 1,
                "string": "https://*.miliboo.com/"
              },
              {
                "type": 1,
                "string": "https://*.miliboo.es/"
              },
              {
                "type": 1,
                "string": "https://*.miliboo.it/"
              },
              {
                "type": 1,
                "string": "https://*.mindfactory.de/"
              },
              {
                "type": 1,
                "string": "https://*.miniinthebox.com/"
              },
              {
                "type": 1,
                "string": "https://*.mirapodo.de/"
              },
              {
                "type": 1,
                "string": "https://*.misterbabyfoot.com/"
              },
              {
                "type": 1,
                "string": "https://*.misterspex.de/"
              },
              {
                "type": 1,
                "string": "https://*.misterspex.es/"
              },
              {
                "type": 1,
                "string": "https://*.misterspex.fr/"
              },
              {
                "type": 1,
                "string": "https://*.misterspex.nl/"
              },
              {
                "type": 1,
                "string": "https://*.mobeventpro.com/"
              },
              {
                "type": 1,
                "string": "https://*.mobilclick.it/"
              },
              {
                "type": 1,
                "string": "https://*.mobilcom-debitel.de/"
              },
              {
                "type": 1,
                "string": "https://*.mobile24.fr/"
              },
              {
                "type": 1,
                "string": "https://*.mobilefun.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.mobiliermoss.com/"
              },
              {
                "type": 1,
                "string": "https://*.mobilifiver.com/"
              },
              {
                "type": 1,
                "string": "https://*.moebel-eins.de/"
              },
              {
                "type": 1,
                "string": "https://*.moebel-kraft.de/"
              },
              {
                "type": 1,
                "string": "https://*.moebel.check24.de/"
              },
              {
                "type": 1,
                "string": "https://*.moebel.de/"
              },
              {
                "type": 1,
                "string": "https://*.moebel24.de/"
              },
              {
                "type": 1,
                "string": "https://*.moebelando.de/"
              },
              {
                "type": 1,
                "string": "https://*.moebelfreude.de/"
              },
              {
                "type": 1,
                "string": "https://*.moebelmaster.de/"
              },
              {
                "type": 1,
                "string": "https://*.moemax.de/"
              },
              {
                "type": 1,
                "string": "https://*.monclick.it/"
              },
              {
                "type": 1,
                "string": "https://*.monoprix.fr/"
              },
              {
                "type": 1,
                "string": "https://*.morgandetoi.fr/"
              },
              {
                "type": 1,
                "string": "https://*.motoblouz.com/"
              },
              {
                "type": 1,
                "string": "https://*.motointegrator.de/"
              },
              {
                "type": 1,
                "string": "https://*.mountainwarehouse.com/"
              },
              {
                "type": 1,
                "string": "https://*.mous.co/"
              },
              {
                "type": 1,
                "string": "https://*.mrphonedeals.com/"
              },
              {
                "type": 1,
                "string": "https://*.muebledesign.com/"
              },
              {
                "type": 1,
                "string": "https://*.mumbi.de/"
              },
              {
                "type": 1,
                "string": "https://*.musicstore.de/"
              },
              {
                "type": 1,
                "string": "https://*.my-furniture.com/"
              },
              {
                "type": 1,
                "string": "https://*.my1styears.com/"
              },
              {
                "type": 1,
                "string": "https://*.mycs.com/"
              },
              {
                "type": 1,
                "string": "https://*.myfaktory.com/"
              },
              {
                "type": 1,
                "string": "https://*.myfolie.com/"
              },
              {
                "type": 1,
                "string": "https://*.mygardenhome.de/"
              },
              {
                "type": 1,
                "string": "https://*.myprotein.com/"
              },
              {
                "type": 1,
                "string": "https://*.myspiegel.de/"
              },
              {
                "type": 1,
                "string": "https://*.mytheresa.com/"
              },
              {
                "type": 1,
                "string": "https://*.mytoys.de/"
              },
              {
                "type": 1,
                "string": "https://*.na-kd.com/"
              },
              {
                "type": 1,
                "string": "https://*.nationallighting.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.natureetdecouvertes.com/"
              },
              {
                "type": 1,
                "string": "https://*.neckermann.de/"
              },
              {
                "type": 1,
                "string": "https://*.net-a-porter.com/"
              },
              {
                "type": 1,
                "string": "https://*.netto-online.de/"
              },
              {
                "type": 1,
                "string": "https://*.networldsports.fr/"
              },
              {
                "type": 1,
                "string": "https://*.neuesbad.de/"
              },
              {
                "type": 1,
                "string": "https://*.newbalance.de/"
              },
              {
                "type": 1,
                "string": "https://*.newbalance.fr/"
              },
              {
                "type": 1,
                "string": "https://*.newchic.com/"
              },
              {
                "type": 1,
                "string": "https://*.next.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.nike.com/"
              },
              {
                "type": 1,
                "string": "https://*.nisbets.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.nisbets.fr/"
              },
              {
                "type": 1,
                "string": "https://*.nonsolosport.it/"
              },
              {
                "type": 1,
                "string": "https://*.norauto.fr/"
              },
              {
                "type": 1,
                "string": "https://*.norauto.it/"
              },
              {
                "type": 1,
                "string": "https://*.nordicnest.com/"
              },
              {
                "type": 1,
                "string": "https://*.nordicnest.de/"
              },
              {
                "type": 1,
                "string": "https://*.noreve.com/"
              },
              {
                "type": 1,
                "string": "https://*.norma24.de/"
              },
              {
                "type": 1,
                "string": "https://*.nostalux.de/"
              },
              {
                "type": 1,
                "string": "https://*.notebookgalerie.de/"
              },
              {
                "type": 1,
                "string": "https://*.notebooksbilliger.de/"
              },
              {
                "type": 1,
                "string": "https://*.notino.de/"
              },
              {
                "type": 1,
                "string": "https://*.notonthehighstreet.com/"
              },
              {
                "type": 1,
                "string": "https://*.oakfurnitureland.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.oakfurnituresuperstore.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.obi.de/"
              },
              {
                "type": 1,
                "string": "https://*.officeeasy.fr/"
              },
              {
                "type": 1,
                "string": "https://*.okaidi.fr/"
              },
              {
                "type": 1,
                "string": "https://*.oliverbonas.com/"
              },
              {
                "type": 1,
                "string": "https://*.onbuy.com/"
              },
              {
                "type": 1,
                "string": "https://*.one1style.de/"
              },
              {
                "type": 1,
                "string": "https://*.onedirect.de/"
              },
              {
                "type": 1,
                "string": "https://*.online4baby.com/"
              },
              {
                "type": 1,
                "string": "https://*.only.com/"
              },
              {
                "type": 1,
                "string": "https://*.onmyskin.de/"
              },
              {
                "type": 1,
                "string": "https://*.oogarden.com/"
              },
              {
                "type": 1,
                "string": "https://*.oogarden.de/"
              },
              {
                "type": 1,
                "string": "https://*.oplaza.de/"
              },
              {
                "type": 1,
                "string": "https://*.oponeo.de/"
              },
              {
                "type": 1,
                "string": "https://*.optica-optima.com/"
              },
              {
                "type": 1,
                "string": "https://*.orange.fr/"
              },
              {
                "type": 1,
                "string": "https://*.orex.de/"
              },
              {
                "type": 1,
                "string": "https://*.origines-parfums.com/"
              },
              {
                "type": 1,
                "string": "https://*.orsay.com/"
              },
              {
                "type": 1,
                "string": "https://*.oscaro.com/"
              },
              {
                "type": 1,
                "string": "https://*.otto-baumarkt.de/"
              },
              {
                "type": 1,
                "string": "https://*.otto-office.com/"
              },
              {
                "type": 1,
                "string": "https://*.otto.de/"
              },
              {
                "type": 1,
                "string": "https://*.outandout.com/"
              },
              {
                "type": 1,
                "string": "https://*.outdoorartikel24.de/"
              },
              {
                "type": 1,
                "string": "https://*.outfitter.de/"
              },
              {
                "type": 1,
                "string": "https://*.outlet-pc.es/"
              },
              {
                "type": 1,
                "string": "https://*.outlet.asics.com/"
              },
              {
                "type": 1,
                "string": "https://*.oxybul.com/"
              },
              {
                "type": 1,
                "string": "https://*.parfumdreams.de/"
              },
              {
                "type": 1,
                "string": "https://*.party.de/"
              },
              {
                "type": 1,
                "string": "https://*.patpat.com/"
              },
              {
                "type": 1,
                "string": "https://*.paulmann.com/"
              },
              {
                "type": 1,
                "string": "https://*.pcbilliger.de/"
              },
              {
                "type": 1,
                "string": "https://*.pccomponentes.com/"
              },
              {
                "type": 1,
                "string": "https://*.pearl.de/"
              },
              {
                "type": 1,
                "string": "https://*.pearl.fr/"
              },
              {
                "type": 1,
                "string": "https://*.peek-cloppenburg.de/"
              },
              {
                "type": 1,
                "string": "https://*.perchandparrow.com/"
              },
              {
                "type": 1,
                "string": "https://*.peterhahn.de/"
              },
              {
                "type": 1,
                "string": "https://*.pharao24.de/"
              },
              {
                "type": 1,
                "string": "https://*.phonehouse.es/"
              },
              {
                "type": 1,
                "string": "https://*.photobox.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.photofancy.de/"
              },
              {
                "type": 1,
                "string": "https://*.photospecialist.de/"
              },
              {
                "type": 1,
                "string": "https://*.photowall.de/"
              },
              {
                "type": 1,
                "string": "https://*.photowall.es/"
              },
              {
                "type": 1,
                "string": "https://*.pickawood.com/"
              },
              {
                "type": 1,
                "string": "https://*.picwictoys.com/"
              },
              {
                "type": 1,
                "string": "https://*.pieper.de/"
              },
              {
                "type": 1,
                "string": "https://*.piolo.de/"
              },
              {
                "type": 1,
                "string": "https://*.pixum.de/"
              },
              {
                "type": 1,
                "string": "https://*.pkwteile.de/"
              },
              {
                "type": 1,
                "string": "https://*.placedestendances.com/"
              },
              {
                "type": 1,
                "string": "https://*.planeo.de/"
              },
              {
                "type": 1,
                "string": "https://*.planet-sports.de/"
              },
              {
                "type": 1,
                "string": "https://*.plasticboxshop.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.pluuz.de/"
              },
              {
                "type": 1,
                "string": "https://*.poco.de/"
              },
              {
                "type": 1,
                "string": "https://*.pollin.de/"
              },
              {
                "type": 1,
                "string": "https://*.pool-chlor-shop.de/"
              },
              {
                "type": 1,
                "string": "https://*.pool-systems.de/"
              },
              {
                "type": 1,
                "string": "https://*.poolplaza.de/"
              },
              {
                "type": 1,
                "string": "https://*.poolpowershop.de/"
              },
              {
                "type": 1,
                "string": "https://*.poolsana.de/"
              },
              {
                "type": 1,
                "string": "https://*.poolsfactory.eu/"
              },
              {
                "type": 1,
                "string": "https://*.porzellantreff.de/"
              },
              {
                "type": 1,
                "string": "https://*.preciouslittleone.com/"
              },
              {
                "type": 1,
                "string": "https://*.preis.de/"
              },
              {
                "type": 1,
                "string": "https://*.preisvergleich.check24.de/"
              },
              {
                "type": 1,
                "string": "https://*.prettylittlething.com/"
              },
              {
                "type": 1,
                "string": "https://*.prettylittlething.fr/"
              },
              {
                "type": 1,
                "string": "https://*.prettynailshop24.de/"
              },
              {
                "type": 1,
                "string": "https://*.prezzoforte.it/"
              },
              {
                "type": 1,
                "string": "https://*.primrose.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.printplanet.de/"
              },
              {
                "type": 1,
                "string": "https://*.privatefloor.com/"
              },
              {
                "type": 1,
                "string": "https://*.procook.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.products.office.com/"
              },
              {
                "type": 1,
                "string": "https://*.profishop.de/"
              },
              {
                "type": 1,
                "string": "https://*.profizelt24.de/"
              },
              {
                "type": 1,
                "string": "https://*.proidee.de/"
              },
              {
                "type": 1,
                "string": "https://*.promofarma.com/"
              },
              {
                "type": 1,
                "string": "https://*.prozis.com/"
              },
              {
                "type": 1,
                "string": "https://*.puntronic.com/"
              },
              {
                "type": 1,
                "string": "https://*.quelle.de/"
              },
              {
                "type": 1,
                "string": "https://*.quirumed.com/"
              },
              {
                "type": 1,
                "string": "https://*.quizclothing.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.qvc.de/"
              },
              {
                "type": 1,
                "string": "https://*.r99sale.de/"
              },
              {
                "type": 1,
                "string": "https://*.raja.fr/"
              },
              {
                "type": 1,
                "string": "https://*.rakuten.de/"
              },
              {
                "type": 1,
                "string": "https://*.raton-malin.com/"
              },
              {
                "type": 1,
                "string": "https://*.raum-blick.de/"
              },
              {
                "type": 1,
                "string": "https://*.ray-ban.com/"
              },
              {
                "type": 1,
                "string": "https://*.real.de/"
              },
              {
                "type": 1,
                "string": "https://*.rebuy.de/"
              },
              {
                "type": 1,
                "string": "https://*.recommerce.com/"
              },
              {
                "type": 1,
                "string": "https://*.redbubble.com/"
              },
              {
                "type": 1,
                "string": "https://*.reebok.es/"
              },
              {
                "type": 1,
                "string": "https://*.reebok.fr/"
              },
              {
                "type": 1,
                "string": "https://*.refurbed.de/"
              },
              {
                "type": 1,
                "string": "https://*.refurbed.it/"
              },
              {
                "type": 1,
                "string": "https://*.regalosmiguel.com/"
              },
              {
                "type": 1,
                "string": "https://*.reichelt.de/"
              },
              {
                "type": 1,
                "string": "https://*.reifen.check24.de/"
              },
              {
                "type": 1,
                "string": "https://*.reifen.com/"
              },
              {
                "type": 1,
                "string": "https://*.reifendirekt.de/"
              },
              {
                "type": 1,
                "string": "https://*.reifendiscount.de/"
              },
              {
                "type": 1,
                "string": "https://*.reifenleader.de/"
              },
              {
                "type": 1,
                "string": "https://*.reifentiefpreis.de/"
              },
              {
                "type": 1,
                "string": "https://*.rendezvousdeco.com/"
              },
              {
                "type": 1,
                "string": "https://*.reolink.com/"
              },
              {
                "type": 1,
                "string": "https://*.reserved.com/"
              },
              {
                "type": 1,
                "string": "https://*.resorti-muelltonnenboxen.de/"
              },
              {
                "type": 1,
                "string": "https://*.reuter.de/"
              },
              {
                "type": 1,
                "string": "https://*.rewe.de/"
              },
              {
                "type": 1,
                "string": "https://*.ricon-manufaktur.de/"
              },
              {
                "type": 1,
                "string": "https://*.rideonwarehouse.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.riess-ambiente.net/"
              },
              {
                "type": 1,
                "string": "https://*.rigbyandpeller.de/"
              },
              {
                "type": 1,
                "string": "https://*.riiroo.com/"
              },
              {
                "type": 1,
                "string": "https://*.robertdyas.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.roller.de/"
              },
              {
                "type": 1,
                "string": "https://*.romwe.com/"
              },
              {
                "type": 1,
                "string": "https://*.rosebikes.de/"
              },
              {
                "type": 1,
                "string": "https://*.roselandfurniture.com/"
              },
              {
                "type": 1,
                "string": "https://*.rothoshop.de/"
              },
              {
                "type": 1,
                "string": "https://*.royaldesign.de/"
              },
              {
                "type": 1,
                "string": "https://*.rs-online.com/"
              },
              {
                "type": 1,
                "string": "https://*.rueducommerce.fr/"
              },
              {
                "type": 1,
                "string": "https://*.rugvista.de/"
              },
              {
                "type": 1,
                "string": "https://*.runnerinn.com/"
              },
              {
                "type": 1,
                "string": "https://*.runnerspoint.de/"
              },
              {
                "type": 1,
                "string": "https://*.ryman.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.safetots.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.samsung.com/"
              },
              {
                "type": 1,
                "string": "https://*.sarenza.com/"
              },
              {
                "type": 1,
                "string": "https://*.sarenza.de/"
              },
              {
                "type": 1,
                "string": "https://*.saturn.de/"
              },
              {
                "type": 1,
                "string": "https://*.scandiborn.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.schaefer-shop.de/"
              },
              {
                "type": 1,
                "string": "https://*.scheppach.com/"
              },
              {
                "type": 1,
                "string": "https://*.schlafwelt.de/"
              },
              {
                "type": 1,
                "string": "https://*.schuh.eu/"
              },
              {
                "type": 1,
                "string": "https://*.schuhcenter.de/"
              },
              {
                "type": 1,
                "string": "https://*.schuhe24.de/"
              },
              {
                "type": 1,
                "string": "https://*.schutzhuellenprofi.de/"
              },
              {
                "type": 1,
                "string": "https://*.sconto.de/"
              },
              {
                "type": 1,
                "string": "https://*.screwfix.com/"
              },
              {
                "type": 1,
                "string": "https://*.sdv-elektronik.de/"
              },
              {
                "type": 1,
                "string": "https://*.seatsandsofas.de/"
              },
              {
                "type": 1,
                "string": "https://*.segmueller.de/"
              },
              {
                "type": 1,
                "string": "https://*.sehhelfer.de/"
              },
              {
                "type": 1,
                "string": "https://*.selency.fr/"
              },
              {
                "type": 1,
                "string": "https://*.selfridges.com/"
              },
              {
                "type": 1,
                "string": "https://*.sendmoments.de/"
              },
              {
                "type": 1,
                "string": "https://*.sephora.de/"
              },
              {
                "type": 1,
                "string": "https://*.session.de/"
              },
              {
                "type": 1,
                "string": "https://*.sheego.de/"
              },
              {
                "type": 1,
                "string": "https://*.shein.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.shein.com/"
              },
              {
                "type": 1,
                "string": "https://*.shoes.fr/"
              },
              {
                "type": 1,
                "string": "https://*.shop-apotheke.com/"
              },
              {
                "type": 1,
                "string": "https://*.shopping.rakuten.com/"
              },
              {
                "type": 1,
                "string": "https://*.showroomprive.com/"
              },
              {
                "type": 1,
                "string": "https://*.sidestep-shoes.de/"
              },
              {
                "type": 1,
                "string": "https://*.silamp.it/"
              },
              {
                "type": 1,
                "string": "https://*.silexfrance.fr/"
              },
              {
                "type": 1,
                "string": "https://*.simplybarstools.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.sitzfeldt.com/"
              },
              {
                "type": 1,
                "string": "https://*.sizeer.de/"
              },
              {
                "type": 1,
                "string": "https://*.sizeofficial.de/"
              },
              {
                "type": 1,
                "string": "https://*.sizeofficial.fr/"
              },
              {
                "type": 1,
                "string": "https://*.skapetze.com/"
              },
              {
                "type": 1,
                "string": "https://*.sklum.com/"
              },
              {
                "type": 1,
                "string": "https://*.slewo.com/"
              },
              {
                "type": 1,
                "string": "https://*.smartagogo.com/"
              },
              {
                "type": 1,
                "string": "https://*.smythstoys.com/"
              },
              {
                "type": 1,
                "string": "https://*.snakehive.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.snakehive.de/"
              },
              {
                "type": 1,
                "string": "https://*.sneakerpeeker.eu/"
              },
              {
                "type": 1,
                "string": "https://*.sneakersnstuff.com/"
              },
              {
                "type": 1,
                "string": "https://*.sneakerstudio.fr/"
              },
              {
                "type": 1,
                "string": "https://*.snipes.com/"
              },
              {
                "type": 1,
                "string": "https://*.soak.com/"
              },
              {
                "type": 1,
                "string": "https://*.sofacompany.com/"
              },
              {
                "type": 1,
                "string": "https://*.software-eule.de/"
              },
              {
                "type": 1,
                "string": "https://*.softwarebilliger.de/"
              },
              {
                "type": 1,
                "string": "https://*.softwareonlinekaufen.eu/"
              },
              {
                "type": 1,
                "string": "https://*.softwareriese.de/"
              },
              {
                "type": 1,
                "string": "https://*.soliver.de/"
              },
              {
                "type": 1,
                "string": "https://*.sonnenbrillen.com/"
              },
              {
                "type": 1,
                "string": "https://*.sonono.de/"
              },
              {
                "type": 1,
                "string": "https://*.sonoro.de/"
              },
              {
                "type": 1,
                "string": "https://*.sonos.com/"
              },
              {
                "type": 1,
                "string": "https://*.sotostore.com/"
              },
              {
                "type": 1,
                "string": "https://*.sound-systems24.de/"
              },
              {
                "type": 1,
                "string": "https://*.soytuhogar.com/"
              },
              {
                "type": 1,
                "string": "https://*.spartoo.com/"
              },
              {
                "type": 1,
                "string": "https://*.spartoo.de/"
              },
              {
                "type": 1,
                "string": "https://*.spartoo.es/"
              },
              {
                "type": 1,
                "string": "https://*.sport-thieme.de/"
              },
              {
                "type": 1,
                "string": "https://*.sportbedarf.de/"
              },
              {
                "type": 1,
                "string": "https://*.sportlandweb.it/"
              },
              {
                "type": 1,
                "string": "https://*.sportscheck.com/"
              },
              {
                "type": 1,
                "string": "https://*.sportsdirect.com/"
              },
              {
                "type": 1,
                "string": "https://*.sportspar.de/"
              },
              {
                "type": 1,
                "string": "https://*.sportsshoes.com/"
              },
              {
                "type": 1,
                "string": "https://*.sportwelt-scherer.de/"
              },
              {
                "type": 1,
                "string": "https://*.spreadshirt.de/"
              },
              {
                "type": 1,
                "string": "https://*.spreadshirt.fr/"
              },
              {
                "type": 1,
                "string": "https://*.sprinter.es/"
              },
              {
                "type": 1,
                "string": "https://*.ssense.com/"
              },
              {
                "type": 1,
                "string": "https://*.stabilezelte.de/"
              },
              {
                "type": 1,
                "string": "https://*.steinershopping.de/"
              },
              {
                "type": 1,
                "string": "https://*.stickers-muraux.fr/"
              },
              {
                "type": 1,
                "string": "https://*.stilgut.de/"
              },
              {
                "type": 1,
                "string": "https://*.stockx.com/"
              },
              {
                "type": 1,
                "string": "https://*.store.hp.com/"
              },
              {
                "type": 1,
                "string": "https://*.store.walbusch.de/"
              },
              {
                "type": 1,
                "string": "https://*.street-one.de/"
              },
              {
                "type": 1,
                "string": "https://*.studio.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.stylefile.de/"
              },
              {
                "type": 1,
                "string": "https://*.stylefile.fr/"
              },
              {
                "type": 1,
                "string": "https://*.suche.guenstiger.de/"
              },
              {
                "type": 1,
                "string": "https://*.swarovski.com/"
              },
              {
                "type": 1,
                "string": "https://*.swisssense.de/"
              },
              {
                "type": 1,
                "string": "https://*.tabletphonecase.com/"
              },
              {
                "type": 1,
                "string": "https://*.tally-weijl.com/"
              },
              {
                "type": 1,
                "string": "https://*.tamaris.com/"
              },
              {
                "type": 1,
                "string": "https://*.tapwarehouse.com/"
              },
              {
                "type": 1,
                "string": "https://*.targus.com/"
              },
              {
                "type": 1,
                "string": "https://*.tausendkind.de/"
              },
              {
                "type": 1,
                "string": "https://*.tchibo.de/"
              },
              {
                "type": 1,
                "string": "https://*.tdtienda.es/"
              },
              {
                "type": 1,
                "string": "https://*.teako.de/"
              },
              {
                "type": 1,
                "string": "https://*.teamsport-philipp.de/"
              },
              {
                "type": 1,
                "string": "https://*.tectake.de/"
              },
              {
                "type": 1,
                "string": "https://*.tedbaker.com/"
              },
              {
                "type": 1,
                "string": "https://*.telekom.de/"
              },
              {
                "type": 1,
                "string": "https://*.teppichversand24.de/"
              },
              {
                "type": 1,
                "string": "https://*.tesco.com/"
              },
              {
                "type": 1,
                "string": "https://*.tescomobile.com/"
              },
              {
                "type": 1,
                "string": "https://*.testberichte2018.de/"
              },
              {
                "type": 1,
                "string": "https://*.teufel.de/"
              },
              {
                "type": 1,
                "string": "https://*.thefurnituremarket.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.themadeco.fr/"
              },
              {
                "type": 1,
                "string": "https://*.theplasmacentre.com/"
              },
              {
                "type": 1,
                "string": "https://*.thewhitecompany.com/"
              },
              {
                "type": 1,
                "string": "https://*.theworks.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.thomann.de/"
              },
              {
                "type": 1,
                "string": "https://*.thomas-philipps.de/"
              },
              {
                "type": 1,
                "string": "https://*.thomassabo.com/"
              },
              {
                "type": 1,
                "string": "https://*.tiendalgonline.com/"
              },
              {
                "type": 1,
                "string": "https://*.tiendaonline2.orange.es/"
              },
              {
                "type": 1,
                "string": "https://*.tiierisch.de/"
              },
              {
                "type": 1,
                "string": "https://*.tikamoon.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.tikamoon.com/"
              },
              {
                "type": 1,
                "string": "https://*.tikamoon.de/"
              },
              {
                "type": 1,
                "string": "https://*.tikamoon.it/"
              },
              {
                "type": 1,
                "string": "https://*.time4sleep.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.tink.de/"
              },
              {
                "type": 1,
                "string": "https://*.tint-store.com/"
              },
              {
                "type": 1,
                "string": "https://*.tirendo.de/"
              },
              {
                "type": 1,
                "string": "https://*.tischwelt.de/"
              },
              {
                "type": 1,
                "string": "https://*.tlc-direct.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.tom-tailor.de/"
              },
              {
                "type": 1,
                "string": "https://*.tommy.com/"
              },
              {
                "type": 1,
                "string": "https://*.toms-car-hifi.de/"
              },
              {
                "type": 1,
                "string": "https://*.toolstation.com/"
              },
              {
                "type": 1,
                "string": "https://*.toom.de/"
              },
              {
                "type": 1,
                "string": "https://*.top4running.de/"
              },
              {
                "type": 1,
                "string": "https://*.topman.com/"
              },
              {
                "type": 1,
                "string": "https://*.topshop.com/"
              },
              {
                "type": 1,
                "string": "https://*.tornadosoft.de/"
              },
              {
                "type": 1,
                "string": "https://*.toysrus.es/"
              },
              {
                "type": 1,
                "string": "https://*.tr-de.erwinmueller.com/"
              },
              {
                "type": 1,
                "string": "https://*.tradediscount.com/"
              },
              {
                "type": 1,
                "string": "https://*.trendmoebel24.de/"
              },
              {
                "type": 1,
                "string": "https://*.trouva.com/"
              },
              {
                "type": 1,
                "string": "https://*.tuerklingel-shop.de/"
              },
              {
                "type": 1,
                "string": "https://*.twgdns.com/"
              },
              {
                "type": 1,
                "string": "https://*.tylko.com/"
              },
              {
                "type": 1,
                "string": "https://*.ubaldi.com/"
              },
              {
                "type": 1,
                "string": "https://*.uberkids.com/"
              },
              {
                "type": 1,
                "string": "https://*.ullapopken.de/"
              },
              {
                "type": 1,
                "string": "https://*.underarmour.de/"
              },
              {
                "type": 1,
                "string": "https://*.unieuro.it/"
              },
              {
                "type": 1,
                "string": "https://*.uniqlo.com/"
              },
              {
                "type": 1,
                "string": "https://*.unisportstore.de/"
              },
              {
                "type": 1,
                "string": "https://*.unisportstore.fr/"
              },
              {
                "type": 1,
                "string": "https://*.unopiu.de/"
              },
              {
                "type": 1,
                "string": "https://*.urbanara.de/"
              },
              {
                "type": 1,
                "string": "https://*.valmano.de/"
              },
              {
                "type": 1,
                "string": "https://*.vegaoo.it/"
              },
              {
                "type": 1,
                "string": "https://*.vente-unique.com/"
              },
              {
                "type": 1,
                "string": "https://*.vente-unique.it/"
              },
              {
                "type": 1,
                "string": "https://*.vertbaudet.de/"
              },
              {
                "type": 1,
                "string": "https://*.vertbaudet.es/"
              },
              {
                "type": 1,
                "string": "https://*.vertbaudet.fr/"
              },
              {
                "type": 1,
                "string": "https://*.very.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.victorianplumbing.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.victoriaplum.com/"
              },
              {
                "type": 1,
                "string": "https://*.vidaxl.de/"
              },
              {
                "type": 1,
                "string": "https://*.vidaxl.fr/"
              },
              {
                "type": 1,
                "string": "https://*.vidaxl.it/"
              },
              {
                "type": 1,
                "string": "https://*.viking-direct.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.viking.de/"
              },
              {
                "type": 1,
                "string": "https://*.voelkner.de/"
              },
              {
                "type": 1,
                "string": "https://*.vollversion-kaufen.de/"
              },
              {
                "type": 1,
                "string": "https://*.vonhaus.com/"
              },
              {
                "type": 1,
                "string": "https://*.vonwilmowsky.com/"
              },
              {
                "type": 1,
                "string": "https://*.vossberg.de/"
              },
              {
                "type": 1,
                "string": "https://*.wall-art.de/"
              },
              {
                "type": 1,
                "string": "https://*.wandtattoos.de/"
              },
              {
                "type": 1,
                "string": "https://*.wardow.com/"
              },
              {
                "type": 1,
                "string": "https://*.warenvergleich.de/"
              },
              {
                "type": 1,
                "string": "https://*.wayfair.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.wayfair.de/"
              },
              {
                "type": 1,
                "string": "https://*.weber-grillen.de/"
              },
              {
                "type": 1,
                "string": "https://*.wehkamp.nl/"
              },
              {
                "type": 1,
                "string": "https://*.weidezaun.info/"
              },
              {
                "type": 1,
                "string": "https://*.weltbild.de/"
              },
              {
                "type": 1,
                "string": "https://*.wenko.de/"
              },
              {
                "type": 1,
                "string": "https://*.westfalia.de/"
              },
              {
                "type": 1,
                "string": "https://*.westwing.de/"
              },
              {
                "type": 1,
                "string": "https://*.westwingnow.de/"
              },
              {
                "type": 1,
                "string": "https://*.whitestores.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.whos-perfect.de/"
              },
              {
                "type": 1,
                "string": "https://*.wickey.de/"
              },
              {
                "type": 1,
                "string": "https://*.wiggle.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.wiggle.es/"
              },
              {
                "type": 1,
                "string": "https://*.wiggle.fr/"
              },
              {
                "type": 1,
                "string": "https://*.wigsbuy.com/"
              },
              {
                "type": 1,
                "string": "https://*.wilko.com/"
              },
              {
                "type": 1,
                "string": "https://*.wish.com/"
              },
              {
                "type": 1,
                "string": "https://*.witt-weiden.de/"
              },
              {
                "type": 1,
                "string": "https://*.wohnlicht.com/"
              },
              {
                "type": 1,
                "string": "https://*.wohnmeile.de/"
              },
              {
                "type": 1,
                "string": "https://*.worten.es/"
              },
              {
                "type": 1,
                "string": "https://*.wowcher.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.www2.hm.com/"
              },
              {
                "type": 1,
                "string": "https://*.xboxliveshop.de/"
              },
              {
                "type": 1,
                "string": "https://*.xxxlutz.de/"
              },
              {
                "type": 1,
                "string": "https://*.yeppon.it/"
              },
              {
                "type": 1,
                "string": "https://*.yomonda.de/"
              },
              {
                "type": 1,
                "string": "https://*.yoox.com/"
              },
              {
                "type": 1,
                "string": "https://*.youredo.it/"
              },
              {
                "type": 1,
                "string": "https://*.yourhome.de/"
              },
              {
                "type": 1,
                "string": "https://*.yousporty.com/"
              },
              {
                "type": 1,
                "string": "https://*.zalando.de/"
              },
              {
                "type": 1,
                "string": "https://*.zalando.es/"
              },
              {
                "type": 1,
                "string": "https://*.zalando.fr/"
              },
              {
                "type": 1,
                "string": "https://*.zalando.it/"
              },
              {
                "type": 1,
                "string": "https://*.zapatos.es/"
              },
              {
                "type": 1,
                "string": "https://*.zarahome.com/"
              },
              {
                "type": 1,
                "string": "https://*.zeytech.de/"
              },
              {
                "type": 1,
                "string": "https://*.zoomalia.com/"
              },
              {
                "type": 1,
                "string": "https://*.zooplus.de/"
              },
              {
                "type": 1,
                "string": "https://*.zooplus.fr/"
              },
              {
                "type": 1,
                "string": "https://*.zoro.co.uk/"
              },
              {
                "type": 1,
                "string": "https://*.zweirad-stadler.de/"
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


___TESTS___

scenarios:
- name: Failure No Event
  code: "mock('sendPixel', function(url, onSuccess, onFailure) {\n    onSuccess();\n\
    });\n\nmock('queryPermission', true);\n\nmock('copyFromDataLayer', function(DLVar){\n\
    \  if (DLVar == 'twenga_order_id') {return 123;}\n  else if (DLVar == 'twenga_currency')\
    \ {return 'EUR';}\n  else if (DLVar == 'twenga_items') {return [{'price':10.00,'id':666666,'quantity':1}];}\n\
    \  else{return false;}\n});\n\n// Call runCode to run the template's code.\nrunCode({\n\
    \  event: undefined, \n  host:'https://twenga.twgdns.com', \n  masterSiteId:666,\n\
    \  order_id_key:'twenga_order_id',\n  order_items_key:'twenga_items',\n  order_attribution_weight_key:'twenga_attribution_weight',\n\
    \  item_ref_id_key:'id',\n  item_price_key:'price',\n  item_quantity_key:'quantity',\n\
    \  item_variant_id_key:'variant_id',\n  product_price_key:'twenga_price',\n  product_ref_id_key:'twenga_ref_id',\n\
    \  product_variant_id:'twenga_variant_id'\n});\n\n// Verify that the tag finished\
    \ with failure.\nassertApi('gtmOnFailure').wasCalled();"
- name: Failure - No host
  code: "mock('sendPixel', function(url, onSuccess, onFailure) {\n    onSuccess();\n\
    });\n\nmock('queryPermission', true);\n\nmock('copyFromDataLayer', function(DLVar){\n\
    \  if (DLVar == 'twenga_order_id') {return 123;}\n  else if (DLVar == 'twenga_currency')\
    \ {return 'EUR';}\n  else if (DLVar == 'twenga_items') {return [{'price':10.00,'id':666666,'quantity':1}];}\n\
    \  else{return false;}\n});\n\n// Call runCode to run the template's code.\nrunCode({\n\
    \  vent: 'tx', \n  host:undefined, \n  masterSiteId:666,\n  order_id_key:'twenga_order_id',\n\
    \  order_items_key:'twenga_items',\n  order_attribution_weight_key:'twenga_attribution_weight',\n\
    \  item_ref_id_key:'id',\n  item_price_key:'price',\n  item_quantity_key:'quantity',\n\
    \  item_variant_id_key:'variant_id',\n  product_price_key:'twenga_price',\n  product_ref_id_key:'twenga_ref_id',\n\
    \  product_variant_id:'twenga_variant_id'});\n\n// Verify that the tag finished\
    \ with failure.\nassertApi('gtmOnFailure').wasCalled();"
- name: Failure Send Pixel error
  code: "mock('sendPixel', function(url, onSuccess, onFailure) {\n    onFailure();\n\
    });\n\nmock('queryPermission', true);\n\nmock('copyFromDataLayer', function(DLVar){\n\
    \  if (DLVar == 'twenga_order_id') {return 123;}\n  else if (DLVar == 'twenga_currency')\
    \ {return 'EUR';}\n  else if (DLVar == 'twenga_items') {return [{'price':10.00,'id':666666,'quantity':1}];}\n\
    \  else{return false;}\n});\n\n// Call runCode to run the template's code.\nrunCode({\n\
    \  event: 'tx', \n  host:'https://twenga.twgdns.com', \n  masterSiteId:666,\n\
    \  order_id_key:'twenga_order_id',\n  order_items_key:'twenga_items',\n  order_attribution_weight_key:'twenga_attribution_weight',\n\
    \  item_ref_id_key:'id',\n  item_price_key:'price',\n  item_quantity_key:'quantity',\n\
    \  item_variant_id_key:'variant_id',\n  product_price_key:'twenga_price',\n  product_ref_id_key:'twenga_ref_id',\n\
    \  product_variant_id:'twenga_variant_id'});\n\n// Verify that the tag finished\
    \ with failure.\nassertApi('gtmOnFailure').wasCalled();"
- name: Product - Success
  code: "mock('sendPixel', function(url, onSuccess, onFailure) {\n    onSuccess();\n\
    });\n\nmock('queryPermission', true);\n\nmock('copyFromDataLayer', function(DLVar){\n\
    \  if (DLVar == 'twenga_ref_id') {return 21;}\n  else if (DLVar == 'twenga_price')\
    \ {return 15.26;}\n  else if (DLVar == 'twenga_variant_id') {return '123ABC';}\n\
    \  else{return false;}\n});\n\n// Call runCode to run the template's code.\nlet\
    \ sUrl = runCode({\n  event: 'pp', \n  host:'https://twenga.twgdns.com', \n  masterSiteId:666,\
    \ \n  currency:'PLN',\n  order_id_key:'twenga_order_id',\n  order_items_key:'twenga_items',\n\
    \  order_attribution_weight_key:'twenga_attribution_weight',\n  item_ref_id_key:'id',\n\
    \  item_price_key:'price',\n  item_quantity_key:'quantity',\n  item_variant_id_key:'variant_id',\n\
    \  product_price_key:'twenga_price',\n  product_ref_id_key:'twenga_ref_id',\n\
    \  product_variant_id:'twenga_variant_id'\n});\n\n// Verify that the tag finished\
    \ successfully.\nassertApi('gtmOnSuccess').wasCalled();"
- name: Product - Success - Minimum params
  code: "mock('sendPixel', function(url, onSuccess, onFailure) {\n    onSuccess();\n\
    });\n\nmock('queryPermission', true);\n\nmock('copyFromDataLayer', function(DLVar){\n\
    \  if (DLVar == 'twenga_ref_id') {return undefined;}\n  else if (DLVar == 'twenga_currency')\
    \ {return undefined;}\n  else if (DLVar == 'twenga_price') {return undefined;}\n\
    \  else{return false;}\n});\n\n// Call runCode to run the template's code.\nrunCode({\n\
    \  event: 'pp', \n  host:'https://twenga.twgdns.com', \n  masterSiteId:undefined,\n\
    \  order_id_key:'twenga_order_id',\n  order_items_key:'twenga_items',\n  order_attribution_weight_key:'twenga_attribution_weight',\n\
    \  item_ref_id_key:'id',\n  item_price_key:'price',\n  item_quantity_key:'quantity',\n\
    \  item_variant_id_key:'variant_id',\n  product_price_key:'twenga_price',\n  product_ref_id_key:'twenga_ref_id',\n\
    \  product_variant_id:'twenga_variant_id'});\n\n// Verify that the tag finished\
    \ successfully.\nassertApi('gtmOnSuccess').wasCalled();"
- name: Transaction - Success
  code: "mock('sendPixel', function(url, onSuccess, onFailure) {\n    onSuccess();\n\
    });\n\nmock('queryPermission', true);\n\n\nmock('copyFromDataLayer', function(DLVar){\n\
    \  if (DLVar == 'twenga_order_id') {return 123;}\n  else if (DLVar == 'twenga_currency')\
    \ {return 'EUR';}\n  else if (DLVar == 'twenga_items') {return [{'price':10.00,'id':666666,'quantity':1,'variant_id':'123ABC'},{'price':15.99,'id':784469,'quantity':8,'variant_id':'123ABC'},{'price':15048.43,'id':13548,'quantity':2,'variant_id':'123ABC'}];}\n\
    \  else{return false;}\n});\n\n// Call runCode to run the template's code.\nrunCode({\n\
    \  event: 'tx', \n  host:'https://twenga.twgdns.com', \n  masterSiteId:666,\n\
    \  order_id_key:'twenga_order_id',\n  order_items_key:'twenga_items',\n  order_attribution_weight_key:'twenga_attribution_weight',\n\
    \  item_ref_id_key:'id',\n  item_price_key:'price',\n  item_quantity_key:'quantity',\n\
    \  item_variant_id_key:'variant_id',\n  product_price_key:'twenga_price',\n  product_ref_id_key:'twenga_ref_id',\n\
    \  product_variant_id:'twenga_variant_id'});\n\n// Verify that the tag finished\
    \ successfully.\nassertApi('gtmOnSuccess').wasCalled();"
- name: Transaction - Success - Missing order_id
  code: "mock('sendPixel', function(url, onSuccess, onFailure) {\n    onSuccess();\n\
    });\n\nmock('queryPermission', true);\n\nmock('copyFromDataLayer', function(DLVar){\n\
    \  if (DLVar == 'twenga_order_id') {return undefined;}\n  else if (DLVar == 'twenga_currency')\
    \ {return 'EUR';}\n  else if (DLVar == 'twenga_items') {return [{'price':10.00,'id':666666,'quantity':1}];}\n\
    \  else{return false;}\n});\n\n// Call runCode to run the template's code.\nrunCode({\n\
    \  event: 'tx', \n  host:'https://twenga.twgdns.com', \n  masterSiteId:666,\n\
    \  order_id_key:'twenga_order_id',\n  order_items_key:'twenga_items',\n  order_attribution_weight_key:'twenga_attribution_weight',\n\
    \  item_ref_id_key:'id',\n  item_price_key:'price',\n  item_quantity_key:'quantity',\n\
    \  item_variant_id_key:'variant_id',\n  product_price_key:'twenga_price',\n  product_ref_id_key:'twenga_ref_id',\n\
    \  product_variant_id:'twenga_variant_id'\n});\n\n// Verify that the tag finished\
    \ with failure.\nassertApi('gtmOnSuccess').wasCalled();"
- name: Transaction - Success - Missing Currency (Defaults to EUR)
  code: "mock('sendPixel', function(url, onSuccess, onFailure) {\n    onSuccess();\n\
    });\n\nmock('queryPermission', true);\n\nmock('copyFromDataLayer', function(DLVar){\n\
    \  if (DLVar == 'twenga_order_id') {return 123;}\n  else if (DLVar == 'twenga_currency')\
    \ {return  undefined;}\n  else if (DLVar == 'twenga_items') {return [{'price':10.00,'id':666666,'quantity':1},{'price':15.99,'id':784469,'quantity':8},{'price':15048.43,'id':13548,'quantity':2}];}\n\
    \  else{return false;}\n});\n\n// Call runCode to run the template's code.\nrunCode({\n\
    \  event: 'tx', \n  host:'https://twenga.twgdns.com', \n  masterSiteId:666,\n\
    \  order_id_key:'twenga_order_id',\n  order_items_key:'twenga_items',\n  order_attribution_weight_key:'twenga_attribution_weight',\n\
    \  item_ref_id_key:'id',\n  item_price_key:'price',\n  item_quantity_key:'quantity',\n\
    \  item_variant_id_key:'variant_id',\n  product_price_key:'twenga_price',\n  product_ref_id_key:'twenga_ref_id',\n\
    \  product_variant_id:'twenga_variant_id'});\n\n// Verify that the tag finished\
    \ successfully.\nassertApi('gtmOnSuccess').wasCalled();"
- name: Transaction - Success - Minimum params
  code: "mock('sendPixel', function(url, onSuccess, onFailure) {\n    onSuccess();\n\
    });\n\nmock('queryPermission', true);\n\nmock('copyFromDataLayer', function(DLVar){\n\
    \  if (DLVar == 'twenga_order_id') {return undefined;}\n  else if (DLVar == 'twenga_currency')\
    \ {return undefined;}\n  else if (DLVar == 'twenga_items') {return undefined;}\n\
    \  else{return false;}\n});\n\n// Call runCode to run the template's code.\nrunCode({\n\
    \  event: 'tx', \n  host:'https://twenga.twgdns.com', \n  masterSiteId:undefined,\n\
    \  order_id_key:'twenga_order_id',\n  order_items_key:'twenga_items',\n  order_attribution_weight_key:'twenga_attribution_weight',\n\
    \  item_ref_id_key:'id',\n  item_price_key:'price',\n  item_quantity_key:'quantity',\n\
    \  item_variant_id_key:'variant_id',\n  product_price_key:'twenga_price',\n  product_ref_id_key:'twenga_ref_id',\n\
    \  product_variant_id:'twenga_variant_id'\n});\n\n// Verify that the tag finished\
    \ successfully.\nassertApi('gtmOnSuccess').wasCalled();"
- name: Transaction - Success - Missing variant_id
  code: "mock('sendPixel', function(url, onSuccess, onFailure) {\n    onSuccess();\n\
    });\n\nmock('queryPermission', true);\n\n\nmock('copyFromDataLayer', function(DLVar){\n\
    \  if (DLVar == 'twenga_order_id') {return 123;}\n  else if (DLVar == 'twenga_currency')\
    \ {return 'EUR';}\n  else if (DLVar == 'twenga_items') {return [{'price':10.00,'id':666666,'quantity':1},{'price':15.99,'id':784469,'quantity':8},{'price':15048.43,'id':13548,'quantity':2}];}\n\
    \  else{return false;}\n});\n\n// Call runCode to run the template's code.\nrunCode({\n\
    \  event: 'tx', \n  host:'https://twenga.twgdns.com', \n  masterSiteId:666,\n\
    \  order_id_key:'twenga_order_id',\n  order_items_key:'twenga_items',\n  order_attribution_weight_key:'twenga_attribution_weight',\n\
    \  item_ref_id_key:'id',\n  item_price_key:'price',\n  item_quantity_key:'quantity',\n\
    \  item_variant_id_key:'variant_id',\n  product_price_key:'twenga_price',\n  product_ref_id_key:'twenga_ref_id',\n\
    \  product_variant_id:'twenga_variant_id'\n});\n\n// Verify that the tag finished\
    \ successfully.\nassertApi('gtmOnSuccess').wasCalled();"
- name: Product - Success - Setting custom dataLayer vars
  code: "mock('sendPixel', function(url, onSuccess, onFailure) {\n    onSuccess();\n\
    });\n\nmock('queryPermission', true);\n\nmock('copyFromDataLayer', function(DLVar){\n\
    \  if (DLVar == 'item_ref_id') {return 21;}\n  else if (DLVar == 'item_price')\
    \ {return 15.26;}\n  else if (DLVar == 'item_variant_id') {return '123ABC';}\n\
    \  else{return false;}\n});\n\n// Call runCode to run the template's code.\nlet\
    \ sUrl = runCode({\n  event: 'pp', \n  host:'https://twenga.twgdns.com', \n  masterSiteId:666,\
    \ \n  currency:'PLN',\n  product_price_key:'item_price',\n  product_ref_id_key:'item_ref_id',\n\
    \  product_variant_id:'item_variant_id'\n});\n\n// Verify that the tag finished\
    \ successfully.\nassertApi('gtmOnSuccess').wasCalled();"
- name: Product - Success - Unmatching dataLayer vars
  code: "mock('sendPixel', function(url, onSuccess, onFailure) {\n    onSuccess();\n\
    });\n\nmock('queryPermission', true);\n\nmock('copyFromDataLayer', function(DLVar){\n\
    \  if (DLVar == 'item_ref_id') {return 21;}\n  else if (DLVar == 'item_price')\
    \ {return 15.26;}\n  else if (DLVar == 'item_variant_id') {return '123ABC';}\n\
    \  else{return false;}\n});\n\n// Call runCode to run the template's code.\nlet\
    \ sUrl = runCode({\n  event: 'pp', \n  host:'https://twenga.twgdns.com', \n  masterSiteId:666,\
    \ \n  currency:'PLN',\n  product_price_key:'price',\n  product_ref_id_key:'ref_id',\n\
    \  product_variant_id:'variant_id'\n});\n\n// Verify that the tag finished successfully.\n\
    assertApi('gtmOnSuccess').wasCalled();"


___NOTES___

Created on 01/04/2020 à 17:25:14


