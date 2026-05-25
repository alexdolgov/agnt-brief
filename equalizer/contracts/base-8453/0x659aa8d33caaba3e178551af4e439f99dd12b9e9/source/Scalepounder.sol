/*


FFFFF  TTTTTTT  M   M         GGGGG  U    U  RRRRR     U    U
FF       TTT   M M M M       G       U    U  RR   R    U    U
FFFFF    TTT   M  M  M      G  GGG   U    U  RRRRR     U    U
FF       TTT   M  M  M   O  G    G   U    U  RR R      U    U
FF       TTT   M     M       GGGGG    UUUU   RR  RRR    UUUU

						Contact us at:
			https://discord.com/invite/QpyfMarNrV
					https://t.me/FTM1337


	Community Mediums:
		https://medium.com/@ftm1337
		https://twitter.com/ftm1337



   Contributors:
    -   543#3017 (Sam, @i543), ftm.guru, Eliteness.network


  SPDX-License-Identifier: UNLICENSED

*/

pragma solidity 0.7.6;

interface IT {
	function balanceOf(address who) external view returns(uint bal);
	function transfer(
		address dst,
		uint amt
	) external view returns(bool ok);
	function transferFrom(
		address src,
		address dst,
		uint amt
	) external view returns(bool ok);
}

interface IR {

	function swapExactTokensForTokensSimple(
		uint amountIn,
		uint amountOutMin,
		address tokenFrom,
		address tokenTo,
		bool stable,
		address to,
		uint deadline
	) external returns (
		uint[] memory amounts
	);

	function addLiquidity(
		address tokenA,
		address tokenB,
		bool stable,
		uint amountADesired,
		uint amountBDesired,
		uint amountAMin,
		uint amountBMin,
		address to,
		uint deadline
	) external returns (
		uint amountA,
		uint amountB,
		uint liquidity
	);

}

contract Scalepounder {
	function scaleIn(uint amt, uint min) external returns(uint lpd) {
		return scaleInTo(amt, min, msg.sender);
	}
	function scaleInTo(uint amt, uint min, address ben) public returns(uint lpd) {
		IT(0x54016a4848a38f257B6E96331F7404073Fd9c32C)
		.transferFrom(
			msg.sender,
			address(this),
			amt
		);
		IR(0x2F87Bf58D5A9b2eFadE55Cdbd46153a0902be6FA)
		.swapExactTokensForTokensSimple(
			amt/2,
			1,
			0x54016a4848a38f257B6E96331F7404073Fd9c32C,
			0x4200000000000000000000000000000000000006,
			false,
			address(this),
			block.timestamp
		);
		(,,lpd) = IR(0x2F87Bf58D5A9b2eFadE55Cdbd46153a0902be6FA)
		.addLiquidity(
			0x54016a4848a38f257B6E96331F7404073Fd9c32C,
			0x4200000000000000000000000000000000000006,
			false,
			amt/2,
			IT(0x4200000000000000000000000000000000000006).balanceOf(address(this)),
			1,
			1,
			ben,
			block.timestamp
		);
		require(lpd>min,"!min+");
		{
			uint un = IT(0x2F87Bf58D5A9b2eFadE55Cdbd46153a0902be6FA).balanceOf(address(this));
			if(un>0) require(IT(0x2F87Bf58D5A9b2eFadE55Cdbd46153a0902be6FA).transfer(msg.sender, un));
		}
		{
			uint un = IT(0x4200000000000000000000000000000000000006).balanceOf(address(this));
			if(un>0) require(IT(0x4200000000000000000000000000000000000006).transfer(msg.sender, un));
		}
	}
}