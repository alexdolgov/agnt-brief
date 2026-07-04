// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.25;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";

contract SyrupUSDCOracle {
    function latestAnswer() public view returns (int256) {
        return int256(
            IERC4626(0x80ac24aA929eaF5013f6436cdA2a7ba190f5Cc0b).convertToAssets(
                uint256(SyrupUSDCOracle(0x8fFfFfd4AfB6115b954Bd326cbe7B4BA576818f6).latestAnswer())
            )
        );
    }
}
