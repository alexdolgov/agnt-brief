// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title DackieUSD
 * @dev ERC20 token representing Dackie USD with 6 decimals.
 * Inherits from ERC20 and Ownable. Allows minting and burning by an operator.
 */
contract DackieUSD is ERC20, Ownable {
    address public operator; // Address of the operator allowed to mint and burn tokens

    /**
     * @dev Emitted when the operator address is updated.
     * @param oldOperator The address of the old operator.
     * @param newOperator The address of the new operator.
     */
    event SetOperator(address indexed oldOperator, address indexed newOperator);

    /**
     * @dev Modifier to restrict functions to the operator.
     */
    modifier onlyOperator() {
        require(msg.sender == operator, "Not authorized");
        _;
    }

    /**
     * @dev Constructor to initialize the token with a name, symbol, and operator.
     */
    constructor() ERC20("Dackie USD", "dckUSD") {
        operator = msg.sender;
    }

    /**
     * @dev Updates the operator address. Can only be called by the owner.
     * @param _newOperator The address of the new operator.
     */
    function setOperator(address _newOperator) external onlyOwner {
        require(_newOperator != address(0), "Invalid address");
        address oldOperator = operator;
        operator = _newOperator;
        emit SetOperator(oldOperator, _newOperator);
    }

    /**
     * @dev Mints new tokens. Can only be called by the operator.
     * @param _to The address to receive the minted tokens.
     * @param _amount The amount of tokens to mint.
     */
    function mint(address _to, uint256 _amount) external onlyOperator {
        _mint(_to, _amount);
    }

    /**
     * @dev Burns tokens from a specified address. Can only be called by the operator.
     * @param _from The address from which tokens will be burned.
     * @param _amount The amount of tokens to burn.
     */
    function burn(address _from, uint256 _amount) external onlyOperator {
        _burn(_from, _amount);
    }

    /**
     * @dev Overrides the decimals function to return 6.
     * @return The number of decimals for the token.
     */
    function decimals() public view virtual override returns (uint8) {
        return 6;
    }
}