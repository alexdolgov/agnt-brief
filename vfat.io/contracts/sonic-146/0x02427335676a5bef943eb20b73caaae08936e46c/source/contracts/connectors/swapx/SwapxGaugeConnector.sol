// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IFarmConnector, Farm } from "contracts/interfaces/IFarmConnector.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeTransferLib } from "solmate/utils/SafeTransferLib.sol";
import { ISwapxGauge } from
    "contracts/interfaces/external/swapx/ISwapxGauge.sol";

contract SwapxGaugeConnector is IFarmConnector {
    function deposit(
        Farm calldata farm,
        address token,
        bytes memory
    ) external payable override {
        uint256 amount = IERC20(token).balanceOf(address(this));
        SafeTransferLib.safeApprove(token, farm.stakingContract, amount);
        ISwapxGauge(farm.stakingContract).deposit(amount);
    }

    function withdraw(
        Farm calldata farm,
        uint256 amount,
        bytes memory
    ) external override {
        ISwapxGauge(farm.stakingContract).withdraw(amount);
    }

    function claim(Farm memory farm, bytes memory) external override {
        ISwapxGauge(farm.stakingContract).claimFees();
        ISwapxGauge(farm.stakingContract).getReward();
    }
}
