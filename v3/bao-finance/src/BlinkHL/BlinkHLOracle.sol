pragma solidity ^0.4.23;

import "./BaseAdmin.sol";
import "./SafeMath.sol";

interface IBLinkPool {
    function transferToWiner(address _tokenAddr,address _to, uint256 _amount, uint256 _originalAmount) external returns(bool);
    function transferBnb(address _to, uint256 _amount, uint256 _originalAmount) external returns(bool);
    function getPoolBLinkBalance() external view returns(uint256);
    function transferBLinkWithDevRelease(address _to1, uint256 _amount1, uint256 _devReleaseAmount) external;
}

interface IBlinkHL{
	function __closeOrder(address _player,uint256 _salt,uint256 _cards,uint256 _cardsHash,uint256 userStep) external returns(uint64 winAmount);
}

/*
	只有后台可以调用这个合约 
*/
contract BlinkHLOracle is BaseAdmin {

    using SafeMath for uint256;

    IBlinkHL iBlinkHL;

    IBLinkPool public blinkPool;
    
    uint256 public gasPrice=20000000000;
    uint256 public addtionFee = gasPrice.mul(21000+17988);


    mapping (address => bool) gameManagerMap;

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
   
    function setBlinkHL(address _addr)external{
	require(_addr != address(0));
	require(gameManagerMap[msg.sender] || msg.sender == addrAdmin);
	iBlinkHL=IBlinkHL(_addr);
    }

    function getBlinkHL()external view returns(address){
	return address(iBlinkHL);
    }

    function __closeOrder(address _player,uint256 _salt,uint256 _cards, uint256 _cardsHash,uint256 userStep) external returns(uint64 winAmount){
	uint256 startGas = gasleft();
	require(gameManagerMap[msg.sender]);
        winAmount=iBlinkHL.__closeOrder(_player,_salt,_cards,_cardsHash,userStep);
	uint256 used=startGas - gasleft();
	uint256 returnFee=used.mul(gasPrice).add(addtionFee);
	blinkPool.transferBnb(msg.sender, returnFee, returnFee);
    }
	
    /*
	获取所有的配置信息
    */
    function showConfig()external view returns(
	address blinkHLAddr
    ){
	    blinkHLAddr=address(iBlinkHL);
    }

    function setBlinkPoolAddr(address _addr) external onlyAdmin {
        require(_addr != address(0));
        blinkPool = IBLinkPool(_addr);
    }

    function getBlinkPoolAddr() external view returns(address) {
        return address(blinkPool);
    }

}

