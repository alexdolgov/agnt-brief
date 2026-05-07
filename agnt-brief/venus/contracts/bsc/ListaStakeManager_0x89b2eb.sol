// ============================================================
// FILE: contracts/interfaces/ISLisBNB.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";

/// @title SLisBNB interface
interface ISLisBNB is IERC20Upgradeable {
    function initialize(address _manager) external;

    function mint(address _account, uint256 _amount) external;

    function burn(address _account, uint256 _amount) external;

    function setStakeManager(address _address) external;

    event SetStakeManager(address indexed _address);
}

// ============================================================
// FILE: contracts/interfaces/IStakeCredit.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
//pragma solidity 0.8.17;
pragma solidity ^0.8.0;

interface IStakeCredit {
    struct UnbondRequest {
        uint256 shares;
        uint256 bnbAmount;
        uint256 unlockTime;
    }

    function getPooledBNBByShares(uint256 shares) external view returns (uint256);
    function getSharesByPooledBNB(uint256 bnbAmount) external view returns (uint256);
    function unbond(address delegator, uint256 shares) external returns (uint256);
    function distributeReward(uint64 commissionRate) external payable;
    function rewardRecord(uint256 dayIndex) external view returns (uint256);
    function totalPooledBNBRecord(uint256 dayIndex) external view returns (uint256);
    function balanceOf(address delegator) external view returns (uint256);
    function unbondRequest(address delegator, uint256 _index) external view returns (UnbondRequest memory);
    function claimableUnbondRequest(address delegator) external view returns (uint256);
    function getPooledBNB(address account) external view returns (uint256);

    function lockedBNBs(address delegator, uint256 number) external view returns (uint256);
}

// ============================================================
// FILE: contracts/interfaces/IStakeHub.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
//pragma solidity 0.8.17;
pragma solidity ^0.8.0;

interface IStakeHub {
    function DEAD_ADDRESS() external view returns (address);
    function LOCK_AMOUNT() external view returns (uint256);
    function BREATHE_BLOCK_INTERVAL() external view returns (uint256);
    function REDELEGATE_FEE_RATE_BASE() external view returns (uint256);
    function unbondPeriod() external view returns (uint256);
    function transferGasLimit() external view returns (uint256);

    function minDelegationBNBChange() external view returns (uint256);
    function redelegateFeeRate() external view returns (uint256);

    /**
     * @notice get the credit contract address of a validator
     *
     * @param operatorAddress the operator address of the validator
     *
     * @return creditContract the credit contract address of the validator
     */
    function getValidatorCreditContract(address operatorAddress) external view returns (address creditContract);

    /**
     * @param operatorAddress the operator address of the validator to be delegated to
     * @param delegateVotePower whether to delegate vote power to the validator
     */
    function delegate(address operatorAddress, bool delegateVotePower) external payable;

    /**
     * @dev Undelegate BNB from a validator, fund is only claimable few days later
     * @param operatorAddress the operator address of the validator to be undelegated from
     * @param shares the shares to be undelegated
     */
    function undelegate(address operatorAddress, uint256 shares) external;

    /**
     * @param srcValidator the operator address of the validator to be redelegated from
     * @param dstValidator the operator address of the validator to be redelegated to
     * @param shares the shares to be redelegated
     * @param delegateVotePower whether to delegate vote power to the dstValidator
     */
    function redelegate(address srcValidator, address dstValidator, uint256 shares, bool delegateVotePower) external;

    /**
     * @dev Claim the undelegated BNB from the pool after unbondPeriod
     * @param operatorAddress the operator address of the validator
     * @param requestNumber the request number of the undelegation. 0 means claim all
     */
    function claim(address operatorAddress, uint256 requestNumber) external;

    /**
     * @dev Claim the undelegated BNB from the pools after unbondPeriod
     * @param operatorAddresses the operator addresses of the validator
     * @param requestNumbers numbers of the undelegation requests. 0 means claim all
     */
    function claimBatch(address[] calldata operatorAddresses, uint256[] calldata requestNumbers) external;
}

// ============================================================
// FILE: contracts/interfaces/IStakeManager.sol
// ============================================================

//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

interface IStakeManager {
    struct BotUndelegateRequest {
        uint256 startTime;
        uint256 endTime;
        uint256 amount;
        uint256 amountInSnBnb;
    }

    struct WithdrawalRequest {
        uint256 uuid;
        uint256 amountInSnBnb;
        uint256 startTime;
    }

    struct UserRequest {
        uint256 uuid;
        uint256 amount;
        uint256 amountInSlisBnb;
        uint256 totalAmount;
        uint256 totalAmountInSlisBnb;
    }

    function initialize(
        address _slisBnb,
        address _admin,
        address _manager,
        address _bot,
        uint256 _feeBps,
        address _revenuePool,
        address _validator
    ) external;

    function deposit() external payable;

    function delegateTo(address validator, uint256 amount) external;

    function redelegate(address srcValidator, address dstValidator, uint256 shares) external;

    function requestWithdraw(uint256 _amountInSnBnb) external;

    function claimWithdraw(uint256 _idx) external;

    function claimWithdrawFor(address _user, uint256 _idx) external;

    function undelegate() external returns (uint256 _uuid, uint256 _shares);

    function undelegateFrom(address _operator, uint256 _amount) external returns (uint256 _actualBnbAmount);

    function claimUndelegated(address _validator) external returns (uint256, uint256);

    function delegateVoteTo(address _delegateTo) external;

    function binarySearchCoveredMaxIndex(uint256 _bnbAmount) external returns (uint256);

    function depositReserve() external payable;

    function withdrawReserve(uint256) external;

    function setReserveAmount(uint256) external;

    function proposeNewManager(address _address) external;

    function acceptNewManager() external;

    function setBotRole(address _address) external;

    function revokeBotRole(address _address) external;

    function setBSCValidator(address _address) external;

    function setSynFee(uint256 _synFee) external;

    function setAnnualRate(uint256 _annualRate) external;

    function setRevenuePool(address _address) external;

    function setMinBnb(uint256 _minBnb) external;

    function getTotalPooledBnb() external view returns (uint256);

    function setRedirectAddress(address _address) external;

    function whitelistValidator(address _address) external;

    function disableValidator(address _address) external;

    function removeValidator(address _address) external;

    function getContracts() external view returns (address _manager, address _snBnb, address _bcValidator);

    function getBotUndelegateRequest(uint256 _uuid) external view returns (BotUndelegateRequest memory);

    function getUserWithdrawalRequests(address _address) external view returns (WithdrawalRequest[] memory);

    function getUserRequestStatus(address _user, uint256 _idx)
        external
        view
        returns (bool _isClaimable, uint256 _amount);

    function getSlisBnbWithdrawLimit() external view returns (uint256 _slisBnbWithdrawLimit);

    function getAmountToUndelegate() external view returns (uint256);

    function getDelegated(address validator) external view returns (uint256);

    function convertSharesToBnb(address _operator, uint256 _shares) external view returns (uint256);

    function convertBnbToShares(address _operator, uint256 _bnbAmount) external view returns (uint256);

    function convertBnbToSnBnb(uint256 _amount) external view returns (uint256);

    function convertSnBnbToBnb(uint256 _amountInSlisBnb) external view returns (uint256);

    function getClaimableAmount(address _validator) external view returns (uint256 _amount);

    function compoundRewards() external;

    function refundCommission(uint256 _days) external payable;

    function getTotalBnbInValidators() external returns (uint256);

    function getRedelegateFee(uint256 bnbAmount) external view returns (uint256);

    event Deposit(address _src, uint256 _amount);
    event Delegate(uint256 _amount);
    event DelegateTo(address _validator, uint256 _amount, bool _delegateVotePower);
    event ReDelegate(address _src, address _dest, uint256 _amount);
    event RequestWithdraw(address indexed _account, uint256 _amountInSlisBnb);
    event ClaimWithdrawal(address indexed _account, uint256 _idx, uint256 _amount);
    event ClaimAllWithdrawals(address indexed _account, uint256 _amount);
    event Undelegate(uint256 _nextUndelegatedRequestIndex, uint256 _bnbAmount, uint256 _shares);
    event UndelegateFrom(address indexed _operator, uint256 _bnbAmount, uint256 _shares);
    event Redelegate(uint256 _rewardsId, uint256 _amount);
    event SetManager(address indexed _address);
    event ProposeManager(address indexed _address);
    event SetSynFee(uint256 _synFee);
    event SetAnnualRate(uint256 _annualRate);
    event SetRedirectAddress(address indexed _address);
    event SetBSCValidator(address indexed _address);
    event SetRevenuePool(address indexed _address);
    event RewardsCompounded(uint256 _amount);
    event UndelegateReserve(uint256 _amount);
    event SetReserveAmount(uint256 _amount);
    event ClaimUndelegated(uint256 _uuid, uint256 _amount);
    event ClaimUndelegatedFrom(address indexed _validator, uint256 _uuid, uint256 _amount);
    event WhitelistValidator(address indexed _address);
    event DisableValidator(address indexed _address);
    event RemoveValidator(address indexed _address);
    event SyncCreditContract(address indexed _validator, address _credit, bool toRemove);
    event SetMinBnb(uint256 _minBnb);
    event DelegateVoteTo(address _delegateTo, uint256 _votesChange);
    event RefundCommission(uint256 _bnbAmount, uint256 _dailySlisBnb, uint256 _days, uint256 _remainingSlisBnb);
}

// ============================================================
// FILE: contracts/libraries/SLisLibrary.sol
// ============================================================

//SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.4;

library SLisLibrary {
    function calculateFeeFromDailyProfit(
        uint256 _profit,
        uint256 _synFee,
        uint256 _decimals // 1e10
    ) public returns (uint256 _fee) {
        _fee = (_profit * _synFee) / _decimals;
    }

    function calculateFeeFromAPY(
        uint256 _principal,
        uint256 _annualRate,
        uint256 _decimals // 1e10
    ) public returns (uint256 _fee) {
        _fee = (_principal * _annualRate) / 365 / _decimals;
    }

    function calculateFee(uint256 _principal, uint256 _profit, uint256 _annualRate, uint256 _synFee, uint256 _decimals)
        public
        returns (uint256 _fee)
    {
        uint256 _feeFromAPY = calculateFeeFromAPY(_principal, _annualRate, _decimals);
        uint256 _feeFromProfit = calculateFeeFromDailyProfit(_profit, _synFee, _decimals);

        _fee = _feeFromAPY > _feeFromProfit ? _feeFromAPY : _feeFromProfit;
    }
}

