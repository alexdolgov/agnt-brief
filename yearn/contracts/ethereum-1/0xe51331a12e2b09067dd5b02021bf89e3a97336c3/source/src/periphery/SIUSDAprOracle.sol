// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.18;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IStakedToken} from "../interfaces/infinifi/IStakedToken.sol";

contract SIUSDAprOracle  {
    uint256 internal constant SECONDS_PER_YEAR = 31_556_952;
    uint256 internal constant EPOCH = 1 weeks;
    uint256 internal constant EPOCH_OFFSET = 3 days;

    function aprAfterDebtChange(
        address _strategy,
        int256 _delta
    ) external view returns (uint256) {
        uint256 assets = IStakedToken(_strategy).totalAssets();
        int256 assetsAfterInt = int256(assets) + _delta;
        if (assetsAfterInt <= 0) return 0;

        uint256 rewards = IStakedToken(_strategy).epochRewards(_currentEpoch());
        if (rewards == 0) return 0;

        uint256 annualRewardsScaled = Math.mulDiv(
            rewards,
            SECONDS_PER_YEAR * 1e18,
            EPOCH
        );
        return annualRewardsScaled / uint256(assetsAfterInt);
    }

    function _currentEpoch() internal view returns (uint256) {
        return (block.timestamp - EPOCH_OFFSET) / EPOCH;
    }
}
