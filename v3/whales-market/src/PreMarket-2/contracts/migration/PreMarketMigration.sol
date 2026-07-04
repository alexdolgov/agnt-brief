//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.20;

import "../PreMarket.sol";
import "../utils/MappingLog.sol";

import "./MigrationFT.sol";

contract PreMarketMigration is PreMarket, MigrationFT {
    ///////////////////////////
    ////// Migrate V2 Points //////
    ///////////////////////////
    function importFTPointOffer(
        address premarketv2Address,
        address mappingLogAddress,
        uint256 fromId,
        uint256 toId
    ) external onlyRole(OPERATOR_ROLE) {
        for (uint256 id = fromId; id <= toId; id++) {
            _importFTPointOffer(premarketv2Address, mappingLogAddress, id);
        }
    }

    function _importFTPointOffer(
        address premarketv2Address,
        address mappingLogAddress,
        uint256 offerId
    ) internal {
        (
            bytes32 tokenId,
            uint8 offerType,
            uint256 amount,
            uint256 value,
            address offeredBy,
            address filledBy,
            uint256 status
        ) = _migrate_before(premarketv2Address, mappingLogAddress, offerId);

        // create new offer
        _importNewOffer(offeredBy, offerType, tokenId, amount, value, value);
        // new id
        PreMarketStorage storage $ = _getOwnStorage();
        uint256 _newOfferId = $.lastOfferId;

        // offer still open, do nothing
        // offer filled
        if (status == 2) {
            // create order
            address buyer;
            address seller;
            if (offerType == OFFER_BUY) {
                buyer = offeredBy;
                seller = filledBy;
            } else {
                buyer = filledBy;
                seller = offeredBy;
            }
            _fillOffer(_newOfferId, amount, buyer, seller);
        }

        // offer cancelled
        if (status == 3) {
            // update offer status
            Offer storage offer = $.offers[_newOfferId];
            uint256 refundValue;
            if (offer.offerType == OFFER_BUY) {
                refundValue = offer.value;
            } else {
                refundValue = offer.collateral;
            }
            uint256 refundFee = (refundValue * $.config.feeRefund) / WEI6;
            refundValue -= refundFee;

            offer.status = STATUS_OFFER_CANCELLED;
            emit CancelOffer(_newOfferId, refundValue, refundFee, offeredBy);
        }

        // mark as migrate
        _migrate_after(mappingLogAddress, tokenId, offerId, _newOfferId);
    }

    function _importNewOffer(
        address user,
        uint8 offerType,
        bytes32 tokenId,
        uint256 amount,
        uint256 value,
        uint256 collateral
    ) internal {
        PreMarketStorage storage $ = _getOwnStorage();
        // create new offer
        $.offers[++$.lastOfferId] = Offer(
            offerType,
            tokenId,
            address(0),
            amount,
            value,
            collateral,
            0,
            STATUS_OFFER_OPEN,
            user,
            true
        );

        emit NewOffer(
            $.lastOfferId,
            offerType,
            tokenId,
            address(0),
            amount,
            value,
            collateral,
            true,
            user
        );
    }
}
