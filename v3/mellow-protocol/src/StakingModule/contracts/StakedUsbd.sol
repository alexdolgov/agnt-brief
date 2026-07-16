// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";
import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { ERC20Burnable } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract StakedUsbd is AccessControl, ERC20Burnable {
    bytes32 public constant MINTER = keccak256(abi.encode("StakedUsbd.MINTER"));

    /// @param _name ERC-20 name
    /// @param _symbol ERC-20 symbol
    /// @param _admin Specially permissioned address
    constructor(string memory _name, string memory _symbol, address _admin) ERC20(_name, _symbol) {
        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
    }

    /// @notice Increase token total supply
    /// @param _receiver Receiver of the tokens
    /// @param _amount Amount of tokens received
    function mint(address _receiver, uint256 _amount) external onlyRole(MINTER) {
        _mint(_receiver, _amount);
    }
}
