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


	elToken_SmartOptionsRouter.sol

	veNFT -----------------------> elToken
	veNFT ---> (elToken) --------> GAS
	oToken --> (veNFT) ----------> elToken

	veNFT -> elToken
	veNFT -> GAS
	oToken -> elToken
	oToken -> GAS
	Token -> elToken

	o: oToken
	e: elToken
	v: veNFT
	t: baseToken
	g: gasCoin

	20 directions, 60 routes

*/

pragma solidity 0.8.9;

interface IERC20 {
	function totalSupply() external view returns (uint256);
	function transfer(address recipient, uint amount) external returns (bool);
	function balanceOf(address) external view returns (uint);
	function transferFrom(address sender, address recipient, uint amount) external returns (bool);
}
interface IelToken is IERC20 {
}
interface IERC165 {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}
interface IVotingEscrow {
	function setApprovalForAll(address _who, bool _give) external;
}
interface IoToken is IERC20 {
	function exerciseVe( uint256 _amount, uint256 _maxPaymentAmount, address _recipient, uint256 _deadline) external returns (uint256 _nftId);
}

interface IelTokenDepositor {
	function deposit(uint _id) external returns (uint _elAmt);
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

contract oTokenToElToken {
	address public dao;
	IelToken public elToken;
	IVotingEscrow public veToken;
	IoToken public oToken;
	IelTokenDepositor public elMint;
	bool internal _locked;	/// @notice ftm.guru simple re-entrancy check
	uint FEE = 0.005 ether;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	modifier lock() {
		require(!_locked,  "Re-entry!");
		_locked = true;
		_;
		_locked = false;
	}
	modifier DAO() {
		require(msg.sender==dao, "Unauthorized!");
		_;
	}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	event Deposit(address indexed, uint indexed, uint, uint, uint);

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	constructor(address ve, address el, address ot, address de) {
		dao=msg.sender;
		veToken = IVotingEscrow(ve);
		elToken = IelToken(el);
		oToken = IoToken(ot);
		elMint = IelTokenDepositor(de);
		veToken.setApprovalForAll(ot,true);
	}

	// Custom Calls
	function customCall(address _to, bytes calldata _data) public payable DAO returns(bytes memory) {return customCall(_to, 0, _data) ;}

	function customCall(address[] memory _tos, uint256[] memory _amounts, bytes[] calldata _datas) public payable DAO returns(bytes[] memory retdata) {
		require(_tos.length==_amounts.length&&_tos.length==_datas.length,"Args Mismatch");
		for(uint256 i=0;i<_tos.length;i++) {
			retdata[i] = customCall(_tos[i],_amounts[i],_datas[i]);
		}
	}

	function customCall(address to, uint256 amount, bytes calldata _data) public payable DAO lock returns(bytes memory) {
		(bool success, bytes memory returndata) = to.call{value:amount}(_data);
		if (!success) {
			if (returndata.length > 0) {
				assembly {
					let returndata_size := mload(returndata)
					revert(add(32, returndata), returndata_size)
				}
			} else {
				revert("CC: Failed!");
			}
		} else {
			return returndata;
		}
	}

	// Callbacks

    function onERC721Received(address, address,  uint256, bytes calldata) external view returns (bytes4) {
        require(msg.sender == address(veToken), "!veToken");
        return bytes4(keccak256("onERC721Received(address,address,uint256,bytes)"));
    }

    // Main

    function exerciseWrap(uint _o) public lock returns (uint) {
    	oToken.transferFrom(msg.sender, address(this), _o);
		uint _fee = FEE;
		if(_fee > 0) {
			_fee = _o * _fee / 1e18;
			oToken.transfer(dao, _fee);
			_o = _o - _fee;
		}
		uint _nft = oToken.exerciseVe(_o, 0, address(this), block.timestamp);
		uint _elAmt = elMint.deposit(_nft);
		elToken.transfer(msg.sender, _elAmt);
		return _elAmt;
    }
	function setDAO(address d) public DAO {
		dao = d;
	}
	function setFee(uint d) public DAO {
		FEE = d;
	}
	function setup(address ve, address el, address ot, address de) public DAO {
		veToken = IVotingEscrow(ve);
		elToken = IelToken(el);
		oToken = IoToken(ot);
		elMint = IelTokenDepositor(de);
	}
	function rescue(address _t, uint _a) public DAO lock {
		IERC20 _tk = IERC20(_t);
		_tk.transfer(dao, _a);
	}
}

/*
	Community, Services & Enquiries:
		https://discord.gg/QpyfMarNrV

	Powered by Guru Network DAO ( 🦾 , 🚀 )
		Simplicity is the ultimate sophistication.
*/