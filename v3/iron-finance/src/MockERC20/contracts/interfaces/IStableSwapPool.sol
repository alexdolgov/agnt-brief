// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IStableSwapPool {
    /// EVENTS
    event AddLiquidity(
        address indexed provider,
        uint256[] token_amounts,
        uint256[] fees,
        uint256 invariant,
        uint256 token_supply
    );

    event TokenExchange(
        address indexed buyer,
        uint256 sold_id,
        uint256 tokens_sold,
        uint256 bought_id,
        uint256 tokens_bought
    );

    event RemoveLiquidity(address indexed provider, uint256[] token_amounts, uint256[] fees, uint256 token_supply);

    event RemoveLiquidityOne(address indexed provider, uint256 token_amount, uint256 coin_amount);

    event RemoveLiquidityImbalance(
        address indexed provider,
        uint256[] token_amounts,
        uint256[] fees,
        uint256 invariant,
        uint256 token_supply
    );

    event RampA(uint256 old_A, uint256 new_A, uint256 initial_time, uint256 future_time);

    event StopRampA(uint256 A, uint256 t);

    event NewFee(uint256 fee, uint256 admin_fee);

    event CollectProtocolFee(address token, uint256 amount);

    function addLiquidity(uint256[] memory amounts, uint256 minMintAmount) external;

    function exchange(
        uint256 fromIndex,
        uint256 toIndex,
        uint256 inAmount,
        uint256 minOutAmount
    ) external;

    function removeLiquidity(uint256 lpAmount, uint256[] memory minAmounts) external;

    function removeLiquidityImbalance(uint256[] memory amounts, uint256 maxBurnAmount) external;

    function getPoolTokens() external view returns (IERC20[] memory);

    function A() external view returns (uint256);

    function getBalances() external view returns (uint256[] memory);

    function getNumberOfTokens() external view returns (uint256);

    function getAdminBalances() external view returns (uint256[] memory adminBalances);

    function calculateTokenAmount(uint256[] calldata amounts, bool deposit) external view returns (uint256);

    function calculateSwap(
        uint256 inIndex,
        uint256 outIndex,
        uint256 inAmount
    ) external view returns (uint256);
}
