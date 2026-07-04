pragma solidity ^0.4.23;

import "./BaseAdmin.sol";
import "./SafeMath.sol";

interface IReferralship {
    function getAddrByReferralCode(string   _code) external view returns(address);
    function getReferralCodeByAddr(address  _addr) external view returns(string);
    function getReferralShip(address _target) external view returns(address);
    function setReferralShip(address _target, address _mentor) external;
    function getCustomerSeed(address _target) external view returns(bytes32);
}

interface IBLinkPool {
    function transferToWiner(address _tokenAddr,address _to, uint256 _amount, uint256 _originalAmount) external returns(bool);
    function transferBnb(address _to, uint256 _amount, uint256 _originalAmount) external returns(bool);
    function getPoolBLinkBalance() external view returns(uint256);
    function transferBLinkWithDevRelease(address _to1, uint256 _amount1, uint256 _devReleaseAmount) external;
}

interface IBLinkDev {
    function getMiningBLink(uint256 _gameId, address _miner, uint256 _trxAmount) external view returns(uint256 minerCnt, uint256 devCnt);
}

/*
   card hash factory
*/
interface IHLCardFactory{
    function choiceCardSeed() external returns(uint32);
    function getCardHashBySeedId(uint256 seedId) external returns(uint256);
}

contract BlinkHL is BaseAdmin {
    using SafeMath for uint256;
    /*
	卡片hash 每一个卡片hash是由卡片的顺序加上盐值做sha256 形成的值
    */
    event HLOrderCreate(
        uint256 indexed _order,
        address indexed _player,
	uint256 cardHash
    );
    event HLOrderResult(
        uint256 indexed _order,
        address indexed _player,
        uint256 _cards,
        uint256 _salt,
	uint256 _userStep,
	uint256 _orderAmount,
	uint256 _winAmount,
        uint256 _cardsHash
    );
    event HLOrderCancle(
        uint256 indexed _order,
        address indexed _player
    );
    uint256 gameId=2;//游戏ID 为了开挖矿赔率设置的

    uint256 public mentorRate = 20;//推荐人分成(万分比)
    uint256 public gasPrice=20000000000;
    uint256 public addtionFee = gasPrice.mul(21000+17988);

    IReferralship referralship;
    IBLinkPool public blinkPool;
    IBLinkDev public blinkDev;

    IHLCardFactory hlCardFactory;
    address oraclize;//必须要设置

    uint8 constant TOKEN_BNB=0;
    uint8 constant TOKEN_BNB20=2;


    address gameManager;//更改游戏相关配置的权限

    /*
	[1字节订单状态][4字节订单ID][3字节tokenId][4字节orderAmount][4字节winAmount][4字节seedId][4字节orderTime][4字节orderH][4字节orderCloseH]
    */
    uint constant ORDER_STATUS_MOVING=31*8;
    uint constant ORDER_NO_MOVING=27*8;
    uint constant ORDER_TOKEN_ID_MOVING=24*8;
    uint constant ORDER_AMOUNT_MOVING=20*8;
    uint constant ORDER_WIN_AMOUNT_MOVING=16*8;
    uint constant ORDER_SEED_ID_MOVING=12*8;
    uint constant ORDER_BLOCK_TIME_MOVING=8*8;
    uint constant ORDER_BLOCK_HEIGHT_MOVING=4*8;


    mapping (address => uint256) public ordersMap;//用户订单

    mapping (address=> uint24) supportTokenMap;//地址 bnb代币
    mapping (uint24=> address) tokenId2AddrMap;//tokenId 与地址的映射
    mapping (uint24=> uint32) token2BnbRateMap;//兑换比例 千分数
    mapping (uint24=> uint64) tokenDecimalsMap;//所有的下注额度都将是这个值的整数倍
    mapping (uint24=> uint256) minOrderAmountMap;//最小下注额度，最大下注额度由前端进行控制,最多赢多少由后端进行控制,比如说30万等
    
    uint256 constant TOKEN_TO_BNB_RATE=1000;

    uint8 constant ORDER_STATUS_ORDER_CREATED=0x01;

    uint8 constant ORDER_STATUS_ORDER_CLOSED=0xFF;//赢 输 取消

    uint256 constant ORDER_STATUS_CLEAR=(~(uint256(0)))>>1*8;

    constructor() public {
        addrAdmin = msg.sender;
	_initTokenSupport();
    }

    /*
	初始化币种支持
    */
    function _initTokenSupport() private{
	token2BnbRateMap[1]=1000;//bnb
	supportTokenMap[address(0)]=1;
	tokenDecimalsMap[1]=10000*1000000*1000000;//0.01bnb
	minOrderAmountMap[1]=100000*1000000*1000000;//0.1bnb
	tokenId2AddrMap[1]=address(0);

	token2BnbRateMap[2]=0;//blink
	supportTokenMap[address(0x63870A18B6e42b01Ef1Ad8A2302ef50B7132054F)]=2;
	tokenId2AddrMap[2]=address(0x63870A18B6e42b01Ef1Ad8A2302ef50B7132054F);
	tokenDecimalsMap[2]=1000000;
	minOrderAmountMap[2]=100*1000000;//100

    }

    modifier whenNotPaused() {
        require(!isPaused);
        _;
    }
    
    function createOrder(uint8 tokenType,address tokenAddr,uint256 _amount,string _rcode)
    payable
    whenNotPaused
    external
    {
	uint256 startGas = gasleft();
        uint256 lastOrder=ordersMap[msg.sender];
        uint256 amount=_amount;//如果是bnb20
        if(lastOrder>0){//存在订单
            require(uint8(lastOrder>>ORDER_STATUS_MOVING)==ORDER_STATUS_ORDER_CLOSED);//订单必须已经完结了
        }
        uint24 tokenId=1;//1 是默认的bnb　
        if(tokenType==TOKEN_BNB){
            amount =uint256(msg.value);//tokenId 默认是0
            tokenId=1;
        }else if(tokenType==TOKEN_BNB20){//bnb20 货币20
            tokenId=supportTokenMap[tokenAddr];//_amount 就是金额了,bnb20的金额
        }else{
            require(false);//不支持
        }
        require(tokenId>0);
	uint256 decimal=uint256(tokenDecimalsMap[tokenId]);
	require(amount % decimal == 0);
	require(amount >= minOrderAmountMap[tokenId]);
	uint256 newOrder=0;
        newOrder|=uint256(ORDER_STATUS_ORDER_CREATED)<<ORDER_STATUS_MOVING;
        uint32 lastOrderNo=uint32(lastOrder>>ORDER_NO_MOVING);
        if(lastOrderNo==0xffffffff){
            lastOrderNo=0;
        }
        uint32 newOrderNo=lastOrderNo+1;
        newOrder|=uint256(newOrderNo)<<ORDER_NO_MOVING;
        newOrder|=uint256(tokenId)<<ORDER_TOKEN_ID_MOVING;
	uint32 seedId=hlCardFactory.choiceCardSeed();
        newOrder|=uint256(seedId)<<ORDER_SEED_ID_MOVING;
        newOrder|=(amount/decimal)<<ORDER_AMOUNT_MOVING;
        newOrder|=uint256(uint32(block.timestamp))<<ORDER_BLOCK_TIME_MOVING;
        newOrder|=uint256(uint32(block.number))<<ORDER_BLOCK_HEIGHT_MOVING;
        _createOrder(newOrder,tokenId, msg.sender, _rcode);
        uint256 returnFee=gasPrice.mul(startGas - gasleft()).add(addtionFee);
        blinkPool.transferBnb(msg.sender, returnFee, returnFee);
    }

    function _createOrder(uint256 newOrder,uint24 tokenId,address _player,string _rcode)private{
        uint256 amount=uint256(uint32(newOrder>>ORDER_AMOUNT_MOVING))*uint256(tokenDecimalsMap[tokenId]);
	address _tokenAddr=tokenId2AddrMap[tokenId];
        if(tokenId==1){
            address(blinkPool).transfer(amount);
        }else{
            require(IBEP20(_tokenAddr).transferFrom(msg.sender, address(blinkPool), amount));
        }
        ordersMap[_player]=newOrder;
        _trySetReferralCode(_player,_rcode);
        emit HLOrderCreate(newOrder,_player,hlCardFactory.getCardHashBySeedId(uint256(uint32(newOrder>>ORDER_SEED_ID_MOVING))));
    }


    function __closeOrder(address _player,uint256 _salt,uint256 _cards,uint256 _cardsHash,uint256 userStep) external returns(uint256 winAmount){
        require(msg.sender == oraclize);
        uint256 order=ordersMap[_player];
        require(uint8(order>>ORDER_STATUS_MOVING)==ORDER_STATUS_ORDER_CREATED);
	uint24 tokenId=uint24(order>>ORDER_TOKEN_ID_MOVING);
	uint256 orderAmount=uint256(uint32(order>>ORDER_AMOUNT_MOVING))*uint256(tokenDecimalsMap[tokenId]);
	winAmount=(uint256(uint32(userStep))*orderAmount)/10000;//总共需要支持给玩家的的金额
	order|=uint256(winAmount/uint256(tokenDecimalsMap[tokenId]))<<ORDER_WIN_AMOUNT_MOVING;
        order&=ORDER_STATUS_CLEAR;
        order|=uint256(ORDER_STATUS_ORDER_CLOSED)<<ORDER_STATUS_MOVING;//关闭订单
	order|=uint256(uint32(block.number));//订单结束高度
        ordersMap[_player]=order;
        address mentor = referralship.getReferralShip(_player);
	_orderClosed(uint24(order>>ORDER_TOKEN_ID_MOVING),_player,orderAmount,winAmount,mentor);
        emit HLOrderResult(order, _player,_cards,_salt,userStep,orderAmount,winAmount,_cardsHash);
    }

    /*
	1.挖矿
	2.给用户打钱	
    */
    function _orderClosed(uint24 tokenId,address _player,uint256 orderAmount,uint256 winAmount,address mentor)private returns(bool){
        _doMine(tokenId,_player,orderAmount);
	address _tokenAddr=tokenId2AddrMap[tokenId];//bnb 0x00
	if(winAmount==0){
		return false;
	}
	uint256 mentorFee=((winAmount-orderAmount)*mentorRate)/10000;
	blinkPool.transferToWiner(_tokenAddr,_player,winAmount,orderAmount);
        if (mentor != 0 && mentorFee>0) {
		blinkPool.transferToWiner(_tokenAddr,mentor,mentorFee,0);
        }
        return true;
    }


    /*
	取消订单，由于某些原因
    */
    function cancleOrder(address _player)
    external
    {
        require(msg.sender==gameManager || msg.sender == addrAdmin);
        uint256 order=ordersMap[_player];
        require(uint8(order>>ORDER_STATUS_MOVING)==ORDER_STATUS_ORDER_CREATED);
	uint24 tokenId=uint24(order>>ORDER_TOKEN_ID_MOVING);
	address _tokenAddr=tokenId2AddrMap[tokenId];//if bnb 0x00
	uint256 orderAmount=uint256(uint32(order>>ORDER_AMOUNT_MOVING))*uint256(tokenDecimalsMap[tokenId]);
	blinkPool.transferToWiner(_tokenAddr,_player,orderAmount,orderAmount);
        order&=ORDER_STATUS_CLEAR;
        order|=uint256(ORDER_STATUS_ORDER_CLOSED)<<ORDER_STATUS_MOVING;
        ordersMap[_player]=order;
        emit HLOrderCancle(order,_player);
    }

   function getOrder(address _player) public view returns(
        uint24 orderTokenId,
        uint32 orderBlockH,
        uint32 orderBlockT,
        uint256 orderAmount,
	uint256 winAmount,
        uint32 orderNo,
        uint8  orderStatus,
	uint32 closeBlockH,
        string errorMsg,
        uint256 cardHash
    ){
        uint256 order=ordersMap[_player];
        if(order==0){
            errorMsg="User Did Not Play Game Before.";
            return;
        }
        orderTokenId=uint24(order>>ORDER_TOKEN_ID_MOVING);
        orderBlockH=uint32(order>>ORDER_BLOCK_HEIGHT_MOVING);
        orderBlockT=uint32(order>>ORDER_BLOCK_TIME_MOVING);
        orderAmount=uint256(uint32(order>>ORDER_AMOUNT_MOVING))*uint256(tokenDecimalsMap[orderTokenId]);
	winAmount=uint256(uint32(order>>ORDER_WIN_AMOUNT_MOVING))*uint256(tokenDecimalsMap[orderTokenId]);
        orderNo=uint32(order>>ORDER_NO_MOVING);
        orderStatus=uint8(order>>ORDER_STATUS_MOVING);
	closeBlockH=uint32(order);
	cardHash=hlCardFactory.getCardHashBySeedId(uint256(uint32(order>>ORDER_SEED_ID_MOVING)));
    }

    /*
	根据 根据地址查询到用户的订单
    */
    function getOrdersByPlayers(address[] _players) external view returns(uint256[] memory _orders){
        uint i=0;
        uint length=_players.length;
        _orders=new uint256[](_players.length);
        for(i=0;i<length;i++){
            _orders[i]=ordersMap[_players[i]];
        }
    }

    
    /*
	    挖矿
    */
    function _doMine(uint24 tokenId,address _player,uint256 orderAmount) private returns(bool){
        orderAmount=(uint256(token2BnbRateMap[tokenId])*orderAmount)/TOKEN_TO_BNB_RATE;
        if(orderAmount>0){
            uint256 mineCnt = 0;
            uint256 devCnt = 0;
            (mineCnt, devCnt) = blinkDev.getMiningBLink(gameId, _player, orderAmount);
            if (mineCnt > 0 || devCnt > 0) {
                blinkPool.transferBLinkWithDevRelease(_player, mineCnt, devCnt);
            }
        }
        return true;
    }
    
    /*
     	尝试设置推荐人
    */
    function _trySetReferralCode(address _player, string _rcode)
    private
    returns(address mentor)
    {
        mentor = referralship.getAddrByReferralCode(_rcode);
	address existMentor=referralship.getReferralShip(_player);
        require(_player!= mentor);
        if (mentor != address(0) && existMentor==address(0)) {
            referralship.setReferralShip(_player, mentor);
        }
    }

    function setOraclizeAddr(address _addr) external onlyAdmin {
        require(_addr != address(0));
        oraclize = _addr;
    }

    function getOraclizeAddr() external view returns(address) {
        return oraclize;
    }

    function setReferralshipAddr(address _addr) external onlyAdmin {
        require(_addr != address(0));
        referralship = IReferralship(_addr);
    }

    function getReferralshipAddr() external view returns(address) {
        return address(referralship);
    }

    function setMinOrderAmount(uint24 tokenId,uint256 amount)external onlyAdmin {
	minOrderAmountMap[tokenId]=amount;
    }
    
    function getMinOrderAmount(uint24 tokenId)external view returns(uint256){
	return minOrderAmountMap[tokenId];
    }

    function setTokenDecimals(uint24 tokenId,uint64 decimal)external onlyAdmin {
	tokenDecimalsMap[tokenId]=decimal;
    }
    
    function getTokenDecimals(uint24 tokenId) external view returns(uint64){
	return tokenDecimalsMap[tokenId];
    }
    
    function setBlinkPoolAddr(address _addr) external onlyAdmin {
        require(_addr != address(0));
        blinkPool = IBLinkPool(_addr);
    }

    function getBlinkPoolAddr() external view returns(address) {
        return address(blinkPool);
    }
   
    function setHlCardFactory(address _addr) external onlyAdmin{
	hlCardFactory=IHLCardFactory(_addr);
    }

    function getHlCardFactory() external view returns(address){
	return address(hlCardFactory);
    }
    
    function setBLinkDevAddr(address _addr) external onlyAdmin {
        require(_addr != address(0));
        blinkDev = IBLinkDev(_addr);
    }

    function getBLinkDevAddr() external view returns(address) {
        return address(blinkDev);
    }

    function setGameManager(address _addr) external {
        require(_addr != address(0));
        require(msg.sender == addrAdmin || msg.sender==gameManager);
        gameManager=_addr;
    }

    function getGameManager() external view returns(address){
        return gameManager;
    }
    
    // 设置推荐比例
    function setMentorRate(uint256 _rate) external {
        require(msg.sender==gameManager || msg.sender == addrAdmin);
        require(_rate <= 100);
        mentorRate = _rate;
    }

    function getMentorRate() external view returns(uint256){
        return mentorRate;
    }
    
    function getGameId() external view returns(uint256){
        return gameId;
    }

    /*
        设置gameId
    */
    function setGameId(uint256 _gameId){
        require(msg.sender==gameManager || msg.sender == addrAdmin);
        gameId=_gameId;
    }

    /*
        index=1 bnb
    */
    function getTokenSupport(address tokenAddr) external view returns(uint32){
        return supportTokenMap[tokenAddr];
    }

    /*
        设置游戏支持的币种
    */
    function setTokenSupport(address tokenAddr,uint24 tokenId) external{
        require(msg.sender==gameManager || msg.sender == addrAdmin);
        supportTokenMap[tokenAddr]=tokenId;
        tokenId2AddrMap[tokenId]=tokenAddr;
    }

    /*
        设置相应token对应兑换的bnb数量
    */
    function setToken2BnbRate(uint24 tokenId,uint32 rate) external{
        require(msg.sender==gameManager || msg.sender == addrAdmin);
        token2BnbRateMap[tokenId]=rate;
    }

    /*
        获取token对应兑换的bnb数量
    */
    function getToken2BnbRate(uint24 tokenId)external view returns(uint32){
        return token2BnbRateMap[tokenId];
    }

    /*
	查询配置
    */
    function showConfig()
    external
    view
    returns
    (
        address _addrAdmin,
        address _oraclize,
        address _referralship,
        address _blinkPool,
        address _bLinkDev,
        address _gameManager,
        uint16  _mentorRate
    )
    {
        _addrAdmin=addrAdmin;
        _oraclize=oraclize;
        _referralship=address(referralship);
        _blinkPool=address(blinkPool);
        _bLinkDev=address(blinkDev);
        _gameManager=gameManager;
        _mentorRate=uint16(mentorRate);
    }

}


