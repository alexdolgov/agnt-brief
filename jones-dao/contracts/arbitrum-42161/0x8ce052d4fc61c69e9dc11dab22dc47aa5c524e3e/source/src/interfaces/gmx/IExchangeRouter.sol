// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {DataStore} from "./DataStore.sol";
import {Router} from "./Router.sol";

import {RoleStore} from "./RoleStore.sol";

interface IExchangeRouter {
    // @param receiver the address to send the market tokens to
    // @param callbackContract the callback contract
    // @param uiFeeReceiver the ui fee receiver
    // @param market the market to deposit into
    // @param minMarketTokens the minimum acceptable number of liquidity tokens
    // @param shouldUnwrapNativeToken whether to unwrap the native token when
    // sending funds back to the user in case the deposit gets cancelled
    // @param executionFee the execution fee for keepers
    // @param callbackGasLimit the gas limit for the callbackContract
    struct CreateDepositParams {
        address receiver;
        address callbackContract;
        address uiFeeReceiver;
        address market;
        address initialLongToken;
        address initialShortToken;
        address[] longTokenSwapPath;
        address[] shortTokenSwapPath;
        uint256 minMarketTokens;
        bool shouldUnwrapNativeToken;
        uint256 executionFee;
        uint256 callbackGasLimit;
    }

    /**
     * @param receiver The address that will receive the withdrawal tokens.
     * @param callbackContract The contract that will be called back.
     * @param market The market on which the withdrawal will be executed.
     * @param minLongTokenAmount The minimum amount of long tokens that must be withdrawn.
     * @param minShortTokenAmount The minimum amount of short tokens that must be withdrawn.
     * @param shouldUnwrapNativeToken Whether the native token should be unwrapped when executing the withdrawal.
     * @param executionFee The execution fee for the withdrawal.
     * @param callbackGasLimit The gas limit for calling the callback contract.
     */
    struct CreateWithdrawalParams {
        address receiver;
        address callbackContract;
        address uiFeeReceiver;
        address market;
        address[] longTokenSwapPath;
        address[] shortTokenSwapPath;
        uint256 minLongTokenAmount;
        uint256 minShortTokenAmount;
        bool shouldUnwrapNativeToken;
        uint256 executionFee;
        uint256 callbackGasLimit;
    }

    struct CreateShiftParams {
        address receiver;
        address callbackContract;
        address uiFeeReceiver;
        address fromMarket;
        address toMarket;
        uint256 minMarketTokens;
        uint256 executionFee;
        uint256 callbackGasLimit;
    }

    /**
     * @dev Creates a new deposit with the given long token, short token, long token amount, short token
     * amount, and deposit parameters. The deposit is created by transferring the specified amounts of
     * long and short tokens from the caller's account to the deposit store, and then calling the
     * `createDeposit()` function on the deposit handler contract.
     *
     * @param params The deposit parameters, as specified in the `DepositUtils.CreateDepositParams` struct
     * @return The unique ID of the newly created deposit
     */
    function createDeposit(CreateDepositParams calldata params) external payable returns (bytes32);

    /**
     * @dev Creates a new withdrawal with the given withdrawal parameters. The withdrawal is created by
     * calling the `createWithdrawal()` function on the withdrawal handler contract.
     *
     * @param params The withdrawal parameters, as specified in the `WithdrawalUtils.CreateWithdrawalParams` struct
     * @return The unique ID of the newly created withdrawal
     */
    function createWithdrawal(CreateWithdrawalParams calldata params) external payable returns (bytes32);

    function createShift(CreateShiftParams calldata params) external payable returns (bytes32);

    // @dev Wraps the specified amount of native tokens into WNT then sends the WNT to the specified address
    function sendWnt(address receiver, uint256 amount) external payable;

    // @dev Sends the given amount of tokens to the given address
    function sendTokens(address token, address receiver, uint256 amount) external payable;

    function sendNativeToken(address receiver, uint256 amount) external payable;

    function dataStore() external view returns (DataStore);

    function router() external view returns (Router);

    function roleStore() external view returns (RoleStore);
}
