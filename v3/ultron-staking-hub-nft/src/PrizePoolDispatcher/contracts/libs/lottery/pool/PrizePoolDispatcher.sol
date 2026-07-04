//SPDX-License-Identifier: UNLICENSED

pragma solidity >0.8.0 <0.9.0;

import "../../../abstract/ADispatcher.sol";
import "../../../interfaces/IDispatcherStorage.sol";

contract PrizePoolDispatcher is ADispatcher {
    /// @dev need to set hardcoded address after DispatherStorage deployed
    function _getTarget() internal view override returns (address) {
        IDispatcherStorage dStorage = IDispatcherStorage(
            0x3d82Af6c4aab49FE8aAd0ed1370C1f788bCEdc50
        );
        return dStorage.getAddress();
    }
}
