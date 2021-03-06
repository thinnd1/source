// ItemsetCollection.js

'use strict';

class ItemsetCollection extends Array {
    constructor() {
        super();
    }
    //lấy từng sản phẩm độc nhất
    getUniqueItems() {
        let uniqueItems = new Itemset();

        for (var index in this) {
            let itemset = this[index];
            for (var i = 0; i < itemset.length; i += 1) {
                if (!uniqueItems.includes(itemset[i])) {
                    uniqueItems.push(itemset[i]);
                }
            }
        }
        console.log('uniqueItems'+ uniqueItems);
        return uniqueItems;
    }
    //tìm độ support min
    findSupport(itemset) {
        let matchCount = 0;
        for (var index in this) {
            let is = this[index];
            if (is.includesItemset(itemset)) {
                matchCount += 1;
            }
        }

        let support = (matchCount / this.length) * 100.0;
        return support;
    }

    clear() {
        this.length = 0;
    }

    toString() {
        return this.join('\n');
    }
}
