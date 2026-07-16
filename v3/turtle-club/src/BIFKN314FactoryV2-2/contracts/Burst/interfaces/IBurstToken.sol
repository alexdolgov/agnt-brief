// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "../../interfaces/IERC314.sol";

interface IBurstToken is IERC314 {
    function curveComplete() external view returns (bool);

    function completeTheCurve() external;

    function initializeBurstToken(address burstFactory_) external;
}
