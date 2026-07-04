// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.21;

import "./abstracts/AirPuffVaultLiquid.sol";

contract AirPuffVaultLiquidM is AirPuffVaultLiquid {

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _WETH) external initializer {

        strategyAddresses.WETH = _WETH;
        strategyAddresses.borrowAsset = _WETH;

        MAX_BPS = 100_000;
        DENOMINATOR = 1_000;
        DECIMAL = 1e18;

        __Ownable_init();
        __Pausable_init();
        __ReentrancyGuard_init();
        __ERC20_init("AirPuff-Liquid", "bLiquid");
    }
    
}
