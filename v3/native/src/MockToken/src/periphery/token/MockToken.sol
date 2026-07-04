// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";

contract MockToken is Ownable2Step, ERC20 {
    /// @dev The number of decimal,default 18, can be customized during deployment.
    uint8 private _decimals = 18;

    /// @notice Initializes the token with specified parameters
    /// @param name The human-readable name of the token
    /// @param symbol The symbol of the token
    /// @param _decimals_ The number of decimal places for token precision (typically 18)
    constructor(string memory name, string memory symbol, uint8 _decimals_) ERC20(name, symbol) {
        _decimals = _decimals_;
    }

    /// @notice Mints new tokens and assigns them to the specified address
    /// @dev Only the contract owner can execute this function. Increases total supply.
    /// @param _to The recipient address that will receive the newly minted tokens
    /// @param _amount The quantity of tokens to mint (in wei units)
    function mint(address _to, uint256 _amount) public onlyOwner {
        _mint(_to, _amount);
    }

    /// @notice Burns tokens from the specified address, reducing total supply
    /// @dev Only the contract owner can execute this function.
    /// @param _to The address from which tokens will be burned
    /// @param _amount The quantity of tokens to burn (in wei units)
    function burn(address _to, uint256 _amount) public onlyOwner {
        _burn(_to, _amount);
    }

    /// @notice Returns the number of decimal places used for token display
    /// @dev Overrides the default ERC20 decimals function to support custom precision
    /// @return The number of decimal
    function decimals() public view override returns (uint8) {
        return _decimals;
    }
}
