// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title DackieOracle
 * @dev Contract for managing and updating prices of Dackie, Quack, and dckUSD tokens.
 * Inherits from Ownable to provide ownership control.
 */
contract DackieOracle is Ownable {
    address private operator; // Address of the operator allowed to update prices
    uint256 public dackiePrice; // Price of Dackie token
    uint256 public quackPrice; // Price of Quack token
    uint256 public dckUSDPrice; // Price of dckUSD token

    /**
     * @dev Modifier to restrict functions to the operator.
     */
    modifier onlyOperator() {
        require(msg.sender == operator, "Not authorized");
        _;
    }

    /**
     * @dev Constructor to initialize the contract with the operator address.
     * @param _operator The address of the initial operator.
     */
    constructor(
        address _operator
    ) {
        operator = _operator;
    }

    /**
     * @dev Updates the operator address. Can only be called by the owner.
     * @param _newOperator The address of the new operator.
     */
    function updateOperator(address _newOperator) external onlyOwner {
        require(_newOperator != address(0), "Invalid address");
        operator = _newOperator;
    }

    /**
     * @dev Updates the price of Dackie token. Can only be called by the operator.
     * @param _price The new price of Dackie token.
     */
    function updateDackiePrice(uint256 _price) external onlyOperator {
        dackiePrice = _price;
    }

    /**
     * @dev Updates the price of Quack token. Can only be called by the operator.
     * @param _price The new price of Quack token.
     */
    function updateQuackPrice(uint256 _price) external onlyOperator {
        quackPrice = _price;
    }

    /**
     * @dev Updates the price of dckUSD token. Can only be called by the operator.
     * @param _price The new price of dckUSD token.
     */
    function updatedUSDPrice(uint256 _price) external onlyOperator {
        dckUSDPrice = _price;
    }

    /**
     * @dev Returns the price of Dackie token.
     * @return The current price of Dackie token.
     */
    function getDackiePrice() external view returns (uint256) {
        return dackiePrice;
    }

    /**
     * @dev Returns the price of Quack token.
     * @return The current price of Quack token.
     */
    function getQuackPrice() external view returns (uint256) {
        return quackPrice;
    }

    /**
     * @dev Returns the price of dckUSD token.
     * @return The current price of dckUSD token.
     */
    function getdkcUSDPrice() external view returns (uint256) {
        return dckUSDPrice;
    }
}