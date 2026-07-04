// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

import "./BP.sol";

library StakingPowerLibrary {

    struct StakingPowerData {
        // uint32 in seconds = 136 years 
        uint32 stakingPowerInitialBreak;
        uint32 participationBreak;
    }

    function info(StakingPowerData storage self) internal view returns (uint32 _stakingPowerInitialBreak, uint32 _participationBreak) {
        _stakingPowerInitialBreak = self.stakingPowerInitialBreak;
        _participationBreak = self.participationBreak;
    }
    
    function canParticipate(StakingPowerData storage self, uint _lastIDOParticipation) internal view returns (bool) {
        return _lastIDOParticipation == 0 || block.timestamp - _lastIDOParticipation >= self.participationBreak;
    }

    function expectedStakingPower(
        StakingPowerData storage self, 
        uint _currentStakingPowerOf,
        uint _amountInToken,
        uint64 _startDateInSeconds,
        uint16 _tierBoosterInBP
    ) internal view returns (uint) {
        if (_currentStakingPowerOf > 0) {
            return _currentStakingPowerOf;
        }
        if (_amountInToken == 0 || _startDateInSeconds + self.stakingPowerInitialBreak > block.timestamp) {
            return 0;
        }
        return (_amountInToken * (BP.DECIMAL_FACTOR + _tierBoosterInBP)) / BP.DECIMAL_FACTOR;
    }

    function setInfo(
        StakingPowerData storage self,
        uint32 _stakingPowerInitialBreak,
        uint32 _participationBreak
    ) internal {
        self.stakingPowerInitialBreak = _stakingPowerInitialBreak;
        self.participationBreak = _participationBreak;
    }
}
