// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {AccessControlDefaultAdminRulesUpgradeable} from "openzeppelin-contracts-upgradeable/access/extensions/AccessControlDefaultAdminRulesUpgradeable.sol";
import {EIP712Upgradeable} from "openzeppelin-contracts-upgradeable/utils/cryptography/EIP712Upgradeable.sol";
import {UUPSUpgradeable} from "openzeppelin-contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

import {ECDSA} from "openzeppelin-contracts/utils/cryptography/ECDSA.sol";
import {MessageHashUtils} from "openzeppelin-contracts/utils/cryptography/MessageHashUtils.sol";

contract KYCWhitelist is AccessControlDefaultAdminRulesUpgradeable, EIP712Upgradeable, UUPSUpgradeable {
    using MessageHashUtils for bytes32;
    using ECDSA for bytes32;

    error AlreadyWhitelisted();
    error AlreadyBlacklisted();
    error NonceAlreadyUsed();
    error SignatureExpired();

    enum ActionState {
        CLOSED,
        OPEN,
        WHITELIST,
        BLACKLIST
    }

    struct Vault {
        bool isActive;
        ActionState depositsState;
        ActionState withdrawalsState;
    }

    uint48 internal constant DEFAULT_ADMIN_DELAY = 1 days;

    bytes internal constant WHITELISTING_TYPE =
        "Whitelisting(address vault,address account,uint256 expiration,uint256 nonce)";
    bytes32 internal constant WHITELISTING_TYPEHASH = keccak256(WHITELISTING_TYPE);

    bytes32 public constant SIGNER_ROLE = keccak256("SIGNER_ROLE");

    mapping(address => Vault) public vaults;
    mapping(address => mapping(address => bool)) public isUserWhitelisted;
    mapping(address => mapping(address => bool)) public isUserBlacklisted;
    
    mapping(uint256 => bool) public isUsedNonce;

    constructor() {
        _disableInitializers();
    }

    function initialize(address[] memory signers) public initializer {
        __AccessControlDefaultAdminRules_init(DEFAULT_ADMIN_DELAY, msg.sender);
        __EIP712_init("BracketVaults KYC", "1");

        for (uint256 i = 0; i < signers.length; i++) {
            _grantRole(SIGNER_ROLE, signers[i]);
        }
    }

    function addToWhitelist(address vault, uint256 deadline, uint256 nonce, bytes memory signature) external {
        if (block.timestamp > deadline) revert SignatureExpired();
        _useNonce(nonce);

        bytes32 digest = hashWhitelisting(vault, msg.sender, deadline, nonce);
        address signer = digest.recover(signature);

        _checkRole(SIGNER_ROLE, signer);
        _whitelistUser(vault, msg.sender);
    }

    // function addToWhitelist(address vault, address[] memory addresses) external onlyRole(SIGNER_ROLE) {
    //     for (uint256 i = 0; i < addresses.length; i++) {
    //         _whitelistUser(vault, addresses[i]);
    //     }
    // }

    function addToBlacklist(address vault, address[] memory addresses) external onlyRole(SIGNER_ROLE) {
        for (uint256 i = 0; i < addresses.length; i++) {
            _blacklistUser(vault, addresses[i]);
        }
    }

    function removeFromWhitelist(address vault, address[] memory addresses) external onlyRole(SIGNER_ROLE) {
        for (uint256 i = 0; i < addresses.length; i++) {
            isUserWhitelisted[vault][addresses[i]] = false;
        }
    }

    function removeFromBlacklist(address vault, address[] memory addresses) external onlyRole(SIGNER_ROLE) {
        for (uint256 i = 0; i < addresses.length; i++) {
            isUserBlacklisted[vault][addresses[i]] = false;
        }
    }

    function canDeposit(address vaultAddr, address user) external view returns (bool) {
        Vault memory vault = vaults[vaultAddr];
        if (!vault.isActive) return false;
        if (vault.depositsState == ActionState.OPEN) return true;
        if (vault.depositsState == ActionState.BLACKLIST) {
            // If the deposits are for non-blacklisted users, and the user is blacklisted, return false
            if (isUserBlacklisted[vaultAddr][user]) return false;
            // If the deposits are for non-blacklisted users, and the user is not blacklisted, return true
            return true;
        }
        if (vault.depositsState == ActionState.WHITELIST) {
            // If the deposits are for whitelisted users, and the user is whitelisted, return true
            if (isUserWhitelisted[vaultAddr][user]) return true;
            // If the deposits are for whitelisted users, and the user is not whitelisted, return false
            return false;
        }
    }

    function canWithdraw(address vaultAddr, address user) external view returns (bool) {
        Vault memory vault = vaults[vaultAddr];
        if (!vault.isActive) return false;
        if (vault.withdrawalsState == ActionState.OPEN) return true;
        if (vault.withdrawalsState == ActionState.BLACKLIST) {
            // If the withdrawals are for non-blacklisted users, and the user is blacklisted, return false
            if (isUserBlacklisted[vaultAddr][user]) return false;
            // If the withdrawals are for non-blacklisted users, and the user is not blacklisted, return true
            return true;
        }
        if (vault.withdrawalsState == ActionState.WHITELIST) {
            // If the withdrawals are for whitelisted users, and the user is whitelisted, return true
            if (isUserWhitelisted[vaultAddr][user]) return true;
            // If the withdrawals are for whitelisted users, and the user is not whitelisted, return false
            return false;
        }
    }

    function hashWhitelisting(address vault, address account, uint256 expiration, uint256 nonce) public view returns (bytes32) {
        return _hashTypedDataV4(
            keccak256(
                abi.encode(
                    WHITELISTING_TYPEHASH,
                    vault,
                    account,
                    expiration,
                    nonce
                )
            )
        );
    }

    function _whitelistUser(address vault, address account) internal {
        if (isUserWhitelisted[vault][account]) revert AlreadyWhitelisted();
        isUserWhitelisted[vault][account] = true;
    }

    function _blacklistUser(address vault, address account) internal {
        if (isUserBlacklisted[vault][account]) revert AlreadyBlacklisted();
        isUserBlacklisted[vault][account] = true;
    }

    function _useNonce(uint256 nonce) internal {
        if (isUsedNonce[nonce]) revert NonceAlreadyUsed();
        isUsedNonce[nonce] = true;
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}
}