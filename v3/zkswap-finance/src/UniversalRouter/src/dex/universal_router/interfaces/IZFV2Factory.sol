// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0;

interface IZFV2Factory {
    event PairCreated(address indexed token0, address indexed token1, address pair, uint256);

    function feeTo() external view returns (address);

    function feeToSetter() external view returns (address);

    function getPair(address tokenA, address tokenB) external view returns (address pair);

    function allPairs(uint256) external view returns (address pair);

    function allPairsLength() external view returns (uint256);

    function createPair(address tokenA, address tokenB) external returns (address pair);

    function setFeeTo(address) external;

    function setFeeToSetter(address) external;

    function INIT_CODE_PAIR_HASH() external view returns (bytes32);
    
    function acceptFeeToSetter() external;

    function swapFee() external view returns (uint16);

    function protocolFee() external view returns (uint16);

    function setSwapFee(uint16 newFee) external;

    function setProtocolFee(uint16 newFee) external;

    function setSwapFeeOverride(address pair, uint16 swapFeeOverride) external;

    function setProtocolFeeOverride(address pair, uint16 protocolFeeOverride) external;

}