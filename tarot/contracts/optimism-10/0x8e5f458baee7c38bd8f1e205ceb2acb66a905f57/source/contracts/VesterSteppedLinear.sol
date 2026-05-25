pragma solidity =0.6.6;

import "./Vester.sol";

contract VesterSteppedLinear is Vester {
    constructor(
        address tarot_,
        address recipient_,
        uint vestingAmount_,
        uint vestingBegin_,
        uint vestingEnd_
    ) public Vester(tarot_, recipient_, vestingAmount_, vestingBegin_, vestingEnd_) {}

    function vestingCurve(uint x) public pure virtual override returns (uint y) {
        for (uint i = 0; i < 100e16; i += 1e16) {
            if (x < i) return y;
            y += 1e18;
        }
    }
}
