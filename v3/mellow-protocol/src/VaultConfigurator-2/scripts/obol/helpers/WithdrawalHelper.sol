// SPDX-License-Identifier: BSL-1.1
pragma solidity 0.8.25;

import "@openzeppelin/contracts/utils/math/Math.sol";

import "../../../src/interfaces/external/lido/IWSteth.sol";

import "../../../src/Vault.sol";
import "../../../src/strategies/SimpleDVTStakingStrategy.sol";

contract WithdrawalHelper {
    Vault public immutable vault;
    SimpleDVTStakingStrategy public immutable strategy;
    address public immutable weth;
    address public immutable wsteth;

    constructor(Vault vault_, SimpleDVTStakingStrategy strategy_) {
        vault = vault_;
        strategy = strategy_;
        IStakingModule stakingModule = strategy_.stakingModule();
        weth = stakingModule.weth();
        wsteth = stakingModule.wsteth();
    }

    /// @param limit - maximum number of users to return
    /// @param offset - number of users to skip
    /// @return users - array of users with pending withdrawals
    /// @return amountForStake - amount of weth required to stake for SimpleDVTStakingStrategy
    function get(
        uint256 limit,
        uint256 offset
    ) public view returns (address[] memory users, uint256 amountForStake) {
        users = vault.pendingWithdrawers(limit, offset);
        if (users.length == 0) return (users, amountForStake);
        uint256 pendingLpAmount = 0;
        for (uint256 i = 0; i < users.length; i++) {
            pendingLpAmount += vault.withdrawalRequest(users[i]).lpAmount;
        }

        uint256 wethValue = IERC20(weth).balanceOf(address(vault));
        uint256 wstethValue = IWSteth(wsteth).getStETHByWstETH( // rounding down
            IERC20(wsteth).balanceOf(address(vault))
        );

        uint256 requiredWstethAmount = Math.mulDiv( // rounding up
            pendingLpAmount,
            wstethValue + 1 + wethValue, // rounding up
            vault.totalSupply(),
            Math.Rounding.Ceil
        );

        if (wstethValue < requiredWstethAmount) {
            amountForStake = requiredWstethAmount - wstethValue;
            amountForStake = Math.min(amountForStake, wethValue);
        }
    }

    function get()
        external
        view
        returns (address[] memory users, uint256 amountForStake)
    {
        return get(type(uint256).max, 0);
    }
}
