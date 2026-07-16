// SPDX-License-Identifier: UNLICENSED
// All rights reserved, You may not copy this code

// This contract migrates locked liquidity from Unicrypts Pancakeswap v1 lockers to Pancakeswap V2 and locks it in Unicrypt 
// Pancakeswap V2 liquidity lockers. ALLOWED_SLIPPAGE contraints prevent malicious tokens from inflating prices before 
// a migration to get large refunds in either or both tokens that make a pair.

pragma solidity 0.6.12;

import "./TransferHelper.sol";
import "./SafeMath.sol";
import "./EnumerableSet.sol";
import "./IUniswapV2Pair.sol";
import "./Ownable.sol";

interface IUniswapV2Factory {
    function getPair(address tokenA, address tokenB) external view returns (address pair);
    function createPair(address tokenA, address tokenB) external returns (address pair);
}

interface IUniswapV2Locker {
    function lockLPToken (address _lpToken, uint256 _amount, uint256 _unlock_date, address payable _referral, bool _fee_in_eth, address payable _withdrawer) external payable;
    function migrate (address _lpToken, uint256 _index, uint256 _lockID, uint256 _amount) external;
    function gFees () external view returns (
      uint256 ethFee,
      address secondaryFeeToken,
      uint256 secondaryTokenFee,
      uint256 secondaryTokenDiscount,
      uint256 liquidityFee,
      uint256 referralPercent,
      address referralToken,
      uint256 referralHold,
      uint256 referralDiscount
    );
}

interface IERC20 {
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
    function totalSupply() external view returns (uint);
    function balanceOf(address owner) external view returns (uint);
    function allowance(address owner, address spender) external view returns (uint);

    function approve(address spender, uint value) external returns (bool);
    function transfer(address to, uint value) external returns (bool);
    function transferFrom(address from, address to, uint value) external returns (bool);
}

