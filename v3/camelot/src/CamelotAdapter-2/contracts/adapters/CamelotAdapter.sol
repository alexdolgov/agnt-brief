//       ╟╗                                                                      ╔╬
//       ╞╬╬                                                                    ╬╠╬
//      ╔╣╬╬╬                                                                  ╠╠╠╠╦
//     ╬╬╬╬╬╩                                                                  ╘╠╠╠╠╬
//    ║╬╬╬╬╬                                                                    ╘╠╠╠╠╬
//    ╣╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬      ╒╬╬╬╬╬╬╬╜   ╠╠╬╬╬╬╬╬╬         ╠╬╬╬╬╬╬╬    ╬╬╬╬╬╬╬╬╠╠╠╠╠╠╠╠
//    ╙╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╕    ╬╬╬╬╬╬╬╜   ╣╠╠╬╬╬╬╬╬╬╬        ╠╬╬╬╬╬╬╬   ╬╬╬╬╬╬╬╬╬╠╠╠╠╠╠╠╩
//     ╙╣╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬  ╔╬╬╬╬╬╬╬    ╔╠╠╠╬╬╬╬╬╬╬╬        ╠╬╬╬╬╬╬╬ ╣╬╬╬╬╬╬╬╬╬╬╬╠╠╠╠╝╙
//               ╘╣╬╬╬╬╬╬╬╬╬╬╬╬╬╬    ╒╠╠╠╬╠╬╩╬╬╬╬╬╬       ╠╬╬╬╬╬╬╬╣╬╬╬╬╬╬╬╙
//                 ╣╬╬╬╬╬╬╬╬╬╬╠╣     ╣╬╠╠╠╬╩ ╚╬╬╬╬╬╬      ╠╬╬╬╬╬╬╬╬╬╬╬╬╬╬
//                  ╣╬╬╬╬╬╬╬╬╬╣     ╣╬╠╠╠╬╬   ╣╬╬╬╬╬╬     ╠╬╬╬╬╬╬╬╬╬╬╬╬╬╬
//                   ╟╬╬╬╬╬╬╬╩      ╬╬╠╠╠╠╬╬╬╬╬╬╬╬╬╬╬     ╠╬╬╬╬╬╬╬╠╬╬╬╬╬╬╬
//                    ╬╬╬╬╬╬╬     ╒╬╬╠╠╬╠╠╬╬╬╬╬╬╬╬╬╬╬╬    ╠╬╬╬╬╬╬╬ ╣╬╬╬╬╬╬╬
//                    ╬╬╬╬╬╬╬     ╬╬╬╠╠╠╠╝╝╝╝╝╝╝╠╬╬╬╬╬╬   ╠╬╬╬╬╬╬╬  ╚╬╬╬╬╬╬╬╬
//                    ╬╬╬╬╬╬╬    ╣╬╬╬╬╠╠╩       ╘╬╬╬╬╬╬╬  ╠╬╬╬╬╬╬╬   ╙╬╬╬╬╬╬╬╬
//

// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.30;

import {IERC20} from "contracts/interface/IERC20.sol";
import {SafeERC20} from "contracts/lib/SafeERC20.sol";
import {YakAdapter} from "contracts/YakAdapter.sol";
import {CamelotLibrary} from "contracts/lib/CamelotLibrary.sol";

interface IFactory {
    function getPair(address, address) external view returns (address);
}

interface IPair {
    function getAmountOut(uint256, address) external view returns (uint256);
    function getAmountIn(uint256, address) external view returns (uint256);
    function swap(
        uint256 amount0Out,
        uint256 amount1Out,
        address to,
        bytes calldata data,
        address referrer
    ) external;
    function getReserves()
        external
        view
        returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
    function token0() external view returns (address);
    function token1() external view returns (address);
    function stableSwap() external view returns (bool);
    function token0FeePercent() external view returns (uint16);
    function token1FeePercent() external view returns (uint16);
}

contract CamelotAdapter is YakAdapter {
    using SafeERC20 for IERC20;

    error InsufficientOutputAmount(uint256 amountOut, uint256 requiredAmount);

    event ReferrerSet(address referrer);

    address public immutable FACTORY;
    address public referrer;

    constructor(string memory _name, address _factory) YakAdapter(_name) {
        if (_factory == address(0)) revert AddressZero();
        FACTORY = _factory;
    }

    function setReferrer(address _referrer) external onlyMaintainer {
        if (_referrer == address(0)) revert AddressZero();
        referrer = _referrer;
        emit ReferrerSet(_referrer);
    }

    function getQuoteAndPair(uint256 _amount, address _tokenIn, address _tokenOut, bool _exactIn)
        internal
        view
        returns (uint256 quoteAmount, address pair)
    {
        pair = IFactory(FACTORY).getPair(_tokenIn, _tokenOut);
        if (pair != address(0)) {
            if (_exactIn) {
                quoteAmount = IPair(pair).getAmountOut(_amount, _tokenIn);
            } else {
                // For exactOut, we need to calculate amountIn
                // Calculate amountIn using reserves and pair data
                (uint112 reserve0, uint112 reserve1,) = IPair(pair).getReserves();
                address token0 = IPair(pair).token0();
                address token1 = IPair(pair).token1();

                // Try to get fee percentage and stable swap flag
                uint16 feePercent = 500; // default 0.5% for old pairs
                bool stableSwap = false; // default to non-stable for old pairs

                // Try to get the actual fee from the pair if available
                try IPair(pair).token0FeePercent() returns (uint16 fee0) {
                    try IPair(pair).token1FeePercent() returns (uint16 fee1) {
                        // Use the appropriate fee based on which token is the output
                        feePercent = _tokenOut == token1 ? fee0 : fee1;
                    } catch {}
                } catch {}

                // Try to get stable swap flag if available
                try IPair(pair).stableSwap() returns (bool isStable) {
                    stableSwap = isStable;
                } catch {}

                quoteAmount = CamelotLibrary.getAmountIn(
                    _amount,
                    _tokenOut,
                    uint256(reserve0),
                    uint256(reserve1),
                    token0,
                    token1,
                    feePercent,
                    stableSwap
                );
            }
        }
    }

    function _query(uint256 _amount, address _tokenIn, address _tokenOut, bool _exactIn)
        internal
        view
        override
        returns (uint256 quoteAmount, address pair)
    {
        if (_tokenIn != _tokenOut && _amount != 0) {
            (quoteAmount, pair) = getQuoteAndPair(_amount, _tokenIn, _tokenOut, _exactIn);
        }
    }

    function _swap(
        uint256 _amountIn,
        uint256 _amountOut,
        address _tokenIn,
        address _tokenOut,
        address to
    ) internal override {
        (uint256 amountOut, address pair) = getQuoteAndPair(_amountIn, _tokenIn, _tokenOut, true);
        if (amountOut < _amountOut) revert InsufficientOutputAmount(amountOut, _amountOut);

        // Check balance before swap
        uint256 balanceBefore = IERC20(_tokenOut).balanceOf(to);

        (uint256 amount0Out, uint256 amount1Out) =
            (_tokenIn < _tokenOut) ? (uint256(0), amountOut) : (amountOut, uint256(0));
        IPair(pair).swap(amount0Out, amount1Out, to, new bytes(0), referrer);

        // Verify the recipient received at least the minimum amount
        uint256 balanceAfter = IERC20(_tokenOut).balanceOf(to);
        uint256 actualReceived = balanceAfter - balanceBefore;
        if (actualReceived < _amountOut) {
            revert InsufficientOutputAmount(actualReceived, _amountOut);
        }
    }
}
