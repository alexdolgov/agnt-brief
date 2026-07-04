// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ILeverageRouter} from "src/periphery/LeverageRouter.sol";
import {IDeleverageRouter} from "src/periphery/DeleverageRouter.sol";
import {IBaseManagedLeveragedVault} from "src/interfaces/core/mlv/base/IBaseManagedLeveragedVault.sol";

interface IManagedLeveragedVaultV1 is IBaseManagedLeveragedVault {
    // --- Core Actions ----------------------------------------
    function increaseLeverage(bytes calldata leveragePayload) external;
    
    function decreaseLeverage(bytes calldata deleveragePayload) external;

    function openPosition(
        bytes calldata openPositionPayload,
        address swapRouter,
        bytes memory dexPayload,
        bytes calldata leveragePayload
    ) external;

    // --- View Getters ----------------------------------------
    function getMarginBalance() external view returns (uint256);
    function getExposureBalance() external view returns (uint256);
    function getExposureValue() external view returns (uint256);
}