contract MigratePancakeV1 is Ownable {
    using SafeMath for uint256;
    address public constant V1_LOCKER = 0xc8B839b9226965caf1d9fC1551588AaF553a7BE6;
    address public constant V2_LOCKER = 0xC765bddB93b0D1c1A88282BA0fa6B2d00E3e0c83;
    IUniswapV2Factory public constant PANCAKE_V2_FACTORY = IUniswapV2Factory(0xcA143Ce32Fe78f1f7019d7d551a6402fC5350c73);
    uint256 public ALLOWED_SLIPPAGE = 5; // 5%
    mapping(address => uint256) public CUSTOM_SLIPPAGE; // map lptoken address -> custom slippage
    uint256 FLAT_FEE;

    struct AmountStruct {
        uint256 amount0Before;
        uint256 amount0After;
        uint256 amount1Before;
        uint256 amount1After;
    }

    event onAlterSlippage(uint256 _slippage);
    event onAlterSlippageForToken(address _token, uint256 _slippage);

    // top up contract with flat rate fee BNB
    receive () external payable {

    }

    function adminDrainBNB () external onlyOwner {
      payable(msg.sender).transfer(address(this).balance);
    }

    function setSlippage(uint256 _slippage) external onlyOwner {
      require(_slippage > 0 && _slippage <= 10, 'SLIPPAGE RANGE');
      ALLOWED_SLIPPAGE = _slippage;
      emit onAlterSlippage(_slippage);
    }

    function setSlippageForToken(address _lpToken, uint256 _slippage) external onlyOwner {
      CUSTOM_SLIPPAGE[_lpToken] = _slippage;
      emit onAlterSlippageForToken(_lpToken, _slippage);
    }
    
    /*
    Migrates Locked Liquidity from Unicrypt PancakeswapV1 lockers to PancakeswapV2 and relocks it, enforces a maximum slippage
    amount (ALLOWED_SLIPPAGE) which means if the pairs have different prices on different versions on pancakeswap, the maximum
    refund amount will be 5% of either or both tokens that make up the pair, otherwise the tx will fail. This is to prevent 
    developers gaming pair prices before migration to get a maximal refund.
    */
    function migrate(address _lpToken, uint256 _amount, uint256 _unlockDate, address payable _owner) external returns (bool) {
      require(msg.sender == V1_LOCKER, 'SENDER NOT LOCKERV1');
      TransferHelper.safeTransferFrom(_lpToken, address(msg.sender), _lpToken, _amount);

      IUniswapV2Pair v1_pair = IUniswapV2Pair(_lpToken);

      IUniswapV2Pair(_lpToken).burn(address(this));

      AmountStruct memory aStruct;

      address TOKEN_0 = v1_pair.token0();
      address TOKEN_1 = v1_pair.token1();

      address v2_pair = PANCAKE_V2_FACTORY.getPair(TOKEN_0, TOKEN_1);
      if (v2_pair == address(0)) {
        PANCAKE_V2_FACTORY.createPair(TOKEN_0, TOKEN_1);
        v2_pair = PANCAKE_V2_FACTORY.getPair(TOKEN_0, TOKEN_1);
      }

      aStruct.amount0Before = IERC20(TOKEN_0).balanceOf(address(this));
      aStruct.amount1Before = IERC20(TOKEN_1).balanceOf(address(this));

      (aStruct.amount0Before, aStruct.amount1Before) = getOptimalAmounts(TOKEN_0, TOKEN_1, aStruct.amount0Before, aStruct.amount1Before);
        
      TransferHelper.safeTransfer(TOKEN_0, address(v2_pair), aStruct.amount0Before);
      TransferHelper.safeTransfer(TOKEN_1, address(v2_pair), aStruct.amount1Before);
      IUniswapV2Pair(v2_pair).mint(address(this));
      uint256 totalLPTokensMinted = IUniswapV2Pair(v2_pair).balanceOf(address(this));
      require(totalLPTokensMinted != 0 , "LP creation failed");
    
      TransferHelper.safeApprove(v2_pair, V2_LOCKER, totalLPTokensMinted);
      (FLAT_FEE,,,,,,,,) = IUniswapV2Locker(V2_LOCKER).gFees();
      IUniswapV2Locker(V2_LOCKER).lockLPToken{value: FLAT_FEE}(v2_pair, totalLPTokensMinted, _unlockDate, address(0), true, _owner);
    
      // dust refund
      aStruct.amount0After = IERC20(TOKEN_0).balanceOf(address(this));
      aStruct.amount1After = IERC20(TOKEN_1).balanceOf(address(this));
      uint256 slippageForToken = CUSTOM_SLIPPAGE[_lpToken] == 0 ? ALLOWED_SLIPPAGE : CUSTOM_SLIPPAGE[_lpToken];
      if (aStruct.amount0After > 0) {
        require(aStruct.amount0After.mul(100).div(aStruct.amount0Before) <= slippageForToken, 'TOKEN_0 SLIPPAGE');
        TransferHelper.safeTransfer(TOKEN_0, _owner, aStruct.amount0After);
      }
      if (aStruct.amount1After > 0) {
        require(aStruct.amount1After.mul(100).div(aStruct.amount1Before) <= slippageForToken, 'TOKEN_1 SLIPPAGE');
        TransferHelper.safeTransfer(TOKEN_1, _owner, aStruct.amount1After);
      }

      return true;
    }

    function getOptimalAmounts (address tokenA, address tokenB, uint amountADesired, uint amountBDesired) internal view returns (uint amountA, uint amountB) {
      (uint reserveA, uint reserveB) = getReserves(tokenA, tokenB);
      if (reserveA == 0 && reserveB == 0) {
          (amountA, amountB) = (amountADesired, amountBDesired);
      } else {
          uint amountBOptimal = quote(amountADesired, reserveA, reserveB);
          if (amountBOptimal <= amountBDesired) {
              (amountA, amountB) = (amountADesired, amountBOptimal);
          } else {
              uint amountAOptimal = quote(amountBDesired, reserveB, reserveA);
              assert(amountAOptimal <= amountADesired);
              (amountA, amountB) = (amountAOptimal, amountBDesired);
          }
      }
    }

    // returns sorted token addresses, used to handle return values from pairs sorted in this order
    function sortTokens(address tokenA, address tokenB) internal pure returns (address token0, address token1) {
        require(tokenA != tokenB, 'UniswapV2Library: IDENTICAL_ADDRESSES');
        (token0, token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
        require(token0 != address(0), 'UniswapV2Library: ZERO_ADDRESS');
    }

    // fetches and sorts the reserves for a pair
    function getReserves(address tokenA, address tokenB) internal view returns (uint reserveA, uint reserveB) {
        (address token0,) = sortTokens(tokenA, tokenB);
        address v2_pair = PANCAKE_V2_FACTORY.getPair(tokenA, tokenB);
        (uint reserve0, uint reserve1,) = IUniswapV2Pair(v2_pair).getReserves();
        (reserveA, reserveB) = tokenA == token0 ? (reserve0, reserve1) : (reserve1, reserve0);
    }

    // given some amount of an asset and pair reserves, returns an equivalent amount of the other asset
    function quote(uint amountA, uint reserveA, uint reserveB) internal pure returns (uint amountB) {
        require(amountA > 0, 'UniswapV2Library: INSUFFICIENT_AMOUNT');
        require(reserveA > 0 && reserveB > 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY');
        amountB = amountA.mul(reserveB) / reserveA;
    }
}