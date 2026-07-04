// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.10;

import './IVVSV3Pool.sol';
import './IVVSV3LmPool.sol';

interface IVVSV3LmPoolDeployer {
    function deploy(IVVSV3Pool pool) external returns (IVVSV3LmPool lmPool);
}
