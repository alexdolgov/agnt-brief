// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "../../interfaces/ITaskTreasuryGelato.sol";
import "../../interfaces/IGelatoAutomate.sol";
import "../../interfaces/IVotingEscrow.sol";

import "hardhat/console.sol";

interface IVoter {
    function vote(uint _tokenId, address[] calldata _poolVote, uint256[] calldata _weights) external;
}

interface IVeTheAutomationFactory {
    function voter() external view returns(address);
}



contract VeTheAutomationBase is Ownable, ReentrancyGuard {

    using SafeERC20 for IERC20;
    
    /* -----------------------------------------------------------------------------
                                    DATA
    ----------------------------------------------------------------------------- */
   

    // Boolean to define pause state
    bool public isPaused = false;

    // Boolean to know if upkeep is registered
    bool public isUpKeepRegistered = false;

    // Time period of automation (deafult 1 WEEK)
    uint256 constant public timePeriod = 1 weeks;

    // Last time automation was called
    uint256 public lastUpdate;

    // TokenID of automation
    uint256 public tokenId;
    
    // Array with pools weights to use in voting
    uint256[] public weights;

    // Automation ID
    bytes32 public taskId;

    // factory address
    address public factory;

    // veTHE address
    address public ve = 0xfBBF371C9B0B994EebFcC977CEf603F7f31c070D;

    // native token address
    address public constant BNB = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;
    
    // Array with pools addresses to use in voting
    address[] public pools;
 
    // Interface Task Treasury for Gelato automation 
    ITaskTreasuryGelato taskTreasury = ITaskTreasuryGelato(0xbECe6A2101eC94E817c072622671B399A3508Ac1);
    
    // Interface Automation for Gelato automation
    IAutomate automate = IAutomate(0x527a819db1eb0e34426297b03bae11F2f8B3A19E);

    /* -----------------------------------------------------------------------------
                                    MODIFIERS
    ----------------------------------------------------------------------------- */
    
    // check if automation is paused
    modifier paused() {
        require(!isPaused, 'VTA: paused');
        _;
    }

    /* -----------------------------------------------------------------------------
                                    EVENTS
    ----------------------------------------------------------------------------- */

    event Execute(address indexed automation, uint indexed tokenid, uint timestamp);
    event Create(address indexed automation, uint indexed tokenid, bytes32 indexed taskId, uint timestamp);
    event Cancel(address indexed automation, uint indexed tokenid, bytes32 indexed taskId, uint timestamp);
    event PoolChange(address[] newpools);
    event WeightChange(uint[] newweights);
    event LastUpdate(uint _newtimestamp);
    event ForceVote(uint timestamp);
    event ForceVoteAndLastUpdate(uint timestamp);
    event StartAutomation();
    event StopAutomation();
    event Withdraw(address indexed token, address indexed to, uint amount);
    event Deposit(address indexed token, address indexed to, uint amount);
    

    /* -----------------------------------------------------------------------------
                                    CONSTRUCTOR AND INIT
    ----------------------------------------------------------------------------- */
    constructor(uint _tokenId, uint _startTimestamp, address _owner, address[] memory _pools, uint256[] memory _weights)  {
        factory = msg.sender;
        isPaused = false;
        lastUpdate = _startTimestamp - timePeriod;  //we moved back 1 week to allow automation run this current week (see checkUpkeep condition)

        require(_pools.length == _weights.length, 'VTA: _pools/_weights len');
        require(IVotingEscrow(ve).isApprovedOrOwner(_owner, _tokenId), 'VTA: not owner');

        weights = new uint256[](_pools.length);
        pools = new address[](_pools.length);
        weights = _weights;
        pools = _pools;

        tokenId = _tokenId;    

        transferOwnership(_owner);   

    }
    

    /* -----------------------------------------------------------------------------
                                    GELATO FUNCTIONS
    ----------------------------------------------------------------------------- */
  
    /// @notice check if automation can be called
    function checker() external view returns (bool canExec, bytes memory execPayload){
        return (_check(), "");
    }
   
    /// @notice perform automation
    function performUpkeep() external paused {
        bool upkeepNeeded = _check();
        require(upkeepNeeded, 'VTA: !update');
        IVoter(_voter()).vote(tokenId, pools, weights);
        lastUpdate += timePeriod;

        emit Execute(address(this), tokenId, block.timestamp);
    }

    /// @notice create the gelato automation
    function createAutomation() external onlyOwner {
        emit Create(address(this), tokenId, taskId, block.timestamp);
        _register();        
    }

    /// @notice cancel the current automation
    function cancelAutomation() external onlyOwner {
        emit Cancel(address(this), tokenId, taskId, block.timestamp);
        _cancelTask();
    }

    /* -----------------------------------------------------------------------------
                                    USER KEEPER OPERATIONS
    ----------------------------------------------------------------------------- */
    /// @notice withdraw funds from automation and send to owner
    /// @param _amount the amount to withdraw
    /// @param _token  the token to withdraw
    function withdrawFunds(uint256 _amount, address _token) external onlyOwner {
        _withdrawFunds(_amount, _token);
        emit Withdraw(_token, owner(), _amount);
    }

    /// @notice deposit funds into gelato 
    /// @param _amount the amount to deposit
    /// @param _token the token to deposit
    function depositFunds(uint256 _amount, address _token) external payable onlyOwner {
        _depositFunds(_amount, _token);
        emit Deposit(_token, owner(), _amount);
    }

    /// @notice Force vote and update timestamp
    /// @dev used in case automation is stucked
    function forceVoteAndUpdateNow() external onlyOwner {
        IVoter(_voter()).vote(tokenId, pools, weights);
        lastUpdate = block.timestamp;
        emit ForceVoteAndLastUpdate(block.timestamp);
    }

    /// @notice Force vote
    /// @dev used in case user wants to force after changes 
    function forceVote() external onlyOwner {
        IVoter(_voter()).vote(tokenId, pools, weights);
        emit ForceVote(block.timestamp);
    }
    
    /* -----------------------------------------------------------------------------
                                    USER SETTINGS
    ----------------------------------------------------------------------------- */

    /// @notice set new pools and weights
    /// @param _pools   new pools to vote
    /// @param _weights new weights for pools
    function setPoolsAndWeights(address[] calldata _pools, uint256[] calldata _weights) external onlyOwner {
        _checkPoolsAndWeights(_pools, _weights);
        pools = _pools;
        weights = _weights;
        emit PoolChange(_pools);
        emit WeightChange(_weights);
    }

    /// @notice set new weights
    /// @param _weights new weights
    function setWeights(uint256[] calldata _weights) external onlyOwner {
        require(pools.length == _weights.length, 'VTA: _pools/_weights len');
        weights = _weights;
        emit WeightChange(_weights);
    }

    /// @notice set new pools
    /// @param _pools   new pools
    function setPools(address[] calldata _pools) external onlyOwner{
        require(_pools.length == weights.length, 'VTA: _pools/_weights len');
        pools = _pools;
        emit PoolChange(_pools);
    }

    /// @notice Start the automation
    /// @dev called if automation was stopped
    function start() external onlyOwner {
        isPaused = false;
        emit StartAutomation();
    }

    /// @notice Stop the automation
    /// @dev called if user wants to stop the automation
    function stop() external onlyOwner {
        isPaused = true;
        emit StopAutomation();
    }

    /// @notice set last time automation was updated.
    /// @param _lastUpdate new update time
    function setLastUpdate(uint _lastUpdate) external onlyOwner {
        lastUpdate = _lastUpdate;
        emit LastUpdate(_lastUpdate);
    }

    /// @notice withdraw any ERC20 and send to owner
    /// @param _token   token to withdraw
    /// @param _amount  amount to withdraw
    function withdrawERC20(address _token, uint _amount) external onlyOwner {
        address _owner = owner();
        IERC20(_token).safeTransfer(_owner, _amount);
        emit Withdraw(_token, _owner, _amount);
    }

    /// @notice Withdraw all BNB balance from this contract and send to owner
    function withdrawBNB() external onlyOwner {
        address _owner = owner();
        uint balance = address(this).balance;
        payable(_owner).transfer(balance);
        emit Withdraw(BNB, _owner, balance);
    }

    
    /* -----------------------------------------------------------------------------
                                    INTERNAL FUNCTION
    ----------------------------------------------------------------------------- */

    /// @notice internal checks if automation can run
    function _check() internal view returns(bool) {
        if(pools.length == 0 || isPaused || !_approved() || !isUpKeepRegistered) return (false);
        if(block.timestamp >= lastUpdate + timePeriod) return (true);

        return false;
    }

    /// @notice internal deposit function
    /// @param _amount amount to deposit
    /// @param _token token to deposit
    function _depositFunds(uint256 _amount, address _token) internal {
        uint256 bnbValue = 0;

        if(_token != BNB){
            IERC20(_token).safeTransferFrom(msg.sender, address(this), _amount);
            IERC20(_token).safeApprove(address(taskTreasury), _amount);
        } else {
            bnbValue = msg.value;
        }

        taskTreasury.depositFunds{value: bnbValue}(address(this),_token,_amount);

    }

    /// @notice internal withdraw function
    /// @param _amount amount to withdraw
    /// @param _token token to withdraw
    function _withdrawFunds(uint _amount, address _token) internal {
        taskTreasury.withdrawFunds(payable(owner()), _token, _amount);
    }

    /// @notice internal register function
    /// @dev for more info about module data refer to gelato docs ../methods-for-submitting-your-task/smart-contract
    function _register() internal {
        require(!isUpKeepRegistered, 'VTA: already registered');
        ModuleData memory moduleData = ModuleData({
            modules: new Module[](2),
            args: new bytes[](2)
        });
        moduleData.modules[0] = Module.RESOLVER;
        moduleData.modules[1] = Module.PROXY;
        moduleData.args[0] = _resolverModuleArg(address(this), abi.encodeCall(this.checker, ()));
        moduleData.args[1] = _proxyModuleArg();

        bytes memory _execDataOrSelector = abi.encode(this.performUpkeep.selector);

        taskId = automate.createTask(address(this),_execDataOrSelector,moduleData,address(0));
        isUpKeepRegistered = true;
    }

    /// @notice internal function to cancel automation
    function _cancelTask() internal {
        require(isUpKeepRegistered, 'VTA: not registered');
        automate.cancelTask(taskId);
        isUpKeepRegistered = false;
        taskId = bytes32(0);
    }

    /// @notice internal checks for pools and weights
    /// @param _pools   pools to check
    /// @param _weights weights to check
    function _checkPoolsAndWeights(address[] calldata _pools, uint256[] calldata _weights) internal pure {
        require(_pools.length > 0, 'VTA: pools length 0');
        require(_pools.length == _weights.length, 'VTA: _pools/_weights len');
    }

    /// @notice retrieve voter from factory
    function _voter() internal view returns(address) {
        return IVeTheAutomationFactory(factory).voter();
    }

    /// @notice internal approve function
    function _approved() internal view returns(bool) {
        return IVotingEscrow(ve).isApprovedOrOwner(address(this), tokenId);
    }

    function _resolverModuleArg(address _resolverAddress,bytes memory _resolverData) internal pure returns (bytes memory) {
        return abi.encode(_resolverAddress, _resolverData);
    }

    function _proxyModuleArg() internal pure returns (bytes memory) {
        return bytes("");
    }


    /* -----------------------------------------------------------------------------
                                    VIEW FUNCTION
    ----------------------------------------------------------------------------- */
    /// @notice View if this.contract is approved to vote
    /// @dev user has to call veThe.setApprovalForAll(address(this), true) to be able to perform vote using this automation
    function approved() external view returns(bool) {
        return _approved();
    }

    function poolsAndWeights() external view returns(address[] memory, uint[] memory){
        return(pools, weights);
    }

    function userTokenBalance(address token) external view returns(uint balance){
        return taskTreasury.userTokenBalance(address(this), token);
    }

    receive() external payable {}
   

}