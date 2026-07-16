// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ILimitOrderEngine as ILimitOrderEngineBase} from "limit-orders/src/interfaces/ILimitOrderEngine.sol";

/**
 * @title ILimitOrderModule
 * @notice Interface for the LimitOrderModule contract
 * @dev Defines the external functions available for limit order processing
 */
interface ILimitOrderModule {
    /**
     * @notice Custom errors
     */
    error LimitOrderEngineNotSet();
    error NoOrders();
    error InvalidTakerInputToken();

    /**
     * @notice Fills limit orders using the configured limit order engine.
     * @dev Decodes the taker input token from `data`, validates it against the batch order type,
     *      transfers the router's full balance of that token to the engine, then delegates
     *      validation and settlement to the engine via ILimitOrderEngine.fillOrders().
     * @param receiver The address that will receive the output tokens
     * @param params Array of order parameters to be filled
     * @param data ABI-encoded taker input token address: abi.encode(takerInputToken)
     */
    function fillOrders(address receiver, ILimitOrderEngineBase.FillOrderParams[] memory params, bytes memory data)
        external
        payable;

    /**
     * @notice Retrieves the current limit order engine address
     * @dev Returns the engine address stored in the limit order module storage
     * @return The address of the current limit order engine contract
     */
    function getLimitOrderEngine() external view returns (address);

    /**
     * @notice Updates the limit order engine address used for order processing
     * @dev Only callable by authorized addresses (restricted modifier)
     *      Updates the engine address in the limit order module storage
     * @param _limitOrderEngine The new limit order engine contract address
     * @custom:security Requires restricted access control
     */
    function setLimitOrderEngine(address _limitOrderEngine) external;
}
