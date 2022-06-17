'use strict';

/**
 * nft-asset service.
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::nft-asset.nft-asset');
