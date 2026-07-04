// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

// interface for the range position manager
interface IRangePositionManager {

    /// public function for increasing liquidity
    /// @dev for increasing liquidity, also sets the sponsor if new user
    /// @param amountDesired0 the desired amount to use of token0
    /// @param amountDesired1 the desired amount to use of token1
    /// @param amount0Min the minimum amount of token0
    /// @param amount1Min the minimum amount of token1
    /// @param userToIncrease the user to increase
    function increaseLiquidityUser(
        uint amountDesired0,
        uint amountDesired1,
        uint amount0Min,
        uint amount1Min,
        address userToIncrease
    )
    external payable;


    /// public function for increasing liquidity automatically
    /// @dev for increasing liquidity auto
    /// @param amountDesired0 the desired amount to use of token0
    /// @param amountDesired1 the desired amount to use of token1
    /// @param amount0Min the minimum amount of token0
    /// @param amount1Min the minimum amount of token1
    /// @param userToIncrease the address of the user to increase
    function increaseLiquidityAuto(
        uint256 amountDesired0,
        uint256 amountDesired1,
        uint256 amount0Min,
        uint256 amount1Min,
        address userToIncrease
    )
    external;

    /// function for moving range
    /// @dev this function is used to move the liquidity ranges (lower tick, upper tick). If possible (within the threshold)
    /// @dev it is possible to call this function. It will decrease all liquidity from the position, swap tokens in a ratio given in the parameter
    /// @dev and then mint a new position using this tokens swapped. Users will get the share of the new liquidity pro rata
    /// @param tickLower the new lower tick
    /// @param tickUpper the new upper tick
    /// @param tokenToSwap the token to be swapped
    /// @param amountToSwap the amount to be swapped from the tokenForRatios
    /// @param amountOutMinimum the minimum output
    function moveRange
    (
        int24 tickLower,
        int24 tickUpper,
        address tokenToSwap,
        uint256 amountToSwap,
        uint256 amountDecrease0Min,
        uint256 amountDecrease1Min,
        uint256 amount0Min,
        uint256 amount1Min,
        uint256 amountOutMinimum,
        uint24 poolFee
    )
    external;

    /// Checks if range can be moved
    /// @dev checks if the range position can be moved
    /// returns a bool indicating if position can be moved or not
    function canMoveRange() external view returns (bool);

    /// function to collect the accrued fees
    /// @dev used to collect the earned fees from the contract (as a user)
    function userCollect(
        address userToCollect
    )
    external;

    /// function for decreasing liquidity, for msg.sender
    /// @dev for decreasing liquidity, for msg.sender
    /// @param amount0Min the minimum amount to receive of token0
    /// @param amount1Min the minimum amount to receive of token1
    /// @param liquidity the amount of liquidity to be decreased
    /// @param liquidity the userToDecrease to decrease
    function decreaseLiquidityUser(
        uint amount0Min,
        uint amount1Min,
        uint128 liquidity,
        address userToDecrease
    )
    external;

    // User Information struct
    struct UserInfo {
        uint liquidity;
        uint token0Balance;
        uint token1Balance;
        uint cakeTokenBalance;
        uint token0Lifetime;
        uint token1Lifetime;
    }

    // returns the user Mapping
    function userMapping(address user) external view returns (UserInfo memory);

    // returns the current liquidity NFT token ID
    function currentTokenId() external view returns (uint256);

    // returns the position manager
    function positionManager() external view returns (address);

    /// View function to get the amount for ticks onchain
    /// @dev checks for liquidity amount s on chain
    /// @param tickLower the lower tick
    /// @param tickUpper the upper tick
    /// @param liquidity the amount of liquidity
    /// returns the output amount for token0 and token1
    function getAmountsForTicks(
        int24 tickLower,
        int24 tickUpper,
        uint128 liquidity
    ) external view returns (uint256 amount0, uint256 amount1);

    /// function to check if holder is eligible
    /// @dev checking if an address has enough NFTs to use the product
    /// @param sender the sender address to check
    function showEligible(address sender) external view returns (bool);

    /// function for handling the collect
    /// @dev collects from a public address, can be called by anyone - used to collect fees
    /// @return amount0 the amount how much token0 we got as fees
    /// @return amount1 the amount how much token1 we got as fees
    function publicCollect() external returns
    (
        uint256 amount0,
        uint256 amount1
    );

}
