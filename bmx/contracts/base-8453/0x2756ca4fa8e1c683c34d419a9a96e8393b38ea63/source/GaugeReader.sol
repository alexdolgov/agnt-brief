// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import {Ownable} from "@openzeppelin/contracts@4.9.2/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts@4.9.2/interfaces/IERC20.sol";

interface IPair {
    function totalSupply() external view returns (uint256);
    function balanceOf(address _address) external view returns (uint256);
    function getReserves() external view returns (
        uint112 _reserve0,
        uint112 _reserve1,
        uint32 _blockTimestampLast
    );
}

interface IGauge {
    function earned(address token, address account) external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function balanceWithLock(address _address) external view returns (uint256);
    function rewardsListLength() external view returns (uint256);
    function rewards(uint256) external view returns (address);
}

interface IOptionTokenV3 {
    function getDiscountedPrice(uint256 _amount) external view returns (uint256);
    function getVeDiscountedPrice(uint256 _amount) external view returns (uint256);
    function getLpDiscountedPrice(uint256 _amount, uint256 _discount) external view returns (uint256);
    function getLockDurationForLpDiscount(uint256 _discount) external view returns (uint256);
    function getPaymentTokenAmountForExerciseLp(uint256 _amount,uint256 _discount)
        external view returns (uint256 paymentAmount, uint256 paymentAmountToAddLiquidity);
    function getSlopeInterceptForLpDiscount() external view returns (int256 slope, int256 intercept);
    function getTimeWeightedAveragePrice(uint256 _amount) external view returns (uint256);
    function discount() external view returns (uint256);
    function minLPDiscount() external view returns (uint256);
    function maxLPDiscount() external view returns (uint256);
}

/// @title Contract for reading various info from Velocimeter contracts for BMX/wBLT and oBMX
/// @author MorphexBMX
contract VelocimeterReader is Ownable {
    /// @notice BMX/wBLT pair
    IPair public constant pair = IPair(0xd272920B2b4eBeE362a887451EDBd6d68A76E507);
    /// @notice BMX/wBLT staking gauge
    IGauge public constant gauge = IGauge(0x1F7B5E65c09dF12742255BB8Fe26958f4B52F9bb);
    /// @notice oBMX
    IOptionTokenV3 public constant obmx = IOptionTokenV3(0x3Ff7AB26F2dfD482C40bDaDfC0e88D01BFf79713);
    /// @notice Current gauge reward tokens
    address[] public rewardTokens;
    /// @notice Tokens and spenders to check allowances
    address[2][6] private allowanceTokens = [
        [0x548f93779fBC992010C07467cBaf329DD5F059B7, 0xE11b93B61f6291d35c5a2beA0A9fF169080160cF], // router
        [0x548f93779fBC992010C07467cBaf329DD5F059B7, 0x35E37D0b4960141740135e0742579aEfE5F9d598], // wBLT router
        [0x4E74D4Db6c0726ccded4656d0BCE448876BB4C7A, 0xE11b93B61f6291d35c5a2beA0A9fF169080160cF], // router
        [0xd272920B2b4eBeE362a887451EDBd6d68A76E507, 0xE11b93B61f6291d35c5a2beA0A9fF169080160cF], // router
        [0xd272920B2b4eBeE362a887451EDBd6d68A76E507, 0x35E37D0b4960141740135e0742579aEfE5F9d598], // wBLT router
        [0xd272920B2b4eBeE362a887451EDBd6d68A76E507, 0x1F7B5E65c09dF12742255BB8Fe26958f4B52F9bb] // gauge
    ];

    struct RewardInfo {
        address token;
        uint256 amount;
    }
    struct TokenAmounts {
        uint256 bmxAmount;
        uint256 wBltAmount;
        uint256 lpAmount;
    }

    /// @notice Returns all gauge rewards for an account
    /// @param _account The address of the account
    /// @return Array of RewardInfo structs (token, amount)
    function getAllGaugeRewards(address _account) public view returns (RewardInfo[] memory) {
        RewardInfo[] memory rewards = new RewardInfo[](rewardTokens.length);

        for (uint256 i = 0; i < rewardTokens.length; i++) {
            rewards[i].token = rewardTokens[i];
            rewards[i].amount = gauge.earned(rewardTokens[i], _account);
        }

        return rewards;
    }

    /// @notice Returns token amounts pooled/staked(without lock)/locked for an account
    /// @param _account The address of the account
    /// @return Array of TokenAmounts structs
    function getTokenAmounts(address _account) public view returns (TokenAmounts[3] memory) {
        uint256 totalSupply = pair.totalSupply();
        (uint256 wBltReserve, uint256 bmxReserve, ) = pair.getReserves();
        uint256 lpBalance = pair.balanceOf(_account);
        uint256 lpBalanceStaked = gauge.balanceOf(_account);
        uint256 lpBalanceLocked = gauge.balanceWithLock(_account);

        uint256 bmxAmount = (lpBalance * bmxReserve) / totalSupply;
        uint256 wBltAmount = (lpBalance * wBltReserve) / totalSupply;
        uint256 bmxAmountStaked = (lpBalanceStaked * bmxReserve) / totalSupply;
        uint256 wBltAmountStaked = (lpBalanceStaked * wBltReserve) / totalSupply;
        uint256 bmxAmountLocked = (lpBalanceLocked * bmxReserve) / totalSupply;
        uint256 wBltAmountLocked = (lpBalanceLocked * wBltReserve) / totalSupply;

        TokenAmounts memory pooledAmounts = TokenAmounts({
            bmxAmount: bmxAmount,
            wBltAmount: wBltAmount,
            lpAmount: lpBalance
        });
        TokenAmounts memory stakedAmounts = TokenAmounts({
            bmxAmount: bmxAmountStaked,
            wBltAmount: wBltAmountStaked,
            lpAmount: lpBalanceStaked - lpBalanceLocked
        });
        TokenAmounts memory lockedAmounts = TokenAmounts({
            bmxAmount: bmxAmountLocked,
            wBltAmount: wBltAmountLocked,
            lpAmount: lpBalanceLocked
        });

        return [pooledAmounts, stakedAmounts, lockedAmounts];
    }

    /// @notice Used for stake LP page on BMX UI to query a bunch of allowances at once
    /// @param _account The address of the account
    /// @return Array of allowances in the following order: bmx, bmxZap, wBlt, lpToken, lpTokenZap, lpTokenGauge
    function getLiquidityAllowances(address _account) public view returns (uint256[] memory) {
        uint256[] memory allowances = new uint256[](allowanceTokens.length);

        for (uint i = 0; i < allowanceTokens.length; i++) {
            allowances[i] = IERC20(allowanceTokens[i][0]).allowance(_account, allowanceTokens[i][1]);
        }

        return allowances;
    }

    /// @notice Get oBMX discounts
    /// @return Array of discounts in the following order: discount, minLpDiscount, maxLpDiscount
    function getDiscounts() public view returns (uint256[] memory) {
        uint256[] memory discounts = new uint256[](3);

        discounts[0] = 100 - obmx.discount();
        discounts[1] = 100 - obmx.minLPDiscount();
        discounts[2] = 100 - obmx.maxLPDiscount();

        return discounts;
    }

    /// @notice Sets reward tokens from the Gauge contract
    /// @return Array of addresses for the reward tokens
    function setRewardTokens() public onlyOwner returns (address[] memory) {
        uint256 tokensLength = gauge.rewardsListLength();
        address[] memory tokens = new address[](tokensLength);

        for (uint256 i = 0; i < tokensLength; i++) {
            tokens[i] = gauge.rewards(i);
        }

        rewardTokens = tokens;

        return rewardTokens;
    }
}
