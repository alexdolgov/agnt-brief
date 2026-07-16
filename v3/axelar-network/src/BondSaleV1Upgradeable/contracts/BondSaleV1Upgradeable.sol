// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeCast.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "./interface/IActionQueue.sol";

contract BondSaleV1Upgradeable is UUPSUpgradeable, OwnableUpgradeable, PausableUpgradeable, ReentrancyGuardUpgradeable {
    using SafeERC20 for IERC20;
    using SafeCast for uint256;

    IERC20 public kipToken;
    IActionQueue public actionQueue;

    uint256 public nextBondId;
    // uint24 public nextPlanId = 100;

    // uint256 public earlyExitPenaltyRate = 2000; // 20%
    // uint256 public referralThreshold = 25000 * 1e18;
    // uint256 public referralRewardRate = 500; // 5%

    // uint256 private constant YEAR = 365 days;

    // uint24 private constant HARVEST_ACTION_ID = 100;
    // uint24 private constant EARLYEXIT_ACTION_ID = 200;
    // uint24 private constant REDEEM_ACTION_ID = 300;

    // --- Custom Errors --- //
    error InvalidPlan();
    error InvalidAmount();
    error NotStart();
    error HasEnd();
    error QueueNotStart();
    error QueueHasEnd();
    error SelfReferral();
    error NotBondOwner();
    error AlreadyExited();
    error AlreadyExecute();
    error QueueNotInit();
    error BondNotYetMatured();
    error BondAlreadyMatured();
    error HarvestNotAvailable();
    error EarlyExitNotAvailable();
    error RedeemNotAvailable();

    struct Bond {
        address owner;
        uint256 principal;
        uint40 startTime;
        uint40 maturity;
        uint24 plan_id;
        uint256 bond_id;
        uint256 harvested;
        address referrer;
        uint256 bonus_refer;
        bool exited;
        bool early;
    }

    struct Plan {
        uint40 duration;
        uint24 apy;
        uint40 startTime;
        uint40 deadline;
        uint40 harvestDelay;
        uint40 earlyExitDelay;
        uint40 redeemDelay;
        uint256 earlyExitPenaltyRate;   // = 2000; // 20%
        uint256 referralThreshold;   // = 25000 * 1e18;
        uint256 referralRewardRate;   // = 500; // 5%
    }

    struct BuyParams {
        uint24 planId;
        uint256 amount;
        address owner;
        address referrer;
        bytes32 referenceNo;
    }

    mapping(uint256 => Bond) public bonds;
    mapping(uint24 => Plan) public plans;
    mapping(address => uint256) public userTotalPrincipal;
    mapping(address => uint256) public referralTotalEligiblePrincipal;

    event BondUpdated(bytes32 referenceNo, uint24 type1, Bond _bond);
    event InterestHarvested(uint256 indexed bondId, uint256 amount, address indexed referrer, uint256 bonus);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _kipToken, address _actionQueue, address _owner) external initializer {
        __UUPSUpgradeable_init();
        __Ownable_init(_owner);
        __Pausable_init();
        __ReentrancyGuard_init();
        kipToken = IERC20(_kipToken);
        actionQueue = IActionQueue(_actionQueue);
        nextBondId = 30000;
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal virtual override onlyOwner {}

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function updatePlan(uint24 plan_id, Plan calldata _plan) external onlyOwner {
        plans[plan_id] = _plan;
        // unchecked {
        //     nextPlanId++;
        // }
    }

    // function updateConfig(uint256 _penalty, uint256 _threshold, uint256 _rewardRate) external onlyOwner {
    //     earlyExitPenaltyRate = _penalty;
    //     referralThreshold = _threshold;
    //     referralRewardRate = _rewardRate;
    // }

    function buyBond(BuyParams calldata p) external whenNotPaused {
        if (plans[p.planId].apy == 0) revert InvalidPlan();
        if (p.amount == 0) revert InvalidAmount();
        if (p.referrer == _msgSender()) revert SelfReferral();
        if (p.referrer == p.owner) revert SelfReferral();
        if (plans[p.planId].startTime > block.timestamp) revert NotStart();
        if (plans[p.planId].deadline < block.timestamp) revert HasEnd();

        address _referrer = (p.referrer != address(0) && referralTotalEligiblePrincipal[p.referrer] >= plans[p.planId].referralThreshold * 1e18)
            ? p.referrer
            : address(0);

        kipToken.safeTransferFrom(_msgSender(), address(this), p.amount);

        Bond memory bond = Bond({
            owner: p.owner,
            startTime: block.timestamp.toUint40(),
            maturity: (block.timestamp + plans[p.planId].duration).toUint40(),
            principal: p.amount,
            plan_id: p.planId,
            bond_id: nextBondId,
            harvested: 0,
            bonus_refer: 0,
            referrer: _referrer,
            exited: false,
            early: false
        });

        bonds[nextBondId] = bond;
        userTotalPrincipal[p.owner] += p.amount;
        referralTotalEligiblePrincipal[p.owner] += p.amount;

        emit BondUpdated(p.referenceNo, 1, bond);
        nextBondId++;
    }

    function pendingInterest(uint256 bondId) public view returns (uint256) {
        Bond storage b = bonds[bondId];
        if (b.exited) return 0;

        uint256 elapsed = block.timestamp >= b.maturity
            ? plans[b.plan_id].duration
            : block.timestamp - b.startTime;
        uint256 YEAR = 365 days;
        // uint256 fullInterest = (b.principal * plans[b.plan_id].apy * plans[b.plan_id].duration) / YEAR / 10000;
        // uint256 earned = (fullInterest * elapsed) / plans[b.plan_id].duration;
        uint256 earned = (b.principal * plans[b.plan_id].apy * elapsed) / (YEAR * 10000);

        return earned > b.harvested ? earned - b.harvested : 0;
    }

    function harvest(bool queue, uint256 bondId, address recipient) public whenNotPaused nonReentrant {
        Bond storage b = bonds[bondId];
        // if (b.owner != _msgSender()) revert NotBondOwner();
        if (block.timestamp < b.startTime + plans[b.plan_id].harvestDelay) revert HarvestNotAvailable();
        if (b.exited) revert AlreadyExited();

        uint256 interest = 0;
        uint24 HARVEST_ACTION_ID = 100;
        if(queue){
            if (b.owner != _msgSender()) revert NotBondOwner();
            interest = pendingInterest(b.bond_id);
            require(interest > 0, "NoInterest");

            actionQueue.updateQueue(b.owner,bondId, HARVEST_ACTION_ID, interest, bytes32(0));
        }else {
            (uint40 duration,uint40 cooldown) = actionQueue.actions(HARVEST_ACTION_ID);
            if(cooldown > 0 && duration >0)
            {
                if (b.owner != _msgSender()) revert NotBondOwner();
                uint256 queueId = actionQueue.lastQueue(b.owner,bondId);

                if (queueId == 0) revert QueueNotInit();

                (,,uint24 action_id,uint40 startTime,uint40 deadline,uint256 amount) = actionQueue.queues(queueId);

                if (action_id != HARVEST_ACTION_ID) revert QueueNotInit();

                if(block.timestamp < startTime) revert QueueNotStart();

                if(block.timestamp > deadline) revert QueueHasEnd();

                if (amount == 0) revert AlreadyExecute();

                _harvestTo(bondId, recipient, amount);

            }else {
                if (b.owner != _msgSender())
                {
                    recipient =  b.owner;   
                } 
                _harvestTo(bondId, recipient, 0);
            }

            actionQueue.updateQueue(b.owner,bondId, HARVEST_ACTION_ID, 0, bytes32(0));
            
            emit BondUpdated(bytes32(0), 5, b);
        }
    }

    function earlyExit(bool queue, uint256 bondId, address recipient) external whenNotPaused nonReentrant {
        Bond storage b = bonds[bondId];
        if (b.owner != _msgSender()) revert NotBondOwner();
        if (b.exited) revert AlreadyExited();
        if (block.timestamp >= b.maturity) revert BondAlreadyMatured();
        if (block.timestamp < b.startTime + plans[b.plan_id].earlyExitDelay) revert EarlyExitNotAvailable();

        uint256 penalty = (b.principal * plans[b.plan_id].earlyExitPenaltyRate) / 10000;
        uint256 payout = b.principal - penalty;
        if (payout == 0) return;
        
        uint24 EARLYEXIT_ACTION_ID = 200;

        if(queue){
            actionQueue.updateQueue(b.owner,bondId, EARLYEXIT_ACTION_ID, payout, bytes32(0));
        }else {
            (uint40 duration,uint40 cooldown) = actionQueue.actions(EARLYEXIT_ACTION_ID);
            if(cooldown > 0 && duration >0)
            {
                    uint256 queueId = actionQueue.lastQueue(b.owner,bondId);

                    if (queueId == 0) revert QueueNotInit();

                    (,,uint24 action_id,uint40 startTime,uint40 deadline,) = actionQueue.queues(queueId);

                    if (action_id != EARLYEXIT_ACTION_ID) revert QueueNotInit();

                    if(block.timestamp < startTime) revert QueueNotStart();

                    if(block.timestamp > deadline) revert QueueHasEnd();
            }

            _harvestTo(bondId, recipient,0);

            b.exited = true;
            b.early = true;
            kipToken.safeTransfer(recipient, payout);
            // emit BondExited(bondId, payout);
            emit BondUpdated(bytes32(0), 2, b);

            userTotalPrincipal[b.owner] -= b.principal;
            referralTotalEligiblePrincipal[b.owner] -= b.principal;
        }
    }

    function redeem(bool queue, uint256 bondId, address recipient) external whenNotPaused nonReentrant {
        Bond storage b = bonds[bondId];
        if (b.owner != _msgSender()) revert NotBondOwner();
        if (b.exited) revert AlreadyExited();
        if (block.timestamp < b.maturity) revert BondNotYetMatured();
        if (block.timestamp < b.startTime + plans[b.plan_id].redeemDelay) revert RedeemNotAvailable();

        uint24 REDEEM_ACTION_ID = 300;

        if(queue){
            actionQueue.updateQueue(b.owner,bondId, REDEEM_ACTION_ID, b.principal, bytes32(0));
        }else {
            (uint40 duration,uint40 cooldown) = actionQueue.actions(REDEEM_ACTION_ID);
            if(cooldown > 0 && duration >0)
            {
                uint256 queueId = actionQueue.lastQueue(b.owner,bondId);
                
                if (queueId == 0) revert QueueNotInit();

                (,,uint24 action_id,uint40 startTime,uint40 deadline,) = actionQueue.queues(queueId);

                if (action_id != REDEEM_ACTION_ID) revert QueueNotInit();

                if(block.timestamp < startTime) revert QueueNotStart();

                if(block.timestamp > deadline) revert QueueHasEnd();
            }

            _harvestTo(bondId, recipient,0);

            b.exited = true;
            kipToken.safeTransfer(recipient, b.principal);
            emit BondUpdated(bytes32(0), 3, b);

            userTotalPrincipal[b.owner] -= b.principal;
        }
    }

    function changerOwner(uint256 bondId, address newOwner) external whenNotPaused nonReentrant {
        Bond storage b = bonds[bondId];
        if (b.owner != _msgSender()) revert NotBondOwner();
        //if (b.exited) revert AlreadyExited();
        userTotalPrincipal[b.owner] -= b.principal;
        userTotalPrincipal[newOwner] += b.principal;
        b.owner = newOwner;
        emit BondUpdated(bytes32(0), 4, b);
    }

    function recoverToken(address _token, uint256 _amount) external onlyOwner {
        IERC20(_token).safeTransfer(owner(), _amount);
    }

    // -------------------- Internal Helpers -------------------- //

    function _harvestTo(uint256 bondId, address recipient, uint256 _interest) internal {
        Bond storage b = bonds[bondId];
        uint256 interest = 0;
        if (_interest > 0){
            interest = _interest;
        }else 
        {
            interest = pendingInterest(b.bond_id);
            if (interest == 0) return;
        }

        b.harvested += interest;
        kipToken.safeTransfer(recipient, interest);

        uint256 bonus = 0;
        if (b.referrer != address(0) && referralTotalEligiblePrincipal[b.referrer] >= plans[b.plan_id].referralThreshold * 1e18) {
            bonus = (interest * plans[b.plan_id].referralRewardRate) / 10000;
            if (bonus > 0) {
                kipToken.safeTransfer(b.referrer, bonus);
                b.bonus_refer += bonus;
            }
        }

        emit InterestHarvested(b.bond_id, interest, b.referrer, bonus);
    }
}