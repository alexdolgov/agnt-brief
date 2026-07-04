// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IPush {
    function claimFees() external;
}

interface IVoter {
    function gauges(address) external view returns (address);

    function factory() external view returns (address);
}

interface IFactory {
    function allPairs(uint256) external view returns (address);

    function allPairsLength() external view returns (uint256);
}

contract PharaohLegacyFeePusher {
    IVoter public immutable voter;
    IFactory public immutable factory;

    constructor(address _voter) {
        voter = IVoter(_voter);
        factory = IFactory(voter.factory());
    }

    function pushLegacyDirect(address[] calldata _pairs) external {
        uint256 i;
        for (; i < _pairs.length; ++i) {
            IPush gauge = IPush(voter.gauges(_pairs[i]));
            gauge.claimFees();
        }
    }

    function pushLegacyBlind(uint256 _start, uint256 _batchSize) external {
        uint256 length = factory.allPairsLength();
        uint256 end = _start + _batchSize;
        if (end > length) end = length;

        for (uint256 index = _start; index < end; ++index) {
            address gauge = voter.gauges(factory.allPairs(index));
            if (gauge != address(0)) {
                IPush(gauge).claimFees();
            }
        }
    }
}
