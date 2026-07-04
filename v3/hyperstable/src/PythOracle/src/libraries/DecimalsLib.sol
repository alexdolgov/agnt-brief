// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

library DecimalsLib {
    function to18Decimals(uint256 _amount, uint8 _from) internal pure returns (uint256) {
        return toDecimals(_amount, _from, 18);
    }

    function toDecimals(uint256 _amount, uint8 _from, uint8 _to) internal pure returns (uint256) {
        if (_from == _to) {
            return _amount;
        } else if (_from < _to) {
            uint256 factor = 10 ** (_to - _from);
            return _amount * factor;
        } else {
            uint256 factor = 10 ** (_from - _to);
            return _amount / factor;
        }
    }
}
