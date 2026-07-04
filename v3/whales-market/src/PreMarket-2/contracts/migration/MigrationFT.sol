//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.20;

import "../utils/MappingLog.sol";

interface IPreMarketV2 {
    struct V2Offer {
        uint8 offerType;
        bytes32 tokenId;
        address exToken;
        uint256 amount;
        uint256 value;
        uint256 collateral;
        uint256 status;
        address offeredBy;
        address filledBy;
    }

    function offers(uint256 offerId) external view returns (V2Offer memory);
}

contract MigrationFT {
    function _migrate_before(
        address premarketv2Address,
        address mappingLogAddress,
        uint256 offerId
    )
        internal
        view
        returns (
            bytes32 tokenId,
            uint8 offerType,
            uint256 amount,
            uint256 value,
            address offeredBy,
            address filledBy,
            uint256 status
        )
    {
        // get offerId from PreMarketV2
        IPreMarketV2.V2Offer memory offer = IPreMarketV2(premarketv2Address)
            .offers(offerId);
        // check
        // some check
        require(
            offer.tokenId ==
                0x941a87c4e2f1e81d91569f4fcc292c6998124a31bb3327b8282cd38fd3eb54d2,
            "Import FT only"
        );

        // make sure token already created

        // make sure not import yet
        MappingLog mappingLog = MappingLog(mappingLogAddress);

        bytes32 _mappingFrom = _encode(offer.tokenId, offerId);
        require(
            mappingLog.get(address(this), _mappingFrom) == "",
            "Offer Already Impored"
        );

        // return
        return (
            offer.tokenId,
            offer.offerType,
            offer.amount,
            offer.value,
            offer.offeredBy,
            offer.filledBy,
            offer.status
        );
    }

    function _migrate_after(
        address mappingLogAddress,
        bytes32 tokenId,
        uint256 fromOfferId,
        uint256 toOfferId
    ) internal {
        bytes32 _mappingFrom = _encode(tokenId, fromOfferId);
        bytes32 _mappingTo = _encode(tokenId, toOfferId);
        MappingLog mappingLog = MappingLog(mappingLogAddress);
        mappingLog.save(_mappingFrom, _mappingTo);
    }

    function _encode(
        bytes32 tokenId,
        uint256 offerId
    ) private pure returns (bytes32) {
        return keccak256(abi.encodePacked("ftp", tokenId, offerId));
    }
}
