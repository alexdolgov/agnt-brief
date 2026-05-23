// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "../../lib/QuickSort.sol";
import "./TradingCompetitionRouter.sol";
import "./ITradingCompetitionManager.sol";


/// @title Trading Competition SPOT
/// @author Prometheus, Perseus - Thena Finance
/// @notice This contract is where users register, trades and ev. claim the trading competition prize
contract TradingCompetitionSpot is ReentrancyGuard, TradingCompetitionRouter {

    using SafeERC20 for IERC20;
    
    /*****************************************/
    /*              STRUCT                */
    /*****************************************/

    /**
     * @notice Trading competition user info
     * @member startBalance track main token start balance
     * @member tokenBalance[] balance of tokens
     */
    struct User {
        uint startBalance;      // track main token start balance
        uint[] tokenBalance;    // balance of tokens
    }   

    /*****************************************/
    /*              CONSTANTS                */
    /*****************************************/

    /// @notice Precision for % pnl
    uint constant PRECISION = 1e12;
        
    /*****************************************/
    /*              IMMUTABLES               */
    /*****************************************/

    /// @notice ID of the trading competition
    uint public immutable ID;

    /// @notice owner(creator) of the trading competition
    address public immutable owner;
    
    
    /*****************************************/
    /*              VARIABLES                */
    /*****************************************/


    /// @notice init flag (set after manager saved)
    bool public init;

    /// @notice flag if owner has claimed fee if any
    bool private _ownerHasClaimed;

    /// @notice array of users addresses
    address[] private _users;

    /// @notice pnl array for users given the type of competition (flat or %)
    int[] private _pnl;

    /// @notice mapping with user position
    mapping(address => uint) private _userPosition;
    
    /// @notice Map user address with User strcuture
    mapping(address => User) private _user;

    /// @notice Control if user is registered in the competition
    mapping(address => bool) private _isRegistered;
  
    /// @notice Control if a token is allowed to be traded  (valid only for tokenIn and tokenOut, "mid" paths are not checked)
    mapping(address => bool) private _isTradingToken;

    /// @dev mapping trading token position
    mapping(address => uint) private _tokenPosition;

    /// @dev mapping winner address to whether he claimed
    mapping(address => bool) private winnersClaimed;

    /// @dev list of the winners. Only populated after the winner claimed his rewards
    address[] public winnersList;

    /// @notice Trading competition data structure
    ITradingCompetitionManager.TC private tc_data;

    /*****************************************/
    /*              EVENTS                   */
    /*****************************************/

    event Trade(address indexed user, address indexed tokenIn, address tokenOut, uint amountIn, uint amountOut, uint timestamp);
    event DepositFund(address indexed user, address indexed token, uint amountIn, uint timestamp);
    event WithdrawFund(address indexed user, address indexed token, uint amountOut, uint timestamp);
    event ClaimPrize(address indexed winner, address to, address indexed token, uint amount);
    event ClaimOwnerFee(address indexed owner, address to, address indexed token, uint amount);
    
    /*****************************************/
    /*              CONSTRUCTOR              */
    /*****************************************/

    constructor(address _owner, address _manager, uint _id) {
        manager = _manager;
        owner = _owner;
        ID = _id;
        init = false;
    }

    /// @notice Initialize the trading competition.
    /// @dev    _init() is called by the manager after _getPrize(). Saving some data locally to save on external calls
    function _init(ITradingCompetitionManager.TC calldata _tc) external returns(bool){
        require(msg.sender == manager, "TCF: not manager");
        tc_data = _tc;

        // add address
        tc_data.tradingCompetition = address(this);

        // tokens
        uint i = 0;
        for(i; i < _tc.competitionRules.tradingTokens.length; i++){
            _isTradingToken[_tc.competitionRules.tradingTokens[i]] = true;
            _tokenPosition[_tc.competitionRules.tradingTokens[i]] = i;
        }

        require(IERC20(_tc.prize.token).balanceOf(address(this)) >= _tc.prize.totalPrize, "TC: missing prize");
        
        init = true;
        return init;
    }

    
    /*****************************************/
    /*      USER INTERACTION - MANAGEMENT    */
    /*****************************************/

    /// @notice register a user to this trading competition and deposit amount starting balance
    /// @param amount the amount to deposit. If the competition startBalance is > 0, then amount MUST be = startBalance
    function registerAndDeposit(uint amount) public {
        _register();
        _deposit(amount);
    }
    
    function _register() internal {
        address caller = msg.sender;
        (,,uint registrationStart,uint registrationEnd) = _timestamp();
        
        require(block.timestamp >= registrationStart && block.timestamp <= registrationEnd, "TC: soon/late");
        require(!_isRegistered[caller], "TC: registered");
        require(_users.length <= tc_data.MAX_PARTICIPANTS, "TC: max user limit reached");
        
        _users.push(caller);
        _userPosition[caller] = _users.length - 1 ;
        _pnl.push(0);
        _user[caller].tokenBalance = new uint[](tc_data.competitionRules.tradingTokens.length);
        _isRegistered[caller] = true; 

        uint entryFee = tc_data.entryFee;
        if( entryFee > 0 ) _increasePrize(msg.sender, tc_data.prize.token, entryFee);
    }

    /// @notice deposit main token. Users with more mainTokens at the end of the trading comp wins. main token is equal to CompetitionRules.winning_token
    /// @dev    User must be registered. Can top-up anytime from registration start to end of registration.
    /// @dev    If starting_balance != 0 then everyone must start with the same balance.
    /// @param amount the amount to deposit. If the competition startBalance is > 0, then amount MUST be = startBalance
    function deposit(uint256 amount) external nonReentrant {
        _deposit(amount);
    }

    function _deposit(uint256 amount) internal {
        require(_isRegistered[msg.sender], "TC: not registered");

        uint _starting_balance = tc_data.competitionRules.starting_balance;
        if(_starting_balance != 0) {
            require(amount == _starting_balance, "TC: amount != startBal");
            require(_user[msg.sender].startBalance == 0, "TC: startBalance not zero");
        }
        
        (,,uint registrationStart,uint registrationEnd) = _timestamp();
        require(block.timestamp >= registrationStart && block.timestamp <= registrationEnd, "TC: soon/late");
        
        address mainToken = tc_data.competitionRules.winning_token;
        _user[msg.sender].startBalance += amount;
        _user[msg.sender].tokenBalance[_tokenPosition[mainToken]] += amount;
        
        IERC20(mainToken).safeTransferFrom(msg.sender, address(this), amount);  
        
        
        emit DepositFund(msg.sender, mainToken, amount, block.timestamp);
    }


    /// @notice Withdraw all funds of a user (all the different tokens). Can only be called after the competition ends
    function withdrawAllFunds() external nonReentrant {
        (,uint endTimestamp,,) = _timestamp();
        require(block.timestamp > endTimestamp, "TC: too soon");
        uint i = 0;
        uint len = tc_data.competitionRules.tradingTokens.length;
        for(i ; i < len; i++){
            address _token = tc_data.competitionRules.tradingTokens[i];
            uint balance = _user[msg.sender].tokenBalance[_tokenPosition[_token]];
           _withdrawFunds(msg.sender, _token, balance);
        }
    }
    
    /// @notice Withdraw a given amount of funds of a user
    /// @notice If registration is active user can remove its deposited funds. _token must be mainToken
    /// @param _token the token to withdraw. If we are still in the registration phase, then only mainToken can be withdrawn
    /// @param _amount the amount to withdraw. 
    function withdrawFunds(address _token, uint _amount) external nonReentrant {
        (,uint endTimestamp,uint registrationStart, uint registrationEnd) = _timestamp();
        if(block.timestamp > registrationStart && block.timestamp <= registrationEnd){
            _withdrawFundsRegActive(msg.sender, _token, _amount);
            return;
        }
        require(block.timestamp > endTimestamp, "TC: too soon");
        require(_user[msg.sender].tokenBalance[_tokenPosition[_token]] >= _amount, "TC: Not enough funds");
        _withdrawFunds(msg.sender, _token, _amount);
    }

    function _withdrawFunds(address who, address _token, uint _amount) internal {
        if(_amount > 0) {
            _user[who].tokenBalance[_tokenPosition[_token]] -= _amount;
            IERC20(_token).safeTransfer(who, _amount);
            emit WithdrawFund(who, _token, _amount, block.timestamp);
        }
    }

    function _withdrawFundsRegActive(address who, address _token, uint _amount) internal {
        require(_user[msg.sender].tokenBalance[_tokenPosition[_token]] >= _amount && _user[who].startBalance >= _amount, "TC: Not enough funds");
        require(_token == tc_data.competitionRules.winning_token, "TC: Not mainToken");

        uint _starting_balance = tc_data.competitionRules.starting_balance;
        if(_starting_balance == 0){
            _user[who].tokenBalance[_tokenPosition[_token]] -= _amount;
            _user[who].startBalance -= _amount;
            IERC20(_token).safeTransfer(who, _amount);
        } else {
            _user[who].tokenBalance[_tokenPosition[_token]] = 0;
            _user[who].startBalance = 0;
            IERC20(_token).safeTransfer(who, _starting_balance);
        }

        _isRegistered[who] = false; 
        _updateUsers(who);
        emit WithdrawFund(who, _token, _amount, block.timestamp);
    }

    
    
    /*****************************************/
    /*      USER INTERACTION - OPERATIONS    */
    /*****************************************/

    /// @notice swap between tokens in the CompetitionRules::tradingTokens[]
    /// @param caller the open ocean caller contract
    /// @param desc description of the swap to execute
    /// @param calls the calls to execute
    /// @return amountOut the amount of desc.dstToken that you got with this swap
    function swapOpenOcean(IOpenOceanCaller caller,IOpenOcean.SwapDescription calldata desc,IOpenOceanCaller.CallDescription[] calldata calls) external nonReentrant returns(uint256 amountOut) {
        address tokenIn = address(desc.srcToken);
        address tokenOut = address(desc.dstToken);
        uint amountIn = desc.amount;

        // checks
        _beforeSwap(msg.sender, tokenIn, tokenOut, amountIn);
        
        // save old bal
        uint _old_tokenIn = IERC20(tokenIn).balanceOf(address(this));
        uint _old_tokenOut = IERC20(tokenOut).balanceOf(address(this));

        // perform swap
        amountOut = _swap(caller, desc, calls);    

        // read new bal
        uint _new_tokenIn = IERC20(tokenIn).balanceOf(address(this));
        uint _new_tokenOut = IERC20(tokenOut).balanceOf(address(this));

        require(amountIn == _old_tokenIn - _new_tokenIn, "TC: OO swap wrong In");
        require(amountOut == _new_tokenOut - _old_tokenOut, "TC: OO swap wrong Out");
        
        // save user data
        _afterSwap(tokenIn, tokenOut, amountIn, amountOut);
        
        // emit event
        emit Trade(msg.sender, tokenIn, tokenOut, amountIn, amountOut, block.timestamp);
    }

    function swap1Inch(
        IAggregationExecutor caller, 
        I1InchRouter.SwapDescription calldata desc,
        bytes calldata permit,
        bytes calldata data
    ) external nonReentrant returns(uint256 amountOut) {
        address tokenIn = address(desc.srcToken);
        address tokenOut = address(desc.dstToken);
        uint amountIn = desc.amount;

        // checks
        _beforeSwap(msg.sender, tokenIn, tokenOut, amountIn);

        // Save old balances
        uint _old_tokenIn = IERC20(tokenIn).balanceOf(address(this));
        uint _old_tokenOut = IERC20(tokenOut).balanceOf(address(this));

        // Approve
        IERC20(tokenIn).safeApprove(ITradingCompetitionManager(manager).OneInchRouter(), amountIn);

        // Perform the swap
        (amountOut,) = I1InchRouter(ITradingCompetitionManager(manager).OneInchRouter()).swap(caller, desc, permit, data);

        // Read new balances
        uint _new_tokenIn = IERC20(tokenIn).balanceOf(address(this)); 
        uint _new_tokenOut = IERC20(tokenOut).balanceOf(address(this));

        // Validate input and output amounts
        require(amountIn == _old_tokenIn - _new_tokenIn, "TC: OO swap wrong In");
        require(amountOut == _new_tokenOut - _old_tokenOut, "TC: OO swap wrong Out");
        
         // save user data
        _afterSwap(tokenIn, tokenOut, amountIn, amountOut);

        // Emit event
        emit Trade(msg.sender, tokenIn, tokenOut, amountIn, amountOut, block.timestamp);
    }

    function swapAlgebra(address tokenIn, address tokenOut, IAlgebraRouter.ExactInputParams calldata params) external nonReentrant returns(uint256 amountOut) {
        uint amountIn = params.amountIn;

        // checks
        _beforeSwap(msg.sender, tokenIn, tokenOut, amountIn);
        require(params.recipient == address(this), "TC: Algebra wrong impersonator");

        // Save old balances
        uint _old_tokenIn = IERC20(tokenIn).balanceOf(address(this));
        uint _old_tokenOut = IERC20(tokenOut).balanceOf(address(this));

        // Approve
        IERC20(tokenIn).safeApprove(ITradingCompetitionManager(manager).AlgebraRouter(), amountIn);

        // Perform the swap
        amountOut = IAlgebraRouter(ITradingCompetitionManager(manager).AlgebraRouter()).exactInput(params);

        // Read new balances
        uint _new_tokenIn = IERC20(tokenIn).balanceOf(address(this)); 
        uint _new_tokenOut = IERC20(tokenOut).balanceOf(address(this));

        // Validate input and output amounts
        require(amountIn == _old_tokenIn - _new_tokenIn, "TC: Algebra swap wrong In");
        require(amountOut == _new_tokenOut - _old_tokenOut, "TC: Algebra swap wrong Out");
        
         // save user data
        _afterSwap(tokenIn, tokenOut, amountIn, amountOut);

        // Emit event
        emit Trade(msg.sender, tokenIn, tokenOut, amountIn, amountOut, block.timestamp);
    }



    
    /*****************************************/
    /*      USER INTERACTION - REWARDS       */
    /*****************************************/
    
    /// @notice calculates and sends the prize of the msg.sender to the `to` address. Usually we will call this function with `to` = msg.sender 
    /// @param to the address to claim the tokens
    function claimPrize(address to) external nonReentrant {
        (, uint endTimestamp,,) = _timestamp();
        require(block.timestamp > endTimestamp, "TC: Wait end");
        require(_isRegistered[msg.sender], "TC: not registered");

        // TODO edge case: what if there are not enough users registered in the competition? Chance of locking tokens forever in the smart contract 

        (uint winningPosition, uint equalCounter) = _findUserWinningPosition(msg.sender);
        if(winningPosition > tc_data.prize.weights.length -1) return; // msg.sender is not a winner

        require(!winnersClaimed[msg.sender], "TC: prize already claimed");
        
        winnersClaimed[msg.sender] = true;

        _claimAmount(to, winningPosition, equalCounter);
        winnersList.push(msg.sender);
    }

    /// @notice calculates and sends the owner fee to the `to` address. Only the owner of the tc can call this function
    /// @param to the address to claim the tokens
    function claimOwnerFee(address to) external nonReentrant {
        require(msg.sender == owner, 'TC: not owner');
        require(!_ownerHasClaimed, 'TC: owner fee claimed');
        if(tc_data.prize.owner_fee == 0) _ownerHasClaimed = true;
        _claimOwnerFee(to);
    }

    /// @notice function used to manually increase the total prize. Anyone can 'donate' to the prize pool
    /// @param amount the amount of prize.token that will go in the prize pot
    function increasePrize(uint amount) external nonReentrant {
        _increasePrize(msg.sender, tc_data.prize.token, amount);
    }
    
    
    /*****************************************/
    /*              INTERNAL FUNCTIONS       */
    /*****************************************/

    function _increasePrize(address from, address token, uint amount) internal {
        (,,uint registrationStart,uint registrationEnd) = _timestamp();
        require(block.timestamp >= registrationStart && block.timestamp <= registrationEnd, "TC: soon/late");
        if(token == tc_data.prize.token){
            tc_data.prize.totalPrize += amount;
            IERC20(token).safeTransferFrom(from, address(this), amount);
        }
    }

    function _claimAmount(address to, uint winningPosition, uint equalCounter) internal {
        (uint amount, address token) = _claimable(winningPosition, equalCounter);
        if(amount > 0) {
            IERC20(token).safeTransfer(to, amount);
            emit ClaimPrize(msg.sender, to, token, amount);
        }
        
    }

    /// @notice     Find the user winning position. 
    /// @param who  we are looking for
    /// @dev        If there is the same PNL between user, save the total number of equal pnls divide the prize accordingly  
    ///        
    /// @return pos             User position the winning list. pos = 0 --> 1st place, pos = 1 --> 2nd place, ... , pos = N --> Nth+1 Place
    /// @return equalCounter    Number of draw position
    function _findUserWinningPosition(address who) private view returns(uint pos, uint equalCounter) {
        
        uint userCounter = _users.length;
        uint upos = _userPosition[who];
        
        equalCounter = 0;                           //equal counter
        pos = 0;                                   //max counter

        for(uint i = 0; i < userCounter; i++){
            if(_pnl[i] > _pnl[upos]){
                pos++;
            }
            if(_pnl[i] == _pnl[upos]){
                equalCounter++;
            }
        }
        
        
    }
    

    
    function _claimable(uint winningPosition, uint equalCounter) internal view returns(uint256 amount, address token){
        uint winnersLength = tc_data.prize.weights.length;

        
        if(winningPosition >= winnersLength) {
            return (0, address(0)); // not a winner
        }

        uint256[] memory sortedWinningWeights = QuickSort.quickSort(tc_data.prize.weights);    // lowest first
        
        uint totalRealPrize = tc_data.prize.totalPrize * (PRECISION - PRECISION * tc_data.prize.owner_fee / 1000); // _totPrize, scaled by precision

        uint256 totalAmount = 0;

        for(uint i = 0; i < equalCounter; i++) {
            totalAmount += totalRealPrize * sortedWinningWeights[winnersLength - 1 - winningPosition - i] / 1000 / equalCounter;  
        }
        amount = totalAmount / PRECISION;
        token = tc_data.prize.token;
                        
    }


    function _claimOwnerFee(address to) internal {
        uint _owner_fee = (tc_data.prize.totalPrize * tc_data.prize.owner_fee / 1000);
        address token = tc_data.prize.token;
        if(_owner_fee > 0) IERC20(token).safeTransfer(to, _owner_fee);
        emit ClaimOwnerFee(msg.sender, to, token, _owner_fee);
        _ownerHasClaimed = true;
    }

    
    function _beforeSwap(address _swapper, address tokenIn, address tokenOut, uint amountIn) internal view {
        require(_isRegistered[_swapper], "TC: not registered");
        (uint startTimestamp, uint endTimestamp,,) = _timestamp();
        require(block.timestamp >= startTimestamp && block.timestamp <= endTimestamp, "TC: soon/late");
        require(_isTradingToken[tokenIn], "TC: tokenIn not allowed");
        require(_isTradingToken[tokenOut], "TC: tokenOut not allowed");
        require(_user[_swapper].tokenBalance[_tokenPosition[tokenIn]] >= amountIn, "TC: not enough funds");
    }
   
    function _afterSwap(address tokenIn, address tokenOut, uint amountIn, uint amountOut) internal {
        User storage __user = _user[msg.sender];
        uint oldBalIn = __user.tokenBalance[_tokenPosition[tokenIn]];
        uint oldBalOut = __user.tokenBalance[_tokenPosition[tokenOut]];
        uint position = _userPosition[msg.sender];
        uint startBalance = __user.startBalance;

        __user.tokenBalance[_tokenPosition[tokenIn]] = oldBalIn - amountIn;
        __user.tokenBalance[_tokenPosition[tokenOut]] = oldBalOut + amountOut;

        // if tokenIn is main token, then sub amount given for swap
        if(tokenIn == tc_data.competitionRules.winning_token){
            if(tc_data.prize.win_type){
                // PNL %
                _pnl[position] = int( (oldBalIn - amountIn - startBalance) * PRECISION / startBalance );
            } else {
                // PNL FLAT
                _pnl[position] -= int(amountIn);
            }
            return;
        }
        // if tokenOut is main token, then add amount receive after swap
        if(tokenOut == tc_data.competitionRules.winning_token){
            if(tc_data.prize.win_type){
                // PNL %
                _pnl[position] = int( (oldBalIn + amountOut - startBalance) * PRECISION / startBalance );
            } else {
                // PNL FLAT
                _pnl[position] += int(amountOut);
            }
            return;
        }
        
    }

    function _updateUsers(address who) private returns(bool status) {
        uint position = _userPosition[who];
        uint last = _users.length -1;
        address lastUser = _users[last];

        if(position == 0){
            _users[0] = lastUser;
            _userPosition[lastUser] = 0;
            _users.pop();
            _pnl.pop();
            delete _userPosition[who];
            return true; 
        }
        if(position == last){
            _users.pop();
            _pnl.pop();
            delete _userPosition[who];
            return true;
        }
    
        _users[position] = lastUser;
        _userPosition[lastUser] = position;
        _users.pop();
        _pnl.pop();
        delete _userPosition[who];
        return true;        
    }



    /*****************************************/
    /*              VIEW FUNCTIONS           */
    /*****************************************/
    
    /// @notice get the timestamp of the trading competition (see ITradingCompetitionManager.sol).
    function timestamp() public view returns(uint startTimestamp, uint endTimestamp,uint registrationStart,uint registrationEnd) {
        return _timestamp();
    }

    function _timestamp() internal view returns(uint startTimestamp, uint endTimestamp,uint registrationStart,uint registrationEnd) {
        startTimestamp = tc_data.timestamp.startTimestamp;
        endTimestamp = tc_data.timestamp.endTimestamp;
        registrationStart = tc_data.timestamp.registrationStart;
        registrationEnd = tc_data.timestamp.registrationEnd;
    }

    /// @notice get trading tokens (see ITradingCompetitionManager.sol)
    function tradingTokens() external view returns(address[] memory){
        return tc_data.competitionRules.tradingTokens;
    }

    /// @notice get TradingCompetition struct (see ITradingCompetitionManager.sol)
    function tradingCompetition() external view returns(ITradingCompetitionManager.TC memory){
        return tc_data;
    }

    /// @notice check if a user is registered for the competition
    function isRegistered(address _who) external view returns(bool){
        return _isRegistered[_who];
    }

    function users() external view returns(address[] memory){
        return _users;
    }
    
    function user(address _who) external view returns(User memory userinfo){
        return _user[_who];
    }


    /// @notice check if a user won the trading competition or not
    function isWinner(address who) external view returns(bool answer, uint placement) {
        (placement,) = _findUserWinningPosition(who);
        answer = placement < tc_data.prize.weights.length  ? true : false;
    }

    /// @notice get the PNL of an account.
    function getPNLOf(address who) external view returns(int) {
        require(_isRegistered[who]);
        return _pnl[_userPosition[who]];
    }

    /// @notice returns the amount of prize.token that the user won
    function claimable(address who) external view returns(uint256 amount, address token) {
        (uint winningPosition, uint equalCounter) = _findUserWinningPosition(who);
        return _claimable(winningPosition, equalCounter);
    }

    /// @notice returns the balances of all the tokens of a particular users
    function userBalance(address who) external view returns(uint256[] memory amounts, address[] memory tokens) {
        tokens = tc_data.competitionRules.tradingTokens;
        amounts = _user[who].tokenBalance;
    }

    /// @notice Check if the owner has claimed the host fee
    /// @param _owner address to check
    function ownerHasClaimed(address _owner) external view returns(bool) {
        require(_owner == owner, 'TC: not owner');
        if(tc_data.prize.owner_fee == 0) return true;
        return _ownerHasClaimed;
    }

    /// @notice Return the owner fee amount
    function ownerFeeAmount() external view returns(uint256){
        if(tc_data.prize.owner_fee == 0) return 0;
        uint _owner_fee = (tc_data.prize.totalPrize * tc_data.prize.owner_fee / 1000);
        return _owner_fee;
    }

}
