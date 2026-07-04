// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.21;

import "../../abstracts/AirPuff1X.sol";

contract AirPuff1XAPUFF is AirPuff1X {

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _APUFF) external initializer {
        require(_APUFF != address(0), "AirPuff: LRT address is invalid");

        LRTAsset = _APUFF;
        MAX_BPS = 100_000;

        __Ownable_init();
        __Pausable_init();
        __ReentrancyGuard_init();
        __ERC20_init("AirPuff-APUFF1X", "bAPUFF1X");
    }
}