// ============================================================
// FILE: contracts/ListaStakeManager.sol
// ============================================================

//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol";
import {IVotesUpgradeable} from "@openzeppelin/contracts-upgradeable/governance/utils/IVotesUpgradeable.sol";

import "./libraries/SLisLibrary.sol";

import {IStakeManager} from "./interfaces/IStakeManager.sol";
import {ISLisBNB} from "./interfaces/ISLisBNB.sol";
import {IStakeHub} from "./interfaces/IStakeHub.sol";
import {IStakeCredit} from "./interfaces/IStakeCredit.sol";

/**
 * @title Stake Manager Contract
 * @author Lista
 * @notice This contract handles the liquid staking of BNB on BSC through the native StakeHub contract
 */
contract ListaStakeManager is IStakeManager, Initializable, PausableUpgradeable, AccessControlUpgradeable {
    using SafeERC20Upgradeable for IERC20Upgradeable;

    // Deprecated variable
    uint256 public placeholder;

    // Total delegations including unbonding BNB
    uint256 public totalDelegated;

    // Total available BNB for the next delegation
    uint256 public amountToDelegate;

    // Global UUID for each withdrawal request
    uint256 public requestUUID;

    // UUID for the next confirmed request; req whose uuid < nextConfirmedRequestUUID is claimable
    uint256 public nextConfirmedRequestUUID;

    // Buffer amount for undelegation
    uint256 public reserveAmount;

    // Reserved BNB amount from redirect address
    uint256 public totalReserveAmount;

    // Address of SlisBnb Token
    address private slisBnb;

    // Deprecated variable; the initial BSC validator funds will be migrated to
    address private bscValidator;

    // Deprecated variable
    mapping(uint256 => BotUndelegateRequest) private uuidToBotUndelegateRequestMap;

    // User's address => WithdrawalRequest[]
    mapping(address => WithdrawalRequest[]) private userWithdrawalRequests;

    uint256 public constant TEN_DECIMALS = 1e10;
    bytes32 public constant BOT = keccak256("BOT");

    // Guardian role can pause the contract
    bytes32 public constant GUARDIAN = keccak256("GUARDIAN");

    address private manager;
    address private proposedManager;

    // Protocol fee rate charged on staking rewards; range {0-10_000_000_000}
    // 5% as of Oct 2024
    uint256 public synFee;

    address public revenuePool;
    address public redirectAddress;

    address private constant STAKE_HUB = 0x0000000000000000000000000000000000002002;
    address private constant GOV_BNB = 0x0000000000000000000000000000000000002005;

    // Validators are whitelisted or not
    // The operator address of the validator => true/false
    mapping(address => bool) public validators;

    // Whether to delegate voting power to validator or not on delegation and re-delegation
    bool public delegateVotePower;

    // The amount Bnb received but not claimable yet
    uint256 public undelegatedQuota;

    // The queue for requested withdrawals
    UserRequest[] internal withdrawalQueue;

    // The mapping used to find the index in withdrawalQueue by uuid
    // uuid => index in withdrawalQueue
    mapping(uint256 => uint256) public requestIndexMap;

    // Address of the credit contracts
    address[] public creditContracts;

    // States of credit contracts; use mapping to reduce gas of `receive()`
    // credit contract address => true/false
    mapping(address => bool) public creditStates;

    // The amount of BNB unbonding in fly; precise bnb amount
    uint256 public unbondingBnb;

    // The minimum amount of BNB required for a withdrawal
    uint256 public minBnb;

    // principal * annualRate / 365; range {0-10_000_000_000}
    // 0.1% as of Oct 2024
    uint256 public annualRate;

    // ListaDao validator commission refund
    Refund public refund;

    // manager role to refund commission
    bytes32 public constant MANAGER = keccak256("MANAGER");

    struct Refund {
        uint256 dailySlisBnb; // daily slisBnb to be burned
        uint256 remainingSlisBnb; // remaining slisBnb amount to be burned
        uint256 lastBurnTime; // last burn time
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @param _slisBnb - Address of SlisBnb Token on BNB Smart Chain
     * @param _admin - Address of the admin
     * @param _manager - Address of the manager
     * @param _bot - Address of the Bot
     * @param _synFee - Rewards fee to revenue pool
     * @param _revenuePool - Revenue pool to receive rewards
     * @param _validator - Validator to delegate BNB
     */
    function initialize(
        address _slisBnb,
        address _admin,
        address _manager,
        address _bot,
        uint256 _synFee,
        address _revenuePool,
        address _validator
    ) external override initializer {
        __AccessControl_init();
        __Pausable_init();

        require(
            (
                (_slisBnb != address(0)) && (_admin != address(0)) && (_manager != address(0))
                    && (_validator != address(0)) && (_revenuePool != address(0)) && (_bot != address(0))
            ),
            "zero address provided"
        );
        require(_synFee <= TEN_DECIMALS, "_synFee must not exceed (100%)");

        _setRoleAdmin(BOT, DEFAULT_ADMIN_ROLE);
        _setupRole(DEFAULT_ADMIN_ROLE, _admin);
        _setupRole(BOT, _bot);

        manager = _manager;
        slisBnb = _slisBnb;
        bscValidator = _validator;
        synFee = _synFee;
        revenuePool = _revenuePool;

        emit SetManager(_manager);
        emit SetBSCValidator(bscValidator);
        emit SetRevenuePool(revenuePool);
        emit SetSynFee(_synFee);
    }

    /**
     * @dev Allows user to deposit Bnb and mint SlisBnb
     */
    function deposit() external payable override whenNotPaused {
        uint256 amount = msg.value;
        require(amount > 0, "Invalid Amount");

        uint256 slisBnbToMint = convertBnbToSnBnb(amount);
        require(slisBnbToMint > 0, "Invalid SlisBnb Amount");
        amountToDelegate += amount;

        ISLisBNB(slisBnb).mint(msg.sender, slisBnbToMint);

        emit Deposit(msg.sender, msg.value);
    }

    /**
     * @dev Allows bot to delegate users' funds to given BSC validator
     * @param _validator - Operator address of the BSC validator to delegate to
     * @param _amount - Amount of BNB to delegate
     * @notice The amount should be greater than minimum delegation
     */
    function delegateTo(address _validator, uint256 _amount) external override whenNotPaused onlyRole(BOT) {
        require(amountToDelegate >= _amount, "Not enough BNB to delegate");

        require(validators[_validator] == true, "Inactive validator");
        require(_amount >= IStakeHub(STAKE_HUB).minDelegationBNBChange(), "Insufficient Delegation Amount");

        amountToDelegate -= _amount;
        totalDelegated += _amount;

        IStakeHub(STAKE_HUB).delegate{value: _amount}(_validator, delegateVotePower);

        emit DelegateTo(_validator, _amount, delegateVotePower);
    }

    /**
     * @param srcValidator the operator address of the validator to be redelegated from
     * @param dstValidator the operator address of the validator to be redelegated to
     * @param _amount the bnb amount to be redelegated
     */
    function redelegate(address srcValidator, address dstValidator, uint256 _amount)
        external
        override
        whenNotPaused
        onlyRole(BOT)
    {
        require(srcValidator != dstValidator, "Invalid Redelegation");
        require(validators[dstValidator], "Inactive dst validator");

        uint256 shares = convertBnbToShares(srcValidator, _amount);

        // redelegate through native staking contract
        IStakeHub(STAKE_HUB).redelegate(srcValidator, dstValidator, shares, delegateVotePower);

        emit ReDelegate(srcValidator, dstValidator, shares);
    }

    /**
     * @dev Allow users to request to unstake BNB.
     * @param _amountInSlisBnb - Amount of SlisBnb to swap for withdraw
     * @notice User must have approved this contract to spend SlisBnb
     */
    function requestWithdraw(uint256 _amountInSlisBnb) external override whenNotPaused {
        require(_amountInSlisBnb > 0, "Invalid slisBnb Amount");

        uint256 bnbToWithdraw = convertSnBnbToBnb(_amountInSlisBnb);
        require(bnbToWithdraw > minBnb, "Bnb amount is too small to withdraw");

        uint256 totalAmount = bnbToWithdraw;
        uint256 totalAmountInSlisBnb = _amountInSlisBnb;
        if (withdrawalQueue.length != 0) {
            totalAmount += withdrawalQueue[requestIndexMap[requestUUID]].totalAmount;
            totalAmountInSlisBnb += withdrawalQueue[requestIndexMap[requestUUID]].totalAmountInSlisBnb;
        }

        requestUUID++;
        userWithdrawalRequests[msg.sender].push(
            WithdrawalRequest({uuid: requestUUID, amountInSnBnb: _amountInSlisBnb, startTime: block.timestamp})
        );

        withdrawalQueue.push(
            UserRequest({
                uuid: requestUUID,
                amount: bnbToWithdraw,
                amountInSlisBnb: _amountInSlisBnb,
                totalAmount: totalAmount,
                totalAmountInSlisBnb: totalAmountInSlisBnb
            })
        );
        requestIndexMap[requestUUID] = withdrawalQueue.length - 1;

        IERC20Upgradeable(slisBnb).safeTransferFrom(msg.sender, address(this), _amountInSlisBnb);
        emit RequestWithdraw(msg.sender, _amountInSlisBnb);
    }

    /**
     * @dev Users use this function to claim the requested withdrawals
     * @param _idx - The index of the request in the array returns by getUserWithdrawalRequests()
     */
    function claimWithdraw(uint256 _idx) external override whenNotPaused {
        _claimWithdrawFor(msg.sender, _idx);
    }

    /**
     * @dev This function allows to claim the requested withdrawals for other users; only bot can call this function
     * @param _user - The address of the user who raised WithdrawRequest
     * @param _idx - The index of the request in the array returns by getUserWithdrawalRequests()
     */
    function claimWithdrawFor(address _user, uint256 _idx) external override whenNotPaused onlyRole(BOT) {
        _claimWithdrawFor(_user, _idx);
    }

    function _claimWithdrawFor(address _user, uint256 _idx) private {
        WithdrawalRequest[] storage userRequests = userWithdrawalRequests[_user];

        require(_idx < userRequests.length, "Invalid index");

        WithdrawalRequest storage withdrawRequest = userRequests[_idx];
        uint256 uuid = withdrawRequest.uuid;
        uint256 amount;

        // 1. queue.length == 0 => old request
        // 2. queue.length > 0 && uuid < queue[0].uuid => old request
        // 3. queue.length > 0 && uuid >= queue[0].uuid => new request

        if (withdrawalQueue.length != 0 && uuid >= withdrawalQueue[0].uuid) {
            // new request
            UserRequest storage request = withdrawalQueue[requestIndexMap[uuid]];
            require(uuid < nextConfirmedRequestUUID, "Not able to claim yet");
            amount = request.amount;
        } else {
            // old request
            uint256 amountInSlisBnb = withdrawRequest.amountInSnBnb;
            BotUndelegateRequest storage botUndelegateRequest = uuidToBotUndelegateRequestMap[uuid];
            require(botUndelegateRequest.endTime != 0, "Not able to claim yet");
            uint256 totalBnbToWithdraw_ = botUndelegateRequest.amount;
            uint256 totalSlisBnbToBurn_ = botUndelegateRequest.amountInSnBnb;
            amount = (totalBnbToWithdraw_ * amountInSlisBnb) / totalSlisBnbToBurn_;
        }

        userRequests[_idx] = userRequests[userRequests.length - 1];
        userRequests.pop();

        // send hacker fund to vault
        if (_user == 0x5977A7A7cA48615F5265409b746D433c3225991b) {
            address vault = 0x1d60bBBEF79Fb9540D271Dbb01925380323A8f66;
            AddressUpgradeable.sendValue(payable(vault), amount);
            emit ClaimWithdrawal(_user, _idx, amount);
            return;
        }

        AddressUpgradeable.sendValue(payable(_user), amount);

        emit ClaimWithdrawal(_user, _idx, amount);
    }

    /**
     * @dev Deprecated after fusion
     */
    function undelegate() external override whenNotPaused onlyRole(BOT) returns (uint256 _uuid, uint256 _amount) {
        revert("not supported");
    }

    /**
     * @dev Bot uses this function to undelegate BNB from a validator
     * @param _operator - Operator address of validator to undelegate from
     * @param _amount - Amount of bnb to undelegate
     * @return _actualBnbAmount - the actual amount of BNB to be undelegated
     */
    function undelegateFrom(address _operator, uint256 _amount)
        external
        override
        whenNotPaused
        onlyRole(BOT)
        returns (uint256 _actualBnbAmount)
    {
        require(_amount <= (getAmountToUndelegate() + reserveAmount), "Given bnb amount is too large");
        uint256 _shares = convertBnbToShares(_operator, _amount);
        _actualBnbAmount = convertSharesToBnb(_operator, _shares);

        unbondingBnb += _actualBnbAmount;
        IStakeHub(STAKE_HUB).undelegate(_operator, _shares);

        emit UndelegateFrom(_operator, _actualBnbAmount, _shares);
    }

    /**
     * @dev Bot uses this function to claim unbonded BNB and rewards from a validator
     * @param _validator - The operator address of the validator
     * @return _uuid - the next confirmed request uuid
     * @return _amount - the amount of BNB claimed, staking rewards included
     */
    function claimUndelegated(address _validator)
        external
        override
        whenNotPaused
        onlyRole(BOT)
        returns (uint256 _uuid, uint256 _amount)
    {
        uint256 balanceBefore = address(this).balance;
        IStakeHub(STAKE_HUB).claim(_validator, 0);
        require(address(this).balance > balanceBefore, "Nothing to claim");
        uint256 undelegatedAmount = address(this).balance - balanceBefore;

        undelegatedQuota += undelegatedAmount;
        unbondingBnb -= undelegatedAmount;

        uint256 coveredAmount = 0;
        uint256 coveredSlisBnbAmount = 0;

        if (withdrawalQueue.length != 0 && withdrawalQueue[withdrawalQueue.length - 1].uuid >= nextConfirmedRequestUUID)
        {
            uint256 startIndex = requestIndexMap[nextConfirmedRequestUUID];
            uint256 coveredMaxIndex = binarySearchCoveredMaxIndex(undelegatedQuota);
            uint256 totalAmount = withdrawalQueue[coveredMaxIndex].totalAmount - withdrawalQueue[startIndex].totalAmount
                + withdrawalQueue[startIndex].amount;
            uint256 totalAmountInSlisBnb = withdrawalQueue[coveredMaxIndex].totalAmountInSlisBnb
                - withdrawalQueue[startIndex].totalAmountInSlisBnb + withdrawalQueue[startIndex].amountInSlisBnb;
            // may not have covered any requests when coveredMaxIndex == startIndex
            if (totalAmount <= undelegatedQuota) {
                undelegatedQuota -= totalAmount;
                coveredAmount += totalAmount;
                coveredSlisBnbAmount += totalAmountInSlisBnb;
                nextConfirmedRequestUUID = withdrawalQueue[coveredMaxIndex].uuid + 1;
            }
        }

        totalDelegated -= coveredAmount;
        if (coveredSlisBnbAmount > 0) {
            ISLisBNB(slisBnb).burn(address(this), coveredSlisBnbAmount);
        }

        _uuid = nextConfirmedRequestUUID;
        _amount = undelegatedAmount;

        emit ClaimUndelegatedFrom(_validator, _uuid, _amount);
    }

    /**
     * @dev To prevent DOS attack caused by the large number of requests in the withdrawalQueue.
     *      Use binary search algorithm to find the maximum index
     *      that might be covered in the withdrawalQueue by the given BNB amount
     * @return the maximum index that might be covered in the withdrawalQueue by the given BNB amount
     * @param _bnbAmount - the amount of BNB used to cover withdrawal requests
     */
    function binarySearchCoveredMaxIndex(uint256 _bnbAmount) public view override returns (uint256) {
        require(
            withdrawalQueue.length != 0 && withdrawalQueue[0].uuid <= nextConfirmedRequestUUID,
            "No new requests or old requests have not been fully covered"
        );
        if (nextConfirmedRequestUUID > withdrawalQueue[withdrawalQueue.length - 1].uuid) {
            // all requests have been covered
            return 0;
        }
        uint256 startIndex = requestIndexMap[nextConfirmedRequestUUID];
        uint256 endIndex = withdrawalQueue.length - 1;
        uint256 startAmount = withdrawalQueue[startIndex].amount;
        uint256 startTotalAmount = withdrawalQueue[startIndex].totalAmount;

        // covered all requests, which is the common scenario
        if (withdrawalQueue[endIndex].totalAmount - startTotalAmount + startAmount <= _bnbAmount) {
            return endIndex;
        }

        uint256 start = startIndex;
        uint256 end = endIndex;
        while (start <= end) {
            uint256 mid = (start + end) / 2; // startIndex <= mid <= endIndex

            uint256 nextAmount;
            if (mid < endIndex) {
                nextAmount = withdrawalQueue[mid + 1].totalAmount - startTotalAmount + startAmount;
            } else {
                // mid == endIndex
                nextAmount = withdrawalQueue[endIndex].totalAmount - startTotalAmount + startAmount;
            }
            uint256 currentAmount = withdrawalQueue[mid].totalAmount - startTotalAmount + startAmount;

            if (nextAmount > _bnbAmount && currentAmount <= _bnbAmount) {
                return mid;
            } else if (nextAmount <= _bnbAmount) {
                if (mid >= endIndex) {
                    return endIndex;
                }
                start = mid + 1;
            } else {
                if (mid <= startIndex) {
                    return startIndex;
                }
                end = mid - 1;
            }
        }

        return startIndex;
    }

    /**
     * @dev Allows to delegate all voting power to a specific address; Need to delegate to stake manager itself to track its voting power
     * @param _delegateTo - Address to delegate voting power to; cancel delegation if address is this contract
     */
    function delegateVoteTo(address _delegateTo) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_delegateTo != address(0), "Invalid Address");

        IVotesUpgradeable govToken = IVotesUpgradeable(GOV_BNB);

        address currentDelegatee = govToken.delegates(address(this));
        require(currentDelegatee != _delegateTo, "Already Delegated");

        uint256 balance = IERC20Upgradeable(GOV_BNB).balanceOf(address(this));

        uint256 newVotePower = govToken.getVotes(_delegateTo);
        uint256 currentVotePower = govToken.getVotes(currentDelegatee);
        govToken.delegate(_delegateTo);
        require(govToken.delegates(address(this)) == _delegateTo, "Delegation Failed");

        // Check voting power moved correctly
        if (_delegateTo != address(this)) {
            require(govToken.getVotes(address(this)) == 0, "Invalid Delegation");
            uint256 currDelegateeChange = currentVotePower - govToken.getVotes(currentDelegatee);
            uint256 newDelegateeChange = govToken.getVotes(_delegateTo) - newVotePower;

            require(currDelegateeChange == newDelegateeChange && balance == currDelegateeChange, "Invalid Change");
        } else {
            require(govToken.getVotes(address(this)) == balance, "Self-delegation Failed");
        }

        emit DelegateVoteTo(_delegateTo, balance);
    }

    /**
     * @dev Used by Redirect Address to deposit reserved funds
     */
    function depositReserve() external payable override whenNotPaused onlyRedirectAddress {
        uint256 amount = msg.value;
        require(amount > 0, "Invalid Amount");

        totalReserveAmount += amount;
    }

    /**
     * @dev Used by Redirect Address to withdraw reserved funds
     * @param amount - Amount of BNB to withdraw
     */
    function withdrawReserve(uint256 amount) external override whenNotPaused onlyRedirectAddress {
        require(amount <= totalReserveAmount, "Insufficient Balance");
        totalReserveAmount -= amount;
        AddressUpgradeable.sendValue(payable(msg.sender), amount);
    }

    /**
     * @dev Adjust reserve amount. `reserveAmount` is the buffer for undelegation.
     *      Since the actual undelegate amount is slightly smaller than the Bot requested amount due to precision loss,
     *      Bot will add some extra BNB when calling undelegateFrom for the first time, in order to cover the last request.
     * @param amount - Amount of Bnb
     */
    function setReserveAmount(uint256 amount) external override onlyManager {
        reserveAmount = amount;
        emit SetReserveAmount(amount);
    }

    function proposeNewManager(address _address) external override onlyManager {
        require(manager != _address && _address != address(0), "Invalid Address");
        proposedManager = _address;
        emit ProposeManager(_address);
    }

    function acceptNewManager() external override {
        require(msg.sender == proposedManager, "Accessible only by Proposed Manager");

        manager = proposedManager;
        proposedManager = address(0);

        emit SetManager(manager);
    }

    function setBotRole(address _address) external override {
        require(_address != address(0), "Zero address provided");
        grantRole(BOT, _address);
    }

    function revokeBotRole(address _address) external override {
        require(_address != address(0), "Zero address provided");
        revokeRole(BOT, _address);
    }

    /**
     * @dev Sync the credit contract of a validator and store in the contract
     * @param _validator - the operator address of the validator
     * @param toRemove - if true, remove the credit contract; false to add if non-existent
     */
    function syncCredits(address _validator, bool toRemove) internal {
        address credit = IStakeHub(STAKE_HUB).getValidatorCreditContract(_validator);
        if (toRemove) {
            delete creditStates[credit];

            for (uint256 i = 0; i < creditContracts.length; i++) {
                if (creditContracts[i] == credit) {
                    creditContracts[i] = creditContracts[creditContracts.length - 1];
                    creditContracts.pop();
                    break;
                }
            }
            emit SyncCreditContract(_validator, credit, toRemove);
            return;
        } else if (creditStates[credit]) {
            // do nothing if credit already exists
            return;
        }

        creditStates[credit] = true;
        creditContracts.push(credit);

        emit SyncCreditContract(_validator, credit, toRemove);
    }

    /**
     * @dev Sets the operator address of the BSC validator initially delegated to. Call this function after 2nd upgrade done
     * @param _address - the operator address of BSC validator
     */
    function setBSCValidator(address _address) external override onlyManager {
        require(bscValidator != _address && _address != address(0), "Invalid Address");

        bscValidator = _address;
        syncCredits(bscValidator, false);

        emit SetBSCValidator(_address);
    }

    /**
     * @dev Sets the protocol fee to be charged on staking rewards
     * @param _synFee - the fee to be charged on rewards; 500_000_000 (5%)
     */
    function setSynFee(uint256 _synFee) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_synFee <= TEN_DECIMALS, "_synFee must not exceed 10000000000 (100%)");
        synFee = _synFee;

        emit SetSynFee(_synFee);
    }

    /**
     * @dev Sets the rate for the protocol fee to be charged on total staked amount
     * @param _annualRate - the rate to be charged on total staked amount; 10_000_000 (0.1%) by default
     */
    function setAnnualRate(uint256 _annualRate) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_annualRate <= TEN_DECIMALS, "_annualRate must not exceed 10000000000 (100%)");
        annualRate = _annualRate;

        emit SetAnnualRate(_annualRate);
    }

    /**
     * @dev Sets the minimum amount of BNB required for a withdrawal
     * @param _amount - the minimum amount of BNB required for a withdrawal
     */
    function setMinBnb(uint256 _amount) external override onlyManager {
        require(_amount != minBnb, "Invalid Amount");
        minBnb = _amount;
        emit SetMinBnb(_amount);
    }

    function setRedirectAddress(address _address) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        require(redirectAddress != _address && _address != address(0), "Invalid Address");
        redirectAddress = _address;
        emit SetRedirectAddress(_address);
    }

    function setRevenuePool(address _address) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        require(revenuePool != _address && _address != address(0), "Invalid Address");
        revenuePool = _address;
        emit SetRevenuePool(_address);
    }

    function whitelistValidator(address _address) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        require(!validators[_address], "Validator should be inactive");
        require(_address != address(0), "zero address provided");

        validators[_address] = true;
        syncCredits(_address, false);

        emit WhitelistValidator(_address);
    }

    /**
     * @dev Disables a validator from the contract.
     *      Upon disabled, bot can only undelegete the funds, delegation is not allowed
     * @param _address - the operator address of the validator
     */
    function disableValidator(address _address) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        require(validators[_address], "Validator is not active");
        validators[_address] = false;
        emit DisableValidator(_address);
    }

    /**
     * @dev Removes a disabled validator from the contract
     * @param _address - the operator address of the validator
     */
    function removeValidator(address _address) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        require(!validators[_address], "Validator should be inactive");
        require(getDelegated(_address) == 0, "Balance is not zero");

        syncCredits(_address, true);
        delete validators[_address];

        emit RemoveValidator(_address);
    }

    function getTotalPooledBnb() public view override returns (uint256) {
        return (amountToDelegate + totalDelegated);
    }

    function getContracts()
        external
        view
        override
        returns (address _manager, address _slisBnb, address _bscValidator)
    {
        _manager = manager;
        _slisBnb = slisBnb;
        _bscValidator = bscValidator;
    }

    /**
     * @dev Retrieves the old undelegate request initiated by Bot
     * @param _uuid - UUID of the request; should be uuid of the old stake manager version
     */
    function getBotUndelegateRequest(uint256 _uuid) external view override returns (BotUndelegateRequest memory) {
        return uuidToBotUndelegateRequestMap[_uuid];
    }

    /**
     * @dev Retrieves all withdrawal requests initiated by the given address
     * @param _address - Address of the requester
     * @return userWithdrawalRequests array of user withdrawal requests
     */
    function getUserWithdrawalRequests(address _address) external view override returns (WithdrawalRequest[] memory) {
        return userWithdrawalRequests[_address];
    }

    /**
     * @dev Checks if the withdrawRequest is ready to claim
     * @param _user - Address of the user who raised WithdrawRequest
     * @param _idx - index of request in UserWithdrawls Array
     * @return _isClaimable - if the withdraw is ready to claim yet
     * @return _amount - Amount of BNB user would receive on withdraw claim
     * @notice Use `getUserWithdrawalRequests` to get the userWithdrawlRequests Array
     */
    function getUserRequestStatus(address _user, uint256 _idx)
        external
        view
        override
        returns (bool _isClaimable, uint256 _amount)
    {
        WithdrawalRequest[] storage userRequests = userWithdrawalRequests[_user];

        require(_idx < userRequests.length, "Invalid index");

        WithdrawalRequest storage withdrawRequest = userRequests[_idx];
        uint256 uuid = withdrawRequest.uuid;

        if (withdrawalQueue.length != 0 && uuid >= withdrawalQueue[0].uuid) {
            // new logic
            UserRequest storage request = withdrawalQueue[requestIndexMap[uuid]];
            _isClaimable = uuid < nextConfirmedRequestUUID;
            _amount = request.amount;
        } else {
            // old logic
            uint256 amountInSnBnb = withdrawRequest.amountInSnBnb;
            BotUndelegateRequest storage botUndelegateRequest = uuidToBotUndelegateRequestMap[uuid];

            // bot has triggered startUndelegation
            if (botUndelegateRequest.amount > 0) {
                uint256 totalBnbToWithdraw_ = botUndelegateRequest.amount;
                uint256 totalSnBnbToBurn_ = botUndelegateRequest.amountInSnBnb;
                _amount = (totalBnbToWithdraw_ * amountInSnBnb) / totalSnBnbToBurn_;
            } else {
                _amount = convertSnBnbToBnb(amountInSnBnb);
            }
            // old requests are always claimable since the migration from BC to BSC has done
            _isClaimable = true;
        }
    }

    function getSlisBnbWithdrawLimit() external view override returns (uint256 _slisBnbWithdrawLimit) {
        uint256 amountToUndelegate = getAmountToUndelegate();

        _slisBnbWithdrawLimit = convertBnbToSnBnb(totalDelegated - amountToUndelegate - unbondingBnb);
    }

    /**
     * @param _validator - the operator address of the validator
     * @return the total amount of BNB staked and reward
     */
    function getDelegated(address _validator) public view override returns (uint256) {
        address creditContract = IStakeHub(STAKE_HUB).getValidatorCreditContract(_validator);
        return IStakeCredit(creditContract).getPooledBNB(address(this))
            + IStakeCredit(creditContract).lockedBNBs(address(this), 0);
    }

    /**
     * @dev Bot use this method to get the amount of BNB to call undelegateFrom
     * @return _amountToUndelegate Bnb amount to be undelegated by bot
     */
    function getAmountToUndelegate() public view override returns (uint256 _amountToUndelegate) {
        if (withdrawalQueue.length == 0 || withdrawalQueue[withdrawalQueue.length - 1].uuid < nextConfirmedRequestUUID)
        {
            return 0;
        }

        uint256 nextIndex = requestIndexMap[nextConfirmedRequestUUID];
        uint256 totalAmountToWithdraw = withdrawalQueue[withdrawalQueue.length - 1].totalAmount
            - withdrawalQueue[nextIndex].totalAmount + withdrawalQueue[nextIndex].amount;

        _amountToUndelegate = totalAmountToWithdraw > unbondingBnb ? totalAmountToWithdraw - unbondingBnb : 0;

        return _amountToUndelegate >= undelegatedQuota ? _amountToUndelegate - undelegatedQuota : 0;
    }

    /**
     * @dev Query the claimable amount of BNB of a validator
     * @param _validator - the operator address of the validator
     * @return _amount - the amount of BNB claimable
     */
    function getClaimableAmount(address _validator) public view override returns (uint256 _amount) {
        address creditContract = IStakeHub(STAKE_HUB).getValidatorCreditContract(_validator);
        uint256 count = IStakeCredit(creditContract).claimableUnbondRequest(address(this));
        uint256 index = 0;

        while (count != 0) {
            IStakeCredit.UnbondRequest memory req = IStakeCredit(creditContract).unbondRequest(address(this), index);
            _amount += req.bnbAmount;
            --count;
            ++index;
        }
    }

    /**
     * @dev Calculates amount of Bnb for _shares
     * @param _operator - the operator address of the validator
     * @param _shares - the amount of shares
     * @return the amount of BNB for given shares
     */
    function convertSharesToBnb(address _operator, uint256 _shares) public view override returns (uint256) {
        address creditContract = IStakeHub(STAKE_HUB).getValidatorCreditContract(_operator);
        return IStakeCredit(creditContract).getPooledBNBByShares(_shares);
    }

    /**
     * @dev Calculates amount of shares for _bnbAmount
     * @param _operator - the operator address of the validator
     * @param _bnbAmount - the amount of BNB
     * @return the amount of shares for given BNB
     */
    function convertBnbToShares(address _operator, uint256 _bnbAmount) public view override returns (uint256) {
        address creditContract = IStakeHub(STAKE_HUB).getValidatorCreditContract(_operator);
        return IStakeCredit(creditContract).getSharesByPooledBNB(_bnbAmount);
    }

    /**
     * @dev Calculates amount of SlisBnb for `_amount` Bnb
     */
    function convertBnbToSnBnb(uint256 _amount) public view override returns (uint256) {
        uint256 totalShares = ISLisBNB(slisBnb).totalSupply();
        totalShares = totalShares == 0 ? 1 : totalShares;

        uint256 totalPooledBnb = getTotalPooledBnb();
        totalPooledBnb = totalPooledBnb == 0 ? 1 : totalPooledBnb;

        uint256 amountInSlisBnb = (_amount * totalShares) / totalPooledBnb;

        return amountInSlisBnb;
    }

    /**
     * @dev Calculates amount of Bnb for `_amountInSlisBnb` SlisBnb
     */
    function convertSnBnbToBnb(uint256 _amountInSlisBnb) public view override returns (uint256) {
        uint256 totalShares = ISLisBNB(slisBnb).totalSupply();
        totalShares = totalShares == 0 ? 1 : totalShares;

        uint256 totalPooledBnb = getTotalPooledBnb();
        totalPooledBnb = totalPooledBnb == 0 ? 1 : totalPooledBnb;

        uint256 amountInBnb = (_amountInSlisBnb * totalPooledBnb) / totalShares;

        return amountInBnb;
    }

    function getRedelegateFee(uint256 _amount) public view override returns (uint256) {
        IStakeHub stakeHub = IStakeHub(STAKE_HUB);
        return _amount * stakeHub.redelegateFeeRate() / stakeHub.REDELEGATE_FEE_RATE_BASE();
    }

    /// @dev to be deprecated. Use pause() and unpause() instead.
    /// @dev backward compatible purpose only
    function togglePause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        paused() ? _unpause() : _pause();
    }

    /**
     * @dev Resumes the contract by MANAGER
     * @notice MANAGER can be our EmergencySwitchHub Contract as well
     *         the ES-hub contract is limited to unpause the ListaStakeManager only
     */
    function unpause() external onlyRole(MANAGER) {
        _unpause();
    }

    /**
     * @dev Pauses the contract by Guardian
     */
    function pause() external onlyRole(GUARDIAN) {
        _pause();
    }

    /**
     * @dev Flips the vote power flag
     */
    function toggleVote() external onlyRole(DEFAULT_ADMIN_ROLE) {
        delegateVotePower = !delegateVotePower;
    }

    receive() external payable {
        if ((!creditStates[msg.sender]) && msg.sender != redirectAddress) {
            AddressUpgradeable.sendValue(payable(redirectAddress), msg.value);
        }
    }

    modifier onlyManager() {
        require(msg.sender == manager, "Accessible only by Manager");
        _;
    }

    modifier onlyRedirectAddress() {
        require(msg.sender == redirectAddress, "Accessible only by RedirectAddress");
        _;
    }

    /**
     * @dev Allows bot to compound rewards
     */
    function compoundRewards() external override whenNotPaused onlyRole(BOT) {
        require(totalDelegated > 0, "No funds delegated");

        uint256 totalBNBInValidators = getTotalBnbInValidators();
        require(totalBNBInValidators + undelegatedQuota > totalDelegated, "No new fee to compound");
        uint256 totalProfit = totalBNBInValidators + undelegatedQuota - totalDelegated;

        uint256 fee = SLisLibrary.calculateFee(totalDelegated, totalProfit, annualRate, synFee, TEN_DECIMALS);

        totalDelegated += totalProfit;
        uint256 slisBNBAmount = convertBnbToSnBnb(fee);
        if (slisBNBAmount > 0) {
            ISLisBNB(slisBnb).mint(revenuePool, slisBNBAmount);
        }

        _burnRefundSlisBnb();
        emit RewardsCompounded(fee);
    }

    function _burnRefundSlisBnb() private {
        if (refund.remainingSlisBnb == 0) return;
        if (block.timestamp / 1 days < (refund.lastBurnTime / 1 days + 1)) return; // burn once a day

        uint256 burnAmount = refund.dailySlisBnb;
        if (burnAmount > refund.remainingSlisBnb) {
            burnAmount = refund.remainingSlisBnb;
            refund.remainingSlisBnb = 0;
            refund.dailySlisBnb = 0;
        } else {
            refund.remainingSlisBnb -= burnAmount;
        }

        refund.lastBurnTime = block.timestamp;
        ISLisBNB(slisBnb).burn(address(this), burnAmount);
    }

    /**
     * @dev Allows manager to refund Lista Dao validator's commission to this contract
     * @param _days - Number of days to split the refund
     */
    function refundCommission(uint256 _days) external payable override whenNotPaused onlyRole(MANAGER) {
        require(msg.value > 0 && _days > 0, "Invalid Amount or Days");

        uint256 refundSlisBnb = convertBnbToSnBnb(msg.value);
        uint256 slisBnbAmount = refundSlisBnb + refund.remainingSlisBnb;
        uint256 dailySlisBnb = slisBnbAmount / _days;
        require(dailySlisBnb > 0, "Invalid Daily SlisBnb");

        amountToDelegate += msg.value; // stake the refund amount
        ISLisBNB(slisBnb).mint(address(this), refundSlisBnb); // mint slisBnb then burn daily proportion

        refund.dailySlisBnb = dailySlisBnb;
        refund.remainingSlisBnb = slisBnbAmount;

        emit RefundCommission(msg.value, dailySlisBnb, _days, slisBnbAmount);
    }

    /**
     * @dev Returns the total amount of BNB in all validators
     */
    function getTotalBnbInValidators() public view override returns (uint256) {
        uint256 totalBnb = 0;
        for (uint256 i = 0; i < creditContracts.length; i++) {
            IStakeCredit credit = IStakeCredit(creditContracts[i]);
            if (creditStates[address(credit)]) {
                totalBnb += credit.getPooledBNB(address(this)) + credit.lockedBNBs(address(this), 0);
            }
        }
        return totalBnb;
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/access/AccessControlUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (access/AccessControl.sol)

pragma solidity ^0.8.0;

import "./IAccessControlUpgradeable.sol";
import "../utils/ContextUpgradeable.sol";
import "../utils/StringsUpgradeable.sol";
import "../utils/introspection/ERC165Upgradeable.sol";
import "../proxy/utils/Initializable.sol";

/**
 * @dev Contract module that allows children to implement role-based access
 * control mechanisms. This is a lightweight version that doesn't allow enumerating role
 * members except through off-chain means by accessing the contract event logs. Some
 * applications may benefit from on-chain enumerability, for those cases see
 * {AccessControlEnumerable}.
 *
 * Roles are referred to by their `bytes32` identifier. These should be exposed
 * in the external API and be unique. The best way to achieve this is by
 * using `public constant` hash digests:
 *
 * ```
 * bytes32 public constant MY_ROLE = keccak256("MY_ROLE");
 * ```
 *
 * Roles can be used to represent a set of permissions. To restrict access to a
 * function call, use {hasRole}:
 *
 * ```
 * function foo() public {
 *     require(hasRole(MY_ROLE, msg.sender));
 *     ...
 * }
 * ```
 *
 * Roles can be granted and revoked dynamically via the {grantRole} and
 * {revokeRole} functions. Each role has an associated admin role, and only
 * accounts that have a role's admin role can call {grantRole} and {revokeRole}.
 *
 * By default, the admin role for all roles is `DEFAULT_ADMIN_ROLE`, which means
 * that only accounts with this role will be able to grant or revoke other
 * roles. More complex role relationships can be created by using
 * {_setRoleAdmin}.
 *
 * WARNING: The `DEFAULT_ADMIN_ROLE` is also its own admin: it has permission to
 * grant and revoke this role. Extra precautions should be taken to secure
 * accounts that have been granted it.
 */
abstract contract AccessControlUpgradeable is Initializable, ContextUpgradeable, IAccessControlUpgradeable, ERC165Upgradeable {
    function __AccessControl_init() internal onlyInitializing {
    }

    function __AccessControl_init_unchained() internal onlyInitializing {
    }
    struct RoleData {
        mapping(address => bool) members;
        bytes32 adminRole;
    }

    mapping(bytes32 => RoleData) private _roles;

    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;

    /**
     * @dev Modifier that checks that an account has a specific role. Reverts
     * with a standardized message including the required role.
     *
     * The format of the revert reason is given by the following regular expression:
     *
     *  /^AccessControl: account (0x[0-9a-f]{40}) is missing role (0x[0-9a-f]{64})$/
     *
     * _Available since v4.1._
     */
    modifier onlyRole(bytes32 role) {
        _checkRole(role);
        _;
    }

    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IAccessControlUpgradeable).interfaceId || super.supportsInterface(interfaceId);
    }

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) public view virtual override returns (bool) {
        return _roles[role].members[account];
    }

    /**
     * @dev Revert with a standard message if `_msgSender()` is missing `role`.
     * Overriding this function changes the behavior of the {onlyRole} modifier.
     *
     * Format of the revert message is described in {_checkRole}.
     *
     * _Available since v4.6._
     */
    function _checkRole(bytes32 role) internal view virtual {
        _checkRole(role, _msgSender());
    }

    /**
     * @dev Revert with a standard message if `account` is missing `role`.
     *
     * The format of the revert reason is given by the following regular expression:
     *
     *  /^AccessControl: account (0x[0-9a-f]{40}) is missing role (0x[0-9a-f]{64})$/
     */
    function _checkRole(bytes32 role, address account) internal view virtual {
        if (!hasRole(role, account)) {
            revert(
                string(
                    abi.encodePacked(
                        "AccessControl: account ",
                        StringsUpgradeable.toHexString(account),
                        " is missing role ",
                        StringsUpgradeable.toHexString(uint256(role), 32)
                    )
                )
            );
        }
    }

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) public view virtual override returns (bytes32) {
        return _roles[role].adminRole;
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     *
     * May emit a {RoleGranted} event.
     */
    function grantRole(bytes32 role, address account) public virtual override onlyRole(getRoleAdmin(role)) {
        _grantRole(role, account);
    }

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     *
     * May emit a {RoleRevoked} event.
     */
    function revokeRole(bytes32 role, address account) public virtual override onlyRole(getRoleAdmin(role)) {
        _revokeRole(role, account);
    }

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been revoked `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - the caller must be `account`.
     *
     * May emit a {RoleRevoked} event.
     */
    function renounceRole(bytes32 role, address account) public virtual override {
        require(account == _msgSender(), "AccessControl: can only renounce roles for self");

        _revokeRole(role, account);
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event. Note that unlike {grantRole}, this function doesn't perform any
     * checks on the calling account.
     *
     * May emit a {RoleGranted} event.
     *
     * [WARNING]
     * ====
     * This function should only be called from the constructor when setting
     * up the initial roles for the system.
     *
     * Using this function in any other way is effectively circumventing the admin
     * system imposed by {AccessControl}.
     * ====
     *
     * NOTE: This function is deprecated in favor of {_grantRole}.
     */
    function _setupRole(bytes32 role, address account) internal virtual {
        _grantRole(role, account);
    }

    /**
     * @dev Sets `adminRole` as ``role``'s admin role.
     *
     * Emits a {RoleAdminChanged} event.
     */
    function _setRoleAdmin(bytes32 role, bytes32 adminRole) internal virtual {
        bytes32 previousAdminRole = getRoleAdmin(role);
        _roles[role].adminRole = adminRole;
        emit RoleAdminChanged(role, previousAdminRole, adminRole);
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleGranted} event.
     */
    function _grantRole(bytes32 role, address account) internal virtual {
        if (!hasRole(role, account)) {
            _roles[role].members[account] = true;
            emit RoleGranted(role, account, _msgSender());
        }
    }

    /**
     * @dev Revokes `role` from `account`.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleRevoked} event.
     */
    function _revokeRole(bytes32 role, address account) internal virtual {
        if (hasRole(role, account)) {
            _roles[role].members[account] = false;
            emit RoleRevoked(role, account, _msgSender());
        }
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/access/IAccessControlUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (access/IAccessControl.sol)

pragma solidity ^0.8.0;

/**
 * @dev External interface of AccessControl declared to support ERC165 detection.
 */
interface IAccessControlUpgradeable {
    /**
     * @dev Emitted when `newAdminRole` is set as ``role``'s admin role, replacing `previousAdminRole`
     *
     * `DEFAULT_ADMIN_ROLE` is the starting admin for all roles, despite
     * {RoleAdminChanged} not being emitted signaling this.
     *
     * _Available since v3.1._
     */
    event RoleAdminChanged(bytes32 indexed role, bytes32 indexed previousAdminRole, bytes32 indexed newAdminRole);

    /**
     * @dev Emitted when `account` is granted `role`.
     *
     * `sender` is the account that originated the contract call, an admin role
     * bearer except when using {AccessControl-_setupRole}.
     */
    event RoleGranted(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Emitted when `account` is revoked `role`.
     *
     * `sender` is the account that originated the contract call:
     *   - if using `revokeRole`, it is the admin role bearer
     *   - if using `renounceRole`, it is the role bearer (i.e. `account`)
     */
    event RoleRevoked(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) external view returns (bool);

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {AccessControl-_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) external view returns (bytes32);

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function grantRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function revokeRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been granted `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - the caller must be `account`.
     */
    function renounceRole(bytes32 role, address account) external;
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/governance/utils/IVotesUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.5.0) (governance/utils/IVotes.sol)
pragma solidity ^0.8.0;

