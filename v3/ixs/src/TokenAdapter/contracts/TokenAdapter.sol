// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {ITokenBridge} from "wormhole-solidity-sdk/interfaces/ITokenBridge.sol";
import {NotAnEvmAddress} from "wormhole-solidity-sdk/interfaces/IWormholeRelayer.sol";
import {IWormhole} from "wormhole-solidity-sdk/interfaces/IWormhole.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {IIxsTokenBurnable} from "./interfaces/IIxsTokenBurnable.sol";
import {ITokenAdapter} from "./interfaces/ITokenAdapter.sol";

uint256 constant TOKEN_BRIDGE_PRECISION = 8;
address constant DEAD_ADDRESS = 0x000000000000000000000000000000000000dEaD;

abstract contract TokenAdapter is ITokenAdapter, Initializable, AccessControlUpgradeable, ReentrancyGuardUpgradeable {
    /**
     * @dev Create the storage
     * See https://docs.openzeppelin.com/upgrades-plugins/1.x/writing-upgradeable#storage-gaps
     */
    /// @custom:storage-location erc7201:IxsTokenAdapter
    struct TokenAdapterStorage {
        /// @notice Mapping to track the whitelisted tokens allowed to be bridged through adapter.
        mapping(address => address) wrappedTokensMap;
        /// @notice Reference to the Wormhole Token Bridge contract.
        ITokenBridge tokenBridge;
        /// @notice Reference to the Wormhole Core contract.
        IWormhole wormhole;
        /// @notice Reference to the IXS Token contract.
        IIxsTokenBurnable ixsToken;
        /// @notice Address of the treasury where wormhole-wrapped tokens will be locked.
        address treasury;
        /// @notice Keeps the current state (paused/unpaused) of adapter.
        bool paused;
    }

    /// @dev keccak256("SUPER_ADMIN_ROLE")
    bytes32 public constant SUPER_ADMIN_ROLE = 0x7613a25ecc738585a232ad50a301178f12b3ba8887d13e138b523c4269c47689;
    /// @dev keccak256("WATCHDOG_ROLE")
    bytes32 public constant WATCHDOG_ROLE = 0xb7f2fcb7a10916921b74b9baa8ea85f89b12ab12f6ededa160998f8b20e65f95;
    /// @dev keccak256(abi.encode(uint256(keccak256("IxsTokenAdapter")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant TOKEN_ADAPTER_STORAGE_LOCATION =
        0x611ceff0001d0e07780330329bc77af6dc7ed6fe0342821a894fd23ce1bf5a00;

    /// @notice Modifier to validate caller address.
    /// @dev This modifier checks if the caller's address is valid one.
    /// @param caller Address of the function caller.
    modifier onlyValidAddress(address caller) {
        _validateAddress(caller);
        _;
    }

    /// @notice Modifier to check if the adapter is already paused.
    /// @dev This modifier checks if the pool is paused.
    modifier whenNotPaused() {
        TokenAdapterStorage storage $ = _getTokenAdapterStorage();
        if ($.paused) revert TokenAdapterIsPaused();
        _;
    }

    /// @inheritdoc ITokenAdapter
    function tokenBridge() external view returns (address) {
        TokenAdapterStorage storage $ = _getTokenAdapterStorage();
        return address($.tokenBridge);
    }

    /// @inheritdoc ITokenAdapter
    function wormhole() external view returns (address) {
        TokenAdapterStorage storage $ = _getTokenAdapterStorage();
        return address($.wormhole);
    }

    /// @inheritdoc ITokenAdapter
    function ixsToken() external view returns (address) {
        TokenAdapterStorage storage $ = _getTokenAdapterStorage();
        return address($.ixsToken);
    }

    /// @inheritdoc ITokenAdapter
    function treasury() external view returns (address) {
        TokenAdapterStorage storage $ = _getTokenAdapterStorage();
        return $.treasury;
    }

    /// @inheritdoc ITokenAdapter
    function paused() external view returns (bool) {
        TokenAdapterStorage storage $ = _getTokenAdapterStorage();
        return $.paused;
    }

    /// @inheritdoc ITokenAdapter
    function isWhitelisted(address sourceToken) external view returns (bool) {
        return _isWhitelisted(sourceToken);
    }

    /// @notice Sets the token bridge address (smart-contract).
    /// Only super-admin can perform this operation.
    /// @param tokenBridge_ The new token bridge address.
    function setTokenBridge(address tokenBridge_) external onlyRole(SUPER_ADMIN_ROLE) onlyValidAddress(tokenBridge_) {
        TokenAdapterStorage storage $ = _getTokenAdapterStorage();
        $.tokenBridge = ITokenBridge(tokenBridge_);
        emit LogSetTokenBridge(tokenBridge_);
    }

    /// @notice Sets the IXS token address (smart-contract).
    /// Only super-admin can perform this operation.
    /// @param ixsToken_ The new IXS token address.
    function setIxsToken(address ixsToken_) external onlyRole(SUPER_ADMIN_ROLE) onlyValidAddress(ixsToken_) {
        TokenAdapterStorage storage $ = _getTokenAdapterStorage();
        $.ixsToken = IIxsTokenBurnable(ixsToken_);
        emit LogSetIxsToken(ixsToken_);
    }

    /// @notice Sets the new treasury address.
    /// Only super-admin can perform this operation.
    /// @param treasury_ The new IXS token address.
    function setTreasury(address treasury_) external onlyRole(SUPER_ADMIN_ROLE) onlyValidAddress(treasury_) {
        TokenAdapterStorage storage $ = _getTokenAdapterStorage();
        $.treasury = treasury_;
        emit LogSetTreasury(treasury_);
    }

    /// @notice Whitelists the token and its wormhole-wrapped version on this adapter.
    /// Only super-admin can perform this operation.
    /// @param sourceToken Address of the source token.
    /// @param wrappedToken Address of wormhple-wrapped version of the source token.
    function setWrappedToken(
        address sourceToken,
        address wrappedToken
    ) external onlyRole(SUPER_ADMIN_ROLE) onlyValidAddress(sourceToken) {
        TokenAdapterStorage storage $ = _getTokenAdapterStorage();
        $.wrappedTokensMap[sourceToken] = wrappedToken;
        emit LogWhitelistWrappedToken(sourceToken, wrappedToken);
    }

    /// @inheritdoc ITokenAdapter
    function pause() external whenNotPaused {
        address caller = _msgSender();
        if (!hasRole(WATCHDOG_ROLE, caller) && !hasRole(SUPER_ADMIN_ROLE, caller)) revert TokenAdapterOnlyAuthorized();

        TokenAdapterStorage storage $ = _getTokenAdapterStorage();
        $.paused = true;
        emit TokenAdapterPaused();
    }

    /// @inheritdoc ITokenAdapter
    function unpause() external onlyRole(SUPER_ADMIN_ROLE) {
        TokenAdapterStorage storage $ = _getTokenAdapterStorage();
        if (!$.paused) revert TokenAdapterIsNotPaused();
        $.paused = false;
        emit TokenAdapterUnpaused();
    }

    /// @dev Initialization function for configuring the logic and establishing initial values for state variables.
    /// @param tokenBridge_ The address of the Wormhole Token Bridge contract.
    /// @param wormhole_ The address of the Wormhole Core contract.
    /// @param ixsToken_ The address of the IXS token contract.
    /// @param treasury_ The address of the multisig wallet used as treasury.
    /// @param watchdog The address of the watchdog wallet.
    /// @param superAdmin The addres of the super-admin wallet.
    function initTokenAdapter(
        address tokenBridge_,
        address wormhole_,
        address ixsToken_,
        address treasury_,
        address watchdog,
        address superAdmin
    ) public onlyInitializing {
        __AccessControl_init();
        __ReentrancyGuard_init();

        TokenAdapterStorage storage $ = _getTokenAdapterStorage();
        $.tokenBridge = ITokenBridge(tokenBridge_);
        $.wormhole = IWormhole(wormhole_);
        $.ixsToken = IIxsTokenBurnable(ixsToken_);
        $.treasury = treasury_;

        _setInitialRoles(watchdog, superAdmin);
    }

    function _isWhitelisted(address sourceToken) internal view returns (bool) {
        TokenAdapterStorage storage $ = _getTokenAdapterStorage();
        return $.wrappedTokensMap[sourceToken] != address(0);
    }

    function _normalizeAmount(address token, uint256 amount) internal view returns (uint256) {
        (, bytes memory queriedDecimals) = token.staticcall(abi.encodeWithSignature("decimals()"));
        uint8 decimals = abi.decode(queriedDecimals, (uint8));
        if (decimals > TOKEN_BRIDGE_PRECISION) {
            amount /= 10 ** (decimals - TOKEN_BRIDGE_PRECISION);
        }
        return amount;
    }

    function _denormalizeAmount(address token, uint256 amount) internal view returns (uint256) {
        (, bytes memory queriedDecimals) = token.staticcall(abi.encodeWithSignature("decimals()"));
        uint8 decimals = abi.decode(queriedDecimals, (uint8));
        return amount * 10 ** (decimals > TOKEN_BRIDGE_PRECISION ? decimals - TOKEN_BRIDGE_PRECISION : 0);
    }

    function _getTransferAmount(address token, uint256 amount) internal view returns (uint256) {
        return _denormalizeAmount(token, _normalizeAmount(token, amount));
    }

    function _validateAddress(address caller) internal pure {
        if (caller == address(0) || caller == DEAD_ADDRESS) revert TokenAdapterInvalidAddress(caller);
    }

    function _getTokenAdapterStorage() internal pure returns (TokenAdapterStorage storage $) {
        assembly {
            $.slot := TOKEN_ADAPTER_STORAGE_LOCATION
        }
    }

    function _fromWormholeFormat(bytes32 whFormatAddress) internal pure returns (address) {
        if (uint256(whFormatAddress) >> 160 != 0) {
            revert NotAnEvmAddress(whFormatAddress);
        }
        return address(uint160(uint256(whFormatAddress)));
    }

    function _toWormholeFormat(address addr) internal pure returns (bytes32) {
        return bytes32(uint256(uint160(addr)));
    }

    function _setInitialRoles(address watchdog, address superAdmin) internal {
        _grantRole(DEFAULT_ADMIN_ROLE, superAdmin);
        _grantRole(SUPER_ADMIN_ROLE, superAdmin);
        _grantRole(WATCHDOG_ROLE, watchdog);
        _setRoleAdmin(WATCHDOG_ROLE, SUPER_ADMIN_ROLE);
    }
}
