// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../interfaces/IFee.sol";
import "../storage/AppConfig.sol";
import "../storage/Position.sol";
import "../storage/FeeRewards.sol";
import "../storage/StakingAccount.sol";
import "../storage/CommonData.sol";
import "../utils/CalUtils.sol";

library FeeQueryProcess {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;
    using SafeCast for uint256;
    using FeeRewards for FeeRewards.MarketRewards;
    using FeeRewards for FeeRewards.StakingRewards;
    using StakingAccount for StakingAccount.Props;

    function calcOpenFee(uint256 orderMargin, uint256 leverage, bytes32 symbol) public view returns (uint256) {
        AppConfig.SymbolConfig memory symbolConfig = AppConfig.getSymbolConfig(symbol);
        uint256 leverageMargin = CalUtils.mulRate(orderMargin, leverage);
        return CalUtils.mulRate(leverageMargin, symbolConfig.openFeeRate);
    }

    function calcCloseFee(uint8 tokenDecimals, uint256 feeInUsd, uint256 tokenPrice) public pure returns (uint256) {
        return CalUtils.usdToToken(feeInUsd, tokenDecimals, tokenPrice);
    }

    function calcMintOrRedeemFee(uint256 tokenAmount, uint256 feeRate) public pure returns (uint256) {
        return CalUtils.mulRate(tokenAmount, feeRate);
    }

    function calcBorrowingFee(
        uint256 decreaseQty,
        Position.Props memory position
    ) public pure returns (uint256 fee, uint256 feeInUsd) {
        if (decreaseQty == position.qty) {
            return (position.positionFee.realizedBorrowingFee, position.positionFee.realizedBorrowingFeeInUsd);
        }
        return (
            position.positionFee.realizedBorrowingFee.mul(decreaseQty).div(position.qty),
            position.positionFee.realizedBorrowingFeeInUsd.mul(decreaseQty).div(position.qty)
        );
    }

    function getPoolTokenFeeAmount(address stakeToken, address token) external view returns (uint256) {
        FeeRewards.MarketRewards storage poolRewardsProps = FeeRewards.loadPoolRewards(stakeToken);
        return poolRewardsProps.getFeeAmount(token);
    }

    function getCumulativeRewardsPerStakeToken(address stakeToken) external view returns (uint256) {
        FeeRewards.MarketRewards storage poolRewardsProps = FeeRewards.loadPoolRewards(stakeToken);
        return poolRewardsProps.getCumulativeRewardsPerStakeToken();
    }

    function getMarketTokenFeeAmount(bytes32 symbol, address token) external view returns (uint256) {
        FeeRewards.MarketRewards storage marketTradingRewardsProps = FeeRewards.loadMarketTradingRewards(symbol);
        return marketTradingRewardsProps.getFeeAmount(token);
    }

    function getStakingTokenFee(address stakeToken, address token) external view returns (uint256) {
        FeeRewards.StakingRewards storage stakingRewards = FeeRewards.loadStakingRewards();
        return stakingRewards.getFeeAmount(stakeToken, token);
    }

    function getDaoTokenFee(address stakeToken, address token) external view returns (uint256) {
        FeeRewards.StakingRewards storage daoRewards = FeeRewards.loadDaoRewards();
        return daoRewards.getFeeAmount(stakeToken, token);
    }

    function getAccountFeeRewards(address account) external view returns (IFee.AccountFeeRewards memory) {
        StakingAccount.Props storage stakingAccount = StakingAccount.load(account);
        address[] memory stakeTokens = stakingAccount.getStakeTokens();
        IFee.AccountFeeRewards memory rewards;
        rewards.account = account;
        rewards.stakeTokens = stakeTokens;
        rewards.tokens = new address[](stakeTokens.length);
        rewards.rewards = new uint256[](stakeTokens.length);
        for (uint256 i; i < stakeTokens.length; i++) {
            FeeRewards.MarketRewards storage feeProps = FeeRewards.loadPoolRewards(stakeTokens[i]);
            StakingAccount.FeeRewards storage accountFeeRewards = stakingAccount.getFeeRewards(stakeTokens[i]);
            uint256 accountStakeTokens = IERC20(stakeTokens[i]).balanceOf(account);
            if (CommonData.getStakeUsdToken() == stakeTokens[i] || accountStakeTokens == 0) {
                continue;
            }
            LpPool.Props storage pool = LpPool.load(stakeTokens[i]);
            rewards.tokens[i] = pool.baseToken;
            if (
                accountFeeRewards.openRewardsPerStakeToken > 0 &&
                feeProps.getCumulativeRewardsPerStakeToken() - accountFeeRewards.openRewardsPerStakeToken >
                feeProps.getPoolRewardsPerStakeTokenDeltaLimit(AppPoolConfig.getStakeConfig().poolRewardsIntervalLimit)
            ) {
                rewards.rewards[i] = CalUtils.mulSmallRate(
                    feeProps.getCumulativeRewardsPerStakeToken() - accountFeeRewards.openRewardsPerStakeToken,
                    accountStakeTokens
                );
            }

            rewards.rewards[i] += accountFeeRewards.realisedRewardsTokenAmount;
        }
        return rewards;
    }

    function getAccountUsdFeeReward(address account) external view returns (IFee.AccountUsdFeeReward memory) {
        StakingAccount.Props storage stakingAccount = StakingAccount.load(account);
        address stakeUsdToken = CommonData.getStakeUsdToken();
        StakingAccount.FeeRewards storage accountFeeRewards;
        accountFeeRewards = stakingAccount.getFeeRewards(stakeUsdToken);

        FeeRewards.MarketRewards storage feeProps = FeeRewards.loadPoolRewards(stakeUsdToken);

        uint256 accountStakeTokens = IERC20(stakeUsdToken).balanceOf(account);
        uint256 claimTokenAmount = accountFeeRewards.realisedRewardsTokenAmount;
        if (
            accountFeeRewards.openRewardsPerStakeToken > 0 &&
            feeProps.getCumulativeRewardsPerStakeToken() - accountFeeRewards.openRewardsPerStakeToken >
            feeProps.getPoolRewardsPerStakeTokenDeltaLimit(AppPoolConfig.getStakeConfig().poolRewardsIntervalLimit)
        ) {
            claimTokenAmount += CalUtils.mul(
                feeProps.getCumulativeRewardsPerStakeToken() - accountFeeRewards.openRewardsPerStakeToken,
                accountStakeTokens
            );
        }

        return IFee.AccountUsdFeeReward(account, stakeUsdToken, claimTokenAmount);
    }

    function getMarketFeeRewards(bytes32 symbol) external view returns (IFee.AccFeeRewards memory) {
        FeeRewards.MarketRewards storage marketRewards = FeeRewards.loadMarketTradingRewards(symbol);
        return _convertMarketRewardsToFeeRewards(marketRewards);
    }

    function getPoolFeeRewards(address stakeToken) external view returns (IFee.AccFeeRewards memory) {
        FeeRewards.MarketRewards storage marketRewards = FeeRewards.loadPoolRewards(stakeToken);
        return _convertMarketRewardsToFeeRewards(marketRewards);
    }

    function getStakingFeeRewards() external view returns (IFee.AccFeeRewards[] memory) {
        address[] memory stakeTokens = CommonData.getAllStakeTokens();
        FeeRewards.StakingRewards storage stakingRewards = FeeRewards.loadStakingRewards();
        IFee.AccFeeRewards[] memory rewards = new IFee.AccFeeRewards[](stakeTokens.length + 1);
        for (uint i; i < stakeTokens.length; i++) {
            rewards[i] = _convertStakingRewardsToFeeRewards(stakingRewards, stakeTokens[i]);
        }
        rewards[stakeTokens.length] = _convertStakingRewardsToFeeRewards(
            stakingRewards,
            CommonData.getStakeUsdToken()
        );
        return rewards;
    }

    function getDaoFeeRewards() external view returns (IFee.AccFeeRewards[] memory) {
        address[] memory stakeTokens = CommonData.getAllStakeTokens();
        FeeRewards.StakingRewards storage stakingRewards = FeeRewards.loadDaoRewards();
        IFee.AccFeeRewards[] memory rewards = new IFee.AccFeeRewards[](stakeTokens.length + 1);
        for (uint i; i < stakeTokens.length; i++) {
            rewards[i] = _convertStakingRewardsToFeeRewards(stakingRewards, stakeTokens[i]);
        }
        rewards[stakeTokens.length] = _convertStakingRewardsToFeeRewards(
            stakingRewards,
            CommonData.getStakeUsdToken()
        );
        return rewards;
    }

    function _convertMarketRewardsToFeeRewards(
        FeeRewards.MarketRewards storage marketRewards
    ) internal view returns (IFee.AccFeeRewards memory feeRewards) {
        feeRewards.tokens = marketRewards.getFeeTokens();
        feeRewards.collateralTokens = marketRewards.getCollateralFeeTokens();
        feeRewards.feeAmount = new uint256[](feeRewards.tokens.length);
        feeRewards.unsettledFeeAmount = new uint256[](feeRewards.tokens.length);
        for (uint i; i < feeRewards.tokens.length; i++) {
            feeRewards.feeAmount[i] = marketRewards.getFeeAmount(feeRewards.tokens[i]);
            feeRewards.unsettledFeeAmount[i] = marketRewards.getUnsettleFeeAmount(feeRewards.tokens[i]);
        }
        if (feeRewards.collateralTokens.length > 0) {
            feeRewards.collateralFeeAmount = new uint256[](feeRewards.collateralTokens.length);
            for (uint i; i < feeRewards.collateralTokens.length; i++) {
                feeRewards.collateralFeeAmount[i] = marketRewards.getCollateralFeeAmount(
                    feeRewards.collateralTokens[i]
                );
            }
        }
        feeRewards.cumulativeRewardsPerStakeToken = marketRewards.cumulativeRewardsPerStakeToken;
        feeRewards.lastRewardsPerStakeTokenDeltas = marketRewards.lastRewardsPerStakeTokenDeltas;
    }

    function _convertStakingRewardsToFeeRewards(
        FeeRewards.StakingRewards storage stakingRewards,
        address stakeToken
    ) internal view returns (IFee.AccFeeRewards memory feeRewards) {
        feeRewards.tokens = stakingRewards.getFeeTokens();
        feeRewards.collateralTokens = stakingRewards.getCollateralFeeTokens();
        feeRewards.feeAmount = new uint256[](feeRewards.tokens.length);
        feeRewards.unsettledFeeAmount = new uint256[](feeRewards.tokens.length);
        for (uint i; i < feeRewards.tokens.length; i++) {
            feeRewards.feeAmount[i] = stakingRewards.getFeeAmount(stakeToken, feeRewards.tokens[i]);
            feeRewards.unsettledFeeAmount[i] = stakingRewards.getUnsettleFeeAmount(stakeToken, feeRewards.tokens[i]);
        }
        if (feeRewards.collateralTokens.length > 0) {
            feeRewards.collateralFeeAmount = new uint256[](feeRewards.collateralTokens.length);
            for (uint i; i < feeRewards.collateralTokens.length; i++) {
                feeRewards.collateralFeeAmount[i] = stakingRewards.getCollateralFeeAmount(
                    stakeToken,
                    feeRewards.collateralTokens[i]
                );
            }
        }
    }
}
