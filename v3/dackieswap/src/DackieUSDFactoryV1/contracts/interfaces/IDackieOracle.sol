// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title IDackieOracle
 * @dev Interface for the DackieOracle contract.
 */
interface IDackieOracle {
    /**
     * @dev Updates the operator address. Can only be called by the owner.
     * @param _newOperator The address of the new operator.
     */
    function updateOperator(address _newOperator) external;

    /**
     * @dev Updates the price of Dackie token. Can only be called by the operator.
     * @param _price The new price of Dackie token.
     */
    function updateDackiePrice(uint256 _price) external;

    /**
     * @dev Updates the price of Quack token. Can only be called by the operator.
     * @param _price The new price of Quack token.
     */
    function updateQuackPrice(uint256 _price) external;

    /**
     * @dev Updates the price of dckUSD token. Can only be called by the operator.
     * @param _price The new price of dckUSD token.
     */
    function updatedUSDPrice(uint256 _price) external;

    /**
     * @dev Returns the price of Dackie token.
     * @return The current price of Dackie token.
     */
    function getDackiePrice() external view returns (uint256);

    /**
     * @dev Returns the price of Quack token.
     * @return The current price of Quack token.
     */
    function getQuackPrice() external view returns (uint256);

    /**
     * @dev Returns the price of dckUSD token.
     * @return The current price of dckUSD token.
     */
    function getDckUSDPrice() external view returns (uint256);
}