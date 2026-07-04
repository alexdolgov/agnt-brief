// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import '../../interfaces/IAdapter.sol';
import '../CustodianStorage.sol';
import './extensions/IAaveLendingPool.sol';

/**
 * @title AaveV2V3Adapter
 * @author Atlendis Labs
 */
contract AaveV2V3Adapter is CustodianStorage, IAdapter {

    /**
     * @inheritdoc IAdapter
     */
    function previewRewards() external view returns(uint256) {
        uint256 lastYieldFactor = IAaveLendingPool(yieldProvider).getReserveNormalizedIncome(address(token));

        uint256 collectedAmount = (yieldProviderBalance * (lastYieldFactor - lastYieldFactor)) / RAY;
        return (pendingRewards + collectedAmount);
    }

    /**
     * @inheritdoc IAdapter
     */
    function supportsToken(address yieldProvider) external view returns(bool) {
        return IAaveLendingPool(yieldProvider).getReserveNormalizedIncome(address(token)) >= RAY;
    }

    /**
     * @inheritdoc IAdapter
     */
    function deposit(uint256 amount) external {
        collectRewards();

        depositedBalance += amount;
        yieldProviderBalance += (amount * RAY) / lastYieldFactor;

        IAaveLendingPool(yieldProvider).deposit(address(token), amount, address(this), 0);
    }

    /**
     * @inheritdoc IAdapter
     */
    function withdraw(uint256 amount) external {
        collectRewards();

        depositedBalance -= amount;
        yieldProviderBalance -= (amount * RAY) / lastYieldFactor;

        IAaveLendingPool(yieldProvider).withdraw(address(token), amount, address(this));
    }

    /**
     * @inheritdoc IAdapter
     */
    function collectRewards() public returns (uint256 collectedAmount) {
        uint256 newYieldFactor = IAaveLendingPool(yieldProvider).getReserveNormalizedIncome(address(token));

        collectedAmount = (yieldProviderBalance * (newYieldFactor - lastYieldFactor)) / RAY;
        pendingRewards += collectedAmount;

        lastYieldFactor = newYieldFactor;
    }

    /**
     * @inheritdoc IERC165
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IAdapter).interfaceId;
    }
}
