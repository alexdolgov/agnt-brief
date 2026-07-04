// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./SX1155NFT.sol";

/// @title SX1155NFT Factory
/// @notice SX1155 NFT token deployer
contract SX1155NFTFactory is AccessControl {
    event SX1155NFTDeployed(SX1155NFT deployedAt);

    bytes32 public constant NFT_DEPLOYER_ROLE = keccak256("NFT_DEPLOYER");

    /// @dev Constructor for setting deployer of this contract as admin.
    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    /// @dev Function for deploy SX1155 token.
    /// @param _name a name for all tokens under this token
    /// @param _symbol a symbol for all tokens under this token
    /// @param _admin default admin address, will be assigned DEFAULT_ADMIN_ROLE Role
    /// @param _issuer default issuer address, will be assigned ISSUER Role
    /// @param _editor default editor address, will be assigned EDITOR Role
    function deployNFTContract(
        string memory _name,
        string memory _symbol,
        address _admin,
        address _issuer,
        address _editor
    ) public onlyRole(NFT_DEPLOYER_ROLE) {
        SX1155NFT newSX1155 = new SX1155NFT(_name, _symbol, _admin, _issuer, _editor);
        emit SX1155NFTDeployed(newSX1155);
    }
}
