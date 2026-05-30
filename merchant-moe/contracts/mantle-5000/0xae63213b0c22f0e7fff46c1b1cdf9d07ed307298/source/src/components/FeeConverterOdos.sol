// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

import {SafeERC20, IERC20} from "openzeppelin/token/ERC20/utils/SafeERC20.sol";

import {BaseComponent} from "../components/BaseComponent.sol";
import {IOdosRouter} from "../interfaces/IOdosRouter.sol";
import {IFeeConverterOdos} from "../interfaces/IFeeConverterOdos.sol";

/**
 * @title Fee Converter
 * @author Trader Joe
 * @notice This contract is used to convert the protocol fees into the redistributed token and
 * send them to the receiver.
 */
contract FeeConverterOdos is BaseComponent, IFeeConverterOdos {
    using SafeERC20 for IERC20;

    IOdosRouter internal immutable _ODOS_ROUTER;
    IERC20 internal immutable _REDISTRIBUTED_TOKEN;
    address internal immutable _RECEIVER;

    /**
     * @dev Constructor of the FeeConverterOdos contract.
     * @param feeManager The fee manager.
     * @param odosRouter The Odos router.
     * @param redistributedToken The redistributed token.
     * @param receiver The receiver.
     */
    constructor(address feeManager, address odosRouter, address redistributedToken, address receiver)
        BaseComponent(feeManager)
    {
        _ODOS_ROUTER = IOdosRouter(odosRouter);
        _REDISTRIBUTED_TOKEN = IERC20(redistributedToken);
        _RECEIVER = receiver;
    }

    /**
     * @notice Returns the address of the Odos router.
     * @return The address of the Odos router.
     */
    function getOdosRouter() external view override returns (address) {
        return address(_ODOS_ROUTER);
    }

    /**
     * @notice Returns the address of the redistributed token.
     * @return The address of the redistributed token.
     */
    function getRedistributedToken() external view override returns (address) {
        return address(_REDISTRIBUTED_TOKEN);
    }

    /**
     * @notice Returns the address of the receiver.
     * @return The address of the receiver.
     */
    function getReceiver() external view override returns (address) {
        return _RECEIVER;
    }

    /**
     * @notice Swaps the given token for another one using the Odos router.
     * @param tokenInfo The information of the swap.
     * @param pathDefinition The path definition of the swap.
     * @param executor The address that will execute the swap.
     * @return amountIn The amount of tokens sent to the Odos router.
     * @return amountOut The amount of tokens received from the Odos router.
     */
    function convert(IOdosRouter.swapTokenInfo calldata tokenInfo, bytes calldata pathDefinition, address executor)
        external
        override
        onlyDelegateCall
        returns (uint256 amountIn, uint256 amountOut)
    {
        return _swap(tokenInfo, pathDefinition, executor);
    }

    /**
     * @notice Batch swaps the given tokens for another ones using the Odos router.
     * @param tokenInfos The information of the swaps.
     * @param pathDefinitions The path definitions of the swaps.
     * @param executors The addresses that will execute the swaps.
     * @return amountsIn The amounts of tokens sent to the Odos router.
     * @return amountsOut The amounts of tokens received from the Odos router.
     */
    function batchConvert(
        IOdosRouter.swapTokenInfo[] calldata tokenInfos,
        bytes[] calldata pathDefinitions,
        address[] calldata executors
    ) external override onlyDelegateCall returns (uint256[] memory amountsIn, uint256[] memory amountsOut) {
        uint256 length = tokenInfos.length;
        if (length != pathDefinitions.length || length != executors.length) {
            revert FeeConverterOdos__InvalidLength();
        }

        amountsIn = new uint256[](length);
        amountsOut = new uint256[](length);

        unchecked {
            for (uint256 i; i < length; ++i) {
                (amountsIn[i], amountsOut[i]) = _swap(tokenInfos[i], pathDefinitions[i], executors[i]);
            }
        }
    }

    /**
     * @dev Approves the Odos router to spend the given token and swaps it for another one.
     * @param tokenInfo The information of the swap.
     * @param pathDefinition The path definition of the swap.
     * @param executor The address that will execute the swap.
     * @return amountIn The amount of tokens sent to the Odos router.
     * @return amountOut The amount of tokens received from the Odos router.
     */
    function _swap(IOdosRouter.swapTokenInfo calldata tokenInfo, bytes calldata pathDefinition, address executor)
        private
        returns (uint256 amountIn, uint256 amountOut)
    {
        address inputToken = tokenInfo.inputToken;
        address outputToken = tokenInfo.outputToken;
        amountIn = tokenInfo.inputAmount;

        if (outputToken != address(_REDISTRIBUTED_TOKEN)) revert FeeConverterOdos__InvalidDstToken();
        if (tokenInfo.outputReceiver != _RECEIVER) revert FeeConverterOdos__InvalidReceiver();
        if (amountIn == 0 || tokenInfo.outputMin == 0) revert FeeConverterOdos__ZeroAmount();

        if (inputToken == address(_REDISTRIBUTED_TOKEN)) {
            amountOut = amountIn;

            _REDISTRIBUTED_TOKEN.safeTransfer(_RECEIVER, amountIn);
        } else {
            IERC20(inputToken).forceApprove(address(_ODOS_ROUTER), amountIn);

            amountOut = _ODOS_ROUTER.swap(tokenInfo, pathDefinition, executor, 0);
        }

        emit Swap(_RECEIVER, inputToken, outputToken, amountIn, amountOut);
    }
}
