# Implement the Twenga Pixel via Google Tag Manager

## Overview
To implement the Twenga Pixel via Google Tag Manager, complete the following 4 steps:
* Set variables
* Map or Update Data Layer
* Install the Twenga Pixel tag
* Setup Triggers

## Set variables
The Twenga Pixel tag requires a set of variables to be created in your Google Tag Manager.

* In your Google Tag Manager, go to 'Variables'
* Create the following 'twenga_' prefixed variables, all variables should be created as 'Data Layer variables':
  * twenga_attribution_weight (Decimal): Weight of attribution attributed to Twenga. Decimal value between 0 and 1. A "." must be used as a separator of the decimal part. Do not fill-in this value when attribution process is not real-time.
  * twenga_order_id (Character String): Identifier of the order. Ex: 4587_HYTR
  * twenga_items (Array): List of products
  * twenga_ref_id: (Character string): Product reference
  * twenga_price: (Decimal): Product price, excluding taxes

For any of the above variables:
* if the corresponding data is already available in an existing Data Layer variable, you can simply map the 'twenga_' variable to that existing variable. That is done by clicking the mapping button, next to the "variable name" field in the variable edition form.
* If the data is not already available in the Data Layer, the variable will need to be filled through a "Data Layer script" (see below).

## Map or Update Data Layer
Every Data Layer variable that couldn't be mapped to an existing one will need to be filled with the appropriate data from the application. This is done through some Javascript code that should be executed on each page that requires tracking (Product and/or transaction confirmation pages).

The Data Layer script must be placed ABOVE the Google Tag Manager tag in your pages => Google Tag Manager documentation

Here is an example of a Data Layer script for the product page:

```javascript
window.dataLayer = window.dataLayer || [];
window.dataLayer.push({
    'twenga_ref_id':document.getElementById("product_info").getAttribute('data-id'),
    'twenga_price':document.getElementById("product_info").getAttribute('data-price')
});
```

The above script first declares the dataLayer array and then pushes collected data to dataLayer variables.

Below, an example of a Data Layer script for the transaction confirmation page:

```javascript
window.dataLayer = window.dataLayer || [];
var aCollectedItems = [];
var aItems = document.getElementsByClassName("item");
for (var i = aItems.length - 1; i >= 0; i--)
{
    aCollectedItems.push({
        'id': aItems[i].dataset.id,
        'quantity': aItems[i].dataset.qty,
        'price': aItems[i].dataset.price
    });
}
window.dataLayer.push({
    'twenga_order_id':document.getElementById("order_info").getAttribute('data-order_id'),
    'twenga_attribution_weight':document.getElementById("order_info").getAttribute('data-attribution_weight'),
    'twenga_items':aCollectedItems
});
```

The above script first declares the Data Layer array, collects the order and its items data and then pushes these to dataLayer variables.

If your application already uses a Data Layer script, some of the necessary data might already be assigned to existing Data Layer variables. If so, you can map the 'twenga_' variables to the appropriate existing variables so they contain the same data, see Variables.

Items attributes ("id", "price" and "quantity") are not directly reachable through Data Layer. Instead, only a "twenga_items" variable is expected and refers to an array of item objects. Each item object must have at least three attributes.:

* id: product's reference
* price: price excluding taxes
* quantity: number of occurrences of this product in the order

## Install the Twenga Pixel tag
In your Google Tag Manager, go to 'Tags" > New, click on 'Tag Configuration' and look for our 'Twenga Pixel' tag that should be listed in the community submitted tag templates.

Configure the following settings:
* master_site_id: This is your Twenga client's identifier. Ask your Account Manager to get your client identifier number.
* host: This is the tracker's web host, to which tracked events will be sent. Ask your Account Manager to get your tracking host name.
* event: The type of event to be tracked with this tag. Types of events are:
  * Product: Track a product display, its reference, price and currency.
  * Transaction: Track a transaction confirmation, its reference, attribution weight, currency and the list of items (each with its reference, price and quantity).
* currency: You can either set a currency which will be used for all tracked events, or you can map this field to an existing Data Layer variable in your Google Tag Manager that already contains the currency to be tracked. Please be sure that currency is set in ISO 4217 currency code.

You should create a tag for each type of event, both using the Twenga Pixel tag template.

## Setup Triggers
Each tag should be associated with a trigger, depending on the type of event it is meant to be tracking.

### Product

The Twenga Pixel tag for product display events should be executed on any product page display. Our first suggestion is as follow.

* In your Google Tag Manager, go to 'Triggers" > New' click on 'Configure Trigger'
* In the list of trigger types, under 'Page view',select 'DOM Ready'.
* Configure the trigger by switching the 'This trigger fires on' parameter to 'Some DOM Ready Events'. An inline form should appear, containing 3 inputs:
  * In the first drop down list, select 'Page URL'.
  * In the second list, select 'contains'.
  * In the last field, specify a string of characters that is always present in the product page URLs. Note that you should specify a string that only appears in product page URLs in order to avoid firing the Twenga Pixel tag on inappropriate pages.

Alternatively, there might be an already existing Data Layer variable that contains the type of the current page. If this is the case, you might create a trigger as follow:

* In your Google Tag Manager, go to 'Triggers' > New, click on 'Configure Trigger'.
* In the list of trigger types, under 'Page view',select 'DOM Ready'.
* Configure the trigger by switching the 'This trigger fires on' parameter to 'Some DOM Ready Events'. An inline form should appear, containing 3 inputs:
  * In the first drop down list, select the Data Layer variable that contains the current page type.
  * In the second list, select 'equals'.
  * In the last field, specify the expected value of the 'page type' Data Layer variable for the product page.

You might very well use an existing trigger that is already configured to fire on the product page and associate it to the Twenga Pixel tag.

### Transaction confirmation

The Twenga Pixel for transaction confirmation events tag should be executed when a transaction has been completed.

We suggest creating this trigger the same way you created the one for product displays. Simply specify a string that appears in the transaction confirmation page's URL or the expected value of the 'page type' Data Layer variable for the transaction confirmation page.

This documentation is also available on Twenga Solutions : https://www.twenga-solutions.com/en/gtmt.
