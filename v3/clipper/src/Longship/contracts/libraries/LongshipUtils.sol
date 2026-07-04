// SPDX-License-Identifier: Copyright 2022 Shipyard Software, Inc.
pragma solidity >=0.8.4;

import "@openzeppelin/contracts/utils/math/SafeCast.sol";
import "@prb/math/contracts/PRBMathSD59x18.sol";

library LongshipUtils {
    using SafeCast for int256;

    function exp(int256 x) external pure returns (uint256) {
        int256 x_formatted = x/(10**2);
        return (PRBMathSD59x18.exp(x_formatted)/(10**2)).toUint256();
    }

}