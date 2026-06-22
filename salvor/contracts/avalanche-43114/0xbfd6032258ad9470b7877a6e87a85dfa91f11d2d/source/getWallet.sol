// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;



interface IJoe {
    function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data) external;
    function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data, address referrer) external;
    function getReserves() external view returns (uint112 _reserve0, uint112 _reserve1, uint32 _blockTimestampLast);
    function factory() external view returns (address);
    function getPair(address tokenA, address tokenB) external view returns (address pair);
    function token0() external view returns (address);
    function token1() external view returns (address);
}


interface IERC20 {
    function totalSupply() external view returns (uint256);
    function balanceOf(address who) external view returns (uint256);
    function allowance(address owner, address spender) external view returns (uint256);
    function transfer(address to, uint256 value) external returns (bool);
    function approve(address spender, uint256 value) external returns (bool);
    function transferFrom(address from, address to, uint256 value) external returns (bool);
    function deposit() external payable;

    event Transfer(
        address indexed from,
        address indexed to,
        uint256 value
    );

    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
}

contract getWallet {
    
    address private WAVAX = 0xB31f66AA3C1e785363F0875A1B74E27b85FD66c7;
    address private KOVIN = 0x694200a68B18232916353250955bE220e88c5cBB;
    address private factory = 0x9Ad6C38BE94206cA50bb0d90783181662f0Cfa10;
    address private _WAVAXUSDC = 0xf4003F4efBE8691B60249E6afbD307aBE7758adb;

    constructor(){}

    function getPriceAndBalanceForTokens(address user, address[] memory token) public view returns (uint256 balanceAVAX, uint256[] memory balances, uint112 reserveAVAXUSDC, uint112 reserveUSDC, uint112[] memory reserveTOKENs, uint112[] memory reserveAVAXTOKENs) {
        balances = new uint256[](token.length);
        reserveTOKENs = new uint112[](token.length);
        reserveAVAXTOKENs = new uint112[](token.length);

        (uint112 reserve0, uint112 reserve1,) = IJoe(_WAVAXUSDC).getReserves();
        if(reserve0 > reserve1){
            reserveAVAXUSDC = reserve0;
            reserveUSDC = reserve1;
        }
        else{
            reserveAVAXUSDC = reserve1;
            reserveUSDC = reserve0;
        }

        balanceAVAX = user.balance;

        for(uint256 i=0; i<token.length; i++){
            balances[i] = IERC20(token[i]).balanceOf(user);
        
            (reserve0, reserve1,) = IJoe(IJoe(factory).getPair(token[i], WAVAX)).getReserves();
            address token0 = IJoe(IJoe(factory).getPair(token[i], WAVAX)).token0();
            if(token0 == WAVAX){
                reserveTOKENs[i] = reserve1;
                reserveAVAXTOKENs[i] = reserve0;
            }
            else{
                reserveTOKENs[i] = reserve0;
                reserveAVAXTOKENs[i] = reserve1;
            }

        }
    }

}