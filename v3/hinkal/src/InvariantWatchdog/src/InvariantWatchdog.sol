// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "./interfaces/IRewardEscrow.sol";
import "./interfaces/IKwenta.sol";

contract InvariantWatchdog {

    /// @notice If this invariant is broken, the contract is in an invalid state
    /// @dev Ensures that the total escrowed balance matches the balance of the KWENTA in the contract
    function rewardEscrowBalanceMatch(
        address kwenta,
        address rewardEscrow
    ) external view returns (bool) {
        return
            IKwenta(kwenta).balanceOf(address(rewardEscrow)) ==
            IRewardEscrow(rewardEscrow).totalEscrowedBalance();
    }
}
