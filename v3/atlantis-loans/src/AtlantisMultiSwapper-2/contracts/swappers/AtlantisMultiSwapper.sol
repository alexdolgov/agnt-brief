// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import "@boringcrypto/boring-solidity/contracts/libraries/BoringERC20.sol";
import "@boringcrypto/boring-solidity/contracts/libraries/BoringMath.sol";
import "../libraries/UniswapV2Library.sol";
import "@sushiswap/core/contracts/uniswapv2/libraries/TransferHelper.sol";
import "@sushiswap/bentobox-sdk/contracts/IBentoBoxV1.sol";

contract AtlantisMultiSwapper {
    using BoringERC20 for IERC20;
    using BoringMath for uint256;

    address private immutable factory;

    IBentoBoxV1 private immutable bentoBox;

    bytes32 private immutable pairCodeHash;

    constructor (address _factory, IBentoBoxV1 _bentoBox, bytes32 _pairCodeHash) public {
        factory = _factory;
        bentoBox = _bentoBox;
        pairCodeHash = _pairCodeHash;
    }

    function getInputAmount(IERC20 tokenOut, address[] memory path, uint256 shareOut) public view returns (uint256 amountIn) {
        uint256 amountOut = bentoBox.toAmount(tokenOut, shareOut, true);
        uint256[] memory amounts = UniswapV2Library.getAmountsIn(factory, amountOut, path, pairCodeHash);
        amountIn = amounts[0];
    }

    function getOutputAmount (IERC20 tokenIn, address[] calldata path, uint256 shareIn) external view returns (uint256 amountOut){
        uint256 amountIn = bentoBox.toAmount(tokenIn, shareIn, false);
        uint256[] memory amounts = UniswapV2Library.getAmountsOut(factory, amountIn, path, pairCodeHash);
        amountOut = amounts[amounts.length - 1];
    }

    function combinePath(IERC20 tokenIn, IERC20 tokenOut, address path1,  address path2) public pure returns (address[] memory) {
        address[] memory path;
        if (path2 == address(0)) {
            if (path1 == address(0)) {
                path = new address[](2);
                path[1] = address(tokenOut);
            } else {
                path = new address[](3);
                path[1] = path1;
                path[2] = address(tokenOut);
            }
        } else {
            path = new address[](4);
            path[1] = path1;
            path[2] = path2;
            path[3] = address(tokenOut);
        }
        path[0] = address(tokenIn);

    return path;
}

    struct localVars {
       address[] path;
       address pair;
       uint256[] amounts;
    }

 function short(
        IERC20 tokenIn,
        IERC20 tokenOut,
        address path1,
        address path2,
        address recipient,
        uint256 shareToMin,
        uint256 shareFrom
    ) public returns (uint256 extraShare, uint256 shareReturned) {
        localVars memory vars;
        vars.path = combinePath(tokenIn, tokenOut, path1, path2);

        address pair = UniswapV2Library.pairFor(factory, vars.path[0], vars.path[1], pairCodeHash);
        (uint256 amountFrom, ) = bentoBox.withdraw(tokenIn, address(this), address(pair), 0, shareFrom);

        vars.amounts = UniswapV2Library.getAmountsOut(factory, amountFrom, vars.path, pairCodeHash);
        uint256 amountTo = vars.amounts[vars.amounts.length - 1];
        
        _swap(vars.amounts, vars.path, address(bentoBox));

        (, shareReturned) = bentoBox.deposit(tokenOut, address(bentoBox), recipient, amountTo, 0);
        extraShare = shareReturned.sub(shareToMin);
    }

    function unwind(
        IERC20 tokenIn,
        IERC20 tokenOut,
        address path1,
        address path2,
        address recipient,
        address refundTo,
        uint256 maxShare, // collateral max user share
        uint256 shareToExact // repay share filled when calling ACTION_GET_REPAY_SHARE
    ) public returns (uint256 shareUsed, uint256 shareReturned) {
        localVars memory vars;
        vars.path = combinePath(tokenIn, tokenOut, path1, path2);

        address pair = UniswapV2Library.pairFor(factory, vars.path[0], vars.path[1], pairCodeHash);

        // asset share to repay amount
        uint256 amountToExact = bentoBox.toAmount(tokenOut, shareToExact, true);

        // get collateral amount needed based on the repay amount
        vars.amounts = UniswapV2Library.getAmountsIn(factory, amountToExact, vars.path, pairCodeHash);
        uint256 amountFrom = vars.amounts[0];

        // get the collateral deposited into this swapper contract provided by the user
        (, shareUsed) = bentoBox.withdraw(tokenIn, address(this), address(pair), amountFrom, 0);

        // swap collateral to asset
        _swap(vars.amounts, vars.path, address(bentoBox));

        // deliver asset to user 
        bentoBox.deposit(tokenOut, address(bentoBox), recipient, 0, shareToExact);

        shareReturned = maxShare.sub(shareUsed);
        if (shareReturned > 0) {
            // deliver unused (deposited) collateral back to user
            bentoBox.transfer(tokenIn, address(this), refundTo, shareReturned);
        }
    }

    function _swap(
        uint256[] memory amounts,
        address[] memory path,
        address _to
    ) internal virtual {
         for (uint256 i; i < path.length - 1; i++) {
            (address input, address output) = (path[i], path[i + 1]);
            (address token0, ) = UniswapV2Library.sortTokens(input, output);
            uint256 amountOut = amounts[i + 1];
            (uint256 amount0Out, uint256 amount1Out) = input == token0 ? (uint256(0), amountOut) : (amountOut, uint256(0));
            address to = i < path.length - 2 ? UniswapV2Library.pairFor(factory, output, path[i + 2], pairCodeHash) : _to;
            IUniswapV2Pair(UniswapV2Library.pairFor(factory, input, output, pairCodeHash)).swap(amount0Out, amount1Out, to, new bytes(0));
        }
    }
}