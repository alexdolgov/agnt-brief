// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.17;

import {IERC721MetadataUpgradeable} from
    "lib/openzeppelin-contracts-upgradeable/contracts/token/ERC721/extensions/IERC721MetadataUpgradeable.sol";
import {IKUMAAddressProvider} from "./IKUMAAddressProvider.sol";

interface IKBCToken is IERC721MetadataUpgradeable {
    event KUMAAddressProviderSet(address KUMAAddressProvider);
    event CloneBondIssued(uint256 ghostId, CloneBond cloneBond);
    event CloneBondRedeemed(uint256 ghostId, uint256 parentId);
    event UriSet(string oldUri, string newUri);

    /**
     * @param parentId Token id of the part KUMABondToken.
     * @param issuance Timestamp of the CloneBond issuance. Overwrites the parent's issuance.
     * @param coupon Clone bond coupon overriding the parent's.
     * Is set to lowest yield of central bank rate and minCoupon at the time of issuance.
     * @param principal Clone bond principal override the parent's. Is set to the bond realized value at issuance.
     */
    struct CloneBond {
        uint256 parentId;
        uint256 issuance;
        uint256 coupon;
        uint256 principal;
    }

    function initialize(IKUMAAddressProvider KUMAAddressProvider) external;

    function issueBond(address to, CloneBond memory cBond) external returns (uint256 tokenId);

    function redeem(uint256 tokenId) external;

    function setUri(string memory newUri) external;

    function getKUMAAddressProvider() external returns (IKUMAAddressProvider);

    function getBaseURI() external view returns (string memory);

    function getBond(uint256) external view returns (CloneBond memory);

    function getTokenIdCounter() external returns (uint256);
}
