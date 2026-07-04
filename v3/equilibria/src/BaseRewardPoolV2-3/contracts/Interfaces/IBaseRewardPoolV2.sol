// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

import "./IBaseRewardPool.sol";

interface IBaseRewardPoolV2 is IBaseRewardPool {
    function initialize(address _owner, address _booster) external;
}
