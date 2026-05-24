// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.8.0;
pragma abicoder v2;

import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/GSN/Context.sol";
import "@openzeppelin/contracts/utils/SafeCast.sol";

interface IRouter {
  function addLiquidity(
    address tokenA,
    address tokenB,
    uint256 amount0,
    uint256 amount1,
    uint256 amount0Min,
    uint256 amount1Min,
    address to,
    uint256 deadline
  ) external returns (uint256 amount0Pooled, uint256 amount1Pooled, uint256 liquidity);
  function removeLiquidity(
    address tokenA,
    address tokenB,
    uint256 liquidity,
    uint256 amount0Min,
    uint256 amount1Min,
    address to,
    uint256 deadline
  ) external returns (uint256 amount0, uint256 amount1);
}

interface IStakingService {
  struct Staker {
    uint256 amount;
    uint128 initialRewardRate;
    uint128 reward;
    uint256 claimedReward;
  }

  function stakers(address owner) external view returns (Staker memory staker);
  function stakeFor(address owner, uint128 amount) external;
  function unstakeWithAuthorization(
    address owner,
    uint128 amount,
    uint128 signedAmount,
    uint256 deadline,
    uint8 v,
    bytes32 r,
    bytes32 s
  ) external;
  function claimWithAuthorization(
    address owner,
    uint128 nmxAmount,
    uint128 signedAmount,
    uint256 deadline,
    uint8 v,
    bytes32 r,
    bytes32 s
  ) external;
}

contract Migrator is Context {
  event Migrate(
    address owner,
    uint256 pancakeLpAmount,
    uint256 amount0,
    uint256 amount1,
    uint256 nomiswapLpAmount,
    uint256 amount0Pooled,
    uint256 amount1Pooled
  );

  struct MigratePayload {
    uint128 unstakeSignedAmount;
    uint256 deadline;
    uint8 unstakeV;
    bytes32 unstakeR;
    bytes32 unstakeS;
    uint128 claimSignedAmount;
    uint8 claimV;
    bytes32 claimR;
    bytes32 claimS;
  }

  address constant _usdtAddress = 0x55d398326f99059fF775485246999027B3197955;
  address constant _nmxAddress = 0xd32d01A43c869EdcD1117C640fBDcfCFD97d9d65;
  IStakingService constant _nomiswapStakingService = IStakingService(0x2D8b192eAd2f402867323B072D143d44435EDd74);
  IStakingService constant _pancakeStakingService = IStakingService(0x9Cd2D1A3214c12BB6dbfA7DBc3B0641C26a2f9a6);
  IERC20 constant _pancakeLp = IERC20(0x8D8B74EA95c0689ac84DdC702D2953C6b2e9f48B);
  IERC20 constant _nomiswapLp = IERC20(0xA5F2f22d3b4FcCf0fEe429e6a8AcFc376F5AFa22);
  IRouter constant _pancakeRouter = IRouter(0x05fF2B0DB69458A0750badebc4f9e13aDd608C7F);
  IRouter constant _nomiswapRouter = IRouter(0xD654953D746f0b114d1F85332Dc43446ac79413d);
  uint256 constant MAX_INT = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;

  constructor() {
    SafeERC20.safeApprove(IERC20(_usdtAddress), address(_nomiswapRouter), MAX_INT);
    SafeERC20.safeApprove(IERC20(_nmxAddress), address(_nomiswapRouter), MAX_INT);
    SafeERC20.safeApprove(_pancakeLp, address(_pancakeRouter), MAX_INT);
    SafeERC20.safeApprove(_nomiswapLp, address(_nomiswapStakingService), MAX_INT);
  }

  function migrate(MigratePayload calldata payload) public returns(uint256 amount0Refund, uint256 amount1Refund) {
    IStakingService.Staker memory staker = _pancakeStakingService.stakers(_msgSender());

    require(staker.amount == payload.unstakeSignedAmount, "MigrateLp: AMOUNT_MISMATCH");

    _pancakeStakingService.unstakeWithAuthorization(
      _msgSender(),
      payload.unstakeSignedAmount,
      payload.unstakeSignedAmount,
      payload.deadline,
      payload.unstakeV,
      payload.unstakeR,
      payload.unstakeS
    );

    _pancakeStakingService.claimWithAuthorization(
      _msgSender(),
      staker.reward - uint128(staker.claimedReward),
      payload.claimSignedAmount,
      payload.deadline,
      payload.claimV,
      payload.claimR,
      payload.claimS
    );

    (uint256 amount0, uint256 amount1) = removeLiquidity(payload.unstakeSignedAmount);
    (uint256 amount0Pooled, uint256 amount1Pooled, uint256 nomiswapLiquidity) = addLiquidity(amount0, amount1);
    _nomiswapStakingService.stakeFor(_msgSender(), SafeCast.toUint128(nomiswapLiquidity));
    (amount0Refund, amount1Refund) = refund(amount0, amount1, amount0Pooled, amount1Pooled);

    emit Migrate(
      _msgSender(),
      payload.unstakeSignedAmount,
      amount0,
      amount1,
      nomiswapLiquidity,
      amount0Pooled,
      amount1Pooled
    );
  }

  function removeLiquidity(uint256 pancakeLiquidity) private returns(uint256 amount0, uint256 amount1) {
    return _pancakeRouter.removeLiquidity(
      _usdtAddress,
      _nmxAddress,
      pancakeLiquidity,
      0,
      0,
      address(this),
      block.timestamp
    );
  }

  function addLiquidity(uint256 amount0, uint256 amount1) private returns(uint256 amount0Pooled, uint256 amount1Pooled, uint256 nomiswapLiquidity) {
    return _nomiswapRouter.addLiquidity(
      _usdtAddress,
      _nmxAddress,
      amount0,
      amount1,
      0,
      0,
      address(this),
      block.timestamp
    );
  }

  function refund(uint256 amount0, uint256 amount1, uint256 amount0Pooled, uint256 amount1Pooled) private returns(uint256 amount0Refund, uint256 amount1Refund) {
    if (amount0Pooled < amount0) {
      amount0Refund = amount0 - amount0Pooled;
      SafeERC20.safeTransfer(IERC20(_usdtAddress), _msgSender(), amount0Refund);
    }
  
    if (amount1Pooled < amount1) {
      amount1Refund = amount1 - amount1Pooled;
      SafeERC20.safeTransfer(IERC20(_nmxAddress), _msgSender(), amount1Refund);
    }
  }
}
