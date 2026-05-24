// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";
import "../interfaces/IRebalance.sol";
import "../interfaces/IVault.sol";
import "../interfaces/ISwap.sol";
import "../storage/LpPool.sol";
import "../storage/UsdPool.sol";
import "../storage/InsuranceFund.sol";
import "../storage/CommonData.sol";
import "../storage/AppTradeConfig.sol";
import "../utils/TokenUtils.sol";
import "../utils/CalUtils.sol";
import "./VaultProcess.sol";
import "./OracleProcess.sol";
import "./SwapProcess.sol";
import "./TidyRewardsProcess.sol";

library RebalanceProcess {
    using LpPool for LpPool.Props;
    using UsdPool for UsdPool.Props;
    using CommonData for CommonData.Props;
    using InsuranceFund for InsuranceFund.Props;
    using SafeCast for uint256;
    using SafeCast for int256;

    struct RebalanceUnsettleCache {
        uint256[] poolUnsettledAmount;
        uint256 totalUnsettledAmount;
        uint256[] settledAmount;
        uint256 tokenLiability;
        uint256 reduceTransferAmount;
    }

    function autoRebalance() external {
        rebalanceUnsettle();
        address[] memory stakeTokens = CommonData.getAllStakeTokens();
        for (uint256 i; i < stakeTokens.length; i++) {
            _rebalanceStableTokens(stakeTokens[i]);
        }
    }

    function rebalanceUnsettle() public {
        address[] memory stakeTokens = CommonData.getAllStakeTokens();
        for (uint256 i; i < stakeTokens.length; i++) {
            LpPool.Props storage pool = LpPool.load(stakeTokens[i]);
            _rebalanceUnsettle(pool.baseToken, false, stakeTokens);
            _rebalanceInsuranceFundsUnsettle(stakeTokens[i]);
        }
        address[] memory stableTokens = UsdPool.getSupportedStableTokens();
        for (uint256 i; i < stableTokens.length; i++) {
            _rebalanceUnsettle(stableTokens[i], true, stakeTokens);
        }
        rebalanceAllFeeUnsettle();
    }

    function rebalanceAllFeeUnsettle() public {
        address[] memory stakeTokens = CommonData.getAllStakeTokens();
        address[] memory tradeTokens = AppTradeConfig.getTradeConfig().tradeTokens;
        for (uint256 i; i < tradeTokens.length; i++) {
            _rebalanceFeeUnsettle(tradeTokens[i], UsdPool.isSupportStableToken(tradeTokens[i]), stakeTokens);
        }
    }

    function _rebalanceFeeUnsettle(address token, bool isUsdPoolStableToken, address[] memory stakeTokens) internal {
        uint256 totalFeeUnsettledAmount = TidyRewardsProcess.getFeeUnsettleAmount(token, isUsdPoolStableToken);
        if (totalFeeUnsettledAmount == 0) {
            return;
        }
        RebalanceUnsettleCache memory cache = _getPoolUnsettleAmount(token, stakeTokens, isUsdPoolStableToken);
        if (cache.totalUnsettledAmount + totalFeeUnsettledAmount <= cache.tokenLiability) {
            return;
        }
        cache.reduceTransferAmount = cache.totalUnsettledAmount + totalFeeUnsettledAmount - cache.tokenLiability;
        FeeRewards.StakingRewards storage stakingRewards = FeeRewards.loadStakingRewards();
        FeeRewards.StakingRewards storage daoRewards = FeeRewards.loadDaoRewards();
        bytes32[] memory symbols = CommonData.getAllSymbols();
        for (uint256 i; i < symbols.length; i++) {
            address stakeToken = Symbol.load(symbols[i]).stakeToken;
            cache.reduceTransferAmount -= TidyRewardsProcess.tidyUnsettleRewards(
                FeeRewards.loadMarketTradingRewards(symbols[i]),
                stakeToken,
                token,
                cache.reduceTransferAmount
            );
            cache.reduceTransferAmount -= TidyRewardsProcess.tidyUnsettleRewards(
                FeeRewards.loadPoolRewards(stakeToken),
                stakeToken,
                token,
                cache.reduceTransferAmount
            );
            cache.reduceTransferAmount -= TidyRewardsProcess.tidyUnsettleStakingRewards(
                stakingRewards,
                stakeToken,
                token,
                cache.reduceTransferAmount
            );
            cache.reduceTransferAmount -= TidyRewardsProcess.tidyUnsettleStakingRewards(
                daoRewards,
                stakeToken,
                token,
                cache.reduceTransferAmount
            );
            if (cache.reduceTransferAmount == 0) {
                break;
            }
        }
        if (isUsdPoolStableToken && cache.reduceTransferAmount > 0) {
            address stakeUsd = CommonData.getStakeUsdToken();
            cache.reduceTransferAmount -= TidyRewardsProcess.tidyUnsettleRewards(
                FeeRewards.loadPoolRewards(stakeUsd),
                stakeUsd,
                token,
                cache.reduceTransferAmount
            );
            cache.reduceTransferAmount -= TidyRewardsProcess.tidyUnsettleStakingRewards(
                stakingRewards,
                stakeUsd,
                token,
                cache.reduceTransferAmount
            );
            cache.reduceTransferAmount -= TidyRewardsProcess.tidyUnsettleStakingRewards(
                daoRewards,
                stakeUsd,
                token,
                cache.reduceTransferAmount
            );
        }
    }

    function _rebalanceUnsettle(address token, bool isUsdPoolStableToken, address[] memory stakeTokens) internal {
        RebalanceUnsettleCache memory cache = _getPoolUnsettleAmount(token, stakeTokens, isUsdPoolStableToken);
        if (cache.totalUnsettledAmount == 0) {
            return;
        }
        cache.settledAmount = new uint256[](stakeTokens.length);
        if (cache.totalUnsettledAmount > cache.tokenLiability) {
            uint256 totalTransferAmount = cache.totalUnsettledAmount - cache.tokenLiability;
            cache.reduceTransferAmount = totalTransferAmount;
            address portfolioVaultAddress = IVault(address(this)).getPortfolioVaultAddress();

            for (uint256 i; i < stakeTokens.length; i++) {
                if (cache.poolUnsettledAmount[i] == 0) {
                    continue;
                }
                LpPool.Props storage pool = LpPool.load(stakeTokens[i]);
                if (!isUsdPoolStableToken && pool.baseToken != token) {
                    continue;
                }

                cache.settledAmount[i] = CalUtils.mulDiv(
                    totalTransferAmount,
                    cache.poolUnsettledAmount[i],
                    cache.totalUnsettledAmount
                );
                cache.reduceTransferAmount -= cache.settledAmount[i];
                if (isUsdPoolStableToken) {
                    pool.settleStableToken(token, cache.settledAmount[i]);
                } else {
                    pool.settleBaseToken(cache.settledAmount[i]);
                }
                VaultProcess.transferOut(
                    portfolioVaultAddress,
                    token,
                    isUsdPoolStableToken ? CommonData.getStakeUsdToken() : stakeTokens[i],
                    cache.settledAmount[i]
                );
            }
        }
    }

    function _rebalanceInsuranceFundsUnsettle(address stakeToken) internal {
        InsuranceFund.Props storage insuranceFundProps = InsuranceFund.load(stakeToken);
        address[] memory tokens = insuranceFundProps.getFundsTokens();
        for (uint256 i; i < tokens.length; i++) {
            uint256 unsettleAmount = insuranceFundProps.getTokenUnsettleFunds(tokens[i]);
            if (unsettleAmount > 0) {
                uint256 realTransferOut = VaultProcess.tryTransferOut(
                    IVault(address(this)).getPortfolioVaultAddress(),
                    tokens[i],
                    UsdPool.isSupportStableToken(tokens[i]) ? CommonData.getStakeUsdToken() : stakeToken,
                    unsettleAmount
                );
                if (realTransferOut > 0) {
                    InsuranceFund.settleUnsettleFunds(stakeToken, tokens[i], realTransferOut);
                }
            }
        }
    }

    function _rebalanceStableTokens(address stakeToken) internal {
        LpPool.Props storage pool = LpPool.load(stakeToken);
        address[] memory tokens = pool.getStableTokens();
        int256[] memory netStableTokenAmount = new int256[](tokens.length);
        for (uint256 i; i < tokens.length; i++) {
            LpPool.TokenBalance storage tokenBalance = pool.getStableTokenBalance(tokens[i]);
            netStableTokenAmount[i] = tokenBalance.amount >= tokenBalance.lossAmount
                ? (tokenBalance.amount - tokenBalance.lossAmount).toInt256()
                : -(tokenBalance.lossAmount - tokenBalance.amount).toInt256();
        }
        for (uint256 i; i < netStableTokenAmount.length; i++) {
            if (netStableTokenAmount[i] == 0) {
                continue;
            }
            if (netStableTokenAmount[i] < 0) {
                uint256 tokenNetStableTokenAmount = (-netStableTokenAmount[i]).toUint256();
                for (uint256 j; j < netStableTokenAmount.length; j++) {
                    if (j == i || netStableTokenAmount[j] <= 0) {
                        continue;
                    }
                    uint256 reduceProfitTokenAmount = netStableTokenAmount[j].toUint256();
                    uint256 offsetLossStableTokenAmount = CalUtils.tokenToToken(
                        reduceProfitTokenAmount,
                        TokenUtils.decimals(tokens[j]),
                        TokenUtils.decimals(tokens[i]),
                        OracleProcess.getLatestUsdUintPrice(tokens[j], true),
                        OracleProcess.getLatestUsdUintPrice(tokens[i], false)
                    );

                    if (offsetLossStableTokenAmount > tokenNetStableTokenAmount) {
                        offsetLossStableTokenAmount = tokenNetStableTokenAmount;
                        reduceProfitTokenAmount = CalUtils.tokenToToken(
                            tokenNetStableTokenAmount,
                            TokenUtils.decimals(tokens[i]),
                            TokenUtils.decimals(tokens[j]),
                            OracleProcess.getLatestUsdUintPrice(tokens[i], false),
                            OracleProcess.getLatestUsdUintPrice(tokens[j], true)
                        );
                    }
                    netStableTokenAmount[i] = netStableTokenAmount[i] + offsetLossStableTokenAmount.toInt256();
                    netStableTokenAmount[j] = netStableTokenAmount[j] - reduceProfitTokenAmount.toInt256();
                    if (netStableTokenAmount[i] >= 0) {
                        break;
                    }
                }
            }
        }

        UsdPool.Props storage usdPool = UsdPool.load();
        for (uint256 i; i < netStableTokenAmount.length; i++) {
            LpPool.TokenBalance storage tokenBalance = pool.getStableTokenBalance(tokens[i]);
            uint256 tokenAmount = tokenBalance.amount;
            uint256 tokenLossAmount = tokenBalance.lossAmount;
            if (netStableTokenAmount[i] == 0 && tokenAmount == 0 && tokenLossAmount == 0) {
                continue;
            }
            if (netStableTokenAmount[i] == 0) {
                usdPool.settleStableToken(tokens[i], tokenLossAmount, false);
                usdPool.addStableToken(tokens[i], tokenAmount);
                pool.subStableToken(tokens[i], tokenAmount);
                pool.subLossStableToken(tokens[i], tokenLossAmount);
            } else if (netStableTokenAmount[i] > 0) {
                usdPool.settleStableToken(tokens[i], tokenLossAmount, false);
                usdPool.addStableToken(tokens[i], tokenAmount - netStableTokenAmount[i].toUint256());
                pool.subStableToken(tokens[i], tokenAmount - netStableTokenAmount[i].toUint256());
                pool.subLossStableToken(tokens[i], tokenLossAmount);
                // ISwap.SwapSingleResult memory swapResult = _swapToBaseToken(
                //     stakeToken,
                //     tokens[i],
                //     netStableTokenAmount[i].toUint256(),
                //     pool.baseToken
                // );
                // pool.subStableToken(tokens[i], swapResult.reduceFromAmount);
                // pool.addBaseToken(swapResult.toTokenAmount);
            } else {
                uint256 needAmount = (-netStableTokenAmount[i]).toUint256();
                usdPool.settleStableToken(tokens[i], tokenLossAmount - needAmount, false);
                usdPool.addStableToken(tokens[i], tokenAmount);
                pool.subStableToken(tokens[i], tokenAmount);
                pool.subLossStableToken(tokens[i], tokenLossAmount - needAmount);

                // ISwap.SwapSingleResult memory swapResult = _swapToStableTokens(
                //     stakeToken,
                //     pool.baseToken,
                //     tokens[i],
                //     needAmount
                // );
                // pool.subBaseToken(swapResult.reduceFromAmount);
                // pool.addStableToken(tokens[i], swapResult.toTokenAmount);
                // if (swapResult.toTokenAmount >= needAmount) {
                //     usdPool.settleStableToken(tokens[i], tokenLossAmount, false);
                //     usdPool.addStableToken(tokens[i], tokenAmount + needAmount);
                //     pool.subStableToken(tokens[i], tokenAmount + needAmount);
                //     pool.subLossStableToken(tokens[i], tokenLossAmount);
                // } else {
                //     usdPool.settleStableToken(
                //         tokens[i],
                //         tokenLossAmount + swapResult.toTokenAmount - needAmount,
                //         false
                //     );
                //     usdPool.addStableToken(tokens[i], tokenAmount + swapResult.toTokenAmount);
                //     pool.subStableToken(tokens[i], tokenAmount + swapResult.toTokenAmount);
                //     pool.subLossStableToken(tokens[i], tokenLossAmount + swapResult.toTokenAmount - needAmount);
                // }
            }
        }
    }

    function _getPoolUnsettleAmount(
        address token,
        address[] memory stakeTokens,
        bool isSupportStableToken
    ) internal view returns (RebalanceUnsettleCache memory cache) {
        cache.poolUnsettledAmount = new uint256[](stakeTokens.length);
        for (uint256 i; i < stakeTokens.length; i++) {
            LpPool.Props storage pool = LpPool.load(stakeTokens[i]);
            if (isSupportStableToken) {
                cache.poolUnsettledAmount[i] = pool.getStableTokenBalance(token).unsettledAmount;
            } else {
                cache.poolUnsettledAmount[i] = token == pool.baseToken
                    ? pool.baseTokenBalance.unsettledAmount
                    : uint256(0);
            }
            if (cache.poolUnsettledAmount[i] <= 0) {
                continue;
            }
            cache.totalUnsettledAmount += cache.poolUnsettledAmount[i];
        }
        cache.tokenLiability = CommonData.load().getTradeTokenLiability(token);
    }
}
