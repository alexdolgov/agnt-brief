// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import "./interfaces/ISymmio.sol";
import "./interfaces/ISymmioPartyA.sol";
import "./MultiAccount.sol";
import "./interfaces/ITradingCompetitionManager.sol";
import "./interfaces/ITradingCompetitionPerpetualAccountManager.sol";
import "./interfaces/IViewFacet.sol";
import "./Rewarder.sol" as Rewarder;


/// @title  Trading Competition - Perpetual - Account Manager
/// @dev    Started from SYMMIOV3MultiAccount https://github.com/SYMM-IO/symmio-core/blob/main/contracts/multiAccount/MultiAccount.sol
///         Each trading competition spawn a TradingCompetitionPerpetualAccountManager. Each sub-account is a user.
///         To know winner MUON network must provide signature for user with higher delta balance at the end (start - end balance) FLAT or %
/// @author Prometheus - Perseus

contract TradingCompetitionPerpetualAccountManager is ITradingCompetitionPerpetualAccountManager, MultiAccount {

    using SafeERC20 for IERC20;

    uint public id;

    /// @notice array of users addresses
    address[] internal _users;

    /// @notice Control if user is registered in the competition
    mapping(address => bool) internal _isRegistered;
    /// @notice Map the pair symbol Id
    mapping(uint256 => bool) internal _isValidPair;

    ITradingCompetitionManager public perpManager;
    ITradingCompetitionManager.TC internal tc_data;
   
    constructor(address admin, uint _id, address _perpManager, address symmioAddress_,bytes memory accountImplementation_) {
        // admin is TradingCompetitionPerpetualManager.sol
        _grantRole(DEFAULT_ADMIN_ROLE, _perpManager);
        _grantRole(PAUSER_ROLE, admin);
        _grantRole(UNPAUSER_ROLE, admin);
        _grantRole(SETTER_ROLE, admin);
        accountsAdmin = admin;
        id = _id;
        symmioAddress = symmioAddress_;
        accountImplementation = accountImplementation_;
        perpManager = ITradingCompetitionManager(_perpManager);
    }


    function _init(ITradingCompetitionManager.TC calldata tc) external onlyRole(DEFAULT_ADMIN_ROLE) returns(bool){
        
        tc_data = tc;

        // add address
        tc_data.id = id;
        tc_data.tradingCompetition = address(this);

        uint i = 0;
        for(; i < tc_data.prize.token.length; i++){
            Rewarder.Rewarder(perpManager.rewarder()).fill(tc_data.id, tc_data.prize.token[i], 0);   
        }

        for(i = 0; i < tc_data.competitionRules.pairIds.length; i++){
            _isValidPair[tc_data.competitionRules.pairIds[i]] = true; 
        }

        return true;
    }

    //////////////////////////////// Account Management ////////////////////////////////////

    /// @notice register a user to this trading competition     
    function _register() internal {
        address caller = msg.sender;
        (,,uint registrationStart,uint registrationEnd) = _timestamp();
        
        if(block.timestamp < registrationStart && block.timestamp > registrationEnd) revert RegistrationTimestamp();
        if(_isRegistered[caller]) revert Registered();
        if(_users.length > tc_data.MAX_PARTICIPANTS) revert MaxUsers();
        
        _users.push(caller);
        _isRegistered[caller] = true; 
        for(uint i = 0; i < tc_data.prize.token.length; i++) {
            if(tc_data.entryFee[i] > 0 ) _increasePrize(msg.sender, tc_data.prize.token[i], tc_data.entryFee[i], i);
        }
        emit Register(msg.sender, block.timestamp);
    }


    function _increasePrize(address from, address token, uint amount, uint pos) internal {
        /// @dev totalPrize also counts the owner amounts! Remember to multiply by (1-owner_fee) to get the real prize pool!
        tc_data.prize.totalPrize[pos] += amount; 

        uint ownerAmount = tc_data.prize.owner_fee * amount / 1000;
        
        IERC20(token).safeTransferFrom(from, address(this), amount); 
        IERC20(token).safeTransfer(tc_data.owner, ownerAmount); 
        IERC20(token).safeIncreaseAllowance(perpManager.rewarder(), amount - ownerAmount);
        Rewarder.Rewarder(perpManager.rewarder()).fill(tc_data.id, token, amount - ownerAmount);    
    }

    function _depositStartingBalance(address caller) internal {
        address account = accounts[caller][0].accountAddress;
        uint amount = tc_data.competitionRules.starting_balance;
        if(tc_data.competitionRules.starting_balance > 0) {
            address collateral = ISymmio(symmioAddress).getCollateral();
            IERC20(collateral).safeTransferFrom(
                msg.sender,
                address(this),
                amount
            );
            IERC20(collateral).safeIncreaseAllowance(symmioAddress, amount);
            ISymmio(symmioAddress).depositFor(account, amount);
            bytes memory _callData = abi.encodeWithSignature(
                "allocate(uint256)",
                amount
            );
            innerCall(account, _callData);
            emit DepositAllocateStartingBalance(caller, account, amount);
        }
    }

    function addAccount(string memory name) external override whenNotPaused {
        _register();
        address account = _deployPartyA();
        indexOfAccount[account] = accounts[msg.sender].length;
        accounts[msg.sender].push(Account(account, name));
        owners[account] = msg.sender;
        _depositStartingBalance(msg.sender);
        emit AddAccount(msg.sender, account, name);
    }

    //////////////////////////////// VIEWS ////////////////////////////////////

    function users() external view returns(address[] memory) {
        return _users;
    }

    function isRegistered(address user) external view returns(bool) {
        return _isRegistered[user];
    }

    function timestamp() external view returns(uint startTimestamp, uint endTimestamp,uint registrationStart,uint registrationEnd) {
        return _timestamp();
    }
    
    function _timestamp() internal view returns(uint startTimestamp, uint endTimestamp,uint registrationStart,uint registrationEnd) {
        startTimestamp = tc_data.timestamp.startTimestamp;
        endTimestamp = tc_data.timestamp.endTimestamp;
        registrationStart = tc_data.timestamp.registrationStart;
        registrationEnd = tc_data.timestamp.registrationEnd;
    }

    /// @notice get TradingCompetition struct (see ITradingCompetitionManager.sol)
    function tradingCompetition() external view returns(ITradingCompetitionManager.TC memory){
        return tc_data;
    }

    /// @notice Get the account address of a user
    function getAccountOf(address user) external view returns (address) {
        _onlyRegistered(user);
        return _getAccountOf(user);
    }

    function _getAccountOf(address user) internal view returns (address) {
        return accounts[user][0].accountAddress;
    }

    /// @notice Get the currently allocated balance of a user
    function getBalanceOfUser(address user) external view returns(uint) {
        _onlyRegistered(user);
        address account = _getAccountOf(user);
        bytes memory _callData = abi.encodeWithSignature(
            "allocatedBalanceOfPartyA(address)",
            account
        );
        (bool _success, bytes memory _resultData) = symmioAddress.staticcall(_callData);
        if(!_success) revert CallFailed(); 


        return abi.decode(_resultData, (uint256));
    }

    /// @notice get the total quotes of a user
    function getQuotesLength(address account) external view returns(uint256) {
        return _getQuotesLength(account);
    }

    /// @notice returns a boolean to check if the user followed the trading competition rules, using pagination
    /// @param user the user address
    /// @param start index of the first quote to process
    /// @param size the amount of quotes to process
    function isAccountValid(address user, uint256 start, uint256 size) external view returns(bool) {
        _onlyRegistered(user);
        address account = _getAccountOf(user);

        uint quoteslength = _getQuotesLength(account);
        if(quoteslength == 0) return false;
        uint length = size;
        if(length > quoteslength - start) {
            length = quoteslength - start;
        }

        bytes memory _callData = abi.encodeWithSignature(
            "quoteIdsOf(address,uint256,uint256)",
            account,
            start,
            length
        );

        (bool _success, bytes memory _resultData) = symmioAddress.staticcall(_callData);
        if(!_success) revert GetQuoteIdsOf();
        

        uint256[] memory quoteIds = abi.decode(_resultData, (uint256[])); 

        bool isValid = true;
        (uint startTimestamp, uint endTimestamp,,) = _timestamp();

        for(uint256 i = 0; i < length && isValid; i++) {
            isValid = _processQuote(quoteIds[i], startTimestamp, endTimestamp);
        }

        return isValid;
    }

    
    /// @notice Get the PnL in collateral token amount
    /// @param _user the user address
    function getPnLOfUser(address _user) external view returns(int256 amount, bool isValid) {
        return _getPnLOfUser(_user);
    }

    /// @notice Get the PnL in collateral token amount
    /// @param _user the user array address
    function getPnLOfUsers(address[] calldata _user) external view returns(int256[] memory amount, bool[] memory isValid) {
        amount = new int256[](_user.length);
        isValid = new bool[](_user.length);
        uint256 i = 0;
        for(i; i < _user.length; i++){
            (amount[i], isValid[i]) = _getPnLOfUser(_user[i]);
        }
    }

    /// @notice Get the PnL in collateral token amount for all TC's users
    function getPnLOfAllUsers() external view returns(int256[] memory amount, bool[] memory isValid) {
        address[] memory _user = _users;
        amount = new int256[](_user.length);
        isValid = new bool[](_user.length);
        uint256 i = 0;
        for(i; i < _user.length; i++){
            (amount[i], isValid[i]) = _getPnLOfUser(_user[i]);
        }
    }


    function _getPnLOfUser(address user) internal view returns(int256 amount, bool isValid) {
        address account = _getAccountOf(user);
        uint quoteslength = _getQuotesLength(account);
        if(quoteslength == 0) return (0,false);
        bytes memory _callData = abi.encodeWithSignature(
            "quoteIdsOf(address,uint256,uint256)",
            account,
            0,
            quoteslength
        );

        (bool _success, bytes memory _resultData) = symmioAddress.staticcall(_callData);
        if(!_success) revert GetQuoteIdsOf(); 

        uint256[] memory quoteIds = abi.decode(_resultData, (uint256[])); 
        
        (uint startTimestamp, uint endTimestamp,,) = _timestamp();
        
        isValid = true;
        int256 tmp_amnt = 0;
        for(uint256 i = 0; i < quoteslength && isValid; i++) {
            (tmp_amnt, isValid) = _processQuoteWithPnL(quoteIds[i], startTimestamp, endTimestamp);
            amount += tmp_amnt;
        }
    }


    
    /// @notice Process the given quote and verify validity
    /// @param quoteId  the id of the quote
    /// @param startTimestamp   the start of the competition    (UTC)
    /// @param endTimestamp     the end of the competition      (UTC)
    function _processQuote(uint256 quoteId, uint256 startTimestamp, uint256 endTimestamp) internal view returns(bool) {
        Quote memory q = _getQuote(quoteId);
        return _verifyQuote(q, startTimestamp, endTimestamp);
    }

         
    /// @notice Process the given quote: verify validity and find PnL
    /// @param quoteId  the id of the quote
    /// @param startTimestamp   the start of the competition    (UTC)
    /// @param endTimestamp     the end of the competition      (UTC)
    function _processQuoteWithPnL(uint256 quoteId, uint256 startTimestamp, uint256 endTimestamp) internal view returns(int256 amount, bool isValid) {
        Quote memory q = _getQuote(quoteId);
        if(!_verifyQuote(q, startTimestamp, endTimestamp)) return (0, false);

        isValid = true;

        int256 price_delta = 0;

        if(q.positionType == PositionType.LONG) {
            price_delta = int256(q.avgClosedPrice) - int256(q.openedPrice);
        } else {
            price_delta = int256(q.openedPrice) - int256(q.avgClosedPrice);
        }

        amount = price_delta *  int256(q.closedAmount) / 1e18;
    }



    /// @notice get the total quotes of an account
    /// @param account the account address
    function _getQuotesLength(address account) internal view returns(uint256) {
        bytes memory _callData = abi.encodeWithSignature(
            "quotesLength(address)",
            account
        );
        (bool _success, bytes memory _resultData) = symmioAddress.staticcall(_callData);
        if(!_success) revert GetQuoteLength();

        return abi.decode(_resultData, (uint256));
    }

    
    /// @notice Get the quote data
    /// @param quoteId the id of the quote to read
    function _getQuote(uint256 quoteId) internal view returns(Quote memory q){
        bytes memory _callData = abi.encodeWithSignature(
            "getQuote(uint256)",
            quoteId
        );
        (bool _success, bytes memory _resultData) = symmioAddress.staticcall(_callData);
        if(!_success) revert GetQuote();

        return abi.decode(_resultData, (Quote));
    }


    /// @notice Verify the quote followed trading competition params
    /// @param q    the quote structure (IViewFacet.sol)
    /// @param startTimestamp   the start of the competition    (UTC)
    /// @param endTimestamp     the end of the competition      (UTC)
    function _verifyQuote(Quote memory q, uint256 startTimestamp, uint256 endTimestamp) internal view returns(bool) {

        // If quote did not go through, then skip it 
        if(q.quoteStatus == QuoteStatus.PENDING || q.quoteStatus == QuoteStatus.EXPIRED) return true;
        
        // No transactions closed or liquidated before start and after end.
        if(q.quoteStatus == QuoteStatus.CLOSED || q.quoteStatus == QuoteStatus.LIQUIDATED){
            if(q.statusModifyTimestamp  < startTimestamp || q.statusModifyTimestamp  > endTimestamp) return false;    
        }

        // No transactions created before start and after end.
        if(q.createTimestamp < startTimestamp || q.createTimestamp > endTimestamp) return false;
        
        // no trades that are not on allowed pairs
        if(tc_data.competitionRules.pairIds.length > 0) return _isValidPair[q.symbolId];
        
        return true;
    }


    function _onlyRegistered(address user) internal view {
        if(!_isRegistered[user]) revert NotRegistered();
    }
    
}