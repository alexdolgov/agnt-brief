// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {SaleReadable} from "../../common/readable/SaleReadable.sol";

import {IINOReadable} from "./IINOReadable.sol";

import {INOStorage} from "../INOStorage.sol";

/**
 * @title INOReadable
 * @notice Initial NFT Offering contract.
 * @dev Constructor replaced by the `initialize` function in {INOWritable}.
 */
contract INOReadable is
    IINOReadable, // 1 inherited component
    SaleReadable // 5 inherited components
{
    /// @inheritdoc IINOReadable
    function phaseMaxMint(
        string calldata phaseId
    ) public view override returns (uint256) {
        return INOStorage.layout().phaseMaxMint[phaseId];
    }

    /// @inheritdoc IINOReadable
    function inoSetUp()
        public
        view
        override
        returns (INOStorage.SetUp memory)
    {
        return INOStorage.layout().setUp;
    }

    /// @inheritdoc IINOReadable
    function mintedInPhase(
        string calldata phaseId
    ) public view override returns (uint256) {
        return INOStorage.layout().mintedInPhase[phaseId];
    }

    /// @inheritdoc IINOReadable
    function nftCollection() public view override returns (address) {
        return INOStorage.layout().collection;
    }

    function nftCollectionData()
        public
        view
        override
        returns (INOStorage.NFTCollectionData memory)
    {
        return INOStorage.layout().nftData;
    }

    /// @inheritdoc IINOReadable
    function totalMinted() public view override returns (uint256) {
        return INOStorage.layout().totalMinted;
    }
}
