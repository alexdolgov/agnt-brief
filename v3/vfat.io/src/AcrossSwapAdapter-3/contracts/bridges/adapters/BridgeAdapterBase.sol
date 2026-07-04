// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import { SafeTransferLib } from "solmate/utils/SafeTransferLib.sol";
import { GuardianAdmin } from "contracts/base/GuardianAdmin.sol";

/// @title BridgeAdapterBase
/// @notice Shared base for bridge adapters: endpoint whitelist + rescue.
abstract contract BridgeAdapterBase is GuardianAdmin {
    error NotWhitelistedBridgeEndpoint();

    event WhitelistedBridgeEndpointSet(address endpoint, bool whitelisted);

    mapping(address => bool) public whitelistedBridgeEndpoints;
    address[] private _bridgeEndpoints;
    mapping(address => uint256) private _bridgeEndpointIndexPlusOne;

    constructor(
        address admin_,
        address guardian_
    ) GuardianAdmin(admin_, guardian_) { }

    /// @notice Enumerate the currently-allowed bridge endpoints.
    function bridgeEndpoints() external view returns (address[] memory) {
        return _bridgeEndpoints;
    }

    function setWhitelistedBridgeEndpoint(
        address endpoint,
        bool whitelisted
    ) external onlyAdmin {
        _setWhitelistedBridgeEndpoint(endpoint, whitelisted);
    }

    /// @notice Emergency-disable a bridge endpoint without waiting on
    /// governance. Re-enabling still requires the admin path.
    function emergencyDisableBridgeEndpoint(
        address endpoint
    ) external onlyGuardianOrAdmin {
        _setWhitelistedBridgeEndpoint(endpoint, false);
    }

    function _setWhitelistedBridgeEndpoint(
        address endpoint,
        bool whitelisted
    ) internal {
        bool currentlyAllowed = whitelistedBridgeEndpoints[endpoint];
        if (currentlyAllowed == whitelisted) return;

        whitelistedBridgeEndpoints[endpoint] = whitelisted;
        if (whitelisted) {
            _bridgeEndpointIndexPlusOne[endpoint] = _bridgeEndpoints.length + 1;
            _bridgeEndpoints.push(endpoint);
        } else {
            uint256 indexPlusOne = _bridgeEndpointIndexPlusOne[endpoint];
            // currentlyAllowed == true so the index must be set
            uint256 index = indexPlusOne - 1;
            uint256 lastIndex = _bridgeEndpoints.length - 1;
            if (index != lastIndex) {
                address last = _bridgeEndpoints[lastIndex];
                _bridgeEndpoints[index] = last;
                _bridgeEndpointIndexPlusOne[last] = index + 1;
            }
            _bridgeEndpoints.pop();
            delete _bridgeEndpointIndexPlusOne[endpoint];
        }
        emit WhitelistedBridgeEndpointSet(endpoint, whitelisted);
    }

    function rescueTokens(
        address token,
        address to,
        uint256 amount
    ) external virtual onlyAdmin {
        SafeTransferLib.safeTransfer(token, to, amount);
    }

    function rescueETH(
        address to
    ) external virtual onlyAdmin {
        SafeTransferLib.safeTransferETH(to, address(this).balance);
    }

    function _onlyWhitelistedEndpoint() internal view {
        if (!whitelistedBridgeEndpoints[msg.sender]) {
            revert NotWhitelistedBridgeEndpoint();
        }
    }

    /// @dev Forward up to `amount` tokens to `to`, capped to actual balance.
    /// Handles fee-on-transfer tokens and bridge under-delivery.
    function _forwardAvailable(
        address token,
        address to,
        uint256 amount
    ) internal returns (uint256 sent) {
        uint256 available = _tokenBalance(token);
        sent = available < amount ? available : amount;
        if (sent > 0) {
            SafeTransferLib.safeTransfer(token, to, sent);
        }
    }

    function _tokenBalance(
        address token
    ) internal view returns (uint256) {
        (bool success, bytes memory data) = token.staticcall(
            abi.encodeWithSelector(0x70a08231, address(this))
        );
        if (!success || data.length < 32) return 0;
        return abi.decode(data, (uint256));
    }
}