/**
 * @dev Common interface for {ERC20Votes}, {ERC721Votes}, and other {Votes}-enabled contracts.
 *
 * _Available since v4.5._
 */
interface IVotesUpgradeable {
    /**
     * @dev Emitted when an account changes their delegate.
     */
    event DelegateChanged(address indexed delegator, address indexed fromDelegate, address indexed toDelegate);

    /**
     * @dev Emitted when a token transfer or delegate change results in changes to a delegate's number of votes.
     */
    event DelegateVotesChanged(address indexed delegate, uint256 previousBalance, uint256 newBalance);

    /**
     * @dev Returns the current amount of votes that `account` has.
     */
    function getVotes(address account) external view returns (uint256);

    /**
     * @dev Returns the amount of votes that `account` had at the end of a past block (`blockNumber`).
     */
    function getPastVotes(address account, uint256 blockNumber) external view returns (uint256);

    /**
     * @dev Returns the total supply of votes available at the end of a past block (`blockNumber`).
     *
     * NOTE: This value is the sum of all available votes, which is not necessarily the sum of all delegated votes.
     * Votes that have not been delegated are still part of total supply, even though they would not participate in a
     * vote.
     */
    function getPastTotalSupply(uint256 blockNumber) external view returns (uint256);

    /**
     * @dev Returns the delegate that `account` has chosen.
     */
    function delegates(address account) external view returns (address);

