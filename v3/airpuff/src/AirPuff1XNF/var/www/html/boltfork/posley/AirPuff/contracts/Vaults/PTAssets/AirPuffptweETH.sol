// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.21;

import "../../abstracts/AirPuff1XNF.sol";

contract AirPuffptweETH is AirPuff1XNF {

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _ptweETH) external initializer {
        require(_ptweETH != address(0), "AirPuff: ptweETH address is invalid");

        LRTAsset = _ptweETH;
        MAX_BPS = 100_000;

        __Ownable_init();
        __Pausable_init();
        __ReentrancyGuard_init();
        __ERC20_init("AirPuff-PendleptweETH", "bptweETH1X");
    }
}
