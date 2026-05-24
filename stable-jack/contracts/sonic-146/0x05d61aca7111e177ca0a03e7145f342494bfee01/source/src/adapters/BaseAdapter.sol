// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { IPuppeteer } from "../interfaces/IPuppeteer.sol";
import { IAdapter } from "../interfaces/IAdapter.sol";
import { Adapter } from "../libraries/Adapter.sol";
import { MarionetteKey } from "../types/MarionetteKey.sol";
import { Marionette } from "../libraries/Marionette.sol";

abstract contract BaseAdapter is IAdapter {
    error NotPuppeteer();
    error NotSelf();
    error InvalidMarionette();
    error AdapterNotImplemented();

    /// @notice The address of the puppeteer
    IPuppeteer public immutable PUPPETEER;

    constructor(IPuppeteer _puppeteer) {
        PUPPETEER = _puppeteer;
        validateAdapterAddress(this);
    }

    /// @dev Only the puppeteer may call this function
    modifier onlyPuppeteer() {
        if (msg.sender != address(PUPPETEER)) revert NotPuppeteer();
        _;
    }

    /// @dev Only marionettes with adapter set to this contract may call this function
    modifier onlyValidMarionettes(IAdapter adapter) {
        if (adapter != this) revert InvalidMarionette();
        _;
    }

    function getAdapterCalls() public pure virtual returns (Adapter.Calls memory);

    // this function is virtual so that we can override it during testing,
    // which allows us to deploy an implementation to any address
    // and then etch the bytecode into the correct address
    function validateAdapterAddress(BaseAdapter _this) internal virtual {
        Adapter.validateAdapterAddress(_this, getAdapterCalls());
    }

    function beforeInitialize(
        address,
        Marionette.VoteConfig memory,
        Marionette.RewardConfig memory,
        Marionette.LockConfig memory,
        bytes calldata
    ) external virtual returns (bytes4) {
        revert AdapterNotImplemented();
    }

    function beforeTransfer(address, address, uint256, bytes calldata) external virtual returns (bytes4) {
        revert AdapterNotImplemented();
    }

    function beforeSetDefaultConfig(address, Marionette.ConfigType calldata, bytes calldata, bytes calldata)
        external
        virtual
        returns (bytes4)
    {
        revert AdapterNotImplemented();
    }

    function beforeSetCustomConfig(address, uint256, Marionette.ConfigType calldata, bytes calldata, bytes calldata)
        external
        virtual
        returns (bytes4)
    {
        revert AdapterNotImplemented();
    }

    function beforeSwap(address, bytes calldata) external virtual returns (bytes4) {
        revert AdapterNotImplemented();
    }

    function beforeClaim(address, uint256, bytes calldata) external virtual returns (bytes4) {
        revert AdapterNotImplemented();
    }

    function beforePause(address, bool, bytes calldata) external virtual returns (bytes4) {
        revert AdapterNotImplemented();
    }

    function execute(address, MarionetteKey calldata, bytes calldata) external virtual returns (bytes4) {
        revert AdapterNotImplemented();
    }
}
