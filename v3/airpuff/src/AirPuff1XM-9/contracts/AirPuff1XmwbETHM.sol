// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

import "./abstracts/AirPuff1XM.sol";

contract AirPuff1XmwbETHM is AirPuff1XM {

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _pt_bmwEth) external initializer {
        require(_pt_bmwEth != address(0), "AirPuff: LRT address is invalid");

        LRTAsset = _pt_bmwEth;
        MAX_BPS = 100_000;

        __Ownable_init(msg.sender);
        __Pausable_init();
        __ReentrancyGuard_init();
        __ERC20_init("AirPuff-Eigenpie1X", "bmwbETH1X");
    }
}
