// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "./interface/IBtcPeg.sol";

/// @title BtcPeg - A contract for pegged BTC tokens
/// @notice This contract manages the minting and burning of BTC-pegged tokens
/// @dev Implements ERC20 standard with additional bridge functionality
/// @custom:security-contact security@fiammalabs.io
contract BtcPeg is IBtcPeg, ERC20, Ownable, ReentrancyGuard {
    address public bridge;

    error InvalidAddress();
    error InvalidAmount();
    error InsufficientBalance();
    error Unauthorized();

    constructor(address _owner, string memory _name, string memory _symbol) ERC20(_name, _symbol) Ownable(_owner) {}

    modifier onlyBridge() {
        if (msg.sender != bridge) revert Unauthorized();
        _;
    }

    function decimals() public pure override returns (uint8) {
        return 8;
    }

    /// @notice Sets the bridge contract address
    /// @param _bridge The address of the bridge contract
    /// @dev Only callable by contract owner
    function setBridge(address _bridge) external onlyOwner {
        if (_bridge == address(0)) revert InvalidAddress();
        bridge = _bridge;
        emit BridgeUpdated(_bridge);
    }

    /// @notice Mints tokens to a specified address
    /// @param _to The address to mint tokens to
    /// @param _value The amount of tokens to mint
    /// @dev Only callable by the bridge contract
    function mint(address _to, uint256 _value) public onlyBridge nonReentrant {
        if (_value == 0) revert InvalidAmount();
        _mint(_to, _value);
    }

    /// @notice Burns tokens from a specified address
    /// @param _user The address to burn tokens from
    /// @param _value The amount of tokens to burn
    /// @dev Only callable by the bridge contract
    function burn(address _user, uint256 _value) public onlyBridge nonReentrant {
        if (_value == 0) revert InvalidAmount();
        _burn(_user, _value);
    }
}
