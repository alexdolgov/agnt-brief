// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import '../../interfaces/IAdapter.sol';
import '../CustodianStorage.sol';

/**
 * @title NeutralAdapter
 * @author Atlendis Labs
 */
contract NeutralAdapter is CustodianStorage, IAdapter {
    function deposit(uint256 amount) external {
        depositedBalance += amount;
    }

    function withdraw(uint256 amount) external {
        depositedBalance -= amount;
    }

    function collectRewards() external pure returns (uint256 collectedAmount) {
        collectedAmount = 0;
    }

    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IAdapter).interfaceId;
    }
}
