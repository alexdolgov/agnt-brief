// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

import "./abstracts/AirPuff1X.sol";

contract AirPuff1XPteETH is AirPuff1X {

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _pt_eEth) external initializer {
        require(_pt_eEth != address(0), "AirPuff: LRT address is invalid");

        LRTAsset = _pt_eEth;
        MAX_BPS = 100_000;

        __Ownable_init(msg.sender);
        __Pausable_init();
        __ReentrancyGuard_init();
        __ERC20_init("AirPuff-PendlepteETH1X", "bpteETH1X");
    }
}
