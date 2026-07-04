// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {AccessControl} from "@openzeppelin/access/AccessControl.sol";

interface IFlapXVault {
    function snowball(uint256 quoteAmt) external;
}

/// @title SnowBallHelper
/// @notice Helper contract for batch calling snowball on vaults
contract SnowBallHelper is AccessControl {
    /// @notice Error thrown when the current chain is not supported
    error UnsupportedChain(uint256 chainId);

    /// @notice Role that can trigger snowball operations
    bytes32 public constant SNOWBALL_ROLE = keccak256("SNOWBALL_ROLE");

    /// @notice Quote amount per snowball call
    uint256 public quoteAmt;

    event SnowBallSuccess(address vault, uint256 quoteAmt);
    event SnowBallFailed(address vault, uint256 quoteAmt);

    /// @notice Constructor
    /// @param _quoteAmt The initial quote amount per snowball call
    constructor(uint256 _quoteAmt) {
        quoteAmt = _quoteAmt;
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(SNOWBALL_ROLE, msg.sender);
        _grantRole(DEFAULT_ADMIN_ROLE, _getGuardian());
    }

    /// @notice Set the quote amount per snowball call
    /// @param _quoteAmt The new quote amount
    function setQuoteAmt(uint256 _quoteAmt) external onlyRole(DEFAULT_ADMIN_ROLE) {
        quoteAmt = _quoteAmt;
    }

    /// @notice Batch call snowball on vaults
    /// @param vaults The array of vault addresses
    function batchSnowBall(address[] calldata vaults) external onlyRole(SNOWBALL_ROLE) {
        uint256 _quoteAmt = quoteAmt;
        if (_quoteAmt == 0) return;

        for (uint256 i = 0; i < vaults.length; i++) {
            address vault = vaults[i];
            if (vault == address(0)) continue;
            // Ignore failures
            try IFlapXVault(vault).snowball(_quoteAmt) {
                emit SnowBallSuccess(vault, _quoteAmt);
            } catch {
                emit SnowBallFailed(vault, _quoteAmt);
            }
        }
    }

    /// @inheritdoc AccessControl
    function revokeRole(bytes32 role, address account) public override onlyRole(getRoleAdmin(role)) {
        if (role == DEFAULT_ADMIN_ROLE && account == _getGuardian()) {
            revert("Cannot revoke guardian admin role");
        }
        super.revokeRole(role, account);
    }

    /// @notice Get the Guardian address for the current chain
    /// @dev Currently supports BNB Chain (chain ID 56) and BNB Testnet (chain ID 97)
    /// @return guardian The Guardian contract address
    function _getGuardian() internal view returns (address guardian) {
        uint256 chainId = block.chainid;
        if (chainId == 56) {
            // BNB Chain Guardian address
            return 0x9e27098dcD8844bcc6287a557E0b4D09C86B8a4b;
        } else if (chainId == 97) {
            // BNB Testnet Guardian address
            return 0x76Fa8C526f8Bc27ba6958B76DeEf92a0dbE46950;
        }
        revert UnsupportedChain(chainId);
    }
}
