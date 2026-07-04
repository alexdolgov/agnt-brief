// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {IVaultFactory} from "./interfaces/IVaultFactory.sol";
import {SplitVault} from "./SplitVault.sol";
import {Clones} from "@openzeppelin/proxy/Clones.sol";
import {AccessControl} from "@openzeppelin/access/AccessControl.sol";

contract SplitVaultFactory is IVaultFactory, AccessControl {
    address public immutable VAULT_PORTAL;
    address public immutable implementation;
    uint256 public maxGasLimitPerUser;

    error InvalidQuoteToken();
    error InvalidGasLimit();

    constructor(address _vaultPortal, address _implementation) {
        if (_vaultPortal == address(0)) revert ZeroAddress();
        if (_implementation == address(0)) revert ZeroAddress();

        VAULT_PORTAL = _vaultPortal;
        implementation = _implementation;
        maxGasLimitPerUser = 500000; // Default as per requirements

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function newVault(address taxToken, address quoteToken, address, /*creator*/ bytes calldata vaultData)
        external
        override
        returns (address vault)
    {
        if (msg.sender != VAULT_PORTAL) revert OnlyVaultPortal();
        if (quoteToken != address(0)) revert InvalidQuoteToken();

        // Decode vaultData
        SplitVault.Recipient[] memory recipients = abi.decode(vaultData, (SplitVault.Recipient[]));

        bytes32 salt = bytes32(uint256(uint160(taxToken)));
        vault = Clones.cloneDeterministic(implementation, salt);
        SplitVault(payable(vault)).initialize(taxToken, recipients);
    }

    function isQuoteTokenSupported(address quoteToken) external pure override returns (bool) {
        return quoteToken == address(0);
    }

    function setMaxGasLimitPerUser(uint256 _maxGasLimitPerUser) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_maxGasLimitPerUser < 50000 || _maxGasLimitPerUser > 1000000) {
            revert InvalidGasLimit();
        }
        maxGasLimitPerUser = _maxGasLimitPerUser;
    }
}
