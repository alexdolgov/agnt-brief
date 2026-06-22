// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "./TradingCompetitionManagerEvents.sol";
import "./interfaces/ITradingCompetitionManager.sol";
import "./TradingCompetitionPerpetualFactory.sol";


interface ITradingCompetitionPerp {
    function _init(ITradingCompetitionManager.TC calldata _tc) external returns(bool);
    function tradingCompetition() external view returns(ITradingCompetitionManager.TC calldata tc);
}


/// @title Trading Competition Perpetual Manager
/// @author Prometheus/Perseus - Thena Finance
/// @notice This contract is where users creates trading competitions
contract TradingCompetitionPerpetualManager is Ownable, ReentrancyGuard, TradingCompetitionManagerEvents {

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
    /*************************************** */ 


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

    /// @notice Max time for competition 
    uint256 internal MAX_TIME_COMP_LENGTH = 8 weeks;   

    /// @notice ID Counter
    uint256 private _idCounter;
    
    /// @notice Max fee owner can take from prize
    uint256 public  MAX_OWNER_FEE = 250;                //25%

    /// @notice Max number of winners
    uint256 public  MAX_PLACEMENTS = 100;

    /// @notice Max number of users 
    //uint256 public MAX_USERS = 1000;

    /// @notice protocol fee in number of tokens
    uint256 public protocol_fee;     

    /// @notice pair ids
    uint256[] internal pairId;

    /// @notice protocol fee treasury
    address public protocol_fee_treasury;
    
    /// @notice protocol fee token
    address public protocol_fee_token;

    /// @notice rewarder address
    address public rewarder;

    /// @notice trading competition perpetual factory
    address public perpetualFactory;

    /// @notice array of allowed trading tokens
    address[] internal _prizeTokens;

    /// @notice Account Implementation used in TradingCompetitionPerpetualAccountManager.sol
    bytes public accountImplementation;

    /// @notice allowed tokens mapping.
    mapping(address => bool) public isAllowedToken;

    /// @notice allow trading pairs id (SymbolStorage)
    mapping(uint => bool) public isAllowedPairId;

    /// @notice store trading pairs name (SymbolStorage)
    mapping(uint => string) public pairIdToName;

    /// @notice trading competition per ID
    mapping(uint256 => address) internal _idToTCAddress;

    /// @notice set who's allow to create a trading competition. Early launch limited, then permissionless
    mapping(address => bool) public isAllowedCreator;


    
    /*****************************************/
    /*-----         -----**-----        -----*/
    /*              CONSTRUCTOR              */
    /*-----         -----**-----        -----*/
    /*****************************************/
    
    constructor(address _rewarder) {
        protocol_fee_token = address(0x55d398326f99059fF775485246999027B3197955); //USDT
        _idCounter = 0;
        protocol_fee_treasury = msg.sender;
        protocol_fee = 50 * 1e18;  // 50 usdt  
        isPermissionless = true; 
        pause = false;
        rewarder = _rewarder;
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

        // Send Prize and Protocol Fee
        _getFeeAndInit(_tradingCompetition, _tc);

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
        require(tc.MAX_PARTICIPANTS > 1, "TCM: MAX_PARTICIPANTS");

        // check prize
        uint256 i = 0;  
        require(tc.prize.token.length < MAX_TOKEN_PRIZE, "TCM: token prize length");
        for(i = 0; i < tc.prize.token.length; i++){
            require(isAllowedToken[tc.prize.token[i]], "TCM: token prize not allowed");
            require(tc.prize.totalPrize[i] == 0, "TCM: totalPrize must be zero");
        }
        require(tc.prize.token.length == tc.entryFee.length, "TCM: prize mismatch");
        require(tc.prize.totalPrize.length == tc.entryFee.length, "TCM: totalPrize mismatch");
        require(tc.prize.owner_fee <= MAX_OWNER_FEE, "TCM: creator fee too high");
        require(tc.prize.weights.length > 0 &&  tc.prize.weights.length <= MAX_PLACEMENTS, "TCM: MAX_PLACEMENTS");

        uint256 temp_total_weight = 0;
        for(i = 0; i < tc.prize.weights.length; i ++){
            require(tc.prize.weights[i] > 0, "TCM: weights == 0");
            temp_total_weight += tc.prize.weights[i];
        }
        require(temp_total_weight == PRECISION, 'TCM: weight precision');

        for(i=0; i < tc.competitionRules.pairIds.length; i++){
            require(isAllowedPairId[tc.competitionRules.pairIds[i]], 'TCM: pairId not allowed');
        }
    }

    
    /// @notice Save new Trading Competition
    /// @param tc  Trading Competition structure
    function _create(TC calldata tc) internal returns(address){
        require(perpetualFactory != address(0), 'TCF: SF addr0');
        return TradingCompetitionPerpetualFactory(perpetualFactory).deployTradingCompetition(tc.owner, _idCounter, accountImplementation);    
    }

    /// @notice Save new Trading Competition
    /// @dev update tradingCompetition
    /// @param _tc  Address of the Trading Competition contract
    function _save(address _tc) internal {       
        // save data
        _idToTCAddress[_idCounter] = _tc;
        unchecked{ _idCounter += 1; }
    }


    /// @notice Get the fee of the trading competition
    /// @param tc  Trading Competition structure
    function _getFeeAndInit(TC calldata tc, address _tc) internal {
        if(protocol_fee > 0) IERC20(protocol_fee_token).safeTransferFrom(msg.sender, protocol_fee_treasury, protocol_fee);
        require(ITradingCompetitionPerp(_tc)._init(tc));
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
                _prizeTokens.push(_token[i]);
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
        for(uint k = 0; k < _prizeTokens.length; k++){
            if(token == _prizeTokens[k]){
                _prizeTokens[k] = _prizeTokens[_prizeTokens.length -1];
                _prizeTokens.pop();
                break;
            }
        }
    }

    function addPair(uint[] calldata _pairId, string[] calldata _pairIdName) external onlyOwner {
        uint id;

        for(uint256 i = 0; i < _pairId.length; i++){
            id = _pairId[i];

            if(!isAllowedPairId[id]){
                isAllowedPairId[id] = true;
                pairIdToName[id] = _pairIdName[i];
                pairId.push(id);

                emit AddPair(id, _pairIdName[i], block.timestamp);
            }
        }
    }

    
    function removePair(uint[] calldata _pairId) external onlyOwner {
        uint id;

        for(uint256 i = 0; i < _pairId.length; i++){
            id = _pairId[i];

            if(isAllowedPairId[id]) {
                isAllowedPairId[id] = false;
                string memory name = pairIdToName[id];
                pairIdToName[id] = "";
                _removeId(id);
                
                emit RemovePair(id, name, block.timestamp);
            }

        }
    }

    function _removeId(uint256 id) internal {
        for(uint i = 0; i < pairId.length; i) {
            if(id == pairId[i]){
                pairId[i] = pairId[pairId.length - 1];
                pairId.pop();
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


    function setPerpetualFactory(address _perpetualFactory) external onlyOwner {
        require(_perpetualFactory != address(0), 'TCM: address(0)');
        address old = perpetualFactory;
        perpetualFactory = _perpetualFactory;

        emit SetPerpetualFactory(old, _perpetualFactory, block.timestamp);
    }

    function setRewarder(address _rewarder) external onlyOwner {
        require(_rewarder != address(0), 'TCM: address(0)');
        address old = rewarder;
        rewarder = _rewarder;

        emit SetRewarder(old, _rewarder, block.timestamp);
    }

    function setAccountImplementation(bytes memory accountImplementation_) external onlyOwner {
        accountImplementation = accountImplementation_;
        emit SetAccountImplementation(accountImplementation,accountImplementation_);
    }

    /*****************************************/
    /*-----         -----**-----        -----*/
    /*              VIEW FUNCTIONS           */
    /*-----         -----**-----        -----*/
    /*****************************************/

    function idToTradingCompetition(uint256 _id) external view returns(TC memory){
        address tc_address = _idToTCAddress[_id];
        return ITradingCompetitionPerp(tc_address).tradingCompetition();
    }

    function idCounter() external view returns(uint256) {
        return _idCounter;
    }

    function prizeTokens() external view returns(address[] memory) {
        return _prizeTokens;
    }

    function pairs() external view returns(uint256[] memory ids, string[] memory name) {
        uint i;
        uint len = pairId.length;
        uint id;

        ids = new uint256[](len);
        name = new string[](len);

        for(i = 0; i < len; i++){
            id = pairId[i];
            ids[i] = id;
            name[i] = pairIdToName[id];
        }
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



