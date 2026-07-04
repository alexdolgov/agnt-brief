// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import {BaseGauge} from "./BaseGauge.sol";

contract FullRangeGauge is BaseGauge {
    constructor(address _abra, address _token, uint256 _rewardOverlapWindow)
        BaseGauge(_abra, _token, _rewardOverlapWindow)
    {}

    function initialize(string memory name_, string memory symbol_, address authority_) public initializer {
        __BaseGauge_init(name_, symbol_, authority_);
    }

    function yieldSources() external view override returns (address[] memory sources) {
        sources = new address[](1);
        sources[0] = UNDERLYING;
    }
}
