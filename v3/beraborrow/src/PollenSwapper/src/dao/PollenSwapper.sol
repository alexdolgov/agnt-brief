/// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {IRewardDistributor} from "src/interfaces/dao/IRewardDistributor.sol";
import {IMetaBeraborrowCore} from "src/interfaces/core/IMetaBeraborrowCore.sol";

import {SwappersLib} from "src/libraries/SwappersLib.sol";

/**
 * @title PollenSwapper
 * @author Beraborrow
 * @notice This contract is used to swap tokens for POLLEN through Enso swaps.
 */
contract PollenSwapper {
    using SwappersLib for SwappersLib.SwapperData;
    using SafeERC20 for IERC20;

    /// @notice Instance of the MetaBeraborrowCore contract.
    IMetaBeraborrowCore public immutable metaBeraborrowCore;
    /// @notice Whitelist of swap routers.
    SwappersLib.SwapperData internal swapperData;

    /// @notice Error emitted when the caller is not the owner.
    error OnlyOwner(address caller);
    /// @notice Error emitted when the address is zero.
    error ZeroAddress();

    /// @notice Error emitted when the caller is not the owner.
    modifier onlyOwner() {
        if (msg.sender != metaBeraborrowCore.owner())
            revert OnlyOwner(msg.sender);
        _;
    }

    /**
     * @notice Constructor for the RewardDistributor contract.
     * @param _metaBeraborrowCore The address of the MetaBeraborrowCore contract.
     * @param _initialSwapRouters The initial swap routers to be whitelisted.
     */
    constructor(
        address _metaBeraborrowCore,
        address[] memory _initialSwapRouters
    ) {
        if (_metaBeraborrowCore == address(0)) revert ZeroAddress();

        metaBeraborrowCore = IMetaBeraborrowCore(_metaBeraborrowCore);

        for (uint i; i < _initialSwapRouters.length; ++i) {
            if (_initialSwapRouters[i] == address(0)) revert ZeroAddress();
            // add the initial swap routers to the whitelist
            SwappersLib.addWhitelistedSwapper(
                swapperData,
                _initialSwapRouters[i],
                true
            );
        }
    }

    /**
     * @notice Swaps tokens using the Enso Router contract.
     * @param params The parameters for the swap.
     * @param inputAmount The amount of input tokens to swap.
     */
    function swap(
        IRewardDistributor.SwapParams calldata params,
        uint256 inputAmount
    ) external {
        address swapRouter = params.swapRouter;
        uint256 balanceBefore = IERC20(params.outputToken).balanceOf(
            address(this)
        );

        IERC20(params.inputToken).safeIncreaseAllowance(
            swapRouter,
            inputAmount
        );
        SwappersLib.executeSwap(swapperData, swapRouter, params.dexCalldata);

        IERC20(params.outputToken).safeTransfer(
            msg.sender,
            IERC20(params.outputToken).balanceOf(address(this)) - balanceBefore
        );
    }

    /**
     * @notice Sets the whitelist status of a swap router.
     * @param _swapRouter The address of the swap router.
     * @param status The new whitelist status.
     */
    function addWhitelistedSwapper(
        address _swapRouter,
        bool status
    ) external onlyOwner {
        if (_swapRouter == address(0)) revert ZeroAddress();

        SwappersLib.addWhitelistedSwapper(swapperData, _swapRouter, status);
    }

    /**
     * @notice Allows the owner to claim any tokens that might be locked in the contract
     * @param tokens An array of token addresses to claim
     * @param receiver The address to send the claimed tokens to
     * @dev Only callable by the owner of the MetaBeraborrowCore contract
     */
    function claimLockedTokens(
        address[] calldata tokens,
        address receiver
    ) external onlyOwner {
        require(receiver != address(0));

        for (uint256 i; i < tokens.length; ++i) {
            address token = tokens[i];
            uint256 balance = IERC20(token).balanceOf(address(this));
            if (balance > 0) {
                IERC20(token).transfer(receiver, balance);
            }
        }
    }
}
