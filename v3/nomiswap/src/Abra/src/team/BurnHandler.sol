// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import "@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "../token/Abra.sol";
import "../affiliate/IBurnCallback.sol";
import "./PoolDistributor.sol";


contract BurnHandler is AccessManagedUpgradeable, UUPSUpgradeable, IBurnCallback {

    uint256 public constant PRECISION = 64;
    PoolDistributor public immutable teamPool;
    PoolDistributor public immutable corePool;

    uint256 public constant teamK = uint(1 << PRECISION) * 5 / (100 - 15);
    uint256 public constant coreK = uint(1 << PRECISION) * 10 / (100 - 15);

    constructor(address teamPool_, address corePool_) {
        _disableInitializers();
        teamPool = PoolDistributor(teamPool_);
        corePool = PoolDistributor(corePool_);
    }

    function initialize(address authority_) public initializer {
        __AccessManaged_init(authority_);
        __UUPSUpgradeable_init();
    }

    function handleBurn(uint256 amount) external override restricted {
        uint256 teamBurn = amount * teamK >> PRECISION;
        teamPool.burn(teamBurn);

        uint256 coreBurn = amount * coreK >> PRECISION;
        corePool.burn(coreBurn);
    }

    function _authorizeUpgrade(address) internal override restricted {}

}