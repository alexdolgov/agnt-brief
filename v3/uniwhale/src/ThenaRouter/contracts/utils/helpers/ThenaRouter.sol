// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;

import "../../interfaces/IThenaRouter.sol";
import "../../interfaces/IUniswapV3Getter.sol";
import "../../libs/math/FixedPoint.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract ThenaRouter is Ownable, IUniswapV3Getter {
  using SafeERC20 for ERC20;
  using FixedPoint for uint256;

  IThenaRouter immutable thenaRouter;
  address public anchorToken;

  event SetAnchorToken(address anchorToken);

  constructor(IThenaRouter _thenaRouter, address _anchorToken) {
    thenaRouter = _thenaRouter;
    anchorToken = _anchorToken;
  }

  // governance function
  function setAnchorToken(address _anchorToken) external onlyOwner {
    anchorToken = _anchorToken;
    emit SetAnchorToken(anchorToken);
  }

  // external functions

  function exactInputSingle(
    ExactInputSingleParams calldata params
  ) external payable returns (uint256 amountOut) {
    ERC20(params.tokenIn).safeTransferFrom(
      msg.sender,
      address(this),
      params.amountIn
    );
    ERC20(params.tokenIn).safeApprove(address(thenaRouter), params.amountIn);

    IThenaRouter.route[] memory routes;
    if (params.tokenIn == anchorToken || params.tokenOut == anchorToken) {
      (, bool stable) = thenaRouter.getAmountOut(
        params.amountIn,
        params.tokenIn,
        params.tokenOut
      );
      routes = new IThenaRouter.route[](1);
      routes[0] = IThenaRouter.route(params.tokenIn, params.tokenOut, stable);
    } else {
      (uint256 amountOut1, bool stable1) = thenaRouter.getAmountOut(
        params.amountIn,
        params.tokenIn,
        anchorToken
      );
      (, bool stable2) = thenaRouter.getAmountOut(
        amountOut1,
        anchorToken,
        params.tokenOut
      );
      routes = new IThenaRouter.route[](2);
      routes[0] = IThenaRouter.route(params.tokenIn, anchorToken, stable1);
      routes[1] = IThenaRouter.route(anchorToken, params.tokenOut, stable2);
    }

    uint256[] memory amountsOut = thenaRouter.swapExactTokensForTokens(
      params.amountIn,
      params.amountOutMinimum,
      routes,
      params.recipient,
      params.deadline
    );
    amountOut = amountsOut[amountsOut.length - 1];
  }

  function exactOutputSingle(
    ExactOutputSingleParams calldata params
  ) external payable returns (uint256 amountIn) {
    uint256 amountOut;
    IThenaRouter.route[] memory routes;
    if (params.tokenIn == anchorToken || params.tokenOut == anchorToken) {
      (uint256 _amountOut, bool stable) = thenaRouter.getAmountOut(
        params.amountInMaximum,
        params.tokenIn,
        params.tokenOut
      );

      routes = new IThenaRouter.route[](1);
      routes[0] = IThenaRouter.route(params.tokenIn, params.tokenOut, stable);

      amountOut = _amountOut;
    } else {
      (uint256 _amountOut1, bool stable1) = thenaRouter.getAmountOut(
        params.amountInMaximum,
        params.tokenIn,
        anchorToken
      );
      (uint256 _amountOut2, bool stable2) = thenaRouter.getAmountOut(
        _amountOut1,
        anchorToken,
        params.tokenOut
      );

      routes = new IThenaRouter.route[](2);
      routes[0] = IThenaRouter.route(params.tokenIn, anchorToken, stable1);
      routes[1] = IThenaRouter.route(anchorToken, params.tokenOut, stable2);

      amountOut = _amountOut2;
    }

    amountIn = params.amountInMaximum.mulDown(params.amountOut).divDown(
      amountOut
    );

    ERC20(params.tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);
    ERC20(params.tokenIn).safeApprove(address(thenaRouter), amountIn);

    uint256[] memory amountsOut = thenaRouter.swapExactTokensForTokens(
      amountIn,
      params.amountOut,
      routes,
      address(this),
      params.deadline
    );
    ERC20(params.tokenOut).safeTransfer(params.recipient, params.amountOut);
    if (amountsOut[amountsOut.length - 1] > params.amountOut) {
      ERC20(params.tokenOut).safeTransfer(
        msg.sender,
        amountsOut[amountsOut.length - 1] - params.amountOut
      );
    }
  }

  function getAmountGivenIn(
    ExactInputSingleParams calldata params
  ) external view virtual override returns (uint256 amountOut) {
    if (params.tokenIn == anchorToken || params.tokenOut == anchorToken) {
      (amountOut, ) = thenaRouter.getAmountOut(
        params.amountIn,
        params.tokenIn,
        params.tokenOut
      );
    } else {
      (uint256 _amountOut, ) = thenaRouter.getAmountOut(
        params.amountIn,
        params.tokenIn,
        anchorToken
      );
      (amountOut, ) = thenaRouter.getAmountOut(
        _amountOut,
        anchorToken,
        params.tokenOut
      );
    }
  }

  function getAmountGivenOut(
    ExactOutputSingleParams calldata params
  ) external view override returns (uint256 amountIn) {
    if (params.tokenIn == anchorToken || params.tokenOut == anchorToken) {
      (uint256 amountOut, ) = thenaRouter.getAmountOut(
        params.amountInMaximum,
        params.tokenIn,
        params.tokenOut
      );
      amountIn = params.amountInMaximum.mulDown(params.amountOut).divDown(
        amountOut
      );
    } else {
      (uint256 _amountOut1, ) = thenaRouter.getAmountOut(
        params.amountInMaximum,
        params.tokenIn,
        anchorToken
      );
      (uint256 _amountOut2, ) = thenaRouter.getAmountOut(
        _amountOut1,
        anchorToken,
        params.tokenOut
      );
      amountIn = params.amountInMaximum.mulDown(params.amountOut).divDown(
        _amountOut2
      );
    }
  }
}
