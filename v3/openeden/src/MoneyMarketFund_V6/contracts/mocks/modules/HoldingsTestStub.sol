// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

import {IHoldings} from "../../FT/interfaces/IHoldings.sol";

contract HoldingsTestStub is IHoldings {
    string tokenId;

    uint256 shareHoldings;
    bool hasEnoughHoldingsFlag;

    constructor(string memory _tokenId) {
        tokenId = _tokenId;
    }

    function devSetEnoughHoldings(bool _hasEnoughHoldings) external {
        hasEnoughHoldingsFlag = _hasEnoughHoldings;
    }

    function devSetSharehHoldings(uint256 _shareHoldings) external {
        shareHoldings = _shareHoldings;
    }

    function devGetTokenId() external view returns (string memory) {
        return tokenId;
    }

    function getShareHoldings(
        address
    ) external view override returns (uint256) {
        return shareHoldings;
    }

    function hasEnoughHoldings(
        address,
        uint256
    ) external view override returns (bool) {
        return hasEnoughHoldingsFlag;
    }

    function updateHolderInList(address account) external override {}

    function removeEmptyHolderFromList(address account) external override {}
}
