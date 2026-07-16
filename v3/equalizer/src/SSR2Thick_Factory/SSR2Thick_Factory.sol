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




    ▀█▀░█░█░█░█▀░█▄▀
    ░█░░█▀█░█░█▄░█▀▄

	Thick Liquidity Protocol
	> Network agnostic Decentralized Exchange for ERC20 tokens


   Contributors:
    -   543#3017 (Sam, @i543), ftm.guru, Eliteness.network


  SPDX-License-Identifier: MIT

*/
/*
	Users deposit an NFP, an NFT minted from 2THICK
	Depositing claims any pending fee and sends to user
	User can claim rewards from Partner Reward distributor using Merkle trees, from Steer, etc.
	Users withdraw their NFP from this contract.
	Withdrawing claims any pending fee and sends to a Liquidity Marketplace, like Equalizer, etc.
*/

pragma solidity 0.8.28;

interface IERC20 {
	function name() external view returns(string memory);
	function symbol() external view returns(string memory);
	function decimals() external view returns(uint8);
}

interface I_2ThickPool {
    function token0() external view returns (IERC20);
    function token1() external view returns (IERC20);
    function fee() external view returns (uint24);
    function tickSpacing() external view returns (int24);
}

interface IPoolMaker {
	function makeNewPool_Steer_2Thick_MCL(string memory _s0, string memory _s1, address _pool2Thick, uint _type, address _steerSmartRewarder) external returns(address[9] memory);
}

contract SSR2Thick_Factory {

	address public owner;
	mapping(address=>bool) public isAllowed;
	uint public POOLTYPE;
	address public STEER_SMART_REWARDER;

	uint public length;
	mapping(uint=>address) public allPools;
	mapping(uint=>address) public allNFPG;
	mapping(uint=>address) public votePool;
	mapping(address=>bool) public hasNFPG;

	IPoolMaker public POOLMAKER;




	event CreatedNFPG(uint index, address clpool, address nfps, address votepool);
	event PermsChanged(address indexed ppl, bool indexed perm);




	function initialize(IPoolMaker _pm, address _ssr) external {
		require(msg.sender == address(0) || owner == msg.sender);
		owner = msg.sender;
		POOLTYPE = 31;
		STEER_SMART_REWARDER = _ssr;
		POOLMAKER = _pm;

		if(length==0) {
			allPools[0] = 0xb1BC4B830FCbA2184B92e15b9133c41160518038;
			allNFPG[0]  = 0x38F86b9028074C824481d62c1b74EAE3a7F78Ab0;
			votePool[0] = 0x907c39cf87DA777441a2c4BB30C968b85F16472b;
			hasNFPG[0xb1BC4B830FCbA2184B92e15b9133c41160518038] = true;
			emit CreatedNFPG( 0, 0xb1BC4B830FCbA2184B92e15b9133c41160518038, 0x38F86b9028074C824481d62c1b74EAE3a7F78Ab0, 0x907c39cf87DA777441a2c4BB30C968b85F16472b);
		}
	}



	function uintToString(uint v) public pure returns (string memory) {
    	uint maxlength = 100;
    	bytes memory reversed = new bytes(maxlength);
    	uint i = 0;
    	while (v != 0) {
        	uint remainder = v % 10;
        	v = v / 10;
        	reversed[i++] = bytes1(uint8(48 + remainder));
    	}
    	bytes memory s = new bytes(i); // i + 1 is inefficient
    	for (uint j = 0; j < i; j++) {
        	s[j] = reversed[i - j - 1]; // to avoid the off-by-one error
    	}
    	string memory str = string(s);  // memory isn't implicitly convertible to storage
    	return str;
	}

	function create_2Thick_MCL_SteerSmartRewarder(I_2ThickPool _pool2Thick) external {
		require( isAllowed[msg.sender] , "NA");
		require( hasNFPG[address(_pool2Thick)] == false, "NFPG Exists");

		address[9] memory _rd = POOLMAKER.makeNewPool_Steer_2Thick_MCL(
			string(abi.encodePacked("2Thick:SteerSR-", _pool2Thick.token0().symbol() )),
			string(abi.encodePacked(_pool2Thick.token1().symbol(), "-CL", uintToString(uint(int(_pool2Thick.tickSpacing()))) )),
			address(_pool2Thick),
			POOLTYPE,
			STEER_SMART_REWARDER
		);

		length++;
		allPools[length] = address(_pool2Thick);
		allNFPG[length]  = _rd[6];
		votePool[length] = _rd[3];
		hasNFPG[address(_pool2Thick)] = true;

		emit CreatedNFPG( length, address(_pool2Thick), _rd[6], _rd[3]);
	}

	function setAllowed(address[] memory ppl, bool[] memory perms) external {
		require(msg.sender==owner);
		uint len = ppl.length;
		for(uint i=0; i<len; i++) {
			isAllowed[ ppl[i] ] = perms[i] ;
			emit PermsChanged( ppl[i] , perms[i]);
		}
	}


	function get(uint start, uint finish) external view returns(uint[] memory ids, address[] memory pool, address[] memory nfps, address[] memory votepools) {
		finish = finish > length ? length: finish;
		uint len = finish - start;
		uint[] memory ids = new uint[](len);
		address[] memory pool = new address[](len);
		address[] memory nfps = new address[](len);
		for(uint i = 0; i<len; i++) {
			ids[i] = start + i;
			pool[i] = allPools[start + i];
			nfps[i] = allNFPG[start + i];
			votepools[i] = votePool[start + i];
		}
		return (ids,pool,nfps,votepools);
	}

}