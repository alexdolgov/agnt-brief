// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.9;

interface ITreasuryTracker {
    struct FractionIdData {
        address tnft;
        uint256 tnftTokenId;
        uint256 share;
        uint256 fractionId;
    }

    function tnftTreasuryPlaced(
        address tnft,
        uint256 tokenId,
        bool placed
    ) external;

    function ftnftTreasuryPlaced(
        address ftnft,
        uint256 tokenId,
        bool placed
    ) external;

    function updateFractionData(address ftnft, uint256 tokenId) external;

    function getFractionTokensDataInTreasury(address ftnft)
        external
        view
        returns (FractionIdData[] memory fData);
}
