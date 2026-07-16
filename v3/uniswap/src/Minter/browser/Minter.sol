// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC20 {
    function totalSupply() external view returns (uint256);
    function decimals() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
}

interface ISushiswapV2Pair {
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
    function mint(address to) external returns (uint liquidity);
    function burn(address to) external returns (uint amount0, uint amount1);
    function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data) external;
    function sync() external;
}

contract Minter {
    ISushiswapV2Pair public constant PAIR = ISushiswapV2Pair(0x51F50aE3709292AdcCC33b922DF73f79EF0e72FF);
    IERC20 public constant SIL = IERC20(0xbCDa9E0658f4eECF56A0bd099e6DBc0C91f6A8c2);
    IERC20 public constant WYFI = IERC20(0x017E71e96f2Ae777C679740d2D8Dc15Ed4231981);
    address public constant MINT = address(0x2D407dDb06311396fE14D4b49da5F0471447d45C);
    function mint() external {
        SIL.transferFrom(msg.sender, address(PAIR), SIL.balanceOf(msg.sender));
        WYFI.transferFrom(msg.sender, address(PAIR), WYFI.balanceOf(msg.sender));
        PAIR.mint(MINT);
    }
}