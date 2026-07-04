// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IHyperpieFactory {
    error IdenticalTokenAddresses();
    error PairAlreadyExists();
    error NotAuthorized();
    error FeeTooHigh();
    error ZeroFee();
    error InvalidPair();
    error FeeInvalid();

    event PairCreated(address indexed token0, address indexed token1, bool stable, address pair, uint256 index);
    event SetCustomFee(address indexed pair, uint256 fee);
    event SetFee(bool stable, uint256 fee);
    event SetHyperpiePairImp(address indexed hyperpiePairImp);
    event UpdatedHyperpieConfig(address indexed hyperpieConfig);

    function getPair(address tokenA, address tokenB, bool stable) external view returns (address);
    function createPair(address tokenA, address tokenB, bool stable) external returns (address pair);
    function setFee(bool stable, uint256 fee) external;
    function setCustomFee(address pair, uint256 fee) external;
    function getFee(address pair, bool stable) external view returns (uint256);
    function isPair(address pair) external view returns (bool);
}
