// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {IVaultFactory} from "./interfaces/IVaultFactory.sol";
import {SnowBallVault} from "./SnowBallVault.sol";
import {AccessControl} from "@openzeppelin/access/AccessControl.sol";
import {Clones} from "@openzeppelin/proxy/Clones.sol";

contract SnowBallFactory is IVaultFactory, AccessControl {
    address public immutable VAULT_PORTAL;
    address public vaultImplementation;
    mapping(address => address) public taxTokenToVault;
    address public snowBallFeeRecipient;
    address public snowBallHelper;

    constructor(
        address _vaultPortal,
        address _vaultImplementation,
        address _snowBallFeeRecipient,
        address _snowBallHelper
    ) {
        if (_vaultPortal == address(0)) revert ZeroAddress();
        if (_vaultImplementation == address(0)) revert ZeroAddress();
        if (_snowBallFeeRecipient == address(0)) revert ZeroAddress();
        if (_snowBallHelper == address(0)) revert ZeroAddress();

        VAULT_PORTAL = _vaultPortal;
        vaultImplementation = _vaultImplementation;
        snowBallFeeRecipient = _snowBallFeeRecipient;
        snowBallHelper = _snowBallHelper;

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(DEFAULT_ADMIN_ROLE, _vaultPortal);
    }

    function newVault(address taxToken, address quoteToken, address creator, bytes calldata vaultData)
        external
        override
        returns (address vault)
    {
        if (msg.sender != VAULT_PORTAL) {
            revert OnlyVaultPortal();
        }

        // vaultData ignored as SnowBallVault doesn't need extra user params

        bytes32 salt = bytes32(uint256(uint160(taxToken)));
        vault = Clones.cloneDeterministic(vaultImplementation, salt);

        SnowBallVault(payable(vault)).initialize(taxToken, quoteToken, snowBallFeeRecipient);

        // Grant SNOWBALL_ROLE to SnowBallHelper
        SnowBallVault(payable(vault)).grantRole(keccak256("SNOWBALL_ROLE"), snowBallHelper);

        taxTokenToVault[taxToken] = vault;
    }

    /// @notice Check if a quote token is supported
    /// @param quoteToken The quote token address
    /// @return supported True if supported (only BNB/address(0) for now)
    function isQuoteTokenSupported(address quoteToken) external pure override returns (bool supported) {
        // Only support BNB (address(0)) for now
        return quoteToken == address(0);
    }

    function setSnowBallFeeRecipient(address _snowBallFeeRecipient) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_snowBallFeeRecipient == address(0)) {
            revert ZeroAddress();
        }
        snowBallFeeRecipient = _snowBallFeeRecipient;
    }

    function setSnowBallHelper(address _snowBallHelper) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_snowBallHelper == address(0)) {
            revert ZeroAddress();
        }
        snowBallHelper = _snowBallHelper;
    }
}
