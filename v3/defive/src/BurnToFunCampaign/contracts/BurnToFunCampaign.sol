// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/// ───────────────────────── External Interfaces ─────────────────────────
interface IMasterFarmer {
    function getVeFive(address user, uint256 timestamp) external view returns (uint256);
}

interface IDeFiveRouter {
    function addLiquidity(
        address tokenA,
        address tokenB,
        uint256 amountADesired,
        uint256 amountBDesired,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountA, uint256 amountB, uint256 liquidity);
}

interface IFiveToken is IERC20 {
    function burn(uint256 amount) external;
}

/// ───────────────────────── Factory Interfaces ─────────────────────────
interface IBurnToFunTokenFactory {
    function createToken(
        string calldata name_,
        string calldata symbol_,
        address to,
        uint256 supply
    ) external returns (address tokenAddr);
}
interface IBurnToFunVestingFactory {
    function createVesting(
        address token,
        address beneficiary,
        uint256 cliffTime,
        uint256 vestingEndTime,
        uint256 totalAllocation
    ) external returns (address vestingAddr);
}

interface IBurnToFunFactoryGetters {
    function tokenFactory() external view returns (address);
    function vestingFactory() external view returns (address);
}

interface IBurnToFunFactoryHooks {
    function recordCreatorContribution(address creator, uint256 amount) external;
}

/// ───────────────────────── Custom Errors ─────────────────────────
error AlreadyFinalized();
error NotFinalized();
error NotActive();
error AlreadyParticipated();
error OverHardCap();
error ExceedsMaxBurn();
error AlreadyClaimed();
error AlreadyRefunded();
error NoAllocation();
error NotRefundable();
error NoRefundAvailable();
error LPMintFailed();
error InvalidCreator();
error InvalidToken();
error InvalidMasterFarmer();
error InvalidRouter();
error InvalidFactory();
error ZeroAmount();
error NoTiersConfigured();
error Reentrancy();
error AlreadyInitialized();
error NotFactory();
error InvalidTokenomics();

/// ERC20 ops
error TransferFromFailed();
error TransferFailed();
error ApproveTokenFailed();
error ApproveFiveFailed();
error TransferVestingFailed();

