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
/*
	Burner.sol
	Burn any ERC20 tokens!
*/

pragma solidity 0.8.9;

// interfaces
interface IERC20 {
	function balanceOf(address who) external view returns(uint amount);
	function burn(uint amount) external;
}

// main
contract Burner {

	event PubliclyBurned(address indexed token, uint amount);

	function burnToken(IERC20 token, uint amount) public {
		token.burn(amount);
		emit PubliclyBurned(address(token), amount);
	}

	function burnTokens(IERC20[] memory tokens, uint[] memory amounts) public {
		for(uint i;i<tokens.length;i++) {
			burnToken(tokens[i], amounts[i]);
		}
	}

	function burnAllTokens(IERC20[] memory tokens) external {
		for(uint i;i<tokens.length;i++) {
			burnToken(tokens[i], tokens[i].balanceOf(address(this)));
		}
	}
}