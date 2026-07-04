// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import "../Automation/Chainlink/AutomationCompatibleInterface.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

import "../interfaces/Minter/IMinter.sol";
import "../interfaces/Voter/IVoter.sol";

import "../interfaces/EpochDistributor/IEpochDistributor.sol";



contract AutomationEpochDistributorBSC is AutomationCompatibleInterface, Ownable {

    /// @dev Flag tracks if run minter_update or distribute
    bool public epochFlag;

    /// @dev Number of gauge to distribute
    uint256 batch = 10;
    /// @dev When the automation runned last time
    uint256 public lastUpdate;

    /// @dev $THE Minter address
    address public minter;

    /// @dev Epoch distributor contract
    IEpochDistributor public epochDistributor;
    /// @dev Voter contract
    IVoter public voter;

    /// @dev map who's allowed to call the automation
    mapping(address => bool) public isAllowed;

    /// @dev Revert if msg.sender is not allowed to performUpkeep()
    error NotAllowed();
    /// @dev Revert if BNB balance is not enough
    error NotEnoughNative();
    /// @dev Revert if address is zero
    error AddressZero();


    /// Events
    event SetAllowed(address indexed allow, bool status);
    event SetBatch(uint256 batch);
    event SetEpochDistribtor(address indexed epochDistributor);
    event SetVoter(address indexed voter);
    event SetMinter(address indexed minter);
    event RecoverBalance(uint256 amount, address indexed receiver); 



    /// @notice Deploy the contract
    /// @param _epochDistributor    the address of the epoch distributor
    /// @param _voter               the address of the voter contract
    /// @param _minter              the address of the minter contract
    constructor(address _epochDistributor,address _voter, address _minter) {
        if(_epochDistributor == address(0)) revert AddressZero();
        if(_voter == address(0)) revert AddressZero();
        if(_minter == address(0)) revert AddressZero();

        epochDistributor = IEpochDistributor(_epochDistributor);
        minter = _minter;
        voter = IVoter(_voter);
    }

    /// @notice Check if the upkeep is ready
    /// @dev    1. Check if minter has update_period()
    ///         2. Then check if BSC upkeep is ready
    ///             2.1. If yes, then load data for distribution
    ///         3. When BSC finish, distribute opBNB
    /// @return upkeepNeeded    true if ready
    /// @return performData     data to use in performupkeep
    function checkUpkeep(bytes memory /*checkdata*/) external view override returns (bool upkeepNeeded, bytes memory performData) {
        if(!epochFlag) {
            upkeepNeeded = IMinter(minter).check();
        } else {
            if(epochDistributor.checkUpKeep_BSC()) {
                upkeepNeeded = true;
                uint256 lastPool = epochDistributor.lastPool();
                IEpochDistributor.EpochData memory epochdata = epochDistributor.amountsPerEpoch(epochDistributor.currentEpoch());
                 
                uint256 poolsLength = epochdata.poolsLength;
                
                uint256 to = lastPool + batch;
                if(lastPool + batch > poolsLength) to = poolsLength;
                address[] memory pools = voter.pools(lastPool, to);
                uint256 totalAmount = epochdata.amount;        
                uint256 totalWeights = epochdata.totalWeights;        
                uint256 timestamp = epochdata.timestamp;

                uint256[] memory gaugeAmount;
                for(uint i = 0; i < pools.length; i++)
                    gaugeAmount[i] = totalWeights != 0 ? totalAmount * voter.poolTotalWeights(pools[i], timestamp) / totalWeights : 0;

                performData = abi.encode(lastPool, to, poolsLength, pools, totalAmount, totalWeights, timestamp);
            }
            else if(epochDistributor.checkUpKeep_BSC() == false && epochDistributor.checkUpKeep_opBNB()){
                upkeepNeeded = true;
            } else {
                upkeepNeeded = false;
            }
        }
          
    }
    /// @notice Perform the automation
    /// @param performData data to use on BSC epoch distributor
    /// @dev    Step:
    ///                 1. Update minter period 
    ///                 2. Distribute first BSC batch and opBNB
    ///                 3. Finish any remaining BSC batch
    ///         This contract needs the required BNB to pay for crosschain services
    function performUpkeep(bytes calldata performData) external override {
        if(!isAllowed[msg.sender]) revert NotAllowed();

        // if first epoch switch then call update period
        if(!epochFlag){
            require(block.timestamp >= lastUpdate + 7 days, 'AED_BSC: too soon');
            IMinter(minter).update_period();
            epochFlag = true;
            lastUpdate = block.timestamp / 7 days * 7 days;
            return;
        } else {
            if(epochDistributor.checkUpKeep_BSC()){
                if(performData.length > 0){
                    (uint256 from, uint256 to, uint256 poolsLength, address[] memory pools, uint256 totalAmount, uint256 totalWeights, uint256 timestamp) = abi.decode(performData, (uint256,uint256,uint256,address[],uint256,uint256,uint256));
                    epochDistributor.distribute(from, to, poolsLength, pools, totalAmount, totalWeights, timestamp);
                }
            }
            if(epochDistributor.checkUpKeep_opBNB()){
                uint256 fee = epochDistributor.cc_flag() == 0 ? epochDistributor.estimateL0Fee() : epochDistributor.estimateCCIPFee();
                if(address(this).balance > fee){
                    epochDistributor.distributeOpBNB{value: fee}();
                } else {
                    revert NotEnoughNative();
                }
            }
        }        
        if(epochDistributor.checkUpKeep_BSC() == false && IEpochDistributor(epochDistributor).checkUpKeep_opBNB() == false) epochFlag = false;

    }
  

    /// @notice Set who is allowed to call performUpkeep
    /// @param caller   address who's gonna call performUpkeep
    /// @param status   true = allow calls, false = block calls
    function setAllowed(address caller, bool status) external onlyOwner {
        isAllowed[caller] = status;
        emit SetAllowed(caller, status);
    }

    /// @notice Set a new batch for performUpkeep max loop size
    /// @param _batch    number of gauge to distribute
    function setBatch(uint256 _batch) external onlyOwner {
        require(_batch > 0, 'AED: batch 0');
        batch = _batch;
        emit SetBatch(_batch);
    }

    /// @notice Set epoch distributor contract
    /// @param _epochdistro the address of the EpochDistributorBSC.sol contract
    function setEpochDistribtor(address _epochdistro) external onlyOwner {
        if(_epochdistro == address(0)) revert AddressZero();
        epochDistributor = IEpochDistributor(_epochdistro);
        emit SetEpochDistribtor(_epochdistro);
    }

    /// @notice Set voter contract
    /// @param _voter the address of the Voter.sol contract
    function setVoter(address _voter) external onlyOwner {
        if(_voter == address(0)) revert AddressZero();
        voter = IVoter(_voter);
        emit SetVoter(_voter);
    }

    /// @notice Set minter address
    /// @param _minter the address of the $THE minter contract
    function setMinter(address _minter) external onlyOwner {
        if(_minter == address(0)) revert AddressZero();
        minter = _minter;
        emit SetMinter(_minter);
    }

    /// @notice Recover BNB balance from this contract
    function recoverBalance() external onlyOwner {
        _recoverBalance(msg.sender);
    }
    function _recoverBalance(address _to) internal {
        uint256 balance = address(this).balance;
        (bool status, ) = payable(_to).call{value: balance}("");
        require(status, 'AED: CallFailed'); 
        emit RecoverBalance(balance, _to);  
    }

    /// @notice fallback function to receive BNB
    receive() external payable {}

}