//SPDX-License-Identifier: MIT

contract ManualRateProvider {
    uint256 public rate;

    function getRate() external view returns (uint256) {
        return rate;
    }

    function setRate(uint256 _rate) external {
        rate = _rate;
    }
}

