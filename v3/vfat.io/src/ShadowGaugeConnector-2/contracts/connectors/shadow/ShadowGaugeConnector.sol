// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IFarmConnector, Farm } from "contracts/interfaces/IFarmConnector.sol";
import { IGauge } from "contracts/interfaces/external/aerodrome/IGauge.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeTransferLib } from "solmate/utils/SafeTransferLib.sol";
import { IRamsesGauge } from
    "contracts/interfaces/external/ramses/IRamsesGauge.sol";
import { RamsesGaugeConnector } from
    "contracts/connectors/ramses/RamsesGaugeConnector.sol";

struct ShadowClaimExtraData {
    address[] rewardTokens;
}

contract ShadowGaugeConnector is IFarmConnector {
    function deposit(
        Farm calldata farm,
        address token,
        bytes memory // _extraData
    ) external payable override {
        uint256 amount = IERC20(token).balanceOf(address(this));
        SafeTransferLib.safeApprove(token, farm.stakingContract, amount);
        IGauge(farm.stakingContract).deposit(amount);
    }

    function withdraw(
        Farm calldata farm,
        uint256 amount,
        bytes memory // _extraData
    ) external override {
        IRamsesGauge(farm.stakingContract).withdraw(amount);
    }

    function claim(
        Farm calldata farm,
        bytes memory _extraData
    ) external override {
        ShadowClaimExtraData memory extraData =
            abi.decode(_extraData, (ShadowClaimExtraData));
        IRamsesGauge(farm.stakingContract).getReward(
            address(this), extraData.rewardTokens
        );
    }
}
