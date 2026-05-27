// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {
    INftSettingsRegistry,
    RebalanceConfig,
    NftSettings,
    NftKey,
    NftInfo
} from "contracts/interfaces/INftSettingsRegistry.sol";
import { INonfungiblePositionManager } from
    "contracts/interfaces/external/uniswap/INonfungiblePositionManager.sol";
import { Sickle } from "contracts/Sickle.sol";

contract NftSettingsLib {
    error TokenIdUnchanged();

    function resetNftSettings(
        INftSettingsRegistry rebalanceRegistry,
        NftInfo calldata nftInfo
    ) external {
        NftKey memory key = NftKey(
            Sickle(payable(address(this))), nftInfo.nftManager, nftInfo.tokenId
        );
        NftSettings memory settings = rebalanceRegistry.getNftSettings(key);

        INonfungiblePositionManager nftManager =
            INonfungiblePositionManager(key.nftManager);

        uint256 newTokenId = nftManager.tokenOfOwnerByIndex(
            address(this), nftManager.balanceOf(address(this)) - 1
        );

        if (newTokenId == key.tokenId) {
            revert TokenIdUnchanged();
        }

        NftKey memory newKey = NftKey(key.sickle, key.nftManager, newTokenId);

        rebalanceRegistry.resetNftSettings(key, newKey, settings);
    }
}
