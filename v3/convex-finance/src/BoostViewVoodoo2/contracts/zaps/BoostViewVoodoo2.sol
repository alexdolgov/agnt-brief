// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

interface IPrismaVault {
    function claimableRewardAfterBoost(
        address account,
        address receiver,
        address boostDelegate,
        address rewardContract
    ) external view returns (uint256 adjustedAmount, uint256 feeToDelegate);
}

contract BoostViewVoodoo2 {
    IPrismaVault public constant vault = IPrismaVault(0x06bDF212C290473dCACea9793890C5024c7Eb02c);

    uint256 cachedReward;

    function claimableRewardAfterBoost(
        address account,
        address boostDelegate,
        uint256 claimAmount
    ) public returns (uint256 claimToSelfAmount, uint256 claimToDelegateAmount) {
        cachedReward = claimAmount;
        uint fee;
        (claimToSelfAmount, fee) = vault.claimableRewardAfterBoost(account, account, boostDelegate, address(this));
        claimToSelfAmount -= fee;
        (claimToDelegateAmount, fee) = vault.claimableRewardAfterBoost(
            account,
            boostDelegate,
            boostDelegate,
            address(this)
        );
        claimToDelegateAmount -= fee;

        return (claimToSelfAmount, claimToDelegateAmount);
    }

    function batchClaimableRewardAfterBoost(
        address account,
        address[] calldata boostDelegates,
        uint256 claimAmount
    ) external returns (uint256[2][] memory claimAmounts) {
        claimAmounts = new uint256[2][](boostDelegates.length);

        for (uint i = 0; i < boostDelegates.length; i++) {
            (claimAmounts[i][0], claimAmounts[i][1]) = claimableRewardAfterBoost(
                account,
                boostDelegates[i],
                claimAmount
            );
        }
        return claimAmounts;
    }

    function claimableReward(address account) external view returns (uint256) {
        return cachedReward;
    }
}
