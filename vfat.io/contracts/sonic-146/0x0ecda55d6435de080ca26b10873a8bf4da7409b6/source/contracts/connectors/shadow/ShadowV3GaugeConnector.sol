// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import { IShadowGaugeV3 } from
    "contracts/interfaces/external/shadow/IShadowGaugeV3.sol";
import { IShadowNonfungiblePositionManager } from
    "contracts/interfaces/external/shadow/IShadowNonfungiblePositionManager.sol";

import {
    INftFarmConnector,
    NftPosition
} from "contracts/interfaces/INftFarmConnector.sol";
import {
    ShadowClaimExtraData,
    ShadowRewardBehavior,
    IX33,
    IXShadow
} from "contracts/connectors/shadow/ShadowClaimStructs.sol";

contract ShadowV3GaugeConnector is INftFarmConnector {
    address constant X_SHADOW = 0x5050bc082FF4A74Fb6B0B04385dEfdDB114b2424;
    address constant X33_ADAPTER = 0x9710E10A8f6FbA8C391606fee18614885684548d;

    function depositExistingNft(
        NftPosition calldata,
        bytes calldata // extraData
    ) external payable { }

    function withdrawNft(
        NftPosition calldata,
        bytes calldata // extraData
    ) external payable { }
    // Payable in case an NFT is withdrawn to be increased with ETH

    function claim(
        NftPosition calldata position,
        address[] memory, // rewardTokens not used here
        uint128, // maxAmount0
        uint128, // maxAmount1
        bytes calldata extraData
    ) external payable {
        ShadowClaimExtraData memory extra =
            abi.decode(extraData, (ShadowClaimExtraData));
        try IShadowNonfungiblePositionManager(address(position.nft)).getReward(
            position.tokenId, extra.claimTokens
        ) {
            // Claim from old gauge for any old rewards, can throw if the old
            // gauge is empty
        } catch { }
        IShadowGaugeV3(position.farm.stakingContract).getReward(
            position.tokenId, extra.claimTokens
        );
        uint256 rewards = IERC20(X_SHADOW).balanceOf(address(this));
        IERC20(X_SHADOW).approve(X33_ADAPTER, rewards);
        if (rewards > 0) {
            if (extra.behavior == ShadowRewardBehavior.X33) {
                IX33(X33_ADAPTER).deposit(rewards, address(this));
            } else if (extra.behavior == ShadowRewardBehavior.Exit) {
                IXShadow(X_SHADOW).exit(rewards);
            } // else keep in xShadow on Sickle
        }
    }
}
