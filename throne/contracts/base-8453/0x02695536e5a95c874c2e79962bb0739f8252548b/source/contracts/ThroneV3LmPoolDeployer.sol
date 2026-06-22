// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity =0.7.6;

import '@throneexchange/v3-core/contracts/interfaces/IThroneV3Factory.sol';
import '@throneexchange/v3-periphery/contracts/interfaces/INonfungiblePositionManager.sol';

import './ThroneV3LmPool.sol';

/// @dev This contract is for Master Chef to create a corresponding LmPool when
/// adding a new farming pool. As for why not just create LmPool inside the
/// Master Chef contract is merely due to the imcompatibility of the solidity
/// versions.
contract ThroneV3LmPoolDeployer {
    uint8 public immutable VERSION = 1;

    address public immutable masterChef;

    modifier onlyMasterChef() {
        require(msg.sender == masterChef, 'Not MC');
        _;
    }

    constructor(address _masterChef) {
        masterChef = _masterChef;
    }

    /// @dev Deploys a LmPool
    /// @param pool The contract address of the ThroneExchange V3 pool
    function deploy(IThroneV3Pool pool) external onlyMasterChef returns (IThroneV3LmPool lmPool) {
        lmPool = new ThroneV3LmPool(address(pool), masterChef, uint32(block.timestamp));
        IThroneV3Factory(INonfungiblePositionManager(IMasterChefV3(masterChef).nonfungiblePositionManager()).factory())
            .setLmPool(address(pool), address(lmPool));
    }
}
