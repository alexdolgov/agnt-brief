// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/// @title Test Token
/// @author kexley, Cap Labs
/// @notice Test token
contract TestToken is ERC20, Ownable {
    /// @dev Constructor
    /// @param _name Name of the token
    /// @param _symbol Symbol of the token
    /// @param _owner Owner of the token
    constructor(string memory _name, string memory _symbol, address _owner) ERC20(_name, _symbol) Ownable(_owner) {
        _mint(msg.sender, 1000000e18);
    }

    /// @notice Mint tokens
    /// @param to Address to mint tokens to
    /// @param amount Amount of tokens to mint
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    /// @notice Burn tokens from an address
    /// @param from Address to burn tokens from
    /// @param amount Amount of tokens to burn
    function burnFrom(address from, uint256 amount) external onlyOwner {
        _burn(from, amount);
    }
}
