// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";

import "../interfaces/IERC20Burner.sol";
import "../interfaces/ISMTPriceFeed.sol";

/// @title SwarmBuyerBurner smart contract (as part of the "SwarmX.eth Protocol")
/// @notice This contract provides functionality to swap and burn ERC20 tokens using Uniswap V3.
/// @dev It leverages Uniswap V3 for token swaps and supports burning a specific token.
contract SwarmBuyerBurner is Ownable {
    using SafeERC20 for IERC20;
    using SafeERC20 for IERC20Metadata;
    using SafeERC20 for IERC20Burner;

    /// @notice Thrown when an incorrect tolerancePercentage is set.
    error IncorrectPercentage();

    /// @notice Emitted when USDC is swapped to SMT using WETH9 as an intermediary.
    /// @param amountOut The amount of SMT received.
    event SwappedExactInputMultihop(uint256 amountOut);

    /// @notice Emitted when USDC is swapped for an exact amount of SMT using WETH9 as an intermediary.
    /// @param amountIn The amount of USDC used.
    event SwappedExactOutputMultihop(uint256 amountIn);

    /// @notice Emitted when the tolerancePercentage for calculation is changed.
    /// @param newPercentage The new tolerancePercentage set.
    event ChangedPercentage(uint256 newPercentage);

    /// @notice The Uniswap V3 pool fee (0.3%).
    uint24 public constant POOL_FEE = 3000;

    /// @notice Address of the USDC token.
    IERC20Metadata public immutable USDC;
    /// @notice Address of the WETH9 token.
    IERC20 public immutable WETH9;
    /// @notice Address of the SMT token, which is burnable.
    IERC20Burner public immutable SMT;
    /// @notice The Uniswap V3 Swap Router.
    ISwapRouter public immutable SWAP_ROUTER;
    /// @notice SMT Token Price Feed.
    ISMTPriceFeed public immutable PRICE_FEED;

    /// @notice Percentage used in calculations.
    uint256 public tolerancePercentage = 5;

    /// @param _swapRouter The address of the Uniswap V3 swap router.
    /// @param _priceFeed The address of the SMT Token price feed.
    /// @param usdc The address of the USDC token.
    /// @param weth The address of the WETH9 token.
    /// @param smt The address of the burnable SMT token.
    constructor(ISwapRouter _swapRouter, ISMTPriceFeed _priceFeed, IERC20Metadata usdc, IERC20 weth, IERC20Burner smt) {
        SWAP_ROUTER = _swapRouter;
        PRICE_FEED = _priceFeed;
        USDC = usdc;
        WETH9 = weth;
        SMT = smt;
    }

    /// @notice Swaps USDC for SMT through WETH9, with the exact input amount.
    /// @dev Requires approval for spending USDC.
    /// @return amountOut The amount of SMT received.
    function swapExactInputMultihop() external returns (uint256 amountOut) {
        uint256 amountIn = USDC.balanceOf(address(this));
        amountOut = calculatePrice(amountIn);

        // Multiple pool swaps are encoded through bytes called a `path`.
        // A path is a sequence of token addresses and POOL_FEEs that define the pools used in the swaps.
        //
        // The format for pool encoding is (tokenIn, fee, tokenOut/tokenIn, fee, tokenOut)
        // where tokenIn/tokenOut parameter is the shared token across the pools.
        //
        // Since we are swapping USDC to WETH9 and then WETH9 to SMT the path encoding
        // is (USDC, 0.3%, WETH9, 0.3%, SMT).
        ISwapRouter.ExactInputParams memory params = ISwapRouter.ExactInputParams({
            path: abi.encodePacked(address(USDC), POOL_FEE, address(WETH9), POOL_FEE, address(SMT)),
            recipient: address(this),
            deadline: block.timestamp,
            amountIn: amountIn,
            amountOutMinimum: amountOut
        });

        USDC.safeIncreaseAllowance(address(SWAP_ROUTER), amountIn);

        amountOut = SWAP_ROUTER.exactInput(params);

        _burnSmt(amountOut);

        emit SwappedExactInputMultihop(amountOut);
    }

    /// @notice Swaps USDC for a fixed amount of SMT through WETH9, with the minimum possible input.
    /// @dev Requires approval for spending USDC.
    /// @return amountIn The actual amount of USDC spent.
    function swapExactOutputMultihop() external returns (uint256 amountIn) {
        amountIn = USDC.balanceOf(address(this));
        uint256 amountOut = calculatePrice(amountIn);

        // The parameter path is encoded as (tokenOut, fee, tokenIn/tokenOut, fee, tokenIn)
        // The tokenIn/tokenOut field is the shared token between the two pools used in the multiple pool swap.
        // In this case WETH9 is the "shared" token.
        //
        // For an exactOutput swap, the first swap that occurs is the swap which returns the eventual desired token.
        // In this case, our desired output token is SMT so that swap happpens first,
        // and is encoded in the path accordingly.
        ISwapRouter.ExactOutputParams memory params = ISwapRouter.ExactOutputParams({
            path: abi.encodePacked(address(SMT), POOL_FEE, address(WETH9), POOL_FEE, address(USDC)),
            recipient: address(this),
            deadline: block.timestamp,
            amountOut: amountOut,
            amountInMaximum: amountIn
        });

        USDC.safeIncreaseAllowance(address(SWAP_ROUTER), amountIn);

        // Executes the swap, returning the amountIn actually spent.
        amountIn = SWAP_ROUTER.exactOutput(params);

        _burnSmt(amountOut);

        emit SwappedExactOutputMultihop(amountIn);
    }

    /// @notice Burns a specific amount of `token`'s.
    /// @param amount The amount of `token`s to burn.
    function burnTokens(IERC20Burner token, uint256 amount) external onlyOwner {
        token.burn(amount);
    }

    /// @notice Allows the owner to withdraw a specified amount of `token`'s.
    /// @param token The token address to withdraw.
    /// @param amount The amount of the `token`s to withdraw.
    function withdrawTokens(IERC20 token, uint256 amount) external onlyOwner {
        token.safeTransfer(msg.sender, amount);
    }

    /// @notice Changes the tolerancePercentage used in calculations.
    /// @param _percentage The new tolerancePercentage to set.
    function changePercentage(uint256 _percentage) external onlyOwner {
        if (_percentage <= 0 || tolerancePercentage == _percentage || _percentage >= 100) revert IncorrectPercentage();
        tolerancePercentage = _percentage;
        emit ChangedPercentage(_percentage);
    }

    /// @notice Calculates the SMT price based on the USDC amount and the price feed.
    /// @param amount The amount of USDC.
    /// @return price The calculated price in SMT.
    function calculatePrice(uint256 amount) public view returns (uint256 price) {
        uint256 smtUsdPrice = PRICE_FEED.latestAnswer();
        uint256 precision = 1e20;
        uint256 fullSMTamount = (amount * precision) / smtUsdPrice;

        price = _subtractPercentage(fullSMTamount);
    }

    function _burnSmt(uint256 amount) internal {
        SMT.burn(amount);
    }

    function _subtractPercentage(uint256 amount) internal view returns (uint256) {
        uint256 percents = (amount * tolerancePercentage) / 100;
        return amount - percents;
    }
}
