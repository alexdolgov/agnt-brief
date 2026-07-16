// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IFarmConnector, Farm } from "contracts/interfaces/IFarmConnector.sol";
import { INuriGauge } from "contracts/interfaces/external/nuri/INuriGauge.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeTransferLib } from "solmate/utils/SafeTransferLib.sol";

struct NuriClaimExtraData {
    address[] rewardTokens;
}

contract NuriGaugeConnector is IFarmConnector {
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
        bytes memory _extraData
    ) external override {
        NuriClaimExtraData memory extraData =
            abi.decode(_extraData, (NuriClaimExtraData));
        INuriGauge(farm.stakingContract).getReward(
            address(this), extraData.rewardTokens
        );
        INuriGauge(farm.stakingContract).claimFees();
    }
}
