// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

import {IOdosRouter} from "../interfaces/IOdosRouter.sol";
import {IBaseComponent} from "./IBaseComponent.sol";

interface IFeeConverterOdos is IBaseComponent {
    error FeeConverterOdos__InvalidLength();
    error FeeConverterOdos__HashMismatch(address lpToken);
    error FeeConverterOdos__InsufficientBalance(address lpToken);
    error FeeConverterOdos__InvalidReceiver();
    error FeeConverterOdos__InvalidDstToken();
    error FeeConverterOdos__ZeroAmount();
    error FeeConverterOdos__InsufficientRedistributedTokenBalance();

    event Swap(
        address recipient, address indexed srcToken, address indexed dstToken, uint256 amountIn, uint256 amountOut
    );

    function getOdosRouter() external view returns (address);

    function getRedistributedToken() external view returns (address);

    function getReceiver() external view returns (address);

    function convert(IOdosRouter.swapTokenInfo calldata tokenInfo, bytes calldata pathDefinition, address executor)
        external
        returns (uint256 amountIn, uint256 amountOut);

    function batchConvert(
        IOdosRouter.swapTokenInfo[] calldata tokenInfos,
        bytes[] calldata pathDefinitions,
        address[] calldata executors
    ) external returns (uint256[] memory amountsIn, uint256[] memory amountsOut);
}
