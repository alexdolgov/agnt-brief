// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

import "./abstracts/AirPuffVault.sol";

contract AirPuffVaultMNT is AirPuffVault {

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _mnt, address _lending) external initializer {

        strategyAddresses.MNT = _mnt;
        LendingVault = _lending;

        MAX_BPS = 100_000;
        DENOMINATOR = 1_000;
        DECIMAL = 1e18;

        __Ownable_init();
        __Pausable_init();
        __ReentrancyGuard_init();
        __ERC20_init("AirPuff-Mantle", "bMantle");
    }
    
}
