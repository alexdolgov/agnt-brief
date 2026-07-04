/**
 *Submitted for verification at blastscan.io on 2024-11-19
*/

/**
 *Submitted for verification at basescan.org on 2024-02-05
*/

/**
 *Submitted for verification at ftmscan.com on 2024-01-29
*/

//	Contract: Eliteness Token (Generic)
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


	./elitenessERC20.sol

	Eliteness ERC20 are base layer tokens of Eliteness.Network products.
	They are Standard ERC20 tokens and can be minted by minters and burned by holders.
	Note: Tokens must be initialized post deployment!


*/


pragma solidity 0.8.9;

contract ElitenessERC20 {
	bool internal initialized;
	string public name;
	string public symbol;
	uint256  public totalSupply;
	mapping(address=>uint256) public balanceOf;
	mapping(address=>mapping(address=>uint256)) public allowance;
	address public owner;
	mapping(address=>bool) public isMinter;
	event Approval(address indexed o, address indexed s, uint a);
	event Transfer(address indexed s, address indexed d, uint a);
	event OwnerChanged(address indexed m);
	event MinterChanged(address indexed m, bool indexed s);
	modifier OnlyOwner() {
		require(msg.sender==owner, "Unknown authority!");
		_;
	}
	modifier OnlyMinter() {
		require(isMinter[msg.sender], "Unauthorized mint!");
		_;
	}
	function decimals() external pure returns (uint8) {
		return 18;
	}
	function approve(address _s, uint _a) public returns (bool) {
		allowance[msg.sender][_s] = _a;
		emit Approval(msg.sender, _s, _a);
		return true;
	}
	function transfer(address _d, uint _a) public returns (bool) {
		return transferFrom(msg.sender, _d, _a);
	}
	function transferFrom(address _s, address _d, uint _a) public returns (bool) {
		require(balanceOf[_s] >= _a, "Insufficient");
		require(_d!=address(0), "Please burn()");
		if (_s != msg.sender && allowance[_s][msg.sender] != type(uint256).max) {
			require(allowance[_s][msg.sender] >= _a, "Not allowed!");
			allowance[_s][msg.sender] -= _a;
		}
		balanceOf[_s] -= _a;
		balanceOf[_d] += _a;
		emit Transfer(_s, _d, _a);
		return true;
	}
	function mint(address _w, uint256 _a) public OnlyMinter returns (bool) {
		totalSupply+=_a;
		balanceOf[_w]+=_a;
		emit Transfer(address(0), _w, _a);
		return true;
	}
	function burn(uint256 _a) public returns (bool) {
		require(balanceOf[msg.sender]>=_a, "Insufficient");
		totalSupply-=_a;
		balanceOf[msg.sender]-=_a;
		emit Transfer(msg.sender, address(0), _a);
		return true;
	}
	function setMinter(address _m, bool _b) public OnlyOwner {
		isMinter[_m] = _b;
		emit MinterChanged(_m, _b);
	}
	function setOwner(address _o) public OnlyOwner {
		owner = _o;
		emit OwnerChanged(_o);
	}
	function initialize(address _o, address _m, string memory _n, string memory _s) public {
		require(!initialized,"initialized!");
		initialized=true;
		owner=_o;
		emit OwnerChanged(_o);
		isMinter[_m]=true;
		emit MinterChanged(_m, true);
		name = _n;
		symbol = _s;
	}
}