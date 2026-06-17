// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {AccessControlDefaultAdminRulesUpgradeable} from "openzeppelin-contracts-upgradeable/access/extensions/AccessControlDefaultAdminRulesUpgradeable.sol";
import {EIP712Upgradeable} from "openzeppelin-contracts-upgradeable/utils/cryptography/EIP712Upgradeable.sol";
import {UUPSUpgradeable} from "openzeppelin-contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

import {ECDSA} from "openzeppelin-contracts/utils/cryptography/ECDSA.sol";
import {MessageHashUtils} from "openzeppelin-contracts/utils/cryptography/MessageHashUtils.sol";

contract KYCWhitelist is AccessControlDefaultAdminRulesUpgradeable, EIP712Upgradeable,UUPSUpgradeable {
    using MessageHashUtils for bytes32;
    using ECDSA for bytes32;

    error AlreadyWhitelisted();
    error NonceAlreadyUsed();
    error SignatureExpired();

    uint48 internal constant DEFAULT_ADMIN_DELAY = 1 days;

    bytes internal constant WHITELISTING_TYPE =
        "Whitelisting(address account,uint256 expiration,uint256 nonce)";
    bytes32 internal constant WHITELISTING_TYPEHASH = keccak256(WHITELISTING_TYPE);

    bytes32 public constant SIGNER_ROLE = keccak256("SIGNER_ROLE");

    mapping(address => bool) public isWhitelisted;
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

    function addToWhitelist(address[] memory addresses) external onlyRole(DEFAULT_ADMIN_ROLE) {
        for (uint256 i = 0; i < addresses.length; i++) {
            _whitelistUser(addresses[i]);
        }
    }

    function addToWhitelist(uint256 deadline, uint256 nonce, bytes memory signature) external {
        if (block.timestamp > deadline) revert SignatureExpired();
        _useNonce(nonce);

        bytes32 digest = hashWhitelisting(msg.sender, deadline, nonce);
        address signer = digest.recover(signature);

        _checkRole(SIGNER_ROLE, signer);
        _whitelistUser(msg.sender);
    }

    function removeFromWhitelist(address[] memory addresses) external onlyRole(DEFAULT_ADMIN_ROLE) {
        for (uint256 i = 0; i < addresses.length; i++) {
            isWhitelisted[addresses[i]] = false;
        }
    }

    function hashWhitelisting(address account, uint256 expiration, uint256 nonce) internal view returns (bytes32) {
        return _hashTypedDataV4(
            keccak256(
                abi.encode(
                    WHITELISTING_TYPEHASH,
                    account,
                    expiration,
                    nonce
                )
            )
        );
    }

    function _whitelistUser(address account) internal {
        if (isWhitelisted[account]) revert AlreadyWhitelisted();
        isWhitelisted[account] = true;
    }

    function _useNonce(uint256 nonce) internal {
        if (isUsedNonce[nonce]) revert NonceAlreadyUsed();
        isUsedNonce[nonce] = true;
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}
}