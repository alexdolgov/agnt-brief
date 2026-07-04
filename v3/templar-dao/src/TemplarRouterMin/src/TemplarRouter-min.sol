// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.26;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IUniversalRouter} from "./interfaces/IUniversalRouter.sol";
import {IPermitV2} from "./interfaces/IPermitV2.sol";
import {Commands} from "./libraries/Commands.sol";
import {PoolKey} from "v4-core/src/types/PoolKey.sol";
import {Currency} from "v4-core/src/types/Currency.sol";
import {IHooks} from "v4-core/src/interfaces/IHooks.sol";
import {Plan, Planner} from "v4-periphery/test/shared/Planner.sol";
import {PathKey} from "v4-periphery/src/libraries/PathKey.sol";
import {IV4Router} from "v4-periphery/src/interfaces/IV4Router.sol";
import {IV4Quoter} from "v4-periphery/src/interfaces/IV4Quoter.sol";
import {Actions} from "v4-periphery/src/libraries/Actions.sol";
import {ActionConstants} from "v4-periphery/src/libraries/ActionConstants.sol";
import {Constants} from "v4-core/test/utils/Constants.sol";

interface ITreasury {
  function mint(uint256 _amount) external returns (uint256);

  function redeem(uint256 _amount) external returns (uint256);

  function reserveToTMAmount(uint256 _amount)
    external
    view
    returns (uint256);

  function tmToReserveAmount(uint256 _amount)
    external
    view
    returns (uint256);
}

contract TemplarRouterMin is Ownable {
  using SafeERC20 for IERC20;

  address public immutable treasury;
  address public immutable tm;
  address public immutable usdt;
  address public immutable tem;
  address public immutable uniRouter;
  address public immutable permit2;
  address public immutable v4Quoter;

  bool public usingTEMPairBNB = false;

  mapping(address => bool) public tokenList;

  event Swap(
    address indexed _address,
    address _tokenA,
    address _tokenB,
    uint256 _amountIn,
    uint256 _minAmountOut,
    uint256 _amountOut
  );

  modifier allowTokenList(address _tokenA, address _tokenB) {
    require(_tokenA != _tokenB, "not same token");
    require(
      tokenList[_tokenA] && tokenList[_tokenB],
      "token not allow"
    );
    _;
  }

  constructor(
    address _treasury,
    address _tm,
    address _usdt,
    address _tem,
    address _uniRouter,
    address _permit2,
    address _v4Quoter
  ) Ownable(msg.sender) {
    require(_treasury != address(0), "invalid address");
    require(_tm != address(0), "invalid address");
    require(_usdt != address(0), "invalid address");
    require(_tem != address(0), "invalid TEM address");
    require(
      _uniRouter != address(0),
      "invalid UniswapV3 router address"
    );
    require(_permit2 != address(0), "invalid permit2 address");

    treasury = _treasury;
    tm = _tm;
    usdt = _usdt;
    tem = _tem;
    uniRouter = _uniRouter;
    permit2 = _permit2;
    v4Quoter = _v4Quoter;

    // initial token list
    tokenList[_tm] = true;
    tokenList[_usdt] = true;
    tokenList[_tem] = true;
  }

  function swap(
    address _tokenA,
    address _tokenB,
    uint256 _amountIn,
    uint256 _minAmountOut
  )
    external
    allowTokenList(_tokenA, _tokenB)
    returns (uint256 _amountOut)
  {
    IERC20(_tokenA).safeTransferFrom(
      msg.sender,
      address(this),
      _amountIn
    );

    if (_tokenA == tem) {
      _amountOut = _swapWithUniswapV4(_amountIn, 0, tem, usdt);
      if (_tokenB != usdt) {
        _amountOut = _swapStableTM(usdt, _tokenB, _amountOut);
      }
    } else if (_tokenB == tem) {
      uint256 amountIn = _amountIn;
      if (_tokenA != usdt) {
        amountIn = _swapStableTM(_tokenA, usdt, amountIn);
      }
      _amountOut = _swapWithUniswapV4(amountIn, 0, usdt, tem);
    } else {
      _amountOut = _swapStableTM(_tokenA, _tokenB, _amountIn);
    }

    require(_amountOut >= _minAmountOut, "slippage");
    IERC20(_tokenB).safeTransfer(msg.sender, _amountOut);

    emit Swap(
      msg.sender,
      _tokenA,
      _tokenB,
      _amountIn,
      _minAmountOut,
      _amountOut
    );
  }

  function getAmountOut(
    address _tokenA,
    address _tokenB,
    uint256 _amountIn
  )
    external
    allowTokenList(_tokenA, _tokenB)
    returns (uint256 _amountOut)
  {
    if (_tokenA == tem) {
      _amountOut = _getQuoteExactInput(tem, usdt, _amountIn);
      if (_tokenB != usdt) {
        _amountOut = _getExactInputSwapStableTM(
          usdt,
          _tokenB,
          _amountOut
        );
      }
    } else if (_tokenB == tem) {
      uint256 amountIn = _amountIn;
      if (_tokenA != usdt) {
        amountIn = _getExactInputSwapStableTM(
          _tokenA,
          usdt,
          amountIn
        );
      }
      _amountOut = _getQuoteExactInput(usdt, tem, amountIn);
    } else {
      _amountOut = _getExactInputSwapStableTM(
        _tokenA,
        _tokenB,
        _amountIn
      );
    }
  }

  // ------------------------------
  // internal
  // ------------------------------
  function _getQuoteExactInput(
    address _tokenA,
    address _tokenB,
    uint256 _amountIn
  ) internal returns (uint256 amountOut) {
    PathKey[] memory path = _getPathKey(Currency.wrap(_tokenB));

    IV4Quoter.QuoteExactParams memory params = IV4Quoter.QuoteExactParams({
        exactCurrency: Currency.wrap(_tokenA),
        path: path,
        exactAmount: uint128(_amountIn)
    });

    (amountOut, ) = IV4Quoter(v4Quoter).quoteExactInput(params);
  }

  function _getExactInputSwapStableTM(
    address _tokenA,
    address _tokenB,
    uint256 _amountIn
  ) internal view returns (uint256 _amountOut) {
    if (_tokenA == tm) {
      _amountOut = ITreasury(treasury).tmToReserveAmount(_amountIn);
    } else if (_tokenB == tm) {
      _amountOut = ITreasury(treasury).reserveToTMAmount(_amountIn);
    } else {
      revert("only TM stable swap supported");
    }
  }

  function _swapStableTM(
    address _tokenA,
    address _tokenB,
    uint256 _amountIn
  ) internal returns (uint256 _amountOut) {
    if (_tokenA == tm) {
      _amountOut = _zapRedeem(_amountIn);
    } else if (_tokenB == tm) {
      _amountOut = _zapMint(_amountIn);
    } else {
      revert("only TM stable swap supported");
    }
  }

  function _zapMint(uint256 _amountIn) internal returns (uint256 _amountOut) {
    // mint
    IERC20(usdt).safeIncreaseAllowance(treasury, _amountIn);
    _amountOut = ITreasury(treasury).mint(_amountIn);
  }

  function _zapRedeem(uint256 _amountIn) internal returns (uint256 _amountOut) {
    // redeem to USDT
    IERC20(tm).safeIncreaseAllowance(treasury, _amountIn);
    _amountOut = ITreasury(treasury).redeem(_amountIn);
  }

  function _swapWithUniswapV4(
    uint256 _amountIn,
    uint256 _minAmountOut,
    address _tokenA,
    address _tokenB
  ) internal returns (uint256 _amountOut) {
    // Permit2 token approval
    IERC20(_tokenA).safeIncreaseAllowance(permit2, _amountIn);
    IPermitV2(permit2).approve(
      _tokenA,
      uniRouter,
      uint160(_amountIn),
      uint48(block.timestamp + 60)
    );

    Currency currencyIn = Currency.wrap(_tokenA);
    Currency currencyOut = Currency.wrap(_tokenB);

    // Get Path for swap
    PathKey[] memory path = _getPathKey(currencyOut);

    // Get Exact Input Params
    IV4Router.ExactInputParams memory params = IV4Router.ExactInputParams({
      currencyIn: currencyIn,
      path: path,
      amountIn: uint128(_amountIn),
      amountOutMinimum: uint128(_minAmountOut)
    });

    // Get Planner for path
    Plan memory planner = Planner.init();
    planner = planner.add(Actions.SWAP_EXACT_IN, abi.encode(params));
    planner = planner.add(Actions.SETTLE, abi.encode(currencyIn, ActionConstants.OPEN_DELTA, true));
    planner = planner.add(Actions.TAKE, abi.encode(currencyOut, ActionConstants.MSG_SENDER, ActionConstants.OPEN_DELTA));
    bytes memory data = planner.encode();

    // Create commands and inputs
    // 0x10 = V4_SWAP
    bytes memory commands = abi.encodePacked(
      bytes1(uint8(Commands.V4_SWAP))
    );
    bytes[] memory inputs = new bytes[](1);
    inputs[0] = data;

    // Get balance before
    uint256 balanceBefore = IERC20(_tokenB).balanceOf(address(this));

    // Execute swap via Universal Router
    IUniversalRouter router = IUniversalRouter(uniRouter);
    router.execute(commands, inputs, block.timestamp + 60);

    uint256 balanceAfter = IERC20(_tokenB).balanceOf(address(this));
    _amountOut = balanceAfter - balanceBefore;
  }

  function _getPathKey(Currency _currencyOut) internal view returns (PathKey[] memory) {
    PathKey[] memory path;
    if (usingTEMPairBNB) {
      (uint24 fee1, uint24 fee2, int24 tickSpacing1, int24 tickSpacing2) = 
        Currency.unwrap(_currencyOut) == usdt ? 
        (3000, 500, int24(60), int24(10)) :
        (500, 3000, int24(10), int24(60));

      // TEM -> BNB (0.3%) -> USDT (0.05%) or
      // USDT -> BNB (0.05%) -> TEM (0.3%)
      path = new PathKey[](2);
      path[0] = PathKey({
        intermediateCurrency: Currency.wrap(Constants.ADDRESS_ZERO),
        fee: fee1,
        tickSpacing: tickSpacing1,
        hooks: IHooks(address(0)),
        hookData: ""
      });
      path[1] = PathKey({
        intermediateCurrency: _currencyOut,
        fee: fee2,
        tickSpacing: tickSpacing2,
        hooks: IHooks(address(0)),
        hookData: ""
      });
    } else {
      // TEM -> USDT (0.3%) or
      // USDT -> TEM (0.3%)
      path = new PathKey[](1);
      path[0] = PathKey({
        intermediateCurrency: _currencyOut,
        fee: 3000,
        tickSpacing: 60,
        hooks: IHooks(address(0)),
        hookData: ""
      });
    }
    return path;
  }

  // ------------------------------
  // onlyOwner
  // ------------------------------
  function addTokenList(address _token) external onlyOwner {
    require(_token != address(0), "address invalid");
    tokenList[_token] = true;
  }

  function removeTokenList(address _token) external onlyOwner {
    require(_token != address(0), "address invalid");
    tokenList[_token] = false;
  }

  function setUsingTEMPairBNB(bool _active) external onlyOwner {
    usingTEMPairBNB = _active;
  }
}
