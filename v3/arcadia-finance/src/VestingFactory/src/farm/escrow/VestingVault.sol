// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Initializable} from "solady/utils/Initializable.sol";
import {Ownable} from "solady/auth/Ownable.sol";
import {FixedPointMathLib} from "solady/utils/FixedPointMathLib.sol";
import {IEsToken} from "./interfaces/esVesting/IEsToken.sol";
import {IEsTokenUsage} from "./interfaces/esVesting/IEsTokenUsage.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";

interface IStakingContract {
    function poolRewarders(uint256 pid) external view returns (address[] memory);
    function rewardToken() external view returns (address);
}

interface IEsProxyMaster {
    function pendingTokens(uint256 pid, address user) external view returns (address[] memory, string[] memory, uint256[] memory, uint256[] memory);
    function canHarvest(uint256 pid, address user) external view returns (bool);
}

contract VestingVault is Initializable, Ownable, ReentrancyGuard {
    // Errors
    error NotInitialized();
    error InvalidCliffDuration();
    error InvalidStartTime();
    error ZeroAmount();
    error NotAuthorized();
    error NotBeneficiaryOrManager();
    error InvalidEsToken();
    error InsufficientAmount();
    error NotFactory();
    error TransferFailed();
    error NoTokensToRelease();
    error VestingNotStarted();
    error StakingNotAllowed();
    error HarvestingNotAllowed();
    error WhitelistError();
    error VestingAlreadyTerminated();
    error VestingNotTerminated();
    error InvalidDividendsAddress();
    error HarvestFailed();
    error HarvestNotReady();
    error InvalidToken();
    error InvalidAmount();

    // Events
    event Initialized(address owner, address beneficiary, uint64 start, uint64 duration, uint64 cliff, bool canStake, bool canHarvest);
    event EtherReleased(uint256 amount);
    event ERC20Released(address indexed token, uint256 amount);
    event Harvested(address indexed token, uint256 amount);
    event EsTokenAllocated(address indexed esToken, address indexed dividendsAddress, uint256 amount);
    event EsTokenDeallocated(address indexed esToken, address indexed dividendsAddress, uint256 amount);
    event VestingTerminated(address indexed factory, uint64 terminationTimestamp);
    event RewardReceived(address indexed token, uint256 amount);
    event TokensDeposited(address indexed token, uint256 amount);

    address public immutable factory = msg.sender;

    address constant ETH_ADDRESS = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    address public beneficiary;
    IEsTokenUsage public dividendsAddress;
    uint64 public startTime;
    uint64 public duration;
    uint64 public cliff;
    bool public canStake;
    bool public canHarvest;
    bool public terminated;

    mapping(address => uint256) private _stakedTokens;
    mapping(address => uint256) private _erc20Released;
    

    constructor() {
        
    }

    //Owner can operate the vault but all tokens are hard-coded to be sent to beneficiary
    modifier onlyOwnerOrBeneficiary() {
        if (msg.sender != beneficiary && msg.sender != owner()) revert NotBeneficiaryOrManager();
        _;
    }

    modifier onlyFactory() {
        if (msg.sender != factory) revert NotFactory();
        _;
    }

    modifier whenStakingAllowed() {
        if (!canStake) revert StakingNotAllowed();
        _;
    }

    modifier whenHarvestingAllowed() {
        if (!canHarvest) revert HarvestingNotAllowed();
        _;
    }

    modifier whenNotTerminated() {
        if (terminated) revert VestingAlreadyTerminated();
        _;
    }

    modifier whenTerminated() {
        if (!terminated) revert VestingNotTerminated();
        _;
    }

    // Initialization (only ETH or esToken can be vested)
    function initialize(
        address _owner,
        address _beneficiary,
        uint64 _startTime,
        uint64 _duration,
        uint64 _cliff,
        bool _canStake,
        bool _canHarvest,
        address _dividendsAddress
    ) external initializer {
        if (msg.sender != factory) revert NotFactory();
        if (_cliff > _duration) revert InvalidCliffDuration();
        if (_startTime <= block.timestamp) revert InvalidStartTime();
        if (_beneficiary == address(0)) revert NotAuthorized();
        
        _initializeOwner(_owner);
        beneficiary = _beneficiary;
        dividendsAddress = IEsTokenUsage(_dividendsAddress);
        startTime = _startTime;
        duration = _duration;
        cliff = _cliff;
        canStake = _canStake;
        canHarvest = _canHarvest;

        emit Initialized(_owner, _beneficiary, _startTime, _duration, _cliff, _canStake, _canHarvest);
    }


    // Terminates vesting; Pays out vested amount and returns rest to factory
    function terminateVesting(address[] calldata tokens, bytes calldata data) external onlyFactory whenNotTerminated {
        uint64 now = uint64(block.timestamp);

        for (uint256 i; i < tokens.length;) {
            address token = tokens[i];
            if(_stakedTokens[token] > 0) {
                //We unstake and harvest rewards of this esToken 
                _processStakingAction(IEsToken(token), dividendsAddress, _stakedTokens[token], data, false);
                _stakedTokens[token] = 0;
            }
            uint256 balance = _balanceOf(token);
            if (balance == 0) {
                unchecked {++i;}
                continue;
            }

            // Since we unstaked, balance now includes all potential tokens
            uint256 releasable = _getReleasableAmount(token);
            
            if (releasable > 0) {
                _erc20Released[token] += releasable;
                _transfer(token, beneficiary, releasable);
            }

            uint256 remaining = _balanceOf(token);
            if (remaining > 0) _transfer(token, factory, remaining);
            unchecked {++i;}
        }

        terminated = true;

        emit VestingTerminated(factory, now);
    }

    // Recovers stuck tokens post-termination if any
    function recoverToken(address token, uint amount) external onlyOwner whenTerminated {
        _transfer(token, owner(), amount);
    }

    // Allocate ES tokens
    function allocateEsToken(
        IEsToken esToken_,
        uint256 amount,
        bytes calldata data
    ) external nonReentrant onlyOwnerOrBeneficiary whenStakingAllowed whenNotTerminated {
        
        if (amount == 0) revert ZeroAmount();

        uint256 balance = _balanceOf(address(esToken_));

        if (balance < amount) revert InsufficientAmount();

        _stakedTokens[address(esToken_)] += amount;
        _processStakingAction(esToken_, dividendsAddress, amount, data, true);

        emit EsTokenAllocated(address(esToken_), address(dividendsAddress), amount);
    }

    // Deallocate ES tokens; Can be used to unstake when terminated to avoid having stuck esTokens
    function deallocateEsToken(
        IEsToken esToken_,
        uint256 amount,
        bytes calldata data
    ) external nonReentrant onlyOwnerOrBeneficiary whenStakingAllowed {

        if (_stakedTokens[address(esToken_)] < amount) revert InsufficientAmount();

        _stakedTokens[address(esToken_)] -= amount;
        _processStakingAction(esToken_, dividendsAddress, amount, data, false);

        emit EsTokenDeallocated(address(esToken_), address(dividendsAddress), amount);
    }

    // Release tokens
    function release(address token) external nonReentrant onlyOwnerOrBeneficiary whenNotTerminated {
        if (block.timestamp < startTime) revert VestingNotStarted();

        uint256 releasable = _getReleasableAmount(token);
        if (releasable == 0) revert NoTokensToRelease();

        _erc20Released[token] += releasable;
        
        _transfer(token, beneficiary, releasable);
    }

    // Harvest rewards
    function harvest(
        IEsToken esToken_
    ) external nonReentrant onlyOwnerOrBeneficiary whenStakingAllowed whenNotTerminated {

        if (_stakedTokens[address(esToken_)] == 0) revert InsufficientAmount();

        (bool success, bytes memory data) = address(dividendsAddress).call(abi.encodeWithSignature("esTokens(address)", esToken_));
        if (!success || data.length == 0) revert HarvestFailed();
        uint256 pid = abi.decode(data, (uint256));

        (success, data) = address(dividendsAddress).call(abi.encodeWithSignature("canHarvest(uint256,address)", pid, address(this)));
        if (!success || !abi.decode(data, (bool))) revert HarvestNotReady();

        (address[] memory tokens,) = _getPendingRewards(address(esToken_));
        
        // We use pre and post-balances in case of rewarder duplicates and other issues
        uint256[] memory preBalances = _getBalances(tokens);
        (success,) = address(dividendsAddress).call(abi.encodeWithSignature("harvest(uint256)", pid));
        if (!success) revert HarvestFailed();

        // rewards will be sent to beneficiary if canHarvest is true, otherwise they stay in the vault
        _processRewards(tokens, preBalances);
    }

    // Internal Helpers
    function _processStakingAction(
        IEsToken esToken_,
        IEsTokenUsage dividendsAddress_,
        uint256 amount,
        bytes calldata data,
        bool isAllocate
    ) internal {
        (address[] memory rewardTokens,) = _getPendingRewards(address(esToken_));
        uint256[] memory preBalances = _getBalances(rewardTokens);

        if (isAllocate) {
            esToken_.approveUsage(dividendsAddress_, amount);
            esToken_.allocate(address(dividendsAddress_), amount, data);
        } else {
            esToken_.deallocate(address(dividendsAddress_), amount, data);
        }

        _processRewards(rewardTokens, preBalances);
    }

    function _processRewards(address[] memory tokens, uint256[] memory preBalances) internal {
        uint256 len = tokens.length;
        
        for (uint256 i; i < len;) {
            address token = tokens[i];
            uint256 postBalance = _balanceOf(token);
            if (postBalance <= preBalances[i]) {
                unchecked {++i;}
                continue;
            }

            uint256 reward = postBalance - preBalances[i];
            
            if (canHarvest) {
                _transfer(token, beneficiary, reward);
                emit Harvested(token, reward);
            } // if tokens can't be harvested they'll stay releasable according to the main vesting schedule
            unchecked {++i;}
        }
    }

    function _getPendingRewards(address _esToken) internal returns (address[] memory addresses, uint256[] memory amounts) {
        if (address(dividendsAddress) == address(0) || _stakedTokens[_esToken] == 0) return (addresses, amounts);

        (bool success, bytes memory data) = address(dividendsAddress).call(abi.encodeWithSignature("esTokens(address)", _esToken));
        if (!success || data.length == 0) return (addresses, amounts);
        uint256 pid = abi.decode(data, (uint256));

        (success, data) = address(dividendsAddress).call(abi.encodeWithSignature("pendingTokens(uint256,address)", pid, address(this)));
        if (!success || data.length == 0) return (addresses, amounts);

        (addresses, , , amounts) = abi.decode(data, (address[], string[], uint256[], uint256[]));
    }

    function _getBalances(address[] memory tokens) internal view returns (uint256[] memory) {
        uint256 len = tokens.length;
        uint256[] memory balances = new uint256[](len);
        
        for (uint256 i; i < len;) {
            balances[i] = _balanceOf(tokens[i]);
            unchecked {++i;}
        }
        return balances;
    }

    function _balanceOf(address token) internal view returns (uint256) {
        return token == ETH_ADDRESS ? address(this).balance : IERC20(token).balanceOf(address(this));
    }

    function _transfer(address token, address to, uint256 amount) internal {
        if (token == ETH_ADDRESS) {
            SafeTransferLib.safeTransferETH(to, amount);
            emit EtherReleased(amount);
        } 
        else {
            SafeTransferLib.safeTransfer(token, to, amount);
            emit ERC20Released(token, amount);
        } 
    }

    // View Functions
    function vestedAmount(address token) public view returns (uint256) {
        //Using tokens staked in the total vesting calculation
        return _vestingSchedule(_balanceOf(token) + _stakedTokens[token] + _erc20Released[token], uint64(block.timestamp));
    }

    function _getReleasableAmount(address token) internal view returns (uint256) {
        if (terminated) return 0;

        uint256 balance = _balanceOf(token);
        uint256 staked = _stakedTokens[token];
        uint256 released = _erc20Released[token];
        uint256 vested = _vestingSchedule(balance + staked + released, uint64(block.timestamp));
        

        uint256 vestedReleasable = vested > released ? vested - released : 0;
        return vestedReleasable > balance ? balance : vestedReleasable;
    }

    function _vestingSchedule(uint256 total, uint64 timestamp) internal view returns (uint256) {
        if (timestamp < startTime + cliff) return 0;
        if (timestamp >= startTime + duration) return total;
        unchecked {
            return FixedPointMathLib.mulDiv(total, timestamp - startTime, duration);
        }
    }

    // Public View Functions
    function getReleasableAmount(address token) external view returns (uint256) {
        return _getReleasableAmount(token);
    }

    function getStakedTokens(address token) external view returns (uint256) {
        return _stakedTokens[token];
    }

    function isTerminated() external view returns (bool) {
        return terminated;
    }

    // Fallbacks
    receive() external payable {}
}