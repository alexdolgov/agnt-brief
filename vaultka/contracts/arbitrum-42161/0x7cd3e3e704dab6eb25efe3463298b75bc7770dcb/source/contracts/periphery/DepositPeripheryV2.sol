// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import { IVault } from '../interfaces/gmx/IVault.sol';
import { IGlpManager } from '../interfaces/gmx/IGlpManager.sol';
import { ISglpExtended } from '../interfaces/gmx/ISglpExtended.sol';
import { IRewardRouterV2 } from '../interfaces/gmx/IRewardRouterV2.sol';

import { ISwapRouter } from '@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol';

import { TransferHelper } from '@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol';

import { Ownable } from '@openzeppelin/contracts/access/Ownable.sol';
import { IERC20 } from '@openzeppelin/contracts/interfaces/IERC20.sol';
import { IERC20Metadata } from '@openzeppelin/contracts/interfaces/IERC20Metadata.sol';

import { IVodkaVault } from '../interfaces/IVodkaVault.sol';

import { FullMath } from '@uniswap/v3-core-0.8-support/contracts/libraries/FullMath.sol';

/**
 * @title Periphery to convert tokens to junior vault shares
 * @notice uses a fixed max slippage threshold
 * @notice primarily constructed to be used from frontend
 * @author Vodka
 **/

contract DepositPeripheryV2 is Ownable {
    using FullMath for uint256;

    event TokenDeposited(
        address indexed from,
        address indexed receiver,
        address token,
        uint256 assets,
        uint256 shares,
        uint256 tokensSpent
    );

    event SlippageThresholdUpdated(uint256 newSlippageThreshold);

    event AddressesUpdated(address vodkaVault, address rewardRouter);

    uint256 internal constant MAX_BPS = 10_000;
    // same price precision is used in gmx's Vault (Vault.sol)
    uint256 internal constant PRICE_PRECISION = 1e30;

    // max allowed slippage threshold (in bps) when sGlp to output token
    uint256 public slippageThreshold;

    // staked glp
    ISglpExtended internal sGlp;

    // gmx's Vault (vault.sol) contract
    IVault internal gmxVault;
    // gmx's GlpManager (GlpManager.sol), which can burn/mint glp
    IGlpManager internal glpManager;
    // gmx's RewardRouterV2 (RewardRouterV2.sol) contract
    IRewardRouterV2 internal rewardRouter;

    // uniswap's router
    ISwapRouter internal swapRouter;

    // delta neutral junior tranche
    IVodkaVault internal VodkaVault;

    /// @notice sets the maximum slippage threshold to be used for converting glp for asset
    /// @param _slippageThreshold slippage threshold value in bps
    function setSlippageThreshold(uint256 _slippageThreshold) external onlyOwner {
        slippageThreshold = _slippageThreshold;
        emit SlippageThresholdUpdated(_slippageThreshold);
    }

    /// @notice sets the required external contract address in order to swap glp for tokens
    /// @dev only owner call this setter function
    /// @param _VodkaVault junior tranche of delta neutral vault
    /// @param _rewardRouter reward router v2 of gmx protocol
    /// @param _glpManager glp manager of gmx protocol
    function setAddresses(
        IVodkaVault _VodkaVault,
        IRewardRouterV2 _rewardRouter,
        IGlpManager _glpManager,
        ISwapRouter _swapRouter
    ) external onlyOwner {
        rewardRouter = _rewardRouter;
        VodkaVault = _VodkaVault;

        // query sGlp direclty from junior tranche
        sGlp = ISglpExtended(VodkaVault.asset());

        swapRouter = ISwapRouter(_swapRouter);

        glpManager = _glpManager;

        // query gmxVault from glpManager
        gmxVault = IVault(glpManager.vault());

        // give allowance to glpManager to pull & burn sGlp
        sGlp.approve(address(_VodkaVault), type(uint256).max);

        emit AddressesUpdated(address(_VodkaVault), address(_rewardRouter));
    }

    /// @notice allows to use tokens to deposit into junior vault
    /// @param  userInputToken input token
    /// @param tokenLowestFee token to be swap
    /// @param receiver address of the receiver
    /// @param tokenAmount amount of token to deposit
    /// @return sharesReceived shares received in exchange of token
    function depositToken(
        address userInputToken,
        address tokenLowestFee,
        address receiver,
        uint256 tokenAmount
    ) external returns (uint256 sharesReceived) {
        //transfer user's token no matter what it is
        TransferHelper.safeTransferFrom(userInputToken, msg.sender, address(this), tokenAmount);
        /// @note support direct deposit of sGLP
        if (userInputToken == address(sGlp)) {
            sharesReceived = VodkaVault.deposit(tokenAmount, receiver);
            emit TokenDeposited(msg.sender, receiver, userInputToken, tokenAmount, sharesReceived, tokenAmount);
        } else {
            address token;
            //case 1: user is not using the lowest fee token, need a swap
            //@note considered checking tokenAmount, seems frontend will be disabled if later parts of the logic revert (e.g minting 0 SHARES)
            if (tokenLowestFee != address(0)) {
                tokenAmount = _convertToTargetToken(userInputToken, tokenLowestFee, tokenAmount);
                token = tokenLowestFee;
            } else {
                //case2: user is already using the lowest possible fee, swap is not required, get the token from the user;
                token = userInputToken;
            }

            uint256 glpReceived = _convertToSglp(token, tokenAmount);

            sharesReceived = VodkaVault.deposit(glpReceived, receiver);
            //@note event remain unchanged, do we need to notifier user?
            emit TokenDeposited(msg.sender, receiver, token, glpReceived, sharesReceived, tokenAmount);
        }
    }

    function _convertToSglp(address token, uint256 tokenAmount) internal returns (uint256 glpReceived) {
        IERC20(token).approve(address(glpManager), tokenAmount);

        uint8 decimals = IERC20Metadata(token).decimals();

        uint256 price = gmxVault.getMinPrice(token);

        // USDG has 18 decimals
        uint256 minUsdgOut = tokenAmount.mulDiv(
            price * (MAX_BPS - slippageThreshold) * 10**(18 - decimals),
            PRICE_PRECISION * MAX_BPS
        );

        // will revert if notional output is less than minUsdgOut
        glpReceived = rewardRouter.mintAndStakeGlp(token, tokenAmount, minUsdgOut, 0);
    }

    function _convertToTargetToken(
        address UserInputToken,
        address tokenLowestFee,
        uint256 tokenAmount
    ) internal returns (uint256 targetTokenReceived) {
        TransferHelper.safeApprove(UserInputToken, address(swapRouter), tokenAmount);

        //@note consider adding a min price/priceLimit from oracle, otherwise will just input 0 to save gas;
        ISwapRouter.ExactInputSingleParams memory params = ISwapRouter.ExactInputSingleParams({
            tokenIn: UserInputToken,
            tokenOut: tokenLowestFee,
            fee: 500,
            recipient: address(this),
            deadline: block.timestamp,
            amountIn: tokenAmount,
            amountOutMinimum: 0,
            sqrtPriceLimitX96: 0
        });
        // The call to `exactInputSingle` executes the swap.
        targetTokenReceived = swapRouter.exactInputSingle(params);

        return targetTokenReceived;
        //transfer the token received directly to this contract, not back to the user
    }
}
