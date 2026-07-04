//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.19;

import "prb-math/contracts/PRBMathUD60x18.sol";

contract ExponentialPriceOracle {
    using PRBMathUD60x18 for uint256;

    uint256 public immutable timeStart;
    uint256 public immutable timeEnd;
    uint256 public immutable priceStart;
    uint256 public immutable priceEnd;
    uint256 public immutable lnChange;
    uint256 public immutable duration;
    string public name;

    constructor(uint256 _priceStart, uint256 _priceEnd, uint256 _timeStart, uint256 _timeEnd, string memory _name) {
        require(_timeEnd > block.timestamp);
        require(_priceEnd > _priceStart);
        priceStart = _priceStart;
        priceEnd = _priceEnd;
        timeStart = _timeStart;
        timeEnd = _timeEnd;
        duration = _timeEnd - _timeStart;
        lnChange = ((_priceEnd * 1e18) / _priceStart).ln();
        name = _name;
    }

    function pricePerShare() public view returns (uint256 _price) {
        uint256 _timePassed = block.timestamp - timeStart;
        if (_timePassed > duration) _price = priceEnd;
        else _price = priceStart.mul(((_timePassed * lnChange) / duration).exp());
    }

    function getPrices() external view returns (bool _isBadData, uint256 _priceLow, uint256 _priceHigh) {
        _priceLow = _priceHigh = 1e36 / pricePerShare();
    }
}
