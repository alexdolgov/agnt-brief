/**
 *Submitted for verification at BscScan.com on 2024-12-15
*/

/**
 *Submitted for verification at BscScan.com on 2024-05-31
*/

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


	eliteRingsSCT is based on eTHENA.sol

	eTHENA is a Liquid Staking Derivate for veTHE (Vote-Escrowed Thena NFT).
	It can be minted by burning (veTHE) veNFTs.
	eTHENA is an ERC20 based token.
	It can be staked with Guru Network to earn pure BNB instead of multiple small tokens.
	eTHENA can be further deposited into Kompound Protocol to mint iTHENA.

	iTHENA is a doubly-compounding interest-bearing veTHE at its core.
	iTHENA is an ERC4626 based token, which also adheres to the EIP20 Standard.
	iTHENA uses eTHENA's BNB yield to buyback more eTHENA from the open-market via JIT Aggregation.

	The price (in THE) to mint eTHENA goes up every epoch due to positive rebasing.
	This property gives iTHENA a "hyper-compounding" double-exponential trajectory against raw THE tokens.

*/

pragma solidity 0.8.9;

interface IERC20 {
	function totalSupply() external view returns (uint256);
	function balanceOf(address) external view returns (uint);
	function allowance(address, address) external view returns (uint);
	function transfer(address recipient, uint amount) external returns (bool);
	function transferFrom(address sender, address recipient, uint amount) external returns (bool);
	function approve(address, uint) external returns (bool);
}

interface IVotingEscrow {
	function create_lock_for(uint _value, uint _lock_duration, address _to) external returns (uint);
	function setApprovalForAll(address _who, bool _give) external;
}

interface IEliteRingsManager {
	function deposit(uint id) external returns(uint amt);
}
interface IStk_Teller{
	function deposit(IERC20 depositAsset, uint256 depositAmount, uint256 minimumMint) external payable returns (uint256 shares);
}

contract elTokenZap {
	address public immutable admin;
	bool internal _locked; /// @notice ftm.guru simple re-entrancy check

	IERC20 public constant ELT = IERC20(0xd4aA386bfCEEeDd9De0875B3BA07f51808592e22); // eliteRingsSCT
	IERC20 public constant SCT = IERC20(0xd3DCe716f3eF535C5Ff8d041c1A41C3bd89b97aE); // SCT
	IERC20 public constant STK = IERC20(0x4D85bA8c3918359c78Ed09581E5bc7578ba932ba); // stkSCT
	IVotingEscrow public constant VE = IVotingEscrow(0x0966CAE7338518961c2d35493D3EB481A75bb86B); // veUSD

	IEliteRingsManager public constant MGR = IEliteRingsManager(0xB0C855A7FB3716EBC1c4505218De4bF2186125Ba); // eliteRingsSCT Minter
	IStk_Teller public constant STK_Teller = IStk_Teller(0x5e39021Ae7D3f6267dc7995BB5Dd15669060DAe0);

	event Zap( address indexed intoken, uint inamt, uint veid, uint outamt);

	modifier lock() {
		require(!_locked,  "Re-entry!");
		_locked = true;
		_;
		_locked = false;
	}

	constructor() {
		SCT.approve(address(STK), type(uint256).max); // STK has a hook to Teller. STK.enter() auth via teller as entry point
		STK.approve(address(VE), type(uint256).max);
		VE.setApprovalForAll( address(MGR) , true );
		admin = msg.sender;
	}

    function onERC721Received(address, address,  uint256, bytes calldata) external view returns (bytes4) {
        require(msg.sender == address(VE), "!veToken");
        require(_locked, "unwanted");
        return bytes4(keccak256("onERC721Received(address,address,uint256,bytes)"));
    }

	function zapSCT(uint _samt, uint _min) external lock returns(uint) {
		require( SCT.transferFrom(msg.sender, address(this), _samt) , "E1");

		require( _samt == STK_Teller.deposit( SCT , _samt , _samt) , "E2");

		uint _veid = VE.create_lock_for( _samt , 10 weeks , address(this));

		uint _eamt = MGR.deposit( _veid );

		require( _eamt >= _min , "E3" );

		require( ELT.transfer( msg.sender , _eamt ) , "E4");

		emit Zap( address(SCT) , _samt , _veid , _eamt);

		return _eamt;
	}


	function rescue(address _t, uint _a) external lock {
		require(msg.sender == admin);
		IERC20 _tk = IERC20(_t);
		_tk.transfer(admin, _a);
	}

}

/*
	Community, Services & Enquiries:
		https://discord.gg/QpyfMarNrV

	Powered by Guru Network DAO ( 🦾 , 🚀 )
		Simplicity is the ultimate sophistication.
*/