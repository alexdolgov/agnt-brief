// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.8.0;
pragma abicoder v2;

import "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import "@openzeppelin/contracts/GSN/Context.sol";
import "@openzeppelin/contracts/utils/SafeCast.sol";

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
  function stakingToken() external view returns (address);
}

interface IPair is IERC20 {
  function token0() external view returns (address);
  function token1() external view returns (address);
  function burn(address to) external returns (uint amount0, uint amount1);
  function mint(address to) external returns (uint liquidity);
  function getReserves() external view returns (uint112 _reserve0, uint112 _reserve1, uint32 _blockTimestampLast);
}

contract StableswapMigrator is Context {
  event Migrate(
    address owner,
    uint256 fromAmountLp,
    uint256 fromAmount0,
    uint256 fromAmount1,
    uint256 toAmountLp,
    uint256 toAmount0,
    uint256 toAmount1
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

  function migrate(address fromStakingService, address toStakingService, MigratePayload calldata payload) public returns(uint256 amount0Refund, uint256 amount1Refund) {
    (address fromPair, address toPair, address token0, address token1) = validatePairs(fromStakingService, toStakingService);
    IStakingService.Staker memory staker = unstake(fromStakingService, payload);
    claimReward(fromStakingService, payload, staker);

    (uint256 amount0, uint256 amount1) = burn(fromPair, payload.unstakeSignedAmount);
    (uint mintable0, uint mintable1, uint liquidity) = mint(toPair, token0, token1, amount0, amount1);
    
    SafeERC20.safeApprove(IERC20(toPair), toStakingService, liquidity);
    IStakingService(toStakingService).stakeFor(_msgSender(), SafeCast.toUint128(liquidity));

    emit Migrate(
      _msgSender(),
      payload.unstakeSignedAmount,
      amount0,
      amount1,
      liquidity,
      mintable0,
      mintable1
    );
    
    amount0Refund = amount0 - mintable0;
    amount1Refund = amount1 - mintable1;
    if (amount0Refund > 0) SafeERC20.safeTransfer(IERC20(token0), _msgSender(), amount0Refund);    
    if (amount1Refund > 0) SafeERC20.safeTransfer(IERC20(token1), _msgSender(), amount1Refund);    
  }

  function validatePairs(address fromStakingService, address toStakingService) private view returns (address fromPair, address toPair, address token0, address token1) {
    fromPair = IStakingService(fromStakingService).stakingToken();
    toPair = IStakingService(toStakingService).stakingToken();
    token0 = IPair(fromPair).token0();
    require(token0 == IPair(toPair).token0(), 'Migrator: different token0');
    token1 = IPair(fromPair).token1();
    require(token1 == IPair(toPair).token1(), 'Migrator: different token1');
  }

  function unstake(address fromStakingService, MigratePayload calldata payload) private returns (IStakingService.Staker memory staker) {
    IStakingService(fromStakingService).unstakeWithAuthorization(
      _msgSender(),
      payload.unstakeSignedAmount,
      payload.unstakeSignedAmount,
      payload.deadline,
      payload.unstakeV,
      payload.unstakeR,
      payload.unstakeS
    );

    staker =  IStakingService(fromStakingService).stakers(_msgSender());
    require(staker.amount == 0, "Migrator: AMOUNT_MISMATCH");
  }

  function claimReward(address fromStakingService, MigratePayload calldata payload, IStakingService.Staker memory staker) private {
IStakingService(fromStakingService).claimWithAuthorization(
      _msgSender(),
      staker.reward - uint128(staker.claimedReward),
      payload.claimSignedAmount,
      payload.deadline,
      payload.claimV,
      payload.claimR,
      payload.claimS
    );
  }

  function burn(address fromPair, uint256 amount) private returns (uint256 amount0, uint256 amount1) {
    SafeERC20.safeTransfer(IERC20(fromPair), fromPair, amount);    
    return IPair(fromPair).burn(address(this));
  }

  function mint(address toPair, address token0, address token1, uint amount0, uint amount1) private returns (uint mintable0, uint mintable1, uint liquidity) {
    (uint112 r0, uint112 r1,) = IPair(toPair).getReserves();
    mintable0 = amount1 * r0 / r1;
    mintable1 = amount0 * r1 / r0;
    if (mintable0 > amount0) mintable0 = amount0;
    if (mintable1 > amount1) mintable1 = amount1;
    SafeERC20.safeTransfer(IERC20(token0), toPair, mintable0);    
    SafeERC20.safeTransfer(IERC20(token1), toPair, mintable1);    
    liquidity = IPair(toPair).mint(address(this));
  }

}
