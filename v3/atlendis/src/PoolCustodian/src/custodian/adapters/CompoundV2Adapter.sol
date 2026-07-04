// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import '../../interfaces/IAdapter.sol';
import '../CustodianStorage.sol';
import './extensions/CompoundCToken.sol';

/**
 * @title AaveAdapter
 * @author Atlendis Labs
 */
contract CompoundV2Adapter is CustodianStorage, IAdapter {
    function deposit(uint256 amount) external {
        collectRewards();

        depositedBalance += amount;
        yieldProviderBalance += (amount * 1e18) / lastYieldFactor;

        uint256 result = CTokenInterface(yieldProvider).mint(amount);
        require(result == 0);
    }

    function withdraw(uint256 amount) external {
        collectRewards();

        uint256 amountToRedeem = (amount * 1e18) / lastYieldFactor;
        depositedBalance -= amount;
        yieldProviderBalance -= amountToRedeem;

        uint256 result = CTokenInterface(yieldProvider).redeem(amountToRedeem);
        require(result == 0);
    }

    function collectRewards() public returns (uint256 collectedAmount) {
        uint256 newYieldFactor = CTokenInterface(yieldProvider).exchangeRateCurrent();

        collectedAmount = (yieldProviderBalance * (newYieldFactor - lastYieldFactor)) / 1e18; // RAY
        pendingRewards += collectedAmount;

        lastYieldFactor = newYieldFactor;
    }

    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IAdapter).interfaceId;
    }
}
