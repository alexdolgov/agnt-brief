// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ProxyCallerApi.sol";
import "./PositionInfo.sol";
import "./pool/IPoolAdapter.sol";

library PositionBalanceLib {
    using ProxyCallerApi for ProxyCaller;

    struct PositionBalance {
        uint balance;
        uint reward;
        uint gasTank;
    }

    function getMany(
        mapping(uint => PositionInfo) storage positions,
        mapping(uint256 => IPoolAdapter) storage poolAdapters,
        uint[] calldata positionIndexes
    ) public returns (PositionBalance[] memory) {
        PositionBalance[] memory balances = new PositionBalance[](positionIndexes.length);
        for (uint i = 0; i < positionIndexes.length; ++i) {
            balances[i] = get(poolAdapters, positions[i]);
        }
        return balances;
    }

    function get(mapping(uint256 => IPoolAdapter) storage poolAdapters, PositionInfo storage position)
        public
        returns (PositionBalance memory)
    {
        if (position.closed) {
            return PositionBalance({balance: 0, reward: 0, gasTank: 0});
        }

        IPoolAdapter adapter = poolAdapters[uint256(keccak256(position.poolAddress.code))];

        uint gasTank = address(position.callerAddress).balance;
        uint stakingBalance = position.callerAddress.stakingBalance(
            adapter,
            position.poolAddress,
            abi.encode(position.stakedToken)
        );
        uint rewardBalance = position.callerAddress.rewardBalance(adapter, position.poolAddress, "");

        if (position.stakedToken != position.rewardToken) {
            return PositionBalance({balance: position.stakedAmount, reward: rewardBalance, gasTank: gasTank});
        }

        uint totalBalance = rewardBalance + stakingBalance;

        if (totalBalance < position.stakedAmount) {
            return PositionBalance({balance: totalBalance, reward: 0, gasTank: gasTank});
        }

        return
            PositionBalance({
                balance: position.stakedAmount,
                reward: totalBalance - position.stakedAmount,
                gasTank: gasTank
            });
    }
}
