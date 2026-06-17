// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import {IPeripheryPaymentsWithFee, IPeripheryImmutableState} from "./IPeripheryPayments.sol";
import {IMulticallExtended} from "./IMulticall.sol";
import {ISelfPermit} from "./ISelfPermit.sol";
import {ISwapRouter as IUniwsapV3Router} from "./ISwapRouter.sol";
import {IQuoter as IUniswapV3Quoter} from "./IQuoter.sol";
import {IUniswapV2Router02, IUniswapV2Router01} from "./IUniswapV2Router02.sol";

/**yarn
 * @title IUniswapRouter interface
 * @author Radiant
 * @notice Inspired by UniswapSDK
 * @dev Combines UniswapV2 and V3 interfaces including multicall for gas efficient swaps across
 * any Uniswap pool and/or versions
 */
interface IUniswapRouter is
	IUniwsapV3Router,
	IUniswapV2Router02,
	IMulticallExtended,
	ISelfPermit,
	IPeripheryPaymentsWithFee,
	IPeripheryImmutableState
{
	function factory() external view override(IPeripheryImmutableState, IUniswapV2Router01) returns (address);
}
