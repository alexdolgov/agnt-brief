pragma solidity ^0.8.0;

abstract contract MockStake {
    mapping(address => uint256) public mockConvertMapping;

    function setMockConvertStakeBUSD(uint256 _mockConvert, address _trader)
        public
    {
        mockConvertMapping[_trader] = _mockConvert;
    }

    function convertAmountStakeCanCommit(address holder)
        public
        view
        returns (uint256)
    {
        return mockConvertMapping[holder];
    }
}
