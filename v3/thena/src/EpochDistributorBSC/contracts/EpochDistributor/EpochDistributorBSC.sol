// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;


import "../interfaces/Minter/IMinter.sol";
import "../interfaces/Gauge/IGauge.sol";
import "../interfaces/Voter/IVoter.sol";

import "../interfaces/Crosschain/CCIP/IGenericCCIP.sol";
import "../interfaces/Crosschain/LayerZero/ILayerZero.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


/// @title Distribute weekly $THE to BSC gauges and opBNB
/// @author Prometheus - Thena Finance
contract EpochDistributorBSC is Ownable {

    using SafeERC20 for IERC20;

    /// @dev Structure to save epoch distribution info
    struct EpochData {
        uint256 amount;         // total amount to distribute
        uint256 opBNBAmount;    // amount to send to opBNB
        uint256 totalWeights;   // total votes
        uint256 timestamp;      // the start of the epoch
        uint256 poolsLength;     // epoch pools (from 0 to poolsLength)
    }
    
    /// @dev flag to allow opBNB updates
    bool private opBNBUpdateReady;
    /// @dev flag to allow BSC update
    bool private bnbUpdateReady;


    /// @notice Crosschain provider flag
    /// @dev 0: L0, 1: CCIP, 2: Axelar
    uint8 public cc_flag = 1;
    /// @dev OPBNB EVM Chain ID
    uint8 constant public OPBNB_EVM_ID = 204;
    /// @dev PRECISION for distribution math
    uint256 constant public PRECISION = 100_000;
    /// @dev Week timestamp
    uint256 constant public WEEK = 7 days;

    /// @dev Epoch counter
    uint256 public currentEpoch;
    /// @dev Share for the opBNB amount to distribute
    uint256 public opBNBShare = 0;
    /// @dev The last Pool that was distributed
    uint256 public lastPool;

    /// @dev Burn address used during opBNB updates
    address public constant burnAddress = 0x000000000000000000000000000000000000dEaD; 
    /// @dev $THE Minter address
    address public minter;
    /// @dev $THE token
    address public immutable thena;
    /// @dev Voter address
    address public voter;

    /// @dev opBNB $THE distribution address
    address public opBnbReceiver;

    /// @dev CCIP Contract on BSC
    IGenericCCIP public ccip;
    /// @dev LayerZero Contract on BSC
    ILayerZero public l0;
    
    /// @dev Map the epoch => amounts to distribute
    mapping(uint256 => EpochData) public amountsPerEpoch;
    
    /// @dev Map the Automation contract => bool
    mapping(address => bool) public isAutomation;

    /// @dev Map pool => last distribute timestamp
    mapping(address => uint256) public poolToLastimestamp;

    /// @notice Deploy this contract
    /// @param _minter Minter address
    /// @param _thena  $THE token address
    /// @param _voter  Voter address
    constructor(address _minter, address _thena, address _voter) {
        if(_thena == address(0)) revert AddressZero();
        if(_minter == address(0)) revert AddressZero();
        if(_voter == address(0)) revert AddressZero();
        minter = _minter;
        thena = _thena;
        voter = _voter;
    }


    
    /// @notice Notify the weekly $THE incentives. 
    /// @dev This is called only from the minter
    /// @param amount weekly $THE amount
    function notifyRewardAmount(uint256 amount) external {
        _isMinter();
        IERC20(thena).safeTransferFrom(msg.sender, address(this), amount);
        // active_period is already next epoch, sub 1 week.
        uint256 active_period = IMinter(minter).active_period() - WEEK;

        uint256 opBNBAmount = opBNBShare > 0 ? amount * opBNBShare / PRECISION : 0;
        uint256 _totalWeights = IVoter(voter).totalWeights(active_period);
        uint256 _poolLength = IVoter(voter).poolsLength();

        amountsPerEpoch[currentEpoch] = EpochData({
            amount: amount - opBNBAmount,
            opBNBAmount: opBNBAmount,
            timestamp: active_period,
            totalWeights: _totalWeights,
            poolsLength: _poolLength
        });

        if(opBNBAmount > 0) opBNBUpdateReady = true;
        bnbUpdateReady = true;
        emit NotifyRewardAmount(amount, active_period, currentEpoch);
    }

    /// @notice distribute to all the gauges
    function distributeAll() external {
        _isAutomation();
        _bnbUpdate();
        uint256 poolsLength = amountsPerEpoch[currentEpoch].poolsLength;
        address[] memory pools = IVoter(voter).pools();
        uint256 totalAmount = amountsPerEpoch[currentEpoch].amount;        
        uint256 totalWeights = amountsPerEpoch[currentEpoch].totalWeights;        
        uint timestamp = amountsPerEpoch[currentEpoch].timestamp;
        _distribute(0, poolsLength, poolsLength, pools, totalAmount, totalWeights, timestamp);
    }

    /// @notice Distribute called from the chainlink automation contract
    /// @param from     from where to distribute
    /// @param to       to where to distribute
    /// @param poolsLength  pools length of the epoch
    /// @param pools        pools to distribute
    /// @param totalAmount  total THE for all gauges
    /// @param totalWeights total weights of all gauges
    /// @param timestamp    last epoch timestamp
    /// @dev we do not use _distribute to keep calldata pools reducing gas costs
    function distribute(uint256 from, uint256 to, uint256 poolsLength, address[] calldata pools, uint256 totalAmount, uint256 totalWeights, uint256 timestamp) external {
        _isAutomation();
        _bnbUpdate();
        uint i;
        uint len = to - from;
        uint gaugeAmount;
        address gauge;
        address pool;
        
        for(i; i < len; i++){
            pool = pools[i];
            if(poolToLastimestamp[pool] < timestamp) {
                gaugeAmount = totalWeights != 0 ? totalAmount * IVoter(voter).poolTotalWeights(pool, timestamp) / totalWeights : 0;
                if(gaugeAmount > 0){
                    gauge = IVoter(voter).gaugeForPool(pool);
                    IERC20(thena).safeTransfer(gauge, gaugeAmount);
                    IGauge(gauge).notifyRewardAmount(thena, gaugeAmount);   
                }
                poolToLastimestamp[pool] = timestamp;     
            }
        }

        lastPool += len;
        if(lastPool >= poolsLength) {
            bnbUpdateReady = false;
            lastPool = 0;
            // if both bsc and opbnb are done then increase epoch
            if(!bnbUpdateReady && !opBNBUpdateReady) currentEpoch += 1;
        }
    }

    /// @notice Distribute to a given set of gauges
    /// @param from     from where to distribute
    /// @param to       to where to distribute
    /// @param poolsLength  pools length of the epoch
    /// @param pools        pools to distribute
    /// @param totalAmount  total THE for all gauges
    /// @param totalWeights total weights of all gauges
    /// @param timestamp    last epoch timestamp
    function _distribute(uint256 from, uint256 to, uint256 poolsLength, address[] memory pools, uint256 totalAmount, uint256 totalWeights, uint256 timestamp) internal {
        uint i;
        uint len = to - from;
        uint gaugeAmount;
        address gauge;
        address pool;
        
        for(i; i < len; i++){
            pool = pools[i];
            if(poolToLastimestamp[pool] < timestamp && IVoter(voter).isPool(pool)){
                gaugeAmount = totalAmount * IVoter(voter).poolTotalWeights(pool, timestamp) / totalWeights;
                if(gaugeAmount > 0){
                    gauge = IVoter(voter).gaugeForPool(pool);
                    IERC20(thena).safeTransfer(gauge, gaugeAmount);
                    IGauge(gauge).notifyRewardAmount(thena, gaugeAmount);   
                }
                poolToLastimestamp[pool] = timestamp;     
            }
        }

        lastPool += len;
        if(lastPool >= poolsLength){
            bnbUpdateReady = false;
            lastPool = 0;
            // if both bsc and opbnb are done then increase epoch
            if(!bnbUpdateReady && !opBNBUpdateReady) currentEpoch += 1;
        }
    }



    /// @notice Distribute opBNB rewards
    /// @dev depending on crosschain provider we do different actions
    function distributeOpBNB() external payable {
        _isAutomation();
        _opBNBUpdate();
        uint256 amount = amountsPerEpoch[currentEpoch].opBNBAmount;
        if(amount > 0) {
            if(cc_flag == 0){
                _sendWithLayerZero(amount);
                IERC20(thena).safeTransfer(burnAddress, amount);
            }
            else if(cc_flag == 1) _sendWithCCIP(amount);
            else {
                revert CCProvider();
            }            
        }
        
        opBNBUpdateReady = false;
        // if both bsc and opbnb are done then increase epoch
        if(!bnbUpdateReady && !opBNBUpdateReady) currentEpoch += 1;
        emit DistributeOpBNB(amount);
    }


    /// @notice send opbnb amount layerZero for data
    /// @param amount   the amount to send to opBNB
    function _sendWithLayerZero(uint256 amount) internal {

        // Send amount to opBNB, automation will wait token receive and then update
        bytes memory data = abi.encode(opBnbReceiver, amount);        
        l0.sendMessage{value: msg.value}(OPBNB_EVM_ID,data);
    }



    /// @notice send opbnb amount and data using ccip
    /// @param amount   the amount to send to opBNB
    function _sendWithCCIP(uint256 amount) internal {
        bytes memory data = abi.encode(opBnbReceiver, amount);
        address receiver = ccip.chainIdToProxy(OPBNB_EVM_ID);
        IERC20(thena).safeIncreaseAllowance(address(ccip), amount);
        ccip.sendMessage{value: msg.value}(OPBNB_EVM_ID, data, 0, address(0), receiver, true);
    }



    /// @notice Set the opBNB share of the weekly minted THE
    /// @param share Set the share for opBNB distribution
    function setOpBnbShare(uint256 share) external onlyOwner {
        require(share <= PRECISION, 'EDBSC: PRECISION');
        opBNBShare = share;
        emit SetOpBNBShare(share);
    }

    /// @notice Set address allowed to run automation
    /// @param automation the automation contract that calls distribute
    /// @param status   true = exists, false = does not exists
    function setAutomation(address automation, bool status) external onlyOwner {
        if(automation == address(0)) revert AddressZero();
        isAutomation[automation] = status;
        emit SetAutomation(automation, status);
    }

    /// @notice Set the opBNB EpochDistributor contract
    /// @param _receiver The opBNB recipient (EpochDistributorOpBNB.sol)
    function setOpBNBReceiver(address _receiver) external onlyOwner {
        if(_receiver == address(0)) revert AddressZero();
        opBnbReceiver = _receiver;
        emit SetOpBNBReceiver(_receiver);
    }

    /// @notice Set the Generic CCIP contract
    /// @param _ccip the GenericCCIP.sol contract address
    function setCCIP(address _ccip) external onlyOwner {
        if(_ccip == address(0)) revert AddressZero();
        ccip = IGenericCCIP(_ccip);
        emit SetCCIP(_ccip);
    }

    /// @notice Set the LayerZero Generic contract
    /// @param _l0 the GenericLayerZero.sol contract address
    function setL0(address _l0) external onlyOwner {
        if(_l0 == address(0)) revert AddressZero();
        l0 = ILayerZero(_l0);
        emit SetLayerZero(_l0);
    }

    /// @notice Define the crosschain service to use (default L0) 
    /// @param flag the flag that defines which crosschain provider to use
    function setCrosschainProviderFlag(uint8 flag) external onlyOwner {
        cc_flag = flag;
        emit SetCCProviderFlag(flag);
    }

    /// @notice Set the minter address
    /// @param _minter new minter
    function setMinter(address _minter) external onlyOwner {
        if(_minter == address(0)) revert AddressZero();
        minter = _minter;
        emit SetMinter(_minter);
    }

    /// @notice Set the voter address
    /// @param _voter new voter
    function setVoter(address _voter) external onlyOwner {
        if(_voter == address(0)) revert AddressZero();
        voter = _voter;
        emit SetVoter(_voter);
    }

    
    /// @notice Check if BSC is ready to be distributed
    function checkUpKeep_BSC() external view returns(bool) {
        return bnbUpdateReady;
    }

    /// @notice Check if OpBNB is ready to be distributed
    function checkUpKeep_opBNB() external view returns(bool) {
        return opBNBUpdateReady;
    }

    /// @notice Estimate the LayerZero fee. Default 100k $THE amount
    function estimateL0Fee() external view returns(uint256) {
        bytes memory data = abi.encode(opBnbReceiver, 100_000 * 1e18);
        ILayerZero.MessagingFee memory l0_fee = l0.estimateFee(OPBNB_EVM_ID, bytes32(uint256(uint160(l0.chainIdToGLZ(OPBNB_EVM_ID)))), data, false);
        return l0_fee.nativeFee;
    }

    /// @notice Estimate the CCIP fee. Default 100k $THE amount
    function estimateCCIPFee() external view returns(uint256) {
        bytes memory data = abi.encode(opBnbReceiver, 100_000 * 1e18);
        address receiver = ccip.chainIdToProxy(OPBNB_EVM_ID);
        return ccip.getFeeSimple(OPBNB_EVM_ID, data, 0, address(0), receiver, true);
    }

    /// @notice Check if opBNB Update is ready
    function _opBNBUpdate() internal view {
        if(!opBNBUpdateReady) revert opBNBUpdateNotReady();
    }

    /// @notice Check if BSC Update is ready
    function _bnbUpdate() internal view {
        if(!bnbUpdateReady) revert BNBUpdateNotReady();
    }

    /// @notice Check if caller is the automation
    function _isAutomation() internal view {
        if(!isAutomation[msg.sender]) revert NotAutomation();
    }

    /// @notice Check if caller is the minter
    function _isMinter() internal view {
        if(msg.sender != minter) revert NotMinter();
    }

    /// @notice Recover some ERC20 from the contract.
    /// @param tokenAddress the address of the token to withdraw
    /// @param tokenAmount  the amount to withdraw
    function emergencyRecoverERC20(address tokenAddress, uint256 tokenAmount) external onlyOwner {
        require(tokenAmount <= IERC20(tokenAddress).balanceOf(address(this)));
        IERC20(tokenAddress).safeTransfer(msg.sender, tokenAmount);
        emit EmergencyRecoverERC20(tokenAddress, msg.sender, tokenAmount);
    }


    /// @dev Revert if is not the minter contract 
    error NotMinter();
    /// @dev Revert if is not the automation contract
    error NotAutomation();
    /// @dev Revert if BNB is not ready for update
    error BNBUpdateNotReady();
    /// @dev Revert if opBNB is not ready for update
    error opBNBUpdateNotReady();
    /// @dev Revert if cc_flag does not have a crosschain provider
    error CCProvider();
    /// @dev Revert if address is zero
    error AddressZero();

    // Events
    event NotifyRewardAmount(uint256 indexed amount, uint256 epochtimestamp, uint256 indexed epoch);
    event DistributeOpBNB(uint256 indexed opbnbAmount);
    event SetOpBNBShare(uint256 share);
    event SetAutomation(address indexed automation, bool status);
    event SetOpBNBReceiver(address indexed receiver);
    event SetCCIP(address indexed ccip);
    event SetLayerZero(address indexed l0);
    event SetCCProviderFlag(uint8 indexed flag);
    event SetMinter(address indexed minter);
    event SetVoter(address indexed voter);
    event EmergencyRecoverERC20(address indexed tokenAddress, address indexed receiver, uint256 tokenAmount);

    /// @notice fallback function to receive BNB
    receive() external payable {}

}