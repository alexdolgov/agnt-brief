// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import '../../interfaces/IAdapter.sol';
import '../CustodianStorage.sol';

/**
 * @title NeutralAdapter
 * @author Atlendis Labs
 */
contract NeutralAdapter is CustodianStorage, IAdapter {
    /**
     * @inheritdoc IAdapter
     */
    function previewRewards() external pure returns(uint256) {
        return 0;
    }

    /**
     * @inheritdoc IAdapter
     */
    function supportsToken(address) external pure returns(bool) {
        return true;
    }

    /**
     * @inheritdoc IAdapter
     */
    function deposit(uint256 amount) external {
        depositedBalance += amount;
    }

    /**
     * @inheritdoc IAdapter
     */
    function withdraw(uint256 amount) external {
        depositedBalance -= amount;
    }

    /**
     * @inheritdoc IAdapter
     */
    function collectRewards() external pure returns (uint256) {
        return 0;
    }

    /**
     * @inheritdoc IERC165
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IAdapter).interfaceId;
    }
}
