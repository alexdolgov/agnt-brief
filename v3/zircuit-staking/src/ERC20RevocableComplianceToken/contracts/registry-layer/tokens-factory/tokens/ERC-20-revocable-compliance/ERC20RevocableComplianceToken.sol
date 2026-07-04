// Copyright 2024 DTCC All Rights Reserved
// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

// prettier-ignore
import { 
    ERC20RevocableComplianceTokenStorageLib 
} from "contracts/registry-layer/tokens-factory/tokens/ERC-20-revocable-compliance/ERC20RevocableComplianceTokenStorageLib.sol";
import { IERC20Events } from "contracts/registry-layer/tokens-factory/tokens/interfaces/IERC20Events.sol";
import { IERC20TokenInit } from "contracts/registry-layer/tokens-factory/tokens/interfaces/IERC20TokenInit.sol";
import { IERC20RevocableComplianceErrors } from "contracts/registry-layer/tokens-factory/tokens/interfaces/IERC20RevocableComplianceErrors.sol";
import { IERC165 } from "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import { ShortStrings } from "@openzeppelin/contracts/utils/ShortStrings.sol";
import { UpgradabilityStorageLib } from "core-contexts-contracts/contracts/common/contracts/upgradability/UpgradabilityStorageLib.sol";

/// @title Compliance Aware Token Framework (ERC-20)
/// @dev This contract implements the ERC-20 token standard, which includes basic, controlled, and clawback functions.
contract ERC20RevocableComplianceToken is IERC20Events, IERC20RevocableComplianceErrors {
    /// @notice ERC20 token constructor
    /// @param name_ Token name
    /// @param symbol_ Token symbol
    /// @param decimals_ Token decimals
    /// @param totalSupply_ Total supply of tokens
    /// @param tokensRecipient_ Address to receive the tokens
    /// @param setup_ Setup contract address
    /// @param initializationOwner Address of the initialization owner
    constructor(
        string memory name_,
        string memory symbol_,
        uint8 decimals_,
        uint256 totalSupply_,
        address tokensRecipient_,
        address setup_,
        address initializationOwner
    ) {
        // upgradability storage - ERC-7201
        UpgradabilityStorageLib.UpgradabilityStorage storage upgradabilityStorage = UpgradabilityStorageLib
            ._getUpgradabilityStorage();

        ERC20RevocableComplianceTokenStorageLib.ERC20RevocableComplianceTokenStorage
            storage revStorage = ERC20RevocableComplianceTokenStorageLib._getRevComplianceTokenStorage();

        if (setup_ == address(0)) revert ERC20RevocableComplianceNoSetupError();
        if (
            (bytes(symbol_).length == 0) ||
            (bytes(symbol_).length >= ERC20RevocableComplianceTokenStorageLib.MAX_SYMBOL_LENGTH)
        ) revert ERC20RevocableComplianceSymbolLengthError();
        if (decimals_ == 0) revert ERC20RevocableComplianceInvalidDecimalsError();
        if (bytes(name_).length == 0) revert ERC20RevocableComplianceEmptyNameError();
        if (initializationOwner == address(0)) revert ERC20RevocableComplianceEmptyInitializationOwnerError();

        upgradabilityStorage._initializationOwnerAddress = initializationOwner;
        upgradabilityStorage._methodsImplementations[IERC20TokenInit.initialize.selector] = setup_;
        upgradabilityStorage._methodsImplementations[IERC165.supportsInterface.selector] = setup_;

        revStorage._tokenName = name_;
        revStorage._symbol = symbol_;
        revStorage._decimals = decimals_;
        revStorage._transferEnabled = true; // By default, transfers are enabled

        if (totalSupply_ > 0) {
            if (tokensRecipient_ == address(0)) {
                revert ERC20RevocableComplianceEmptyRecipientError();
            }

            revStorage._totalSupply = totalSupply_;
            revStorage._balances[tokensRecipient_] = totalSupply_;

            emit Transfer(address(0), tokensRecipient_, totalSupply_);
        }

        string memory version = "1";
        revStorage._name = ShortStrings.toShortStringWithFallback(name_, revStorage._nameFallback);
        revStorage._version = ShortStrings.toShortStringWithFallback(version, revStorage._versionFallback);
        revStorage._hashedName = keccak256(bytes(name_));
        revStorage._hashedVersion = keccak256(bytes(version));
        revStorage._cachedChainId = block.chainid;
        revStorage._cachedThis = address(this);
    }

    /// @notice Fallback function to reject Ether deposits
    // solhint-disable-next-line comprehensive-interface
    receive() external payable {
        revert ERC20RevocableComplianceEtherDepositError();
    }

    /// @notice Fallback function allowing delegatecall.
    /// @notice This function will return whatever the implementation call returns
    fallback() external payable {
        address _impl = UpgradabilityStorageLib._getUpgradabilityStorage()._methodsImplementations[msg.sig];
        if (_impl == address(0)) {
            revert ERC20RevocableComplianceNoMethodFoundError();
        }

        assembly {
            calldatacopy(0, 0, calldatasize())
            let result := delegatecall(gas(), _impl, 0, calldatasize(), 0, 0)
            returndatacopy(0, 0, returndatasize())
            switch result
            case 0 {
                revert(0, returndatasize())
            }
            default {
                return(0, returndatasize())
            }
        }
    }
}
