// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {BaseUpgradeable} from "../BaseUpgradeable.sol";
import {ERC4626Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";
import {IERC4626Whitelisted} from "../interfaces/IERC4626Whitelisted.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ITheoWhitelist} from "../interfaces/ITheoWhitelist.sol";
import {ERC165Checker} from "@openzeppelin/contracts/utils/introspection/ERC165Checker.sol";

/**
 * @notice  ERC4626Upgradeable with whitelist/blacklist functionality
 * @dev     Inherits from OpenZeppelin's ERC4626Upgradeable and BaseUpgradeable for access control and pausability
 */

abstract contract ERC4626WhitelistedUpgradeable is BaseUpgradeable, IERC4626Whitelisted, ERC4626Upgradeable {
    /// @notice TransferStatus of the ERC20 (see IERC4626Whitelisted)
    TransferStatus public transferStatus;

    /// @notice Contract for Whitelist checks
    ITheoWhitelist public whitelistContract;

    function __ERC4626Whitelisted_init(string memory _name, string memory _symbol, address _asset, ITheoWhitelist _whitelistContract) internal onlyInitializing {
        __BaseUpgradable_init();
        __ERC20_init(_name, _symbol);
        __ERC4626_init(IERC20(_asset));
        transferStatus = TransferStatus.ONLY_WHITELISTED;
        _setWhitelistContract(_whitelistContract);
    }

    modifier onlyCanTransfer(address _account) {
        // allow transfers to zero address (mints/burns) and to this address
        if (_account != address(0) && _account != address(this)) {
            // check blacklist
            whitelistContract.onlyNotBlacklisted(_account);
            // check based on TransferStatus
            if (transferStatus == TransferStatus.CLOSED) {
                revert UnauthorizedTransferClosed();
            } else if (transferStatus == TransferStatus.OPEN) {
                // open transfers allowed, blacklist already checked
            } else if (transferStatus == TransferStatus.ONLY_WHITELISTED) {
                // only whitelisted accounts can transfer, blacklist already checked
                whitelistContract.onlyWhitelisted(_account);
            }
        }
        _;
    }

    /// @notice empty constructor to prevent initialization of implementation contract
    constructor() {}

    /// @dev override update to check for whitelist and pause status
    function _update(address _from, address _to, uint256 _value) internal override whenNotPaused onlyCanTransfer(_from) onlyCanTransfer(_to) {
        super._update(_from, _to, _value);
    }

    /// @dev update without checking whitelist and pause status for emergency operations
    function _updateUnchecked(address _from, address _to, uint256 _value) internal {
        super._update(_from, _to, _value);
    }

    /** @dev See {IERC4626Whitelisted-setTransferStatus} */
    function setTransferStatus(TransferStatus _status) external onlyRole(DEFAULT_ADMIN_ROLE) {
        transferStatus = _status;
        emit TransferStatusUpdate(_status);
    }

    /** @dev See {IERC4626Whitelisted-setWhitelistContract} */
    function setWhitelistContract(ITheoWhitelist _whitelistContract) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _setWhitelistContract(_whitelistContract);
    }

    /**
     * @notice Internal function to set the whitelist contract
     * @dev Reverts if the address is zero or does not implement ITheoWhitelist
     */
    function _setWhitelistContract(ITheoWhitelist _whitelistContract) internal {
        if (address(_whitelistContract) == address(0)) {
            revert InvalidWhitelistAddress(address(_whitelistContract));
        }
        if (!ERC165Checker.supportsInterface(address(_whitelistContract), type(ITheoWhitelist).interfaceId)) {
            revert InvalidWhitelistAddress(address(_whitelistContract));
        }
        whitelistContract = _whitelistContract;
    }

    /**
     * @notice checks if an account can transfer assets based on TToken status and blacklist
     * @param _account the account to check
     */
    function canTransfer(address _account) public view returns (bool) {
        if (_account == address(0)) {
            return true; // allow transfers to zero address (mints/burns)
        }
        if (whitelistContract.isBlacklisted(_account)) {
            return false; // blacklisted accounts cannot transfer
        }

        // check based on status of TToken
        if (transferStatus == TransferStatus.CLOSED) {
            // no transfers allowed
            return false;
        } else if (transferStatus == TransferStatus.OPEN) {
            // open transfers allowed, blacklist already checked
            return true;
        } else if (transferStatus == TransferStatus.ONLY_WHITELISTED) {
            // only whitelisted accounts can transfer
            return whitelistContract.isWhitelisted(_account);
        } else {
            // invalid status, no transfers allowed
            return false;
        }
    }
}
