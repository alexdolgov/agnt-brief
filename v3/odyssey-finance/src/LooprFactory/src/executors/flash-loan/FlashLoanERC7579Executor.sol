// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {SwapAggregator} from "src/components/SwapAggregator.sol";
import {Execution} from "kernel/types/Structs.sol";
import {FlashLoanExecutor} from "./FlashLoanExecutor.sol";
import {ERC7579Executor} from "src/executors/ERC7579Executor.sol";

/**
 * @title Flash-loan executor using ERC-7579 (Minimal Modular Smart Accounts)
 */
contract FlashLoanERC7579Executor is FlashLoanExecutor, ERC7579Executor {
    using Address for address;
    using SafeERC20 for IERC20;

    constructor(
        SwapAggregator swapAggregator_,
        FlashLender[] memory lenders_
    ) FlashLoanExecutor(swapAggregator_, lenders_) {}

    /*//////////////////////////////////////////////////////////////
                               OVERRIDEN
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc FlashLoanExecutor
    function _revertIfNotAuthorized(address smartAccount_) internal view override(ERC7579Executor, FlashLoanExecutor) {
        ERC7579Executor._revertIfNotAuthorized(smartAccount_);
    }

    /// @inheritdoc FlashLoanExecutor
    function _executeOnBehalf(
        address smartAccount_,
        Execution[] memory executions_
    ) internal override(ERC7579Executor, FlashLoanExecutor) {
        ERC7579Executor._executeOnBehalf(smartAccount_, executions_);
    }

    /*//////////////////////////////////////////////////////////////
                           ERC-7579 METADATA
    //////////////////////////////////////////////////////////////*/

    /// @notice The name of the module
    function name() external pure returns (string memory) {
        return "FlashLoanERC7579Executor";
    }

    /// @notice The version of the module
    function version() external pure returns (string memory) {
        return "0.0.1";
    }
}
