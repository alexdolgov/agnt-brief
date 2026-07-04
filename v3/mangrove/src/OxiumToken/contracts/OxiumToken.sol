// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { OFT } from "@layerzerolabs/oft-evm/contracts/OFT.sol";
import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";

contract OxiumToken is OFT, AccessControl {
    /// @notice Role for the minter
    bytes32 private constant _MINTER_ROLE = keccak256("MINTER_ROLE");

    constructor(
        string memory _name,
        string memory _symbol,
        address _lzEndpoint,
        address _delegate
    ) OFT(_name, _symbol, _lzEndpoint, _delegate) Ownable(_delegate) {}

    /// @inheritdoc AccessControl
    /// @dev The default admin role is the owner of the contract.
    function hasRole(bytes32 role, address account) public view virtual override returns (bool) {
        if (role == DEFAULT_ADMIN_ROLE && owner() == account) {
            return true;
        }
        return super.hasRole(role, account);
    }

    /// @notice Sets the minter role to an address
    /// @param minter The address to set the minter role to
    function setMinter(address minter) public {
        grantRole(_MINTER_ROLE, minter);
    }

    /// @notice Revokes the minter role from an address
    /// @param minter The address to revoke the minter role from
    function revokeMinter(address minter) public {
        revokeRole(_MINTER_ROLE, minter);
    }

    /// @notice Mints tokens to an address
    /// @param to The address to mint tokens to
    /// @param amount The amount of tokens to mint
    function mint(address to, uint256 amount) public onlyRole(_MINTER_ROLE) {
        _mint(to, amount);
    }

    /// @notice Burns tokens from the caller
    /// @param amount The amount of tokens to burn
    function burn(uint256 amount) public onlyRole(_MINTER_ROLE) {
        _burn(msg.sender, amount);
    }
}
