// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.21;

import "../../abstracts/AirPuffVault.sol";

contract AirPuffVaultezETH is AirPuffVault {

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _ezETH,
        address _wstETH,
        address _WETH
    ) external initializer {

        strategyAddresses.LRTAsset = _ezETH;
        strategyAddresses.wstETH = _wstETH;
        strategyAddresses.WETH = _WETH;

        MAX_BPS = 100_000;
        DENOMINATOR = 1_000;
        DECIMAL = 1e18;

        __Ownable_init();
        __ReentrancyGuard_init();
        __ERC20_init("AirPuff-Renzo", "bezETH");
    }
    
}
