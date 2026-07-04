// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./IERC20.sol";
import "./IPancakePair.sol";
import "../utils/SafeMath.sol";


contract MockBNBandBUSD is Ownable, IPancakePair {
    using SafeMath for uint256;
    
    IERC20 private _token0;
    IERC20 private _token1;
    address private _factory;
    uint256 private _reserve0;
    uint256 private _reserve1;

    constructor(address assignToken0, address assignToken1, address assignFactory, uint256 reserve0, uint256 reserve1) {
        _token0 = IERC20(assignToken0);
        _token1 = IERC20(assignToken1);
        _factory = assignFactory;
        _reserve0 = reserve0;
        _reserve1 = reserve1;
    }

    function name() external pure override returns (string memory) {
        return "Mock BNB and BUSD";
    }

    function symbol() external pure override returns (string memory) {
        return "BNB-BUSD";
    }

    function decimals() external pure override returns (uint8) {
        return 18;
    }

    function totalSupply() external pure override returns (uint) {
        return uint256(9999).mul(1E18);
    }

    function balanceOf(address owner) external pure override returns (uint) {
        require(owner != address(0));

        return uint256(1).mul(256);
    }

    function allowance(address owner, address spender) external pure override returns (uint) {
        require(owner != address(0));
        require(spender != address(0));

        return uint256(1).mul(256);
    }

    function approve(address spender, uint value) external pure override returns (bool) {
        require(spender != address(0));
        require(value > 0);

        return true;
    }

    function transfer(address to, uint value) external override returns (bool) {
        require(to != address(0));
        require(value > 0);

        emit Transfer(msg.sender, to, value);

        return true;
    }

    function transferFrom(address from, address to, uint value) external pure override returns (bool) {
        require(from != address(0));
        require(to != address(0));
        require(value > 0);

        return true;
    }

    function DOMAIN_SEPARATOR() external pure override returns (bytes32) {
        return "Hello";
    }

    function PERMIT_TYPEHASH() external pure override returns (bytes32) {
        return "Hello";
    }
    function nonces(address owner) external pure override returns (uint) {
        require(owner != address(0));

        return 0;
    }

    function permit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external override {

    }

    function MINIMUM_LIQUIDITY() external pure override returns (uint) {
        return 1000;
    }

    function factory() external view override returns (address) {
        return _factory;
    }
    function token0() external view override returns (address) {
        return address(_token0);
    }

    function token1() external view override returns (address) {
        return address(_token1);
    }

    function getReserves() external view override returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast) {
        return (uint112(_reserve0), uint112(_reserve1), 0);
    }

    function setReserve(uint256 reserve0, uint256 reserve1) external {
        _reserve0 = reserve0;
        _reserve1 = reserve1;
    }

    function price0CumulativeLast() external pure override returns (uint) {
        return 0;
    }
    function price1CumulativeLast() external pure override returns (uint) {
        return 0;
    }

    function kLast() external pure override returns (uint) {
        return 0;
    }

    function mint(address to) external override returns (uint liquidity) {

    }

    function burn(address to) external override returns (uint amount0, uint amount1) {

    }

    function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data) external override {

    }

    function skim(address to) external override {

    }

    function sync() external override {

    }

    function initialize(address, address) external override {

    }
} 