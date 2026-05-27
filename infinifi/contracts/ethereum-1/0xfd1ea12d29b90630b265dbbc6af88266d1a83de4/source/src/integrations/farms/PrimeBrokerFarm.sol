// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {FixedPointMathLib} from "@solmate/src/utils/FixedPointMathLib.sol";
import {ReentrancyGuardTransient} from "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";

import {Farm} from "@integrations/Farm.sol";
import {IFarm} from "@interfaces/IFarm.sol";
import {CoreRoles} from "@libraries/CoreRoles.sol";
import {Accounting} from "@finance/Accounting.sol";
import {PLSmoother} from "@finance/PLSmoother.sol";
import {IPrimeBroker} from "@interfaces/IPrimeBroker.sol";
import {ManualRebalancer} from "@integrations/farms/movement/ManualRebalancer.sol";

interface IWhitelist {
    function isWhitelisted(address addr) external view returns (uint8);
}

/// @title PrimeBrokerFarm
/// @notice InfiniFi farm that participates in 3F bridge facilitator auctions.
///
/// @dev Auction flow:
///   1. InfiniFi backend bids on a 3F auction.
///   2. When the bid is accepted, 3F calls authorizeMinting(address(this), ptAmount, ytAmount)
///      on the requestId contract (done by 3F off-chain).
///   3. The InfiniFi backend then calls executeBid(sourceFarm, requestId, amount, minYieldReceived) on this contract,
///      which atomically:
///        a. Pulls USDC from sourceFarm via ManualRebalancer.
///        b. Approves the requestId contract for `amount` USDC.
///        c. Calls IPrimeBroker(requestId).mint() — receives PT and YT tokens.
///        d. Optimistically includes the YT yield in deployed assets and smooths it immediately
///           via PLSmoother, so yield accrues to the protocol from the moment the bid is placed.
///
/// @dev Exit flow:
///   1. 3F calls setRepaid() on the requestId contract, unlocking withdrawals.
///   2. Backend calls exitBid(requestId, destinationFarm), which:
///        a. Calls IPrimeBroker(requestId).burnAll(address(this), address(this)).
///        b. Recovered USDC lands in this contract and is forwarded to destinationFarm.
///        c. Emits BidLoss if recovered USDC is less than the tracked position (principal + yield).
///
/// @dev Permission requirements:
///   - MANUAL_REBALANCER: must be granted to this contract so it can call ManualRebalancer.singleMovement().
///   - FINANCE_MANAGER: must be granted to this contract so it can call PLSmoother.smoothProfit().
///   - executeBid() and exitBid() are guarded by FARM_SWAP_CALLER, intended for the backend keeper.
contract PrimeBrokerFarm is Farm, ReentrancyGuardTransient {
    using SafeERC20 for IERC20;
    using FixedPointMathLib for uint256;

    // Intentionally different name from erc20 error.
    error InvalidAmount(uint256 _amount);
    error NoAllowance(uint256 _amount);
    error NoActivePosition(address requestId);
    error UnexpectedPTAmount(uint256 expected, uint256 actual);
    error PositionAlreadyActive(address requestId);
    error RequestIdNotWhitelisted(address _id);
    error InvalidSmoothingDuration(uint256 duration);
    error InsufficientYieldReceived(uint256 minExpected, uint256 actual);

    event BidExecuted(
        uint256 indexed timestamp,
        address indexed sourceFarm,
        address indexed requestId,
        uint256 amount,
        uint256 yieldSmoothed
    );
    event BidLoss(uint256 indexed timestamp, address indexed requestId, uint256 loss);
    event BidExited(uint256 indexed timestamp, address indexed requestId, uint256 usdcRecovered);
    event AllowanceUpdated(uint256 indexed timestamp, uint256 _allowance);
    event WhitelistUpdated(uint256 indexed timestamp, address _whitelist);

    /// @notice Minimum allowed smoothing duration
    uint256 public constant MIN_SMOOTHING_DURATION = 1 hours;
    /// @notice Maximum allowed smoothing duration
    uint256 public constant MAX_SMOOTHING_DURATION = 365 days;

    address public immutable accounting;
    address public immutable receiptToken;
    address public immutable smoother;
    address public immutable manualRebalancer;

    /// @notice USDC currently deployed in open PrimeBroker positions (not yet recovered).
    uint256 private _deployedAssets;

    /// @notice Whitelist contract used to validate requestIds before executing or exiting bids.
    address public whitelist;

    /// @notice Amount of assets this farm can pull from liquid sources.
    ///         It will reduce every time capital is pulled in.
    uint256 public allowance;

    /// @notice USDC amount deployed per requestId. Zero means no active position.
    mapping(address requestId => uint256 amount) public positions;

    constructor(
        address _core,
        address _assetToken,
        address _accounting,
        address _receiptToken,
        address _smoother,
        address _manualRebalancer,
        address _whitelist
    ) Farm(_core, _assetToken) {
        accounting = _accounting;
        receiptToken = _receiptToken;
        smoother = _smoother;
        manualRebalancer = _manualRebalancer;
        whitelist = _whitelist;
    }

    // -------------------------------------------------------------------------
    // Accounting
    // -------------------------------------------------------------------------

    /// @notice Total assets reported by the farm
    function assets() public view override returns (uint256) {
        return ERC20(assetToken).balanceOf(address(this)) + _deployedAssets;
    }

    /// @inheritdoc IFarm
    function liquidity() public view override returns (uint256) {
        return ERC20(assetToken).balanceOf(address(this));
    }

    function setWhitelist(address _whitelist) external onlyCoreRole(CoreRoles.PROTOCOL_PARAMETERS) {
        whitelist = _whitelist;
        emit WhitelistUpdated(block.timestamp, _whitelist);
    }

    function setAllowance(uint256 _allowance) external onlyCoreRole(CoreRoles.PROTOCOL_PARAMETERS) {
        allowance = _allowance;
        emit AllowanceUpdated(block.timestamp, _allowance);
    }

    // -------------------------------------------------------------------------
    // Internal Farm hooks
    // -------------------------------------------------------------------------

    /// @dev Standard deposit() flow is not used; USDC is deployed via executeBid().
    function _deposit(uint256) internal override {}

    /// @dev No-op deposit override: satisfies ManualRebalancer's IFarm(_to).deposit() call after
    ///      singleMovement without triggering the base Farm slippage/cap checks.
    function deposit() external override onlyCoreRole(CoreRoles.FARM_MANAGER) whenNotPaused {
        uint256 currentAssets = assets();
        if (currentAssets > cap) {
            revert CapExceeded(currentAssets, cap);
        }
        _deposit(0);
        emit AssetsUpdated(block.timestamp, currentAssets, currentAssets);
    }

    /// @dev Transfers liquid USDC (recovered via exitBid) to the recipient.
    ///      Caller must ensure sufficient liquid USDC is available (call exitBid first if needed).
    function _withdraw(uint256 _amount, address _recipient) internal override {
        IERC20(assetToken).safeTransfer(_recipient, _amount);
    }

    // -------------------------------------------------------------------------
    // 3F PrimeBroker integration
    // -------------------------------------------------------------------------

    /// @notice Execute an accepted 3F auction bid.
    /// @dev 3F must have called authorizeMinting(address(this), ...) on `requestId` before this call.
    ///      This contract must hold MANUAL_REBALANCER role to pull USDC from `sourceFarm` via the rebalancer.
    /// @param _sourceFarm       Farm to pull USDC from (must be registered in FarmRegistry).
    /// @param _requestId        3F PrimeBroker request contract address for this auction.
    /// @param _amount           Amount of USDC to deploy into the position.
    /// @param _minYieldReceived Minimum YT tokens expected from minting; reverts if yield falls below this threshold.
    /// @param _smoothingDuration A period of time over which the profit will be distributed. Set to 0 to skip.
    function executeBid(
        address _sourceFarm,
        address _requestId,
        uint256 _amount,
        uint256 _minYieldReceived,
        uint256 _smoothingDuration
    ) external nonReentrant whenNotPaused onlyCoreRole(CoreRoles.FARM_SWAP_CALLER) {
        require(_amount > 0 && _amount <= type(uint128).max, InvalidAmount(_amount));
        require(IWhitelist(whitelist).isWhitelisted(_requestId) == 1, RequestIdNotWhitelisted(_requestId));
        require(positions[_requestId] == 0, PositionAlreadyActive(_requestId));
        require(
            _smoothingDuration == 0
                || (_smoothingDuration >= MIN_SMOOTHING_DURATION && _smoothingDuration <= MAX_SMOOTHING_DURATION),
            InvalidSmoothingDuration(_smoothingDuration)
        );

        require(_amount <= allowance, NoAllowance(_amount));
        allowance -= _amount;

        // Pull USDC from the source farm via ManualRebalancer (inherits farm registry validation)
        ManualRebalancer(manualRebalancer).singleMovement(_sourceFarm, address(this), _amount);

        // Approve PrimeBroker to spend the USDC
        // Note that there is no need to revoke the approval as this contract shouldn't hold USDC
        IERC20(assetToken).forceApprove(_requestId, _amount);

        // Mint PT/YT — tokens land in this contract
        address ptToken = IPrimeBroker(_requestId).ptToken();
        address ytToken = IPrimeBroker(_requestId).ytToken();
        uint256 ptBefore = ERC20(ptToken).balanceOf(address(this));
        uint256 ytBefore = ERC20(ytToken).balanceOf(address(this));
        IPrimeBroker(_requestId).mint(uint128(_amount), uint128(_minYieldReceived));
        uint256 ptReceived = ERC20(ptToken).balanceOf(address(this)) - ptBefore;
        uint256 ytReceived = ERC20(ytToken).balanceOf(address(this)) - ytBefore;

        // PT tokens are 1:1 with USDC (both 6 decimals) — enforce exact match
        require(ptReceived == _amount, UnexpectedPTAmount(_amount, ptReceived));

        // Enforce minimum yield received
        require(
            ytReceived >= _minYieldReceived && ytReceived > 0, InsufficientYieldReceived(_minYieldReceived, ytReceived)
        );

        // Optimistically include expected yield in the position and deployed assets, then smooth
        // it immediately so yield accrues to the protocol from the moment the bid is placed.
        positions[_requestId] += ptReceived + ytReceived;
        _deployedAssets += ptReceived + ytReceived;

        if (_smoothingDuration != 0) {
            uint256 assetPrice = Accounting(accounting).price(assetToken);
            uint256 receiptPrice = Accounting(accounting).price(receiptToken);
            uint256 receiptTokenYield = ytReceived.mulDivDown(assetPrice, receiptPrice);
            PLSmoother(smoother).smoothProfit(receiptTokenYield, _smoothingDuration);
        }

        emit BidExecuted(block.timestamp, _sourceFarm, _requestId, _amount, ytReceived);
    }

    /// @notice Exit an open 3F position by burning PT/YT tokens back to USDC.
    /// @dev 3F must have called setRepaid() on `requestId` before this call to unlock withdrawals.
    ///      Yield was already smoothed at bid execution time; no profit smoothing occurs here.
    ///      Emits BidLoss if usdcRecovered is less than the tracked position (principal + expected yield).
    ///      Recovered USDC is forwarded to `destinationFarm` via ManualRebalancer
    ///      (inheriting farm registry validation).
    /// @param _requestId       The 3F PrimeBroker request contract address.
    /// @param _destinationFarm Farm to forward recovered USDC to, or address(0) to keep it here.
    function exitBid(address _requestId, address _destinationFarm)
        external
        nonReentrant
        whenNotPaused
        onlyCoreRole(CoreRoles.FARM_SWAP_CALLER)
    {
        require(IWhitelist(whitelist).isWhitelisted(_requestId) == 1, RequestIdNotWhitelisted(_requestId));
        uint256 deployedAmount = positions[_requestId];
        require(deployedAmount != 0, NoActivePosition(_requestId));

        // Assign right away to prevent reentrancy related problems
        delete positions[_requestId];
        _deployedAssets -= deployedAmount;

        // Burn PT/YT — recovered USDC (principal + yield) lands in this contract
        uint256 usdcBefore = ERC20(assetToken).balanceOf(address(this));
        IPrimeBroker(_requestId).burnAll(address(this), address(this));
        uint256 usdcRecovered = ERC20(assetToken).balanceOf(address(this)) - usdcBefore;

        // Yield was already smoothed at bid execution time; only report a loss if recovery
        // falls short of the tracked position (principal + expected yield).
        if (usdcRecovered < deployedAmount) {
            emit BidLoss(block.timestamp, _requestId, deployedAmount - usdcRecovered);
        }

        // Forward recovered USDC to destination farm via ManualRebalancer if specified
        if (_destinationFarm != address(0)) {
            ManualRebalancer(manualRebalancer).singleMovement(address(this), _destinationFarm, usdcRecovered);
        }

        emit BidExited(block.timestamp, _requestId, usdcRecovered);
    }
}
