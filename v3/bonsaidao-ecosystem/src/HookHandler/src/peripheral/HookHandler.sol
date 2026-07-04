pragma solidity 0.8.17;

import { AggregateVaultStorage } from "../storage/AggregateVaultStorage.sol";
import { BaseHandler } from "../BaseHandler.sol";
import { IHookExecutor, HookType } from "../interfaces/IHookExecutor.sol";

contract HookHandler is AggregateVaultStorage, BaseHandler, IHookExecutor {
    address immutable AGGREGATE_VAULT;

    constructor(address _aggregateVault) {
        AGGREGATE_VAULT = _aggregateVault;
    }

    function executeHook(HookType, bytes calldata) external view returns (bytes memory) {
        require(
            msg.sender == AGGREGATE_VAULT || address(this) != SELF, "HookHandler: only aggregate vault or delegate call"
        );
        return hex"";
    }

    function getHook(HookType _type) external view onlyDelegateCall returns (bool _isEnabled, bool _isDelegateHook) {
        (_isEnabled, _isDelegateHook) = _getHook(_type);
    }

    function enableHook(HookType _type, CallType _callType) external onlyDelegateCall {
        _enableHook(_type, _callType);
    }

    function disableHook(HookType _type) external onlyDelegateCall {
        _disableHook(_type);
    }

    function callbackSigs() external pure returns (bytes4[] memory) {
        return new bytes4[](0);
    }

    modifier onlyAggregateVault() {
        require(msg.sender == AGGREGATE_VAULT, "HookHandler: only aggregate vault");
        _;
    }
}
