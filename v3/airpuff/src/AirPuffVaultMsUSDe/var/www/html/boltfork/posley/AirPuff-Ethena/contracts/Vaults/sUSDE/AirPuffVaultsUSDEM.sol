// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.21;

import "../../abstracts/AirPuffVaultMsUSDe.sol";

contract AirPuffVaultsUSDEM is AirPuffVaultMsUSDe {

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _sUSDE,
        address _USDC
    ) external initializer {

        strategyAddresses.LRTAsset = _sUSDE;
        strategyAddresses.USDC = _USDC;
        strategyAddresses.borrowAsset = _USDC;

        MAX_BPS = 100_000;
        DENOMINATOR = 1_000;
        DECIMAL = 1e18;

        __Ownable_init();
        __Pausable_init();
        __ReentrancyGuard_init();
        __ERC20_init("AirPuff-Ethena", "bsUSDE");
    }
    
}
