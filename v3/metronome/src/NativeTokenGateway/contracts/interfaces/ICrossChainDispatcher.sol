// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import {IOFTReceiverUpgradeable} from "../dependencies/@layerzerolabs/solidity-examples/contracts-upgradeable/token/oft/composable/IOFTReceiverUpgradeable.sol";
import {IStargateReceiver} from "../dependencies/stargate-protocol/interfaces/IStargateReceiver.sol";
import {IStargateComposer} from "../dependencies/stargate-protocol/interfaces/IStargateComposer.sol";

interface ICrossChainDispatcher is IStargateReceiver, IOFTReceiverUpgradeable {
    function crossChainDispatcherOf(uint16 chainId_) external view returns (address);

    function triggerFlashRepaySwap(
        uint256 id_,
        address payable account_,
        address tokenIn_,
        address tokenOut_,
        uint256 amountIn_,
        uint256 amountOutMin_,
        bytes calldata lzArgs_
    ) external payable;

    function triggerLeverageSwap(
        uint256 id_,
        address payable account_,
        address tokenIn_,
        address tokenOut_,
        uint256 amountIn_,
        uint256 amountOutMin,
        bytes calldata lzArgs_
    ) external payable;

    function isBridgingActive() external view returns (bool);

    function flashRepayCallbackTxGasLimit() external view returns (uint64);

    function flashRepaySwapTxGasLimit() external view returns (uint64);

    function leverageCallbackTxGasLimit() external view returns (uint64);

    function leverageSwapTxGasLimit() external view returns (uint64);

    function lzBaseGasLimit() external view returns (uint256);

    function stargateComposer() external view returns (IStargateComposer);

    function stargateSlippage() external view returns (uint256);

    function stargatePoolIdOf(address token_) external view returns (uint256);

    function isDestinationChainSupported(uint16 dstChainId_) external view returns (bool);
}
