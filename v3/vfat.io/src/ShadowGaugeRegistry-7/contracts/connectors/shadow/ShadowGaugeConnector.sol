// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IFarmConnector, Farm } from "contracts/interfaces/IFarmConnector.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeTransferLib } from "solmate/utils/SafeTransferLib.sol";
import { INuriGauge } from "contracts/interfaces/external/nuri/INuriGauge.sol";

import {
    ShadowClaimExtraData,
    ShadowRewardBehavior,
    IX33,
    IXShadow
} from "contracts/connectors/shadow/ShadowClaimStructs.sol";

contract ShadowGaugeConnector is IFarmConnector {
    address constant X_SHADOW = 0x5050bc082FF4A74Fb6B0B04385dEfdDB114b2424;
    address constant X33_ADAPTER = 0x9710E10A8f6FbA8C391606fee18614885684548d;

    function deposit(
        Farm calldata farm,
        address token,
        bytes memory // _extraData
    ) external payable override {
        uint256 amount = IERC20(token).balanceOf(address(this));
        SafeTransferLib.safeApprove(token, farm.stakingContract, amount);
        INuriGauge(farm.stakingContract).deposit(amount);
    }

    function withdraw(
        Farm calldata farm,
        uint256 amount,
        bytes memory // _extraData
    ) external override {
        INuriGauge(farm.stakingContract).withdraw(amount);
    }

    function claim(
        Farm calldata farm,
        bytes memory extraData
    ) external override {
        ShadowClaimExtraData memory extra =
            abi.decode(extraData, (ShadowClaimExtraData));
        INuriGauge(farm.stakingContract).getReward(
            address(this), extra.claimTokens
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