/// @title BurnToFunCampaign
/// @notice Burn FIVE → get allocation. Finalize → launch + LP + vesting. Then users claim or refund based on outcome.
contract BurnToFunCampaign {
    uint256 private constant ONE = 1e18;
    uint256 private constant MAX_OTHER_PCT = 8e17; // 80%
    address private constant DEAD = 0x000000000000000000000000000000000000dEaD;

    /// ───── Tiers ─────
    struct Tier {
        uint256 veFiveThreshold; // gate
        uint256 maxBurnAmount; // user cap (FIVE)
        uint256 bonusMultiplier; // 1e18 = 1x
    }

    /// ───── Lifecycle ─────
    enum CampaignStatus {
        Pending,
        Burning,
        Finalizing,
        Claimable,
        Refundable
    }

    /// ───── User Snapshot ─────
    struct UserInfo {
        uint256 burned;
        uint256 allocated;
        bool claimed;
        bool refunded;
    }

    /// ───── Snapshot of limits used at burn ─────
    struct BurnContext {
        uint256 veFive; // veFIVE used for tiering (at checkTime = endTime + 7d)
        uint256 maxBurn; // per-user cap resolved at burn
        uint256 burnRatio; // userBurnRatio resolved at burn
        uint256 tierIndex; // tier resolved at burn
    }

    /// ───── Events ─────
    event Initialized(address factory, address creator, string name, string symbol, uint256 id);
    event Burn(address indexed user, uint256 amount, uint256 allocatedTokens, uint256 tierIndex);
    event TokensClaimed(address indexed user, uint256 amount);
    event RefundClaimed(address indexed user, uint256 amount);
    event TokenDeployed(address indexed token, uint256 totalSupply);
    event CreatorVestingDeployed(address indexed vestingContract, address indexed creator, uint256 amount);
    event DevAllocationSent(address factory, uint256 tokenAmount, uint256 fiveAmount);
    event LiquidityAdded(uint256 amountToken, uint256 amountFIVE, uint256 lpTokensReceived, address receiver);
    event RemainingFIVEBurned(uint256 amount);
    event Finalized();
    event ClaimsOpen(address token); // success branch
    event RefundsOpen(); // fail branch

    /// ───── Core Addresses ─────
    address public factory;
    address public fiveToken;
    address public masterFarmer;
    address public deFiveRouter;
    address public creator;

    /// ───── Factories ─────
    address public tokenFactoryAddr;
    address public vestingFactoryAddr;

    /// ───── Config ─────
    uint256 public startTime;
    uint256 public endTime;
    uint256 public softCap;
    uint256 public hardCap;
    uint256 public creatorTokenPercent; // e18
    uint256 public devPercent; // e18
    uint256 public lpTokenPercent; // e18
    uint256 public lpFivePercent; // e18
    uint256 public campaignId;
    uint256 public baseBurnRatio; // e18
    uint256 public vestingCliff; // secs
    uint256 public vestingEnd; // secs

    string public tokenName;
    string public tokenSymbol;
    string public metadataURI; // ipfs://… / https://… / ar://…

    Tier[] public tiers;

    /// ───── Mutable State ─────
    mapping(address => uint256) public burned;
    mapping(address => uint256) public allocatedTo;
    mapping(address => bool) public claimed;
    mapping(address => bool) public refunded;
    mapping(address => BurnContext) public burnContext; // user => snapshot

    uint256 public totalBurned;
    uint256 public usersAllocated;
    uint256 public contributorsCount;
    bool public finalized;
    uint256 public finalizedAt;

    address public token;
    address public creatorVesting;

    /// ───── Reentrancy ─────
    bool private _initialized;
    bool private _entered;

    modifier nonReentrant() {
        if (_entered) revert Reentrancy();
        _entered = true;
        _;
        _entered = false;
    }

    /// Lock implementation
    constructor() {
        _initialized = true;
    }

    /// ───────────────────────── Initialize ─────────────────────────
    function initialize(
        address _factory,
        address _creator,
        address _fiveToken,
        address _masterFarmer,
        address _deFiveRouter,
        uint256 _baseBurnRatio,
        uint256 _startTime,
        uint256 _endTime,
        uint256 _softCap,
        uint256 _hardCap,
        uint256 _creatorTokenPercent,
        uint256 _devPercent,
        uint256 _lpTokenPercent,
        uint256 _lpFivePercent,
        string calldata _tokenName,
        string calldata _tokenSymbol,
        string calldata _metadataURI,
        Tier[] calldata _tiers,
        uint256 _campaignId,
        uint256 _vestingCliff,
        uint256 _vestingEnd,
        bytes calldata _extraInitData
    ) external {
        if (_initialized) revert AlreadyInitialized();
        if (msg.sender != _factory) revert NotFactory();
        if (_factory == address(0) || msg.sender.code.length == 0) revert InvalidFactory();
        if (_creator == address(0)) revert InvalidCreator();
        if (_fiveToken == address(0) || _fiveToken.code.length == 0) revert InvalidToken();
        if (_masterFarmer == address(0) || _masterFarmer.code.length == 0) revert InvalidMasterFarmer();
        if (_deFiveRouter == address(0) || _deFiveRouter.code.length == 0) revert InvalidRouter();

        // Keep room for users (<=80% to others)
        if (_creatorTokenPercent + _lpTokenPercent + _devPercent > MAX_OTHER_PCT) revert InvalidTokenomics();
        // FIVE-side: dev+LP(FIVE) <= 80%
        if (_devPercent + _lpFivePercent > MAX_OTHER_PCT) revert InvalidTokenomics();

        address _tokenFactoryAddr = IBurnToFunFactoryGetters(_factory).tokenFactory();
        address _vestingFactoryAddr = IBurnToFunFactoryGetters(_factory).vestingFactory();
        if (_tokenFactoryAddr == address(0) || _vestingFactoryAddr == address(0)) revert InvalidFactory();

        if (_baseBurnRatio == 0) revert InvalidTokenomics();

        if (_tiers.length == 0) revert NoTiersConfigured();
        if (_tiers[0].veFiveThreshold != 0) revert NoTiersConfigured(); // base tier must be 0
        for (uint256 i = 1; i < _tiers.length; ) {
            if (_tiers[i].veFiveThreshold <= _tiers[i - 1].veFiveThreshold) revert NoTiersConfigured();
            unchecked {
                ++i;
            }
        }

        _extraInitData; // reserved

        factory = _factory;
        creator = _creator;
        fiveToken = _fiveToken;
        masterFarmer = _masterFarmer;
        deFiveRouter = _deFiveRouter;
        tokenFactoryAddr = _tokenFactoryAddr;
        vestingFactoryAddr = _vestingFactoryAddr;

        baseBurnRatio = _baseBurnRatio;
        startTime = _startTime;
        endTime = _endTime;
        softCap = _softCap;
        hardCap = _hardCap;
        creatorTokenPercent = _creatorTokenPercent;
        devPercent = _devPercent;
        lpTokenPercent = _lpTokenPercent;
        lpFivePercent = _lpFivePercent;
        campaignId = _campaignId;
        vestingCliff = _vestingCliff;
        vestingEnd = _vestingEnd;

        tokenName = _tokenName;
        tokenSymbol = _tokenSymbol;
        metadataURI = _metadataURI;

        for (uint256 i; i < _tiers.length; ) {
            tiers.push(_tiers[i]);
            unchecked {
                ++i;
            }
        }

        _initialized = true;
        emit Initialized(_factory, _creator, _tokenName, _tokenSymbol, _campaignId);
    }

    /// ───────────────────────── Burn (approve path) ─────────────────────────
    function burn(uint256 amount) external nonReentrant {
        uint256 take = _preBurnChecksAndClip(msg.sender, amount);
        if (!IERC20(fiveToken).transferFrom(msg.sender, address(this), take)) revert TransferFromFailed();
        _applyBurn(msg.sender, take);
    }

    function _preBurnChecksAndClip(address sender, uint256 amount) internal view returns (uint256 take) {
        if (block.timestamp < startTime || block.timestamp > endTime) revert NotActive();
        if (finalized) revert AlreadyFinalized();
        if (burned[sender] > 0) revert AlreadyParticipated();
        if (amount == 0) revert ZeroAmount();

        // Enforce per-user cap on the *requested* amount
        (uint256 maxBurn, , , ) = getUserLimits(sender);
        if (amount > maxBurn) revert ExceedsMaxBurn();

        // Clip to remaining hardCap
        uint256 remaining = hardCap - totalBurned;
        if (remaining == 0) revert OverHardCap(); // campaign is fully capped
        take = amount > remaining ? remaining : amount;
        // take > 0 guaranteed because remaining > 0 and amount != 0
    }

    function _applyBurn(address sender, uint256 amount) internal {
        (uint256 maxBurn, uint256 burnRatio, uint256 tierIndex, uint256 ve) = getUserLimits(sender);
        uint256 allocated = (amount * burnRatio) / ONE;

        burned[sender] = amount;
        allocatedTo[sender] = allocated;

        // Persist the exact context used for this burn
        burnContext[sender] = BurnContext({ veFive: ve, maxBurn: maxBurn, burnRatio: burnRatio, tierIndex: tierIndex });

        unchecked {
            totalBurned += amount;
            usersAllocated += allocated;
            contributorsCount += 1;
        }

        emit Burn(sender, amount, allocated, tierIndex);
    }

    /// ───────────────────────── Finalize ─────────────────────────
    /// Anyone can call. Early finalize allowed if hard cap hit.
    function finalize() external nonReentrant {
        if (finalized) revert AlreadyFinalized();

        // Early finalize only if hard cap is actually hit; otherwise wait until endTime
        if (block.timestamp < endTime && totalBurned < hardCap) {
            revert NotFinalized();
        }

        if (totalBurned >= softCap) {
            (
                uint256 totalSupply,
                uint256 creatorAlloc,
                uint256 devTokenAlloc,
                uint256 tokenLpAmount,
                ,
                uint256 devFiveAlloc,
                uint256 fiveLpAmount,

            ) = _projectedBreakdownInternal();

            // Token
            address tokenAddr = IBurnToFunTokenFactory(tokenFactoryAddr).createToken(
                tokenName,
                tokenSymbol,
                address(this),
                totalSupply
            );
            token = tokenAddr;
            emit TokenDeployed(tokenAddr, totalSupply);

            // Creator vesting
            if (creatorAlloc > 0) {
                address vesting = IBurnToFunVestingFactory(vestingFactoryAddr).createVesting(
                    tokenAddr,
                    creator,
                    block.timestamp + vestingCliff,
                    block.timestamp + vestingEnd,
                    creatorAlloc
                );
                creatorVesting = vesting;
                if (!IERC20(tokenAddr).transfer(vesting, creatorAlloc)) revert TransferVestingFailed();
                emit CreatorVestingDeployed(vesting, creator, creatorAlloc);
            }

            // Dev split
            if (devTokenAlloc > 0 && devFiveAlloc > 0) {
                if (!IERC20(tokenAddr).transfer(factory, devTokenAlloc)) revert TransferFailed();
                if (!IERC20(fiveToken).transfer(factory, devFiveAlloc)) revert TransferFailed();
                emit DevAllocationSent(factory, devTokenAlloc, devFiveAlloc);
            }

            // LP (send LP to DEAD)
            if (!IERC20(tokenAddr).approve(deFiveRouter, tokenLpAmount)) revert ApproveTokenFailed();
            if (!IERC20(fiveToken).approve(deFiveRouter, fiveLpAmount)) revert ApproveFiveFailed();

            (, , uint256 liquidity) = IDeFiveRouter(deFiveRouter).addLiquidity(
                tokenAddr,
                fiveToken,
                tokenLpAmount,
                fiveLpAmount,
                0,
                0,
                DEAD,
                block.timestamp
            );
            if (liquidity == 0) revert LPMintFailed();

            // Clear approvals (belt + suspenders)
            uint256 remT = IERC20(tokenAddr).allowance(address(this), deFiveRouter);
            if (remT != 0) IERC20(tokenAddr).approve(deFiveRouter, 0);
            uint256 remF = IERC20(fiveToken).allowance(address(this), deFiveRouter);
            if (remF != 0) IERC20(fiveToken).approve(deFiveRouter, 0);

            emit LiquidityAdded(tokenLpAmount, fiveLpAmount, liquidity, DEAD);

            // Burn leftovers
            uint256 remainingFive = IERC20(fiveToken).balanceOf(address(this));
            if (remainingFive > 0) {
                IFiveToken(fiveToken).burn(remainingFive);
                emit RemainingFIVEBurned(remainingFive);
            }

            // Factory accounting
            IBurnToFunFactoryHooks(factory).recordCreatorContribution(creator, totalBurned);

            finalized = true;
            finalizedAt = block.timestamp;
            emit Finalized();
            emit ClaimsOpen(tokenAddr);
        } else {
            // Refunds route
            finalized = true;
            finalizedAt = block.timestamp;
            emit Finalized();
            emit RefundsOpen();
        }
    }

    /// ───────────────────────── Claims / Refunds ─────────────────────────
    function claim() external nonReentrant {
        if (!finalized) revert NotFinalized();
        if (totalBurned < softCap) revert NotRefundable();
        if (claimed[msg.sender]) revert AlreadyClaimed();

        uint256 allocation = allocatedTo[msg.sender];
        if (allocation == 0) revert NoAllocation();

        claimed[msg.sender] = true;
        if (!IERC20(token).transfer(msg.sender, allocation)) revert TransferFailed();

        emit TokensClaimed(msg.sender, allocation);
    }

    function refund() external nonReentrant {
        if (!finalized) revert NotFinalized();
        if (totalBurned >= softCap) revert NotRefundable();
        if (refunded[msg.sender]) revert AlreadyRefunded();

        uint256 amount = burned[msg.sender];
        if (amount == 0) revert NoRefundAvailable();

        refunded[msg.sender] = true;
        if (!IERC20(fiveToken).transfer(msg.sender, amount)) revert TransferFailed();

        emit RefundClaimed(msg.sender, amount);
    }

    function userInfo(address user) external view returns (UserInfo memory info) {
        info.burned = burned[user];
        info.allocated = allocatedTo[user];
        info.claimed = claimed[user];
        info.refunded = refunded[user];
    }

    /// ───────────────────────── Tiers / Ratios ─────────────────────────
    function tiersLength() external view returns (uint256) {
        return tiers.length;
    }

    function getUserLimits(
        address user
    ) public view returns (uint256 maxBurn, uint256 userBurnRatio, uint256 tierIndex, uint256 ve) {
        Tier[] storage t = tiers;
        uint256 len = t.length;
        if (len == 0) revert NoTiersConfigured();

        uint256 checkTime;
        unchecked {
            checkTime = endTime + 7 days;
        }

        ve = IMasterFarmer(masterFarmer).getVeFive(user, checkTime);
        uint256 base = baseBurnRatio;

        // Descend and return on first match
        for (uint256 i = len; i > 0; ) {
            Tier storage tr = t[i - 1];
            if (ve >= tr.veFiveThreshold) {
                tierIndex = i - 1;
                maxBurn = tr.maxBurnAmount;
                userBurnRatio = (base * tr.bonusMultiplier) / ONE;
                return (maxBurn, userBurnRatio, tierIndex, ve);
            }
            unchecked {
                --i;
            }
        }
    }

    /// Quick peek: FIVE → token amount *if user tried now* (applies same clips as burn).
    function previewAllocation(
        address user,
        uint256 fiveAmount
    ) external view returns (uint256 clippedFive, uint256 tokens) {
        if (finalized || block.timestamp > endTime || burned[user] > 0 || fiveAmount == 0) {
            return (0, 0);
        }
        (uint256 maxBurn, uint256 ratio, , ) = getUserLimits(user);
        uint256 remaining = hardCap - totalBurned;
        if (remaining == 0) return (0, 0);

        clippedFive = fiveAmount > maxBurn ? maxBurn : fiveAmount;
        if (clippedFive > remaining) clippedFive = remaining;

        tokens = (clippedFive * ratio) / ONE;
    }

    /// ───────────────────────── Supply Math ─────────────────────────
    function projectedTotalSupply() external view returns (uint256) {
        uint256 otherPct = creatorTokenPercent + lpTokenPercent + devPercent;
        return (usersAllocated * ONE) / (ONE - otherPct);
    }

    function projectedBreakdown()
        external
        view
        returns (
            uint256 totalSupply,
            uint256 creatorAllocation,
            uint256 devTokenAllocation,
            uint256 tokenLpAmount,
            uint256 claimableAmount,
            uint256 devFiveAllocation,
            uint256 fiveLpAmount,
            uint256 burnableFive
        )
    {
        return _projectedBreakdownInternal();
    }

    function _projectedBreakdownInternal()
        internal
        view
        returns (
            uint256 totalSupply,
            uint256 creatorAllocation,
            uint256 devTokenAllocation,
            uint256 tokenLpAmount,
            uint256 claimableAmount,
            uint256 devFiveAllocation,
            uint256 fiveLpAmount,
            uint256 burnableFive
        )
    {
        uint256 otherPct = creatorTokenPercent + lpTokenPercent + devPercent;
        totalSupply = (usersAllocated * ONE) / (ONE - otherPct);
        creatorAllocation = (totalSupply * creatorTokenPercent) / ONE;
        devTokenAllocation = (totalSupply * devPercent) / ONE;
        tokenLpAmount = totalSupply - (usersAllocated + creatorAllocation + devTokenAllocation);
        claimableAmount = usersAllocated;
        devFiveAllocation = (totalBurned * devPercent) / ONE;
        fiveLpAmount = (totalBurned * lpFivePercent) / ONE;
        burnableFive = totalBurned - (devFiveAllocation + fiveLpAmount); // checked sub
    }

    /// ───────────────────────── Status ─────────────────────────
    function getStatus() external view returns (CampaignStatus) {
        if (!finalized) {
            if (block.timestamp < startTime) return CampaignStatus.Pending;
            if (block.timestamp <= endTime) return CampaignStatus.Burning;
            return CampaignStatus.Finalizing;
        }
        return totalBurned >= softCap ? CampaignStatus.Claimable : CampaignStatus.Refundable;
    }
}
