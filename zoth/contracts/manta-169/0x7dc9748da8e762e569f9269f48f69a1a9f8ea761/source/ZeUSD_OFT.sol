// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { OFTUpgradeable } from '@layerzerolabs/oft-evm-upgradeable/contracts/oft/OFTUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol';
import '../interfaces/IZeUSDOFT.sol';

/// @title ZeUSD Omnichain Fungible Token Implementation
/// @notice Implementation of the ZeUSD token with LayerZero OFT functionality
/// @dev Extends OFTUpgradeable for cross-chain transfers and AccessControlUpgradeable for role-based access
/// @custom:security-contact paras@zoth.io
contract ZeUSD_OFT is IZeUSDOFT, OFTUpgradeable, AccessControlUpgradeable {
    /// @notice Role for admin access
    /// @dev Has authority to manage blacklist and other admin functions
    bytes32 public constant ADMIN_ROLE = keccak256('ADMIN_ROLE');

    /// @notice Mapping to track blacklisted addresses
    /// @dev true = blacklisted, false = not blacklisted
    /// @custom:security This mapping is critical for compliance and security measures
    mapping(address => bool) private _blacklist;

    /// @notice Creates a new ZeUSD_OFT instance
    /// @param _lzEndpoint LayerZero endpoint address
    constructor(address _lzEndpoint) OFTUpgradeable(_lzEndpoint) {}

    /// @notice Initializes the ZeUSD_OFT token
    /// @param _name Token name
    /// @param _symbol Token symbol
    /// @param _delegate Address to receive initial ownership
    /// @custom:security Ensure _delegate is a secure address as it will receive ownership
    function initialize(
        string memory _name,
        string memory _symbol,
        address _delegate
    ) public initializer {
        __OFT_init(_name, _symbol, _delegate);
        __AccessControl_init();
        __Ownable_init(_delegate);

        _grantRole(DEFAULT_ADMIN_ROLE, _delegate);
        _grantRole(ADMIN_ROLE, _delegate);
        _setRoleAdmin(ADMIN_ROLE, DEFAULT_ADMIN_ROLE);
    }

    function decimals() public view virtual override returns (uint8) {
        return 6;
    }

    /// @notice Internal function to update token balances
    /// @dev Overrides OFT _update to include blacklist check
    /// @param from Address tokens are transferred from
    /// @param to Address tokens are transferred to
    /// @param amount Amount of tokens to transfer
    /// @custom:security Critical function for enforcing blacklist restrictions
    function _update(
        address from,
        address to,
        uint256 amount
    ) internal override notBlacklisted(from, to) {
        super._update(from, to, amount);
    }

    /// @notice Sets the blacklist status for an account
    /// @dev Only callable by admin role
    /// @param account Address to update blacklist status for
    /// @param status New blacklist status (true = blacklisted)
    /// @custom:security This function can significantly impact user access
    function setBlacklistStatus(address account, bool status) public override onlyRole(ADMIN_ROLE) {
        _blacklist[account] = status;
        emit Blacklisted(account, status);
    }

    /// @notice Checks if an account is blacklisted
    /// @dev Public view function to check blacklist status
    /// @param account Address to check
    /// @return bool True if account is blacklisted, false otherwise
    /// @custom:security Critical for compliance checks
    function isBlacklisted(address account) public view override returns (bool) {
        return _blacklist[account];
    }

    /// @notice Prevents blacklisted addresses from transferring tokens
    /// @dev Checks both sender and receiver addresses
    /// @param from Address sending tokens
    /// @param to Address receiving tokens
    /// @custom:security Critical modifier for enforcing compliance
    modifier notBlacklisted(address from, address to) {
        if (isBlacklisted(from) || isBlacklisted(to))
            revert Unauthorized('ZeUSD: from or to user is blacklisted');
        _;
    }
}
