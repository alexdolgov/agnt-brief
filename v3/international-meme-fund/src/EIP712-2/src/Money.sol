// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

import {EventsLib} from "./libraries/EventsLib.sol";
import {IMoney} from "./interfaces/IMoney.sol";
import {ErrorsLib} from "./libraries/ErrorsLib.sol";

contract Money is ERC20, ERC20Permit, IMoney {
    address public owner;
    mapping(address => bool) public authorized;

    constructor(address _owner) ERC20("Money", "MONEY") ERC20Permit("$MONEY") {
        require(_owner != address(0), ErrorsLib.ZERO_ADDRESS);

        owner = _owner;

        emit EventsLib.SetOwner(_owner);
    }

    /// @dev Reverts if the caller is not the owner.
    modifier onlyOwner() {
        require(msg.sender == owner, ErrorsLib.NOT_OWNER);
        _;
    }

    /// @dev Reverts if the caller is not the owner.
    modifier onlyAuthorized() {
        require(msg.sender == owner || authorized[msg.sender], ErrorsLib.NOT_OWNER);
        _;
    }

    function mint(address to, uint256 amount) external onlyAuthorized {
        _mint(to, amount);
    }

    function shred(address from, uint256 amount) external onlyAuthorized {
        _burn(from, amount);
    }

    /// @notice Sets `newOwner` as `owner` of the contract.
    /// @dev Warning: No two-step transfer ownership.
    /// @dev Warning: The owner can be set to the zero address.
    function setOwner(address newOwner) external onlyOwner {
        require(newOwner != owner, ErrorsLib.ALREADY_SET);

        owner = newOwner;

        emit EventsLib.SetOwner(newOwner);
    }

    /// @notice Toggles mint authorisation for a given address
    function setAuthorized(address minter, bool setting) external onlyOwner {
        require(minter != address(0), ErrorsLib.ZERO_ADDRESS);
        require(authorized[minter] != setting, ErrorsLib.AUTHORIZATION_NOT_CHANGED);

        authorized[minter] = setting;

        emit EventsLib.SetAuthorization(minter, setting);
    }
}
