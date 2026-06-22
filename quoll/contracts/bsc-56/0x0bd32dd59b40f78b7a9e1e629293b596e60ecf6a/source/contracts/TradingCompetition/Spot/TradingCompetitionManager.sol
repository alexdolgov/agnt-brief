// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./TradingCompetitionManagerEvents.sol";

interface ITradingCompetitionSpot {
    function _init(ITradingCompetitionManager.TC calldata _tc) external returns(bool);
    function validate_competition() external returns(bool);
    function tradingCompetition() external view returns(ITradingCompetitionManager.TC calldata tc);
    function removePrize(address to) external;
    function togglePause() external;
}

interface ITradingCompetitionFactory {
    function deployTradingCompetition(address _owner, uint256 id) external returns(address);
}

/// @title Trading Competition Manager
/// @author Prometheus, Perseus - ThenaFinance
/// @notice Create spot or perpetual trading competition
contract TradingCompetitionManager is Ownable, ReentrancyGuard, TradingCompetitionManagerEvents {

    using SafeERC20 for IERC20;
              
    /*****************************************/
    /*-----         -----**-----        -----*/
    /*              CONSTANTS                */
    /*-----         -----**-----        -----*/
    /*****************************************/

    uint256 public constant PRECISION = 1000;

    uint256 public constant MAX_TOKEN_PRIZE = 8;
    
    /*****************************************/
    /*-----         -----**-----        -----*/
    /*              VARIABLES                */
    /*-----         -----**-----        -----*/
    /*****************************************/

    /// @notice set if trading competition creation is permissionless 
    bool public isPermissionless;

    /// @notice Stop creation
    bool public pause;

    /// @notice Min time for registration (1h)
    uint256 internal MIN_TIME_REG_LENGTH = 1 hours;    

    /// @notice Max time for registration (1 week)
    uint256 internal MAX_TIME_REG_LENGTH = 1 weeks;   

    /// @notice Min time for competition (1h)
    uint256 internal MIN_TIME_COMP_LENGTH = 1 hours;   

    /// @notice Max time for competition (1 month [28days])
    uint256 internal MAX_TIME_COMP_LENGTH = 4 weeks;   

    /// @notice ID Counter
    uint256 private _idCounter;
    
    /// @notice Max fee owner can take from prize
    uint256 public  MAX_OWNER_FEE = 250;                //25%

    /// @notice Max number of winners
    uint256 public  MAX_PLACEMENTS = 100;

    /// @notice Max number of users
    uint256 public MAX_USERS = 10000;

    /// @notice protocol fee in number of tokens
    uint256 public protocol_fee;     

    /// @notice trading competition spot factory
    address public spotFactory;

    /// @notice trading competition OpenOcean router
    address internal _OORouter;

    /// @notice trading competition ODOS router
    address internal _ODOSRouter;

    /// @notice trading competition 1Inch router
    address internal _1InchRouter;
    
    /// @notice trading competition Algebra router
    address internal _AlgebraRouter;

    /// @notice trading competition perpetual factory
    address public perpetualFactory;

    /// @notice protocol fee treasury
    address public protocol_fee_treasury;
    
    /// @notice protocol fee token
    address public protocol_fee_token;

    /// @notice array of allowed trading tokens
    address[] internal _tradingTokens;
    
    /// @notice allowed tokens mapping.
    mapping(address => bool) public isAllowedToken;

    /// @notice trading competition per ID
    mapping(uint256 => address) internal _idToTCAddress;

    /// @notice set who's allow to create a trading competition. Early launch limited, then permissionless
    mapping(address => bool) public isAllowedCreator;

    
    /*****************************************/
    /*-----         -----**-----        -----*/
    /*              CONSTRUCTOR              */
    /*-----         -----**-----        -----*/
    /*****************************************/
    
    constructor() {
        protocol_fee_token = address(0x55d398326f99059fF775485246999027B3197955);
        _OORouter = address(0x6352a56caadC4F1E25CD6c75970Fa768A3304e64);
        _1InchRouter = address(0x1111111254EEB25477B68fb85Ed929f73A960582);
        _AlgebraRouter = address(0x327Dd3208f0bCF590A66110aCB6e5e6941A4EfA0);
        _ODOSRouter = address(0x89b8AA89FDd0507a99d334CBe3C808fAFC7d850E);
        _idCounter = 0;
        protocol_fee_treasury = msg.sender;
        protocol_fee = 50 * 1e18;  // 50 usdt  
        isPermissionless = false; 
        pause = false;
    }

    
    /*****************************************/
    /*-----         -----**-----        -----*/
    /*              USER INTERACTION         */
    /*-----         -----**-----        -----*/
    /*****************************************/

    /// @notice Create a new trading competition
    /// @param _tradingCompetition  Trading Competition structure
    function create(TC calldata _tradingCompetition) public nonReentrant returns(address,uint) {

        // Pause check
        require(!pause, 'TCM: paused');

        // if isPermissionless == false check allowed creator 
        if(!isPermissionless) require(isAllowedCreator[msg.sender] || msg.sender == owner(), "TCM: not allowed to create");

        // check validity
        _check(_tradingCompetition);

        // create competition
        address _tc = _create(_tradingCompetition);
        require(_tc != address(0), "TCM: Not able to deploy");

        // save it
        _save(_tc);

        // Get Protocol Fee
        _getFee();

        // Init Trading Competition
        _initTc(_tradingCompetition, _tc);

        emit Create(_tc, msg.sender, _idCounter-1,  block.timestamp);

        return (_tc, _idCounter - 1);
        
    }



    /*****************************************/
    /*-----         -----**-----        -----*/
    /*              INTERNAL FUNCTIONS       */
    /*-----         -----**-----        -----*/
    /*****************************************/

    
    /// @notice Check if it's a valid TC
    /// @param tc  Trading Competition structure
    function _check(TC calldata tc) internal view {
        // check timestamps
        require(tc.timestamp.registrationStart >= block.timestamp, "TCM: Registration timestamp low");
        require(tc.timestamp.registrationEnd >= tc.timestamp.registrationStart + MIN_TIME_REG_LENGTH, "TCM: MIN_TIME_REG_LENGTH");
        require(tc.timestamp.registrationEnd <= tc.timestamp.registrationStart + MAX_TIME_REG_LENGTH, "TCM: MAX_TIME_REG_LENGTH");
        require(tc.timestamp.startTimestamp >= tc.timestamp.registrationEnd, "TCM: Start before registration end");
        require(tc.timestamp.endTimestamp >= tc.timestamp.startTimestamp + MIN_TIME_COMP_LENGTH, "TCM: MIN_TIME_COMP_LENGTH");
        require(tc.timestamp.endTimestamp <= tc.timestamp.startTimestamp + MAX_TIME_COMP_LENGTH, "TCM: MAX_TIME_COMP_LENGTH");
        require(tc.MAX_PARTICIPANTS <= MAX_USERS && tc.MAX_PARTICIPANTS >= 1, "TCM: MAX_PARTICIPANTS");

        // check prize
        uint256 i = 0;  
        require(tc.prize.token.length <= MAX_TOKEN_PRIZE, "TCM: token prize length");
        for(i = 0; i < tc.prize.token.length; i++){
            require(isAllowedToken[tc.prize.token[i]], "TCM: token prize not allowed");
            require(tc.prize.totalPrize[i] == 0, "TCM: totalPrize must be zero");
        }
        require(tc.prize.token.length == tc.entryFee.length, "TCM: prize mismatch");
        require(tc.prize.totalPrize.length == tc.entryFee.length, "TCM: totalPrize mismatch");
        
        require(tc.prize.owner_fee <= MAX_OWNER_FEE, "TCM: creator fee too high");
        require(tc.prize.weights.length > 0 &&  tc.prize.weights.length < MAX_PLACEMENTS, "TCM: MAX_PLACEMENTS");

        uint256 temp_total_weight = 0;
        for(i = 0; i < tc.prize.weights.length; i ++){
            require(tc.prize.weights[i] > 0, "TCM: weights == 0");
            temp_total_weight += tc.prize.weights[i];
        }
        require(temp_total_weight == PRECISION, 'TCM: weight precision');
      

        // check tradingTokens
        require(tc.competitionRules.tradingTokens.length >= 2, 'TCM: at least 2 tradingTokens');
        bool flag = false;
        for(i = 0; i < tc.competitionRules.tradingTokens.length; i ++) {
            if(tc.competitionRules.winning_token == tc.competitionRules.tradingTokens[i]) flag = true;
            require(isAllowedToken[tc.competitionRules.tradingTokens[i]], "TCM: trading token not allowed");
        }
        for(i = 0; i < tc.competitionRules.tradingTokens.length; i++){
            address _tempToken = tc.competitionRules.tradingTokens[i];
            for(uint k = i + 1; k < tc.competitionRules.tradingTokens.length; k++){
                require(_tempToken != tc.competitionRules.tradingTokens[k], "TCM: equal trading tokens"); 
            }
        }


        require(flag, "TCM: winning token missing");
    }

    
    /// @notice Save new Trading Competition
    /// @param tc  Trading Competition structure
    function _create(TC calldata tc) internal returns(address){
        if(tc.market == ITradingCompetitionManager.MarketType.SPOT){
            require(spotFactory != address(0), 'TCF: SF addr0');
            return ITradingCompetitionFactory(spotFactory).deployTradingCompetition(tc.owner, _idCounter);
        } else {
            require(perpetualFactory != address(0), 'TCF: SF addr0');
            return ITradingCompetitionFactory(perpetualFactory).deployTradingCompetition(tc.owner, _idCounter);
        }
    
    }

    /// @notice Save new Trading Competition
    /// @dev update tradingCompetition
    /// @param _tc  Address of the Trading Competition contract
    function _save(address _tc) internal {       
        // save data
        _idToTCAddress[_idCounter] = _tc;
        unchecked{ _idCounter += 1; }
    }


    /// @notice Get the protocol fee 
    function _getFee() internal {        
        if(protocol_fee > 0) IERC20(protocol_fee_token).safeTransferFrom(msg.sender, protocol_fee_treasury, protocol_fee);
    }

    /// @notice Init the trading competition
    /// @param tc  Trading Competition structure
    function _initTc(TC calldata tc, address _tc) internal {
        require(ITradingCompetitionSpot(_tc)._init(tc));
    }



    /*****************************************/
    /*-----         -----**-----        -----*/
    /*              ADMIN FUNCTIONS          */
    /*-----         -----**-----        -----*/
    /*****************************************/

    function setTreasury(address _treasury) external onlyOwner {
        require(_treasury != address(0), 'TCM: address(0)');
        address old = protocol_fee_treasury;
        protocol_fee_treasury = _treasury;

        emit SetTreasury(old, _treasury, block.timestamp);
    }

    function setProtocolFee(uint256 amount) external onlyOwner {
        uint256 old = protocol_fee;
        protocol_fee = amount;

        emit SetProtocolFee(old, amount, block.timestamp);
    }

    function setProtocolFeeToken(address token) external onlyOwner {
        require(token != address(0), 'TCM: address(0)');
        address old = protocol_fee_token;
        protocol_fee_token = token;

        emit SetProtocolFeeToken(old, token, block.timestamp);
    }

    function setMaxUsers(uint256 _MAX_USERS) external onlyOwner {
        require(_MAX_USERS > 2, 'TCM: at least 2');
        uint256 old = MAX_USERS;
        MAX_USERS = _MAX_USERS;

        emit SetMaxUsers(old, _MAX_USERS, block.timestamp);
    }

    function setMaxPlacements(uint256 _MAX_PLACEMENTS) external onlyOwner {
        require(_MAX_PLACEMENTS > 0, 'TCM: at least 1');
        uint256 old = MAX_PLACEMENTS;
        MAX_PLACEMENTS = _MAX_PLACEMENTS;

        emit SetMaxPlacements(old, _MAX_PLACEMENTS, block.timestamp);
    }

    function addToken(address[] calldata _token) external onlyOwner {
        for(uint256 i = 0; i < _token.length; i++){
            if(!isAllowedToken[_token[i]]) {
                isAllowedToken[_token[i]] = true;
                _tradingTokens.push(_token[i]);
                emit AddToken(_token[i], block.timestamp);
            }
        }
    }

    
    function removeToken(address[] calldata _token) external onlyOwner {
        for(uint256 i = 0; i < _token.length; i++){
            isAllowedToken[_token[i]] = false;
            _findTokenAndPop(_token[i]);
            emit RemoveToken(_token[i], block.timestamp);
        }
    }

    function _findTokenAndPop(address token) internal {
        for(uint k = 0; k < _tradingTokens.length; k++){
            if(token == _tradingTokens[k]){
                _tradingTokens[k] = _tradingTokens[_tradingTokens.length -1];
                _tradingTokens.pop();
                break;
            }
        }
    }
    
    function addCreator(address[] calldata _creator) external onlyOwner {
        for(uint256 i = 0; i < _creator.length; i++){
            isAllowedCreator[_creator[i]] = true;

            emit AddCreator(_creator[i], block.timestamp);
        }
    }

    function removeCreator(address[] calldata _creator) external onlyOwner {
        for(uint256 i = 0; i < _creator.length; i++){
            isAllowedCreator[_creator[i]] = false;

            emit RemoveCreator(_creator[i], block.timestamp);
        }
    }

    function setPermissionlessCreation(bool _type) external onlyOwner {
        isPermissionless = _type;
        emit SetPermissionlessCreation(_type, block.timestamp);
    }

    function setSpotFactory(address _spotFactory) external onlyOwner {
        require(_spotFactory != address(0), 'TCM: address(0)');
        address old = spotFactory;
        spotFactory = _spotFactory;

        emit SetSpotFactory(old, _spotFactory, block.timestamp);
    }

    function setPerpetualFactory(address _perpetualFactory) external onlyOwner {
        require(_perpetualFactory != address(0), 'TCM: address(0)');
        address old = perpetualFactory;
        perpetualFactory = _perpetualFactory;

        emit SetPerpetualFactory(old, _perpetualFactory, block.timestamp);
    }

    function setRouters(address _newOORouter, address _new1InchRouter, address _newAlgebraRouter, address _newOdosRouter) external onlyOwner {
        if(_newOORouter != address(0)) {
            address old = _OORouter;
            _OORouter = _newOORouter;
            emit SetRouter(old, _newOORouter, block.timestamp);
        }
        if(_new1InchRouter != address(0)) {
            address old = _new1InchRouter;
            _1InchRouter = _new1InchRouter;
            emit SetRouter(old, _new1InchRouter, block.timestamp);
        }
        if(_newAlgebraRouter != address(0)) {
            address old = _newAlgebraRouter;
            _AlgebraRouter = _newAlgebraRouter;
            emit SetRouter(old, _newAlgebraRouter, block.timestamp);
        }
        if(_newOdosRouter != address(0)){
            address old = _ODOSRouter;
            _ODOSRouter = _newOdosRouter;
            emit SetRouter(old, _newOdosRouter, block.timestamp);
        }
    }

    function removePrize(address[] calldata tc_spot) external onlyOwner {
        address to = owner();
        for(uint i = 0; i < tc_spot.length; i++){
            ITradingCompetitionSpot(tc_spot[i]).removePrize(to);
        }
    }

    function pauseCompetition(address[] calldata tc_spot) external onlyOwner {
        for(uint i = 0; i < tc_spot.length; i++){
            ITradingCompetitionSpot(tc_spot[i]).togglePause();
        }
    }


    /*****************************************/
    /*-----         -----**-----        -----*/
    /*              VIEW FUNCTIONS           */
    /*-----         -----**-----        -----*/
    /*****************************************/

    function idToTradingCompetition(uint256 _id) external view returns(TC memory){
        address tc_address = _idToTCAddress[_id];
        return ITradingCompetitionSpot(tc_address).tradingCompetition();
    }

    function idCounter() external view returns(uint256) {
        return _idCounter;
    }

    function OORouter() external view returns(address) {
        return _OORouter;
    }

    function OneInchRouter() external view returns(address) {
        return _1InchRouter;
    }

    function AlgebraRouter() external view returns(address) {
        return _AlgebraRouter;
    }

    function OdosRouter() external view returns(address) {
        return _ODOSRouter;
    }

    function tradingTokens() external view returns(address[] memory){
        return _tradingTokens;
    }


    /*****************************************/
    /*-----         -----**-----        -----*/
    /*              HELPERS FUNCTIONS        */
    /*-----         -----**-----        -----*/
    /*****************************************/

    function _getLength(string memory _username) internal pure returns (uint256) {
        bytes memory b = bytes(_username);
        uint256 byteLength = b.length;
        uint256 charLength = 0;
        for (uint256 i = 0; i < byteLength; ) {
            charLength++;
        }
        return charLength;
    }
        
}
