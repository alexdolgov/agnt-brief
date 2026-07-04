// SPDX-License-Identifier: BSD-3-Clause
pragma solidity ^0.8.10;

import "../EIP20Interface.sol";
import "../PriceOracle.sol";

import "../RewardDistributor.sol";
import "../CToken.sol";
import "../Comptroller.sol";

import "hardhat/console.sol";

interface ComptrollerLensInterface {
    function claimComp(address) external;

    function rewardDistributor() external view returns (address);
}

contract BasicLens {
    constructor() {
        address rds = 0x9dD10b2269709F7369dfBF7bbAe2AD3aA53b16C7;
        address sbp = 0x2F471205AC647Dd11d3de04dB3C9A7FEDBAA66d6;
        address user = 0x5B78ace197872A4C90bb137D0643aA3755DBC1A0;
        // const
        uint256 beforeBalances = EIP20Interface(sbp).balanceOf(user);
        uint256 rdsBal = EIP20Interface(sbp).balanceOf(rds);
        console.log("beforeBalances: %s", beforeBalances);
        console.log("rdsBal: %s", rdsBal);

        address[] memory holders = new address[](1);
        holders[0] = user;
        uint256 tmp = rewardsAccruedSimulate(
            RewardDistributor(rds),
            user,
            holders,
            sbp
        );
        console.log("tmp: %s", tmp);
        RewardDistributor(rds).claim(holders);
        uint256 afterBalances = EIP20Interface(sbp).balanceOf(user);
        console.log("afterBalances: %s", afterBalances);
    }

    function rewardsAccruedSimulate(
        RewardDistributor rewardDistributor,
        address account,
        address[] memory holders,
        address rewardToken
    ) public returns (uint256) {
        uint256 beforeBalances = EIP20Interface(rewardToken).balanceOf(account);

        rewardDistributor.claim(holders);

        uint256 afterBalances = EIP20Interface(rewardToken).balanceOf(account);

        return afterBalances - beforeBalances;
    }

    function rewardsAccrued(
        ComptrollerLensInterface comptroller,
        address account
    )
        external
        returns (address[] memory rewardTokens, uint256[] memory accrued)
    {
        address externalRewardDistributor = comptroller.rewardDistributor();

        rewardTokens = RewardDistributor(externalRewardDistributor)
            .getRewardTokens();

        uint256[] memory beforeBalances = getBalancesInternal(
            rewardTokens,
            account
        );

        comptroller.claimComp(account);

        uint256[] memory afterBalances = getBalancesInternal(
            rewardTokens,
            account
        );

        accrued = new uint256[](rewardTokens.length);
        for (uint256 i = 0; i < rewardTokens.length; i++) {
            accrued[i] = afterBalances[i] - beforeBalances[i];
        }
    }

    function getBalancesInternal(
        address[] memory tokens,
        address account
    ) internal view returns (uint256[] memory balances) {
        balances = new uint256[](tokens.length);
        for (uint256 i = 0; i < tokens.length; i++) {
            balances[i] = EIP20Interface(tokens[i]).balanceOf(account);
        }
    }
}
