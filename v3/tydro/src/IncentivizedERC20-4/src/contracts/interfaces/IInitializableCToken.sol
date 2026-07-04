// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {ICreditifyIncentivesController} from "./ICreditifyIncentivesController.sol";
import {IPool} from "./IPool.sol";

/**
 * @title IInitializableCToken
 * @author Creditify
 * @notice Interface for the initialize function on CToken
 */
interface IInitializableCToken {
    /**
     * @dev Emitted when a cToken is initialized
     * @param underlyingAsset The address of the underlying asset
     * @param pool The address of the associated pool
     * @param treasury The address of the treasury
     * @param incentivesController The address of the incentives controller for this cToken
     * @param cTokenDecimals The decimals of the underlying
     * @param cTokenName The name of the cToken
     * @param cTokenSymbol The symbol of the cToken
     * @param params A set of encoded parameters for additional initialization
     */
    event Initialized(
        address indexed underlyingAsset,
        address indexed pool,
        address treasury,
        address incentivesController,
        uint8 cTokenDecimals,
        string cTokenName,
        string cTokenSymbol,
        bytes params
    );

    /**
     * @notice Initializes the cToken
     * @param pool The pool contract that is initializing this contract
     * @param underlyingAsset The address of the underlying asset of this cToken (E.g. WXDC for cWXDC)
     * @param cTokenDecimals The decimals of the cToken, same as the underlying asset's
     * @param cTokenName The name of the cToken
     * @param cTokenSymbol The symbol of the cToken
     * @param params A set of encoded parameters for additional initialization
     */
    function initialize(
        IPool pool,
        address underlyingAsset,
        uint8 cTokenDecimals,
        string calldata cTokenName,
        string calldata cTokenSymbol,
        bytes calldata params
    ) external;
}
