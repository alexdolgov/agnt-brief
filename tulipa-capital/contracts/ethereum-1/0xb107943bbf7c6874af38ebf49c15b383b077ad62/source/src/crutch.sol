// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.24;


struct PoolInfo {
    address market;
    address token;
    address rewardPool;
    bool shutdown;
}

contract EquilibriaCrutch {
    MockPendleBoosterBaseUpg public booster = MockPendleBoosterBaseUpg(0x4D32C8Ff2fACC771eC7Efc70d6A8468bC30C26bF);

    function marketToRewardPool(address market, uint256 start) public view returns (PoolInfo memory) {
        uint256 len = booster.poolLength();
        for (uint256 i = start; i < len; i++ ) {
            PoolInfo memory info = booster.poolInfo(i);
            if (info.market == market) {
                return info;
            }
        }
        return PoolInfo({
            market: address(0),
            token: address(0),
            rewardPool: address(0),
            shutdown: false
        });
    }
}

interface MockPendleBoosterBaseUpg {
    function poolInfo(uint256 i) external view returns (PoolInfo memory);
    function poolLength() external view returns (uint256);
}
