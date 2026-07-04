// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.7.6;

import "@openzeppelin/contracts-upgradeable/math/SafeMathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/math/MathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";

import "./FutureBondAVAX.sol";

interface IGlobalPool {

    event StakePending(address indexed staker, uint256 amount);
    event RewardClaimed(address indexed staker, uint256 amount);

    function stake() external payable;

    function claim(uint256 amount) external;

    function pendingAvaxClaimsOf(address claimer) external view returns (uint256) ;
}

contract AvalanchePool is PausableUpgradeable, ReentrancyGuardUpgradeable, OwnableUpgradeable, IGlobalPool {

    using SafeMathUpgradeable for uint256;
    using MathUpgradeable for uint256;

    event IntermediaryClaimed(
        address[] stakers,
        uint256[] amounts,
        address intermediary, /* intermediary address which handle these funds */
        uint256 total /* total ether sent to intermediary */
    );

    event AvaxClaimPending(address indexed claimer, uint256 amount);

    event ClaimsServed(
        address[] claimers,
        uint256[] amounts,
        uint256 missing /* total amount of claims still waiting to be served*/
    );

    mapping(address => uint256) private _pendingUserStakes;
    address[] private _pendingStakers;
    address private _operator;
    uint256 private _collectedFee;
    uint256 public _minimumStake;
    uint256 public avaxMultiplier;
    address private _fAvaxContract;
    mapping(address => uint256) _fAvaxPendingRewards;
    uint256 private _pendingGap;
    mapping(address => uint256) private _pendingUserClaims;
    address[] private _pendingClaimers;
    uint256 private _pendingAvaxClaimGap;

    modifier onlyOperator() {
        require(msg.sender == owner() || msg.sender == _operator, "Operator: not allowed");
        _;
    }

    function initialize(address operator) public initializer {
        __Pausable_init();
        __ReentrancyGuard_init();
        __Ownable_init();

        _operator = operator;

        avaxMultiplier = 1e18;
        _minimumStake = 1e18;
    }

    function stake() override external nonReentrant payable {
        require(msg.value >= _minimumStake, "Value must be greater than min amount");
        require(msg.value % _minimumStake == 0, "Value must be multiple of minimum staking amount");
        if (_pendingUserStakes[msg.sender] == 0) {
            _pendingStakers.push(msg.sender);
        }
        _pendingUserStakes[msg.sender] = _pendingUserStakes[msg.sender].add(msg.value);
        /* increase fAVAX rewards */
        IFutureBondAVAX(_fAvaxContract).mintBonds(msg.sender, msg.value);
        /* emit events */
        emit StakePending(msg.sender, msg.value);
    }

    function getPendingStakes() public onlyOperator view returns (address[] memory, uint256[] memory) {
        address[] memory addresses = new address[](_pendingStakers.length);
        uint256[] memory amounts = new uint256[](_pendingStakers.length);
        for (uint256 i = 0; i < _pendingStakers.length; i++) {
            address staker = _pendingStakers[i];
            uint256 amount = _pendingUserStakes[staker];
            if (staker != address(0)) {
                addresses[i] = staker;
                amounts[i] = amount;
            }
        }
        return (addresses, amounts);
    }

    function claimToIntermediary(address payable intermediary, uint256 threshold) public onlyOperator payable {
        address[] memory stakers = new address[](_pendingStakers.length.sub(_pendingGap));
        uint256[] memory amounts = new uint256[](_pendingStakers.length.sub(_pendingGap));
        uint256 total = 0;
        uint256 j = 0;
        uint256 gaps = 0;
        uint256 i = 0;
        for (i = _pendingGap; i < _pendingStakers.length; i++) {
            /* if total exceeds threshold then we can't proceed stakes anymore (don't move this check to the end of scope) */
            if (total >= threshold) {
                break;
            }
            address staker = _pendingStakers[i];
            uint256 amount = _pendingUserStakes[staker];
            /* we might have gaps lets just skip them (we shrink them on full claim) */
            if (staker == address(0) || amount == 0) {
                gaps++;
                continue;
            }
            /* if stake amount with current total exceeds threshold then split it */
            if (total + amount > threshold) {
                amount = threshold.sub(total);
            }
            stakers[j] = staker;
            amounts[j] = amount;
            total = total.add(amount);
            j++;
            /* lets release pending stakes only if amount is zero */
            _pendingUserStakes[staker] = _pendingUserStakes[staker].sub(amount);
            if (_pendingUserStakes[staker] == 0) {
                delete _pendingStakers[i];
                /* when we delete items from array we generate new gap, lets remember how many gaps we did to skip them in next claim */
                gaps++;
            }
        }
        _pendingGap = _pendingGap.add(gaps);
        /* lets shrink array only after full claim */
        if (_pendingGap >= _pendingStakers.length) {
            delete _pendingStakers;
            /* if queue is empty we can reset pending gap since we don't have gaps anymore */
            _pendingGap = 0;
        }
        /* claim funds to intermediary */
        intermediary.transfer(total.add(msg.value));
        emit IntermediaryClaimed(stakers, amounts, intermediary, total);
    }

    function pendingStakesOf(address staker) public view returns (uint256) {
        return _pendingUserStakes[staker];
    }

    function pendingGap() public view returns (uint256) {
        return _pendingGap;
    }

    function calcPendingGap() public onlyOwner {
        uint256 gaps = 0;
        for (uint256 i = 0; i < _pendingStakers.length; i++) {
            address staker = _pendingStakers[i];
            if (staker != address(0)) {
                break;
            }
            gaps++;
        }
        _pendingGap = gaps;
    }

    function resetPendingGap() public onlyOwner {
        _pendingGap = 0;
    }

    function changeOperator(address operator) public onlyOwner {
        _operator = operator;
    }

    function changeFutureAvaxContract(address futureAvaxContract) public onlyOwner {
        _fAvaxContract = futureAvaxContract;
    }

    function pendingAvaxClaimsOf(address claimer) override external view returns (uint256) {
        return _pendingUserClaims[claimer];
    }

    function getPendingClaims() public onlyOperator view returns (address[] memory, uint256[] memory) {
        address[] memory addresses = new address[](_pendingClaimers.length);
        uint256[] memory amounts = new uint256[](_pendingClaimers.length);
        for (uint256 i = 0; i < _pendingClaimers.length; i++) {
            address claimer = _pendingClaimers[i];
            uint256 amount = _pendingUserClaims[claimer];
            if (claimer != address(0)) {
                addresses[i] = claimer;
                amounts[i] = amount;
            }
        }
        return (addresses, amounts);
    }

    function claim(uint256 amount) override external nonReentrant {
        require(IERC20Upgradeable(_fAvaxContract).balanceOf(msg.sender) >= amount, "Cannot claim more than have on address");
        if (_pendingUserClaims[msg.sender] == 0) {
            _pendingClaimers.push(msg.sender);
        }
        _pendingUserClaims[msg.sender] = _pendingUserClaims[msg.sender].add(amount);
        IFutureBondAVAX(_fAvaxContract).lockForDelayedBurn(msg.sender, amount);
        emit AvaxClaimPending(msg.sender, amount);
    }

    function serveClaims(address payable residueAddress, uint256 minThreshold) public onlyOperator payable {
        address[] memory claimers = new address[](_pendingClaimers.length.sub(_pendingAvaxClaimGap));
        uint256[] memory amounts = new uint256[](_pendingClaimers.length.sub(_pendingAvaxClaimGap));
        uint256 availableAmount = msg.value;
        uint256 j = 0;
        uint256 gaps = 0;
        uint256 i = 0;
        for (i = _pendingAvaxClaimGap; i < _pendingClaimers.length; i++) {
            /* if the number of tokens left is less than threshold do not try to serve the claims */
            if (availableAmount < minThreshold) {
                break;
            }
            address claimer = _pendingClaimers[i];
            uint256 amount = _pendingUserClaims[claimer];
            /* we might have gaps lets just skip them (we shrink them on full claim) */
            if (claimer == address(0) || amount == 0) {
                gaps++;
                continue;
            }
            if (availableAmount < amount) {
                break;
            }
            claimers[j] = claimer;
            amounts[j] = amount;
            address payable wallet = payable(address(claimer));
            wallet.transfer(amount);
            availableAmount = availableAmount.sub(amount);
            j++;
            IFutureBondAVAX(_fAvaxContract).commitDelayedBurn(claimer, amount);
            _pendingUserClaims[claimer] = 0;
            delete _pendingClaimers[i];
            /* when we delete items from array we generate new gap, lets remember how many gaps we did to skip them in next claim */
            gaps++;
        }
        _pendingAvaxClaimGap = _pendingAvaxClaimGap.add(gaps);
        /* lets shrink array only after full claim */
        if (_pendingAvaxClaimGap >= _pendingClaimers.length) {
            delete _pendingClaimers;
            /* if queue is empty we can reset pending gap since we don't have gaps anymore */
            _pendingAvaxClaimGap = 0;
        }
        uint256 missing = 0;
        for (i = _pendingAvaxClaimGap; i < _pendingClaimers.length; i++) {
            missing = missing.add(_pendingUserClaims[_pendingClaimers[i]].mul(avaxMultiplier));
        }
        /* Send event with results */
        if (availableAmount > 0) {
            residueAddress.transfer(availableAmount);
        }
        emit ClaimsServed(claimers, amounts, missing);
    }

    function pendingClaimGap() public view returns (uint256) {
        return _pendingAvaxClaimGap;
    }

    function calcPendingClaimGap() public onlyOwner {
        uint256 gaps = 0;
        for (uint256 i = 0; i < _pendingClaimers.length; i++) {
            address staker = _pendingClaimers[i];
            if (staker != address(0)) {
                break;
            }
            gaps++;
        }
        _pendingAvaxClaimGap = gaps;
    }

    function resetPendingClaimGap() public onlyOwner {
        _pendingAvaxClaimGap = 0;
    }

    function getMinimumStake() public view returns (uint256) {
        return _minimumStake;
    }

    function setMinimumStake(uint256 minStake) public onlyOperator {
        _minimumStake = minStake;
    }
}
