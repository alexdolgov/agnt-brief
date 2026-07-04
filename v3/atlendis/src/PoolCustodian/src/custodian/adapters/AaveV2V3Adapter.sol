// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import '../../interfaces/IAdapter.sol';
import '../CustodianStorage.sol';
import './extensions/AaveLendingPool.sol';

/**
 * @title AaveV2V3Adapter
 * @author Atlendis Labs
 */
contract AaveV2V3Adapter is CustodianStorage, IAdapter {
    function deposit(uint256 amount) external {
        collectRewards();

        depositedBalance += amount;
        yieldProviderBalance += (amount * 1e27) / lastYieldFactor; // RAY

        ILendingPool(yieldProvider).deposit(address(token), amount, address(this), 0);
    }

    function withdraw(uint256 amount) external {
        collectRewards();

        depositedBalance -= amount;
        yieldProviderBalance -= (amount * 1e27) / lastYieldFactor; // RAY

        ILendingPool(yieldProvider).withdraw(address(token), amount, address(this));
    }

    function collectRewards() public returns (uint256 collectedAmount) {
        uint256 newYieldFactor = ILendingPool(yieldProvider).getReserveNormalizedIncome(address(token));

        collectedAmount = (yieldProviderBalance * (newYieldFactor - lastYieldFactor)) / 1e27; // RAY
        pendingRewards += collectedAmount;

        lastYieldFactor = newYieldFactor;
    }

    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IAdapter).interfaceId;
    }
}
