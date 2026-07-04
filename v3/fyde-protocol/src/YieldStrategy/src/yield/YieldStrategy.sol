// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";

import "lib/pendle-core-v2-public/contracts/interfaces/IPAllActionV3.sol";
import "lib/pendle-core-v2-public/contracts/interfaces/IPMarket.sol";
import "src/yield/StructGen.sol";

import {IDSRManager} from "./IDSRManager.sol";

interface IWETH is IERC20 {
  function deposit(uint256 amount) external;
  function withdraw(uint256 amount) external;
}

interface ILiquidityPool {
  function deposit() external payable;
  function withdraw(address recipient, uint256 amount) external;
}

interface IWEETH is IERC20 {
  function wrap(uint256 amount) external;
  function unwrap(uint256 amount) external;
}

contract YieldStrategy is StructGen {
  IPAllActionV3 public constant ROUTER = IPAllActionV3(0x00000000005BBB0EF59571E58418F9a4357b68A0);
  IDSRManager constant DSRMANAGER = IDSRManager(0x373238337Bfe1146fb49989fc222523f83081dDb);
  IERC20 constant DAI = IERC20(0x6B175474E89094C44Da98b954EedeAC495271d0F);
  IWETH constant WETH = IWETH(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);
  ILiquidityPool constant EETHLIQUIDITYPOOL =
    ILiquidityPool(0x308861A430be4cce5502d0A12724771Fc6DaF216);
  IERC20 constant EETH = IERC20(0x35fA164735182de50811E8e2E824cFb9B6118ac2);
  IWEETH constant WEETH = IWEETH(0xCd5fE23C85820F7B72D0926FC9b05b43E359b7ee);
  address constant ONEINCH_AGGREGATION_ROUTER = 0x111111125421cA6dc452d289314280a0f8842A65;

  /*//////////////////////////////////////////////////////////////
                             PENDLE STRATEGY
    //////////////////////////////////////////////////////////////*/

  function approvePendle(address _underlying, address _market, uint256 _amount) external {
    (IStandardizedYield SY, IPPrincipalToken PT, IPYieldToken YT) = IPMarket(_market).readTokens();
    IERC20(_underlying).approve(address(ROUTER), _amount);
    IERC20(_market).approve(address(ROUTER), _amount);
    IERC20(SY).approve(address(ROUTER), _amount);
    IERC20(PT).approve(address(ROUTER), _amount);
    IERC20(YT).approve(address(ROUTER), _amount);
  }

  function depositToPendle(address _underlying, address _market, uint256 _amount, uint256 _minPtOut)
    external
    returns (uint256)
  {
    (uint256 netPtOut,,) = ROUTER.swapExactTokenForPt(
      address(this),
      _market,
      _minPtOut,
      _defaultApprox(),
      _createTokenInputStruct(_underlying, _amount),
      _emptyLimit()
    );
    return netPtOut;
  }

  function withdrawFromPendle(
    address _underlying,
    address _market,
    uint256 _amount,
    uint256 _minTokenOut
  ) external returns (uint256) {
    (uint256 netTokenOut,,) = ROUTER.swapExactPtForToken(
      address(this),
      _market,
      _amount,
      _createTokenOutputStruct(_underlying, _minTokenOut),
      _emptyLimit()
    );
    return netTokenOut;
  }

  function addPendleLPPosition(
    address _underlying,
    address _market,
    uint256 _amount,
    uint256 _minTokenOut
  ) external returns (uint256) {
    (uint256 netLpOut,,) = ROUTER.addLiquiditySingleToken(
      address(this),
      _market,
      _minTokenOut,
      _defaultApprox(),
      _createTokenInputStruct(_underlying, _amount),
      _emptyLimit()
    );
    return netLpOut;
  }

  function removePendleLPPosition(
    address _underlying,
    address _market,
    uint256 _amount,
    uint256 _minTokenOut
  ) external returns (uint256) {
    (uint256 netTokenOut,,) = ROUTER.removeLiquiditySingleToken(
      address(this),
      _market,
      _amount,
      _createTokenOutputStruct(_underlying, _minTokenOut),
      _emptyLimit()
    );
    return netTokenOut;
  }

  function redeemPendleLPRewards(address _market)
    external
    returns (address[] memory, uint256[] memory)
  {
    return (IPMarket(_market).getRewardTokens(), IPMarket(_market).redeemRewards(address(this)));
  }

  function redeemUnderlyingAfterMaturity(
    address _underlying,
    uint256 _amount,
    address _market,
    uint256 _minTokenOut
  ) external returns (uint256) {
    (IStandardizedYield SY, IPPrincipalToken PT, IPYieldToken YT) = IPMarket(_market).readTokens();
    PT.transfer(address(YT), _amount);
    YT.redeemPY(address(this));
    return SY.redeem(address(this), _amount, _underlying, _minTokenOut, false);
  }

  /*//////////////////////////////////////////////////////////////
                             sDAI STRATEGY
    //////////////////////////////////////////////////////////////*/

  function stakeDai(uint256 _amount) external {
    DAI.approve(address(DSRMANAGER), _amount);
    DSRMANAGER.join(address(this), _amount);
  }

  function unstakeDai(uint256 _amount) external {
    DSRMANAGER.exit(address(this), _amount);
  }

  function currentDaiBalance() external returns (uint256) {
    return DSRMANAGER.daiBalance(address(this));
  }

  /*//////////////////////////////////////////////////////////////
                             SWAP AASETS
    //////////////////////////////////////////////////////////////*/

  function swapOn1INCH(
    address _assetIn,
    uint256 _amountIn,
    address _assetOut,
    uint256 _minAmountOut,
    bytes calldata _swapData
  ) external {
    uint256 balBefore = IERC20(_assetOut).balanceOf(address(this));
    IERC20(_assetIn).approve(ONEINCH_AGGREGATION_ROUTER, _amountIn);
    (bool success,) = ONEINCH_AGGREGATION_ROUTER.call(_swapData);
    require(success, "Swap Failed");
    uint256 balAfter = IERC20(_assetOut).balanceOf(address(this));
    require((balAfter - balBefore) >= _minAmountOut, "Slippage Exceeded");
  }

  /*//////////////////////////////////////////////////////////////
                             ETHERFI
    //////////////////////////////////////////////////////////////*/

  function depositWETHInEtherfi(uint256 _amount) external {
    WETH.withdraw(_amount);
    EETHLIQUIDITYPOOL.deposit{value: _amount}();
    uint256 eethBal = EETH.balanceOf(address(this));
    EETH.approve(address(WEETH), eethBal);
    WEETH.wrap(eethBal);
  }
}