    /**
     * @dev Delegates votes from the sender to `delegatee`.
     */
    function delegate(address delegatee) external;

    /**
     * @dev Delegates votes from signer to `delegatee`.
     */
    function delegateBySig(
        address delegatee,
        uint256 nonce,
        uint256 expiry,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.1) (proxy/utils/Initializable.sol)

pragma solidity ^0.8.2;

import "../../utils/AddressUpgradeable.sol";

/**
 * @dev This is a base contract to aid in writing upgradeable contracts, or any kind of contract that will be deployed
 * behind a proxy. Since proxied contracts do not make use of a constructor, it's common to move constructor logic to an
 * external initializer function, usually called `initialize`. It then becomes necessary to protect this initializer
 * function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.
 *
 * The initialization functions use a version number. Once a version number is used, it is consumed and cannot be
 * reused. This mechanism prevents re-execution of each "step" but allows the creation of new initialization steps in
 * case an upgrade adds a module that needs to be initialized.
 *
 * For example:
 *
 * [.hljs-theme-light.nopadding]
 * ```
 * contract MyToken is ERC20Upgradeable {
 *     function initialize() initializer public {
 *         __ERC20_init("MyToken", "MTK");
 *     }
 * }
 * contract MyTokenV2 is MyToken, ERC20PermitUpgradeable {
 *     function initializeV2() reinitializer(2) public {
 *         __ERC20Permit_init("MyToken");
 *     }
 * }
 * ```
 *
 * TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
 * possible by providing the encoded function call as the `_data` argument to {ERC1967Proxy-constructor}.
 *
 * CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
 * that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.
 *
 * [CAUTION]
 * ====
 * Avoid leaving a contract uninitialized.
 *
 * An uninitialized contract can be taken over by an attacker. This applies to both a proxy and its implementation
 * contract, which may impact the proxy. To prevent the implementation contract from being used, you should invoke
 * the {_disableInitializers} function in the constructor to automatically lock it when it is deployed:
 *
 * [.hljs-theme-light.nopadding]
 * ```
 * /// @custom:oz-upgrades-unsafe-allow constructor
 * constructor() {
 *     _disableInitializers();
 * }
 * ```
 * ====
 */
abstract contract Initializable {
    /**
     * @dev Indicates that the contract has been initialized.
     * @custom:oz-retyped-from bool
     */
    uint8 private _initialized;

    /**
     * @dev Indicates that the contract is in the process of being initialized.
     */
    bool private _initializing;

    /**
     * @dev Triggered when the contract has been initialized or reinitialized.
     */
    event Initialized(uint8 version);

    /**
     * @dev A modifier that defines a protected initializer function that can be invoked at most once. In its scope,
     * `onlyInitializing` functions can be used to initialize parent contracts.
     *
     * Similar to `reinitializer(1)`, except that functions marked with `initializer` can be nested in the context of a
     * constructor.
     *
     * Emits an {Initialized} event.
     */
    modifier initializer() {
        bool isTopLevelCall = !_initializing;
        require(
            (isTopLevelCall && _initialized < 1) || (!AddressUpgradeable.isContract(address(this)) && _initialized == 1),
            "Initializable: contract is already initialized"
        );
        _initialized = 1;
        if (isTopLevelCall) {
            _initializing = true;
        }
        _;
        if (isTopLevelCall) {
            _initializing = false;
            emit Initialized(1);
        }
    }

    /**
     * @dev A modifier that defines a protected reinitializer function that can be invoked at most once, and only if the
     * contract hasn't been initialized to a greater version before. In its scope, `onlyInitializing` functions can be
     * used to initialize parent contracts.
     *
     * A reinitializer may be used after the original initialization step. This is essential to configure modules that
     * are added through upgrades and that require initialization.
     *
     * When `version` is 1, this modifier is similar to `initializer`, except that functions marked with `reinitializer`
     * cannot be nested. If one is invoked in the context of another, execution will revert.
     *
     * Note that versions can jump in increments greater than 1; this implies that if multiple reinitializers coexist in
     * a contract, executing them in the right order is up to the developer or operator.
     *
     * WARNING: setting the version to 255 will prevent any future reinitialization.
     *
     * Emits an {Initialized} event.
     */
    modifier reinitializer(uint8 version) {
        require(!_initializing && _initialized < version, "Initializable: contract is already initialized");
        _initialized = version;
        _initializing = true;
        _;
        _initializing = false;
        emit Initialized(version);
    }

    /**
     * @dev Modifier to protect an initialization function so that it can only be invoked by functions with the
     * {initializer} and {reinitializer} modifiers, directly or indirectly.
     */
    modifier onlyInitializing() {
        require(_initializing, "Initializable: contract is not initializing");
        _;
    }

    /**
     * @dev Locks the contract, preventing any future reinitialization. This cannot be part of an initializer call.
     * Calling this in the constructor of a contract will prevent that contract from being initialized or reinitialized
     * to any version. It is recommended to use this to lock implementation contracts that are designed to be called
     * through proxies.
     *
     * Emits an {Initialized} event the first time it is successfully executed.
     */
    function _disableInitializers() internal virtual {
        require(!_initializing, "Initializable: contract is initializing");
        if (_initialized < type(uint8).max) {
            _initialized = type(uint8).max;
            emit Initialized(type(uint8).max);
        }
    }

    /**
     * @dev Returns the highest version that has been initialized. See {reinitializer}.
     */
    function _getInitializedVersion() internal view returns (uint8) {
        return _initialized;
    }

    /**
     * @dev Returns `true` if the contract is currently initializing. See {onlyInitializing}.
     */
    function _isInitializing() internal view returns (bool) {
        return _initializing;
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/security/PausableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (security/Pausable.sol)

pragma solidity ^0.8.0;

import "../utils/ContextUpgradeable.sol";
import "../proxy/utils/Initializable.sol";

/**
 * @dev Contract module which allows children to implement an emergency stop
 * mechanism that can be triggered by an authorized account.
 *
 * This module is used through inheritance. It will make available the
 * modifiers `whenNotPaused` and `whenPaused`, which can be applied to
 * the functions of your contract. Note that they will not be pausable by
 * simply including this module, only once the modifiers are put in place.
 */
abstract contract PausableUpgradeable is Initializable, ContextUpgradeable {
    /**
     * @dev Emitted when the pause is triggered by `account`.
     */
    event Paused(address account);

    /**
     * @dev Emitted when the pause is lifted by `account`.
     */
    event Unpaused(address account);

    bool private _paused;

    /**
     * @dev Initializes the contract in unpaused state.
     */
    function __Pausable_init() internal onlyInitializing {
        __Pausable_init_unchained();
    }

    function __Pausable_init_unchained() internal onlyInitializing {
        _paused = false;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is not paused.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    modifier whenNotPaused() {
        _requireNotPaused();
        _;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is paused.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    modifier whenPaused() {
        _requirePaused();
        _;
    }

    /**
     * @dev Returns true if the contract is paused, and false otherwise.
     */
    function paused() public view virtual returns (bool) {
        return _paused;
    }

    /**
     * @dev Throws if the contract is paused.
     */
    function _requireNotPaused() internal view virtual {
        require(!paused(), "Pausable: paused");
    }

    /**
     * @dev Throws if the contract is not paused.
     */
    function _requirePaused() internal view virtual {
        require(paused(), "Pausable: not paused");
    }

    /**
     * @dev Triggers stopped state.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    function _pause() internal virtual whenNotPaused {
        _paused = true;
        emit Paused(_msgSender());
    }

    /**
     * @dev Returns to normal state.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    function _unpause() internal virtual whenPaused {
        _paused = false;
        emit Unpaused(_msgSender());
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/token/ERC20/extensions/draft-IERC20PermitUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC20/extensions/draft-IERC20Permit.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on {IERC20-approve}, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 */
interface IERC20PermitUpgradeable {
    /**
     * @dev Sets `value` as the allowance of `spender` over ``owner``'s tokens,
     * given ``owner``'s signed approval.
     *
     * IMPORTANT: The same issues {IERC20-approve} has related to transaction
     * ordering also apply here.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `deadline` must be a timestamp in the future.
     * - `v`, `r` and `s` must be a valid `secp256k1` signature from `owner`
     * over the EIP712-formatted function arguments.
     * - the signature must use ``owner``'s current nonce (see {nonces}).
     *
     * For more information on the signature format, see the
     * https://eips.ethereum.org/EIPS/eip-2612#specification[relevant EIP
     * section].
     */
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    /**
     * @dev Returns the current nonce for `owner`. This value must be
     * included whenever a signature is generated for {permit}.
     *
     * Every successful call to {permit} increases ``owner``'s nonce by one. This
     * prevents a signature from being used multiple times.
     */
    function nonces(address owner) external view returns (uint256);

    /**
     * @dev Returns the domain separator used in the encoding of the signature for {permit}, as defined by {EIP712}.
     */
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view returns (bytes32);
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/token/ERC20/IERC20Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.6.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20Upgradeable {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `from` to `to` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/token/ERC20/utils/SafeERC20Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.0;

import "../IERC20Upgradeable.sol";
import "../extensions/draft-IERC20PermitUpgradeable.sol";
import "../../../utils/AddressUpgradeable.sol";

/**
 * @title SafeERC20
 * @dev Wrappers around ERC20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20Upgradeable {
    using AddressUpgradeable for address;

    function safeTransfer(
        IERC20Upgradeable token,
        address to,
        uint256 value
    ) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

    function safeTransferFrom(
        IERC20Upgradeable token,
        address from,
        address to,
        uint256 value
    ) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));
    }

    /**
     * @dev Deprecated. This function has issues similar to the ones found in
     * {IERC20-approve}, and its usage is discouraged.
     *
     * Whenever possible, use {safeIncreaseAllowance} and
     * {safeDecreaseAllowance} instead.
     */
    function safeApprove(
        IERC20Upgradeable token,
        address spender,
        uint256 value
    ) internal {
        // safeApprove should only be called when setting an initial allowance,
        // or when resetting it to zero. To increase and decrease it, use
        // 'safeIncreaseAllowance' and 'safeDecreaseAllowance'
        require(
            (value == 0) || (token.allowance(address(this), spender) == 0),
            "SafeERC20: approve from non-zero to non-zero allowance"
        );
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
    }

    function safeIncreaseAllowance(
        IERC20Upgradeable token,
        address spender,
        uint256 value
    ) internal {
        uint256 newAllowance = token.allowance(address(this), spender) + value;
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
    }

    function safeDecreaseAllowance(
        IERC20Upgradeable token,
        address spender,
        uint256 value
    ) internal {
        unchecked {
            uint256 oldAllowance = token.allowance(address(this), spender);
            require(oldAllowance >= value, "SafeERC20: decreased allowance below zero");
            uint256 newAllowance = oldAllowance - value;
            _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
        }
    }

    function safePermit(
        IERC20PermitUpgradeable token,
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) internal {
        uint256 nonceBefore = token.nonces(owner);
        token.permit(owner, spender, value, deadline, v, r, s);
        uint256 nonceAfter = token.nonces(owner);
        require(nonceAfter == nonceBefore + 1, "SafeERC20: permit did not succeed");
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     */
    function _callOptionalReturn(IERC20Upgradeable token, bytes memory data) private {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We use {Address-functionCall} to perform this call, which verifies that
        // the target address contains contract code and also asserts for success in the low-level call.

        bytes memory returndata = address(token).functionCall(data, "SafeERC20: low-level call failed");
        if (returndata.length > 0) {
            // Return data is optional
            require(abi.decode(returndata, (bool)), "SafeERC20: ERC20 operation did not succeed");
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/utils/AddressUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (utils/Address.sol)

pragma solidity ^0.8.1;

/**
 * @dev Collection of functions related to the address type
 */
library AddressUpgradeable {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * [IMPORTANT]
     * ====
     * It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and not a contract.
     *
     * Among others, `isContract` will return false for the following
     * types of addresses:
     *
     *  - an externally-owned account
     *  - a contract in construction
     *  - an address where a contract will be created
     *  - an address where a contract lived, but was destroyed
     * ====
     *
     * [IMPORTANT]
     * ====
     * You shouldn't rely on `isContract` to protect against flash loan attacks!
     *
     * Preventing calls from contracts is highly discouraged. It breaks composability, breaks support for smart wallets
     * like Gnosis Safe, and does not provide security since it can be circumvented by calling from a contract
     * constructor.
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize/address.code.length, which returns 0
        // for contracts in construction, since the code is only stored at the end
        // of the constructor execution.

        return account.code.length > 0;
    }

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        (bool success, ) = recipient.call{value: amount}("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason, it is bubbled up by this
     * function (like regular Solidity function calls).
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResultFromTarget(target, success, returndata, errorMessage);
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and revert (either by bubbling
     * the revert reason or using the provided one) in case of unsuccessful call or if target was not a contract.
     *
     * _Available since v4.8._
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        if (success) {
            if (returndata.length == 0) {
                // only check isContract if the call was successful and the return data is empty
                // otherwise we already know that it was a contract
                require(isContract(target), "Address: call to non-contract");
            }
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and revert if it wasn't, either by bubbling the
     * revert reason or using the provided one.
     *
     * _Available since v4.3._
     */
    function verifyCallResult(
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal pure returns (bytes memory) {
        if (success) {
            return returndata;
        } else {
            _revert(returndata, errorMessage);
        }
    }

    function _revert(bytes memory returndata, string memory errorMessage) private pure {
        // Look for revert reason and bubble it up if present
        if (returndata.length > 0) {
            // The easiest way to bubble the revert reason is using memory via assembly
            /// @solidity memory-safe-assembly
            assembly {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert(errorMessage);
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/utils/ContextUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)

pragma solidity ^0.8.0;
import "../proxy/utils/Initializable.sol";

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract ContextUpgradeable is Initializable {
    function __Context_init() internal onlyInitializing {
    }

    function __Context_init_unchained() internal onlyInitializing {
    }
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/utils/introspection/ERC165Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/introspection/ERC165.sol)

pragma solidity ^0.8.0;

import "./IERC165Upgradeable.sol";
import "../../proxy/utils/Initializable.sol";

/**
 * @dev Implementation of the {IERC165} interface.
 *
 * Contracts that want to implement ERC165 should inherit from this contract and override {supportsInterface} to check
 * for the additional interface id that will be supported. For example:
 *
 * ```solidity
 * function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
 *     return interfaceId == type(MyInterface).interfaceId || super.supportsInterface(interfaceId);
 * }
 * ```
 *
 * Alternatively, {ERC165Storage} provides an easier to use but more expensive implementation.
 */
abstract contract ERC165Upgradeable is Initializable, IERC165Upgradeable {
    function __ERC165_init() internal onlyInitializing {
    }

    function __ERC165_init_unchained() internal onlyInitializing {
    }
    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IERC165Upgradeable).interfaceId;
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/utils/introspection/IERC165Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/introspection/IERC165.sol)

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[EIP].
 *
 * Implementers can declare support of contract interfaces, which can then be
 * queried by others ({ERC165Checker}).
 *
 * For an implementation, see {ERC165}.
 */
interface IERC165Upgradeable {
    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[EIP section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/utils/math/MathUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (utils/math/Math.sol)

pragma solidity ^0.8.0;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library MathUpgradeable {
    enum Rounding {
        Down, // Toward negative infinity
        Up, // Toward infinity
        Zero // Toward zero
    }

    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a > b ? a : b;
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b) / 2 can overflow.
        return (a & b) + (a ^ b) / 2;
    }

    /**
     * @dev Returns the ceiling of the division of two numbers.
     *
     * This differs from standard division with `/` in that it rounds up instead
     * of rounding down.
     */
    function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b - 1) / b can overflow on addition, so we distribute.
        return a == 0 ? 0 : (a - 1) / b + 1;
    }

    /**
     * @notice Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or denominator == 0
     * @dev Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv)
     * with further edits by Uniswap Labs also under MIT license.
     */
    function mulDiv(
        uint256 x,
        uint256 y,
        uint256 denominator
    ) internal pure returns (uint256 result) {
        unchecked {
            // 512-bit multiply [prod1 prod0] = x * y. Compute the product mod 2^256 and mod 2^256 - 1, then use
            // use the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
            // variables such that product = prod1 * 2^256 + prod0.
            uint256 prod0; // Least significant 256 bits of the product
            uint256 prod1; // Most significant 256 bits of the product
            assembly {
                let mm := mulmod(x, y, not(0))
                prod0 := mul(x, y)
                prod1 := sub(sub(mm, prod0), lt(mm, prod0))
            }

            // Handle non-overflow cases, 256 by 256 division.
            if (prod1 == 0) {
                return prod0 / denominator;
            }

            // Make sure the result is less than 2^256. Also prevents denominator == 0.
            require(denominator > prod1);

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [prod1 prod0].
            uint256 remainder;
            assembly {
                // Compute remainder using mulmod.
                remainder := mulmod(x, y, denominator)

                // Subtract 256 bit number from 512 bit number.
                prod1 := sub(prod1, gt(remainder, prod0))
                prod0 := sub(prod0, remainder)
            }

            // Factor powers of two out of denominator and compute largest power of two divisor of denominator. Always >= 1.
            // See https://cs.stackexchange.com/q/138556/92363.

            // Does not overflow because the denominator cannot be zero at this stage in the function.
            uint256 twos = denominator & (~denominator + 1);
            assembly {
                // Divide denominator by twos.
                denominator := div(denominator, twos)

                // Divide [prod1 prod0] by twos.
                prod0 := div(prod0, twos)

                // Flip twos such that it is 2^256 / twos. If twos is zero, then it becomes one.
                twos := add(div(sub(0, twos), twos), 1)
            }

            // Shift in bits from prod1 into prod0.
            prod0 |= prod1 * twos;

            // Invert denominator mod 2^256. Now that denominator is an odd number, it has an inverse modulo 2^256 such
            // that denominator * inv = 1 mod 2^256. Compute the inverse by starting with a seed that is correct for
            // four bits. That is, denominator * inv = 1 mod 2^4.
            uint256 inverse = (3 * denominator) ^ 2;

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also works
            // in modular arithmetic, doubling the correct bits in each step.
            inverse *= 2 - denominator * inverse; // inverse mod 2^8
            inverse *= 2 - denominator * inverse; // inverse mod 2^16
            inverse *= 2 - denominator * inverse; // inverse mod 2^32
            inverse *= 2 - denominator * inverse; // inverse mod 2^64
            inverse *= 2 - denominator * inverse; // inverse mod 2^128
            inverse *= 2 - denominator * inverse; // inverse mod 2^256

            // Because the division is now exact we can divide by multiplying with the modular inverse of denominator.
            // This will give us the correct result modulo 2^256. Since the preconditions guarantee that the outcome is
            // less than 2^256, this is the final result. We don't need to compute the high bits of the result and prod1
            // is no longer required.
            result = prod0 * inverse;
            return result;
        }
    }

    /**
     * @notice Calculates x * y / denominator with full precision, following the selected rounding direction.
     */
    function mulDiv(
        uint256 x,
        uint256 y,
        uint256 denominator,
        Rounding rounding
    ) internal pure returns (uint256) {
        uint256 result = mulDiv(x, y, denominator);
        if (rounding == Rounding.Up && mulmod(x, y, denominator) > 0) {
            result += 1;
        }
        return result;
    }

    /**
     * @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded down.
     *
     * Inspired by Henry S. Warren, Jr.'s "Hacker's Delight" (Chapter 11).
     */
    function sqrt(uint256 a) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        // For our first guess, we get the biggest power of 2 which is smaller than the square root of the target.
        //
        // We know that the "msb" (most significant bit) of our target number `a` is a power of 2 such that we have
        // `msb(a) <= a < 2*msb(a)`. This value can be written `msb(a)=2**k` with `k=log2(a)`.
        //
        // This can be rewritten `2**log2(a) <= a < 2**(log2(a) + 1)`
        // → `sqrt(2**k) <= sqrt(a) < sqrt(2**(k+1))`
        // → `2**(k/2) <= sqrt(a) < 2**((k+1)/2) <= 2**(k/2 + 1)`
        //
        // Consequently, `2**(log2(a) / 2)` is a good first approximation of `sqrt(a)` with at least 1 correct bit.
        uint256 result = 1 << (log2(a) >> 1);

        // At this point `result` is an estimation with one bit of precision. We know the true value is a uint128,
        // since it is the square root of a uint256. Newton's method converges quadratically (precision doubles at
        // every iteration). We thus need at most 7 iteration to turn our partial result with one bit of precision
        // into the expected uint128 result.
        unchecked {
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            return min(result, a / result);
        }
    }

    /**
     * @notice Calculates sqrt(a), following the selected rounding direction.
     */
    function sqrt(uint256 a, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = sqrt(a);
            return result + (rounding == Rounding.Up && result * result < a ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 2, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 128;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 64;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 32;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 16;
            }
            if (value >> 8 > 0) {
                value >>= 8;
                result += 8;
            }
            if (value >> 4 > 0) {
                value >>= 4;
                result += 4;
            }
            if (value >> 2 > 0) {
                value >>= 2;
                result += 2;
            }
            if (value >> 1 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 2, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log2(value);
            return result + (rounding == Rounding.Up && 1 << result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 10, rounded down, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >= 10**64) {
                value /= 10**64;
                result += 64;
            }
            if (value >= 10**32) {
                value /= 10**32;
                result += 32;
            }
            if (value >= 10**16) {
                value /= 10**16;
                result += 16;
            }
            if (value >= 10**8) {
                value /= 10**8;
                result += 8;
            }
            if (value >= 10**4) {
                value /= 10**4;
                result += 4;
            }
            if (value >= 10**2) {
                value /= 10**2;
                result += 2;
            }
            if (value >= 10**1) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 10, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log10(value);
            return result + (rounding == Rounding.Up && 10**result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 256, rounded down, of a positive value.
     * Returns 0 if given 0.
     *
     * Adding one to the result gives the number of pairs of hex symbols needed to represent `value` as a hex string.
     */
    function log256(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 16;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 8;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 4;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 2;
            }
            if (value >> 8 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 10, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log256(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log256(value);
            return result + (rounding == Rounding.Up && 1 << (result * 8) < value ? 1 : 0);
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/utils/StringsUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.8.0) (utils/Strings.sol)

pragma solidity ^0.8.0;

import "./math/MathUpgradeable.sol";

/**
 * @dev String operations.
 */
library StringsUpgradeable {
    bytes16 private constant _SYMBOLS = "0123456789abcdef";
    uint8 private constant _ADDRESS_LENGTH = 20;

    /**
     * @dev Converts a `uint256` to its ASCII `string` decimal representation.
     */
    function toString(uint256 value) internal pure returns (string memory) {
        unchecked {
            uint256 length = MathUpgradeable.log10(value) + 1;
            string memory buffer = new string(length);
            uint256 ptr;
            /// @solidity memory-safe-assembly
            assembly {
                ptr := add(buffer, add(32, length))
            }
            while (true) {
                ptr--;
                /// @solidity memory-safe-assembly
                assembly {
                    mstore8(ptr, byte(mod(value, 10), _SYMBOLS))
                }
                value /= 10;
                if (value == 0) break;
            }
            return buffer;
        }
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation.
     */
    function toHexString(uint256 value) internal pure returns (string memory) {
        unchecked {
            return toHexString(value, MathUpgradeable.log256(value) + 1);
        }
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation with fixed length.
     */
    function toHexString(uint256 value, uint256 length) internal pure returns (string memory) {
        bytes memory buffer = new bytes(2 * length + 2);
        buffer[0] = "0";
        buffer[1] = "x";
        for (uint256 i = 2 * length + 1; i > 1; --i) {
            buffer[i] = _SYMBOLS[value & 0xf];
            value >>= 4;
        }
        require(value == 0, "Strings: hex length insufficient");
        return string(buffer);
    }

    /**
     * @dev Converts an `address` with fixed length of 20 bytes to its not checksummed ASCII `string` hexadecimal representation.
     */
    function toHexString(address addr) internal pure returns (string memory) {
        return toHexString(uint256(uint160(addr)), _ADDRESS_LENGTH);
    }
}
