/**
 *Submitted for verification at ftmscan.com on 2023-10-18
*/

//	Contract: El Token
//	Author: Sam, @i543
//
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

	SPDX-License-Identifier: UNLICENSED


	./elToken.sol

	elTokens are base layer tokens of Eliteness.Network products.
	They are Standard ERC20 tokens and can be minted by minters and burned by holders.

*/

pragma solidity 0.8.9;

contract ElToken {
	string public name;
	string public symbol;
	uint8  public decimals = 18;
	uint256  public totalSupply;
	mapping(address=>uint256) public balanceOf;
	mapping(address=>mapping(address=>uint256)) public allowance;
	address public dao;
	address public minter;
	mapping(address=>bool) public minters;
	event  Approval(address indexed o, address indexed s, uint a);
	event  Transfer(address indexed s, address indexed d, uint a);
	event  Minter(address indexed m, bool indexed s);
	modifier DAO() {
		require(msg.sender==dao, "Unknown!");
		_;
	}
	modifier MINTERS() {
		require(msg.sender==minter || minters[msg.sender], "Unauthorized!");
		_;
	}
	function approve(address s, uint a) public returns (bool) {
		allowance[msg.sender][s] = a;
		emit Approval(msg.sender, s, a);
		return true;
	}
	function transfer(address d, uint a) public returns (bool) {
		return transferFrom(msg.sender, d, a);
	}
	function transferFrom(address s, address d, uint a) public returns (bool) {
		require(balanceOf[s] >= a, "Insufficient");
		require(d!=address(0), "Please burn()");
		if (s != msg.sender && allowance[s][msg.sender] != type(uint256).max) {
			require(allowance[s][msg.sender] >= a, "Not allowed!");
			allowance[s][msg.sender] -= a;
		}
		balanceOf[s] -= a;
		balanceOf[d] += a;
		emit Transfer(s, d, a);
		return true;
	}
	function mint(address w, uint256 a) public MINTERS returns (bool) {
		totalSupply+=a;
		balanceOf[w]+=a;
		emit Transfer(address(0), w, a);
		return true;
	}
	function burn(uint256 a) public returns (bool) {
		require(balanceOf[msg.sender]>=a, "Insufficient");
		totalSupply-=a;
		balanceOf[msg.sender]-=a;
		emit Transfer(msg.sender, address(0), a);
		return true;
	}
	function setMinter(address m) public DAO {
		minter = m;
	}
	function setMinters(address m, bool b) public DAO {
		minters[m] = b;
		emit Minter(m, b);
	}
	function setDAO(address d) public DAO {
		dao = d;
	}
	function setMeta(string memory _n, string memory _s) public DAO {
		name = _n;
		symbol = _s;
	}
	constructor() {
		dao=msg.sender;
		minter=msg.sender;
		emit Minter(msg.sender, true);
	}
}