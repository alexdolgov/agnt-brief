// Copyright 2024 DTCC All Rights Reserved
// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

import { ShortStrings, ShortString } from "@openzeppelin/contracts/utils/ShortStrings.sol";

/// @title ERC-20 Revocable Compliance Token Storage Lib
/// @dev This contract stores the state variables and mappings for the ERC-20 Revocable Compliance Token.
library ERC20RevocableComplianceTokenStorageLib {
    using ShortStrings for *;
    /// @dev Typehash for the permit signature
    bytes32 internal constant PERMIT_TYPEHASH =
        keccak256("Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)");

    /// @dev Maximum symbol length
    uint256 internal constant MAX_SYMBOL_LENGTH = 13;

    // keccak256(abi.encode(uint256(keccak256("ERC20RevocableComplianceToken")) - 1)) & ~bytes32(uint256(0xff));
    bytes32 private constant ERC20_REVOCABLE_COMPLIANCE_TOKEN_STORAGE =
        0x59c84f74e8795e95cfd01b0c712622439ce9a0b5f8b037d0deaff99670e24100;

    /// @dev Mapping of token holder to their nonce
    bytes32 internal constant TYPE_HASH =
        keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)");

    /// @dev Storage of the ERC20RevocableComplianceToken contract.
    /// It's implemented on a custom ERC-7201 namespace to reduce the risk of storage collisions
    /// when using with upgradeable contracts.
    /// @custom:storage-location erc7201:ERC20RevocableComplianceToken
    // solhint-disable-next-line ordering
    struct ERC20RevocableComplianceTokenStorage {
        /// @dev Number of decimal places for the token
        uint8 _decimals;
        /// @dev Flag indicating if the token transfers are enabled
        bool _transferEnabled;
        /// @dev Whitelist context address
        address _complianceAddress;
        /// @dev Total supply of the token
        uint256 _totalSupply;
        /// @dev Name of the token
        string _tokenName;
        /// @dev Symbol of the token
        string _symbol;
        /// @dev Flag indicating if an address is frozen
        mapping(address walletAddress => bool frozenFlag) _frozen;
        /// @dev Balances of token holders
        mapping(address tokenHolder => uint256 tokenBalance) _balances;
        /// @dev Amount of tokens frozen for an address
        mapping(address tokenHolder => uint256 frozenBalance) _frozenAmounts;
        /// @dev Allowed token transfers between addresses
        mapping(address owner => mapping(address spender => uint256 tokenAmount)) _allowed;
        /// @dev Cache the domain separator
        bytes32 _cachedDomainSeparator;
        /// @dev cache the chain id
        uint256 _cachedChainId;
        /// @dev cache the this address
        address _cachedThis;
        /// @dev cache the name hash
        bytes32 _hashedName;
        /// @dev cache the version hash
        bytes32 _hashedVersion;
        /// @dev Short string for the name
        ShortString _name;
        /// @dev Short string for the version
        ShortString _version;
        /// @dev Short string for the version
        string _versionFallback;
        /// @dev Short string for the name
        string _nameFallback;
        /// @dev Nonces for permit
        mapping(address => uint256) _nonces;
    }

    /// @dev Returns the storage slot for the ERC20RevocableComplianceTokenStorage struct.
    function _getRevComplianceTokenStorage() internal pure returns (ERC20RevocableComplianceTokenStorage storage s) {
        bytes32 position = ERC20_REVOCABLE_COMPLIANCE_TOKEN_STORAGE;
        assembly {
            s.slot := position
        }
    }
}
