// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract EnclabsTreveeVeUSD {
	bool internal initialized;
	string public name;
	string public symbol;
	uint16 public decimals;
	uint256  public totalSupply;
	mapping(address=>uint256) public balanceOf;
	mapping(address=>mapping(address=>uint256)) public allowance;
	address public owner;
	address public minter;
	event Approval(address indexed o, address indexed s, uint a);
	event Transfer(address indexed s, address indexed d, uint a);
	event OwnerChanged(address indexed m);
	event MinterChanged(address indexed m);
	modifier OnlyOwner() {
		require(msg.sender==owner, "Unknown authority!");
		_;
	}
	modifier OnlyMinter() {
		require(minter == msg.sender, "Unauthorized mint!");
		_;
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
	function setMinter(address _m) public OnlyOwner {
		minter = _m;
		emit MinterChanged(_m);
	}
	function setOwner(address _o) public OnlyOwner {
		owner = _o;
		emit OwnerChanged(_o);
	}
	function initialize(address _o, address _m, string memory _n, string memory _s, uint16 _dec) public {
		require(!initialized,"initialized!");
		initialized=true;
		owner=_o;
		emit OwnerChanged(_o);
		minter = _m;
		emit MinterChanged(_m);
		name = _n;
		symbol = _s;
		decimals = _dec;
	}
}