// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import {Ownable} from "@openzeppelin/contracts@4.9.3/access/Ownable.sol";

interface IPair {
    function totalSupply() external view returns (uint256);
    function balanceOf(address _address) external view returns (uint256);
    function getReserves() external view returns (uint112 _reserve0, uint112 _reserve1, uint32 _blockTimestampLast);
}

interface IGauge {
    function earned(address token, address account) external view returns (uint);
    function balanceOf(address account) external view returns (uint);
    function rewardsListLength() external view returns (uint256);
    function rewards(uint256) external view returns (address);
}

/// @title Contract for reading various info from the wBLT-BMX gauge
/// @author MorphexBMX
contract wBltBmxGaugeReader is Ownable {
    address public pair = 0xF8eed2665FD11a8431fc41b2582fD5E72a1606f0;
    address public gauge = 0x1F7B5E65c09dF12742255BB8Fe26958f4B52F9bb;

    address[] public rewardTokens;

    struct RewardInfo {
        address token;
        uint256 amount;
    }

    struct TokenAmounts {
        uint256 bmxAmount;
        uint256 wBltAmount;
    }

    /// @notice Returns all gauge rewards for an account
    /// @param _account The address of the account
    /// @return Array of RewardInfo structs (token, amount)
    function getAllGaugeRewards(address _account) public view returns (RewardInfo[] memory) {
        RewardInfo[] memory rewards = new RewardInfo[](rewardTokens.length);

        for (uint256 i = 0; i < rewardTokens.length; i++) {
            rewards[i].token = rewardTokens[i];
            rewards[i].amount = IGauge(gauge).earned(rewardTokens[i], _account);
        }

        return rewards;
    }

    /// @notice Returns token amounts pooled and staked for an account
    /// @param _account The address of the account
    /// @return Array of TokenAmounts structs for pooled and staked tokens
    function getTokenAmounts(address _account) public view returns (TokenAmounts[2] memory) {
        uint256 totalSupply = IPair(pair).totalSupply();
        (uint256 wBltReserve, uint256 bmxReserve,) = IPair(pair).getReserves();
        uint256 lpBalance = IPair(pair).balanceOf(_account);
        uint256 lpBalanceStaked = IGauge(gauge).balanceOf(_account);

        uint256 bmxAmount = (lpBalance * bmxReserve) / totalSupply;
        uint256 wBltAmount = (lpBalance * wBltReserve) / totalSupply;
        uint256 bmxAmountStaked = (lpBalanceStaked * bmxReserve) / totalSupply;
        uint256 wBltAmountStaked = (lpBalanceStaked * wBltReserve) / totalSupply;

        TokenAmounts memory pooledAmounts = TokenAmounts({
            bmxAmount: bmxAmount,
            wBltAmount: wBltAmount
        });
        TokenAmounts memory stakedAmounts = TokenAmounts({
            bmxAmount: bmxAmountStaked,
            wBltAmount: wBltAmountStaked
        });

        return [pooledAmounts, stakedAmounts];
    }

    /// @notice Sets reward tokens from the Gauge contract
    /// @return Array of addresses for the reward tokens
    function setRewardTokens() public onlyOwner returns (address[] memory) {
        uint256 tokensLength = IGauge(gauge).rewardsListLength();
        address[] memory tokens = new address[](tokensLength);

        for (uint256 i = 0; i < tokensLength; i++) {
            tokens[i] = IGauge(gauge).rewards(i);
        }

        rewardTokens = tokens;

        return rewardTokens;
    }
}

