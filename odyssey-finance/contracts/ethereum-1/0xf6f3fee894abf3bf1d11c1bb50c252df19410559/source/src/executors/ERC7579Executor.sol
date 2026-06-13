// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {IExecutor, IModule} from "kernel/interfaces/IERC7579Modules.sol";
import {MODULE_TYPE_EXECUTOR} from "kernel/types/Constants.sol";
import {IERC7579Account} from "kernel/interfaces/IERC7579Account.sol";
import {ExecLib} from "kernel/utils/ExecLib.sol";
import {Execution} from "kernel/types/Structs.sol";

/**
 * @title Flash-loan executor using ERC-7579 (Minimal Modular Smart Accounts)
 */
abstract contract ERC7579Executor is IModule, IExecutor {
    /// @inheritdoc IModule
    mapping(address smartAccount => bool) public override isInitialized;

    /*//////////////////////////////////////////////////////////////
                          AUTHORIZATION LOGIC
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc IModule
    function onInstall(bytes calldata /*data_*/) external payable virtual override {
        if (isInitialized[msg.sender]) revert AlreadyInitialized(msg.sender);
        isInitialized[msg.sender] = true;
    }

    /// @inheritdoc IModule
    function onUninstall(bytes calldata /*data_*/) external payable virtual override {
        if (!isInitialized[msg.sender]) revert NotInitialized(msg.sender);
        delete isInitialized[msg.sender];
    }

    /*//////////////////////////////////////////////////////////////
                               OVERRIDEN
    //////////////////////////////////////////////////////////////*/

    function _revertIfNotAuthorized(address smartAccount_) internal view virtual {
        if (!isInitialized[smartAccount_]) revert NotInitialized(smartAccount_);
    }

    /// @dev It'll revert if any execution fails
    function _executeOnBehalf(address smartAccount_, Execution[] memory executions_) internal virtual {
        IERC7579Account(smartAccount_).executeFromExecutor(
            ExecLib.encodeSimpleBatch(),
            ExecLib.encodeBatch(executions_)
        );
    }

    /// @dev It'll revert if execution fails
    function _executeOnBehalf(address smartAccount_, Execution memory execution_) internal virtual {
        IERC7579Account(smartAccount_).executeFromExecutor(
            ExecLib.encodeSimpleSingle(),
            ExecLib.encodeSingle(execution_.target, execution_.value, execution_.callData)
        );
    }

    /*//////////////////////////////////////////////////////////////
                           ERC-7579 METADATA
    //////////////////////////////////////////////////////////////*/

    /// @inheritdoc IModule
    function isModuleType(uint256 typeID) external pure override returns (bool) {
        return typeID == MODULE_TYPE_EXECUTOR;
    }
}
