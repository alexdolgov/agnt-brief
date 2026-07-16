// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.24;

import { IAdapter } from "../interfaces/IAdapter.sol";

/// @notice The protocol decides whether to invoke specific adapter by inspecting the leading bits of the address that
/// the adapter contract is deployed to.
/// For example, a adapter contract deployed to address: 0x9000000000000000000000000000000000000000
/// has leading bits "1001" which would cause the "before initialize" and "after transfer" adapter to be used.
library Adapter {
    uint256 internal constant BEFORE_TRANSFER_FLAG = 1 << 159;
    uint256 internal constant BEFORE_SET_DEFAULT_FLAG = 1 << 158;
    uint256 internal constant BEFORE_SET_CUSTOM_FLAG = 1 << 157;
    uint256 internal constant BEFORE_SWAP_FLAG = 1 << 156;
    uint256 internal constant BEFORE_CLAIM_FLAG = 1 << 155;
    uint256 internal constant BEFORE_PAUSE_FLAG = 1 << 154;

    struct Calls {
        bool beforeTransfer;
        bool beforeSetDefaultConfig;
        bool beforeSetCustomConfig;
        bool beforeSwap;
        bool beforeClaim;
        bool beforePause;
    }

    /// @notice Thrown if the address will not lead to the specified adapter calls being called
    /// @param adapter The address of the adapter contract
    error AdapterAddressNotValid(address adapter);

    /// @notice Adapter did not return its selector
    error InvalidAdapterResponse();

    /// @notice Utility function intended to be used in adapter constructors to ensure
    /// the deployed adapter address causes the intended adapter to be called
    /// @param calls The adapter that are intended to be called
    /// @dev calls param is memory as the function will be called from constructors
    function validateAdapterAddress(IAdapter self, Calls memory calls) internal pure {
        if (
            calls.beforeTransfer != shouldCallBeforeTransfer(self)
                || calls.beforeSetDefaultConfig != shouldCallBeforeSetDefaultConfig(self)
                || calls.beforeSetCustomConfig != shouldCallBeforeSetCustomConfig(self)
                || calls.beforeSwap != shouldCallBeforeSwap(self) || calls.beforeClaim != shouldCallBeforeClaim(self)
                || calls.beforePause != shouldCallBeforePause(self)
        ) {
            revert AdapterAddressNotValid(address(self));
        }
    }

    /// @notice Ensures that the adapter address includes at least one adapter flag or dynamic fees, or is the 0 address
    /// @param adapter The adapter to verify
    function isValidAdapterAddress(IAdapter adapter) internal pure returns (bool) {
        return uint160(address(adapter)) >= BEFORE_PAUSE_FLAG;
    }

    function shouldCallBeforeTransfer(IAdapter self) internal pure returns (bool) {
        return uint256(uint160(address(self))) & BEFORE_TRANSFER_FLAG != 0;
    }

    function shouldCallBeforeSetDefaultConfig(IAdapter self) internal pure returns (bool) {
        return uint256(uint160(address(self))) & BEFORE_SET_DEFAULT_FLAG != 0;
    }

    function shouldCallBeforeSetCustomConfig(IAdapter self) internal pure returns (bool) {
        return uint256(uint160(address(self))) & BEFORE_SET_CUSTOM_FLAG != 0;
    }

    function shouldCallBeforeSwap(IAdapter self) internal pure returns (bool) {
        return uint256(uint160(address(self))) & BEFORE_SWAP_FLAG != 0;
    }

    function shouldCallBeforePause(IAdapter self) internal pure returns (bool) {
        return uint256(uint160(address(self))) & BEFORE_PAUSE_FLAG != 0;
    }

    function shouldCallBeforeClaim(IAdapter self) internal pure returns (bool) {
        return uint256(uint160(address(self))) & BEFORE_CLAIM_FLAG != 0;
    }
}
