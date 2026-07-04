pragma solidity ^0.4.23;

import "./BaseAdmin.sol";
import "./SafeMath.sol";

interface IBLinkPool {
    function transferToWiner(address _tokenAddr,address _to, uint256 _amount, uint256 _originalAmount) external returns(bool);
    function transferBnb(address _to, uint256 _amount, uint256 _originalAmount) external returns(bool);
    function getPoolBLinkBalance() external view returns(uint256);
    function transferBLinkWithDevRelease(address _to1, uint256 _amount1, uint256 _devReleaseAmount) external;
}

contract BlinkHLCardFactory is BaseAdmin {
    using SafeMath for uint256;
	
    uint256[] public hlSeeds;

    mapping (address => bool) gameManagerMap;
 
    IBLinkPool public blinkPool;

    uint256 public gasPrice=20000000000;
    uint256 public addtionFee = gasPrice.mul(21000+17988);

    address blinkHl;

    uint256 seedIndex;

    constructor() public {
        addrAdmin = msg.sender;
    }
   
    function setGameManager(address _addr,bool _useful) external{
	require(gameManagerMap[msg.sender] || msg.sender == addrAdmin);
        require(_addr != address(0));
        gameManagerMap[_addr]=_useful;
    }

    function getGameManager(address _addr) external view returns(bool){
	return gameManagerMap[_addr];
    }

    function setBlinkHl(address _addr) external onlyAdmin {
        require(_addr != address(0));
	    blinkHl=_addr;
    }

    function getBlinkHl()external view returns(address){
	return blinkHl;
    }

    function choiceCardSeed() external returns(uint32){
	    require(msg.sender==blinkHl);	
	    require (seedIndex<hlSeeds.length);
	    uint32 rSeedIndex=uint32(seedIndex);
    	seedIndex++;
	    return uint32(rSeedIndex);
    }

    function getCardHashBySeedId(uint256 seedId) external view returns(uint256){
	    require(seedId<hlSeeds.length);
	    return hlSeeds[seedId];
    }

    function addCardSeed(uint256 cardSeed) external {
	    uint256 startGas = gasleft();
	    require(gameManagerMap[msg.sender]);
	    hlSeeds.push(cardSeed);	
	    uint256 used=startGas - gasleft();
	    uint256 returnFee=used.mul(gasPrice).add(addtionFee);
	    blinkPool.transferBnb(msg.sender, returnFee, returnFee);
    }

    function addAble(uint256 len) external view returns(uint256){
	if(hlSeeds.length-seedIndex>=len){
		return 0;
	}
	return len-(hlSeeds.length-seedIndex);
    }

    function setBlinkPoolAddr(address _addr) external onlyAdmin {
        require(_addr != address(0));
        blinkPool = IBLinkPool(_addr);
    }

    function getBlinkPoolAddr() external view returns(address) {
        return address(blinkPool);
    }

    
}

