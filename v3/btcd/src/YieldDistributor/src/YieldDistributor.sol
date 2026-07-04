// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.20;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./interfaces/IBTCD.sol";
import "./interfaces/IBTCDStaking.sol";
import "./interfaces/IFISCStaking.sol";
import "./StakingSingleAdminAccessControl.sol";

/// @title Yield Distributor
/// @notice Manages yield distribution between BTCD and FISC staking pools with configurable split rates
/// @dev Implements a dual-token staking yield system that distributes yield based on stakeholder composition
///
/// YIELD DISTRIBUTION MECHANISM:
///   The contract distributes yield across BTCD and FISC staking contracts using a three-stage split system:
///
/// STAGE 1 - Primary Split:
///   Incoming BTCD yield is split between BTCD and FISC based on BTCDTakeRate.
///   - BTCDTakeRate % of yield goes to BTCD (configurable, base = 100%)
///   - Remaining % goes to FISC (100% - BTCDTakeRate)
///
/// STAGE 2 - Staking Ratio Split:
///   Each token's allocation is further split between staked and unstaked holders based on staking ratios.
///   - Staked holders receive: allocation * (stakedAmount / totalSupply)
///   - Unstaked holders receive: allocation * (1 - stakedAmount / totalSupply)
///
/// STAGE 3 - Cross-Pool Redistribution:
///   Unstaked portions can be redirected to the other staking pool:
///   - FISCUnstakedToBTCDStakersRate % of FISC's unstaked portion → BTCD stakers
///   - BTCDUnstakedToFISCStakersRate % of BTCD's unstaked portion → FISC stakers
///   - Remaining unstaked portions go to their respective staking pools
///
/// VALIDATION:
///   - Minimum yield amount required (MIN_AMOUNT = 10,000) to prevent dust distributions
///   - Both BTCD and FISC must have total supply > MIN_AMOUNT
///   - At least one staking pool must have active stakers (stakedRatio > 0)
///
/// ROLE-BASED ACCESS CONTROL:
///
/// DEFAULT_ADMIN_ROLE:
///   - setBTCDTakeRate(uint256): Configure percentage of yield allocated to BTCD (0-10000)
///   - setFISCUnstakedToBTCDStakersRate(uint256): Configure FISC unstaked redirect rate
///   - setBTCDUnstakedToFISCStakersRate(uint256): Configure BTCD unstaked redirect rate
///   - recoverTokens(address, uint256, address): Rescue accidentally sent tokens
///   - grantRole(bytes32, address): Assign roles to addresses
///   - revokeRole(bytes32, address): Remove roles from addresses
///   - transferOwnership(address): Initiate two-step ownership transfer
///
/// YIELD_DISTRIBUTOR_ROLE:
///   - distributeYield(uint256): Distribute yield across staking pools

contract YieldDistributor is StakingSingleAdminAccessControl, ReentrancyGuard {
    using SafeERC20 for IERC20;
    /* --------------- CONSTANTS --------------- */

    /// @notice The role which enables yield distribution
    bytes32 public constant YIELD_DISTRIBUTOR_ROLE =
        keccak256("YIELD_DISTRIBUTOR_ROLE");

    /// @notice Scalar for rate calculations (10,000 = 100%)
    uint256 private constant SCALAR = 100_00;

    /// @notice Minimum yield amount to prevent dust distributions
    uint256 private constant MIN_AMOUNT = SCALAR;

    /* --------------- ERRORS --------------- */

    /// @notice Rate exceeds maximum allowed (SCALAR = 10,000)
    error InvalidRate();

    /// @notice BTCD total supply is below minimum required
    error NoBTCDSupply();

    /// @notice FISC total supply is below minimum required
    error NoFISCSupply();

    /// @notice Neither BTCD nor FISC has sufficient staked amounts
    error NotEnoughStakers();

    /// @notice Yield amount is below minimum threshold (MIN_AMOUNT)
    error YieldBelowMinAllowed();

    /// @notice Invalid address provided (zero address)
    error InvalidAddress();

    /// @notice Contract not properly configured for yield distribution
    error NotConfigured();

    /* --------------- STATE VARIABLES --------------- */

    /// @notice BTCD token contract
    IBTCD public immutable BTCD;

    /// @notice FISC token contract
    IERC20 public immutable FISC;

    /// @notice BTCD staking contract
    IBTCDStaking public BTCDStaking;

    /// @notice FISC staking contract
    IFISCStaking public FISCStaking;

    /// @notice Percentage of yield allocated to BTCD in stage 1 split (basis points, 0-10000)
    /// @dev 10000 = 100%, yield goes to BTCD; 5000 = 50/50 split between BTCD and FISC
    uint256 public BTCDTakeRate;

    /// @notice Percentage of FISC's unstaked yield redirected to BTCD stakers (basis points, 0-10000)
    /// @dev Applied in stage 3 cross-pool redistribution
    uint256 public FISCUnstakedToBTCDStakersRate;

    /// @notice Percentage of BTCD's unstaked yield redirected to FISC stakers (basis points, 0-10000)
    /// @dev Applied in stage 3 cross-pool redistribution
    uint256 public BTCDUnstakedToFISCStakersRate;

    /* --------------- CONSTRUCTOR --------------- */

    /// @notice Initializes the yield distributor with token and staking contract references
    /// @param _owner Address to grant DEFAULT_ADMIN_ROLE
    /// @param _BTCD Address of BTCD token contract
    /// @param _FISC Address of FISC token contract
    constructor(address _owner, address _BTCD, address _FISC) {
        if (
            _owner == address(0) || _BTCD == address(0) || _FISC == address(0)
        ) {
            revert InvalidAddress();
        }
        _grantRole(DEFAULT_ADMIN_ROLE, _owner);
        BTCD = IBTCD(_BTCD);
        FISC = IERC20(_FISC);
    }

    ////////////////////////////////////////////////////////////
    //// PRIVILEGED ROLE ACTIONS ///////////////////////////////
    ////////////////////////////////////////////////////////////

    /* --------------- DEFAULT_ADMIN_ROLE ------------- */

    /// @notice Sets the BTCD staking contract address
    /// @param _BTCDStaking Address of the BTCD staking contract
    function setBTCDStaking(
        address _BTCDStaking
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_BTCDStaking == address(0)) {
            revert InvalidAddress();
        }
        BTCDStaking = IBTCDStaking(_BTCDStaking);
        // CRITICAL: BTCD staking contract receives BTCD as rewards
        // Only approve if not already approved to max to save gas
        if (BTCD.allowance(address(this), _BTCDStaking) != type(uint256).max) {
            IERC20(address(BTCD)).safeApprove(_BTCDStaking, type(uint256).max);
        }
    }

    /// @notice Sets the FISC staking contract address
    /// @param _FISCStaking Address of the FISC staking contract
    function setFISCStaking(
        address _FISCStaking
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_FISCStaking == address(0)) {
            revert InvalidAddress();
        }
        FISCStaking = IFISCStaking(_FISCStaking);
        // CRITICAL: FISC staking contract receives BTCD as rewards, never FISC
        // Only approve if not already approved to max to save gas
        if (BTCD.allowance(address(this), _FISCStaking) != type(uint256).max) {
            IERC20(address(BTCD)).safeApprove(_FISCStaking, type(uint256).max);
        }
    }

    /// @notice Sets the percentage of yield allocated to BTCD stakers in stage 1 split
    /// @param _rate Basis points (0-10000), where 10000 = 100% to BTCD, 5000 = 50/50 split
    function setBTCDTakeRate(
        uint256 _rate
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_rate > SCALAR) {
            revert InvalidRate();
        }
        BTCDTakeRate = _rate;
    }

    /// @notice Sets the percentage of FISC's unstaked yield redirected to BTCD stakers
    /// @param _rate Basis points (0-10000), where 10000 = 100% redirected, 0 = none redirected
    function setFISCUnstakedToBTCDStakersRate(
        uint256 _rate
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_rate > SCALAR) {
            revert InvalidRate();
        }
        FISCUnstakedToBTCDStakersRate = _rate;
    }

    /// @notice Sets the percentage of BTCD's unstaked yield redirected to FISC stakers
    /// @param _rate Basis points (0-10000), where 10000 = 100% redirected, 0 = none redirected
    function setBTCDUnstakedToFISCStakersRate(
        uint256 _rate
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_rate > SCALAR) {
            revert InvalidRate();
        }
        BTCDUnstakedToFISCStakersRate = _rate;
    }

    /// @notice Rescues accidentally sent tokens from the distributor
    /// @param _token The token contract to rescue from
    /// @param _amount The amount to rescue
    /// @param _to The recipient address
    function recoverTokens(
        address _token,
        uint256 _amount,
        address _to
    ) external nonReentrant onlyRole(DEFAULT_ADMIN_ROLE) {
        IERC20 _erc20token = IERC20(_token);
        _erc20token.safeTransfer(_to, _amount);
    }

    ////////////////////////////////////////////////////////////
    //// PUBLIC YIELD DISTRIBUTION /////////////////////////////
    ////////////////////////////////////////////////////////////

    /* --------------- YIELD_DISTRIBUTOR_ROLE ------------- */

    /// @notice Distributes yield across BTCD and FISC staking pools based on configured rates
    /// @dev Three-stage split process:
    ///      1. Initial split between BTCD and FISC based on BTCDTakeRate
    ///      2. Split each token's allocation between staked and unstaked holders
    ///      3. Redirect unstaked portions based on cross-pool rates
    /// @param _amountBTCD Total BTCD yield to distribute
    function distributeYield(
        uint256 _amountBTCD
    ) external nonReentrant onlyRole(YIELD_DISTRIBUTOR_ROLE) {
        // Validate minimum yield amount
        if (_amountBTCD < MIN_AMOUNT) {
            revert YieldBelowMinAllowed();
        }

        if (
            address(BTCDStaking) == address(0) &&
            address(FISCStaking) == address(0)
        ) {
            revert NotConfigured();
        }
        if (
            address(BTCDStaking) == address(0) &&
            address(FISCStaking) != address(0)
        ) {
            if (FISCStaking.totalAssets() < MIN_AMOUNT) {
                revert NotEnoughStakers();
            }
            BTCD.mintYield(address(this), _amountBTCD);
            FISCStaking.transferInRewards(_amountBTCD);
            return;
        }
        if (
            address(BTCDStaking) != address(0) &&
            address(FISCStaking) == address(0)
        ) {
            if (BTCDStaking.totalAssets() < MIN_AMOUNT) {
                revert NotEnoughStakers();
            }
            BTCD.mintYield(address(this), _amountBTCD);
            BTCDStaking.transferInRewards(_amountBTCD);
            return;
        }
        // Implies (address(BTCDStaking) != address(0) && address(FISCStaking) != address(0))
        // below this line - go to two staking split logic

        // Get total supplies and revert if insufficient supply
        uint256 totalSupplyBTCD = BTCD.totalSupply();
        if (totalSupplyBTCD < MIN_AMOUNT) {
            revert NoBTCDSupply();
        }
        uint256 totalSupplyFISC = FISC.totalSupply();
        if (totalSupplyFISC < MIN_AMOUNT) {
            revert NoFISCSupply();
        }
        // since we can only do distribute yield when vesting is over
        // totalAssets will be equals to btcd or fisc balance of staking contract
        uint256 stakedBTCD = BTCDStaking.totalAssets();
        uint256 stakedFISC = FISCStaking.totalAssets();

        // Calculate staking ratios and split staked vs unstaked
        uint256 BTCDStakingRatio = ((stakedBTCD * SCALAR) / totalSupplyBTCD);
        uint256 FISCStakingRatio = ((stakedFISC * SCALAR) / totalSupplyFISC);

        // Validate that at least one pool has stakers
        if (stakedBTCD < MIN_AMOUNT && stakedFISC < MIN_AMOUNT) {
            revert NotEnoughStakers();
        }

        // Mint the yield tokens to this contract
        BTCD.mintYield(address(this), _amountBTCD);

        // Edge case: Only FISC stakers present
        if (stakedBTCD < MIN_AMOUNT && stakedFISC >= MIN_AMOUNT) {
            // distribute to FISC stakers only
            FISCStaking.transferInRewards(_amountBTCD);
            return;
        }

        // Edge case: Only BTCD stakers present
        if (stakedBTCD >= MIN_AMOUNT && stakedFISC < MIN_AMOUNT) {
            // distribute to BTCD stakers only
            BTCDStaking.transferInRewards(_amountBTCD);
            return;
        }

        // Both pools have stakers: Execute full three-stage split

        // STAGE 1: Split between BTCD and FISC based on BTCDTakeRate
        uint256 BTCDYieldFirstSplit = (_amountBTCD * BTCDTakeRate) / SCALAR;
        uint256 FISCYieldFirstSplit = _amountBTCD - BTCDYieldFirstSplit;

        // STAGE 2: Split each token's allocation between staked and unstaked holders
        uint256 BTCDStakedYield = (BTCDYieldFirstSplit * BTCDStakingRatio) /
            SCALAR;
        uint256 BTCDUnstakedYield = BTCDYieldFirstSplit - BTCDStakedYield;

        uint256 FISCStakedYield = (FISCYieldFirstSplit * FISCStakingRatio) /
            SCALAR;
        uint256 FISCUnstakedYield = FISCYieldFirstSplit - FISCStakedYield;

        // STAGE 3: Apply cross-pool redistribution rates
        uint256 FISCUnstakedToBTCDStakers = (FISCUnstakedYield *
            FISCUnstakedToBTCDStakersRate) / SCALAR;
        uint256 FISCUnstakedToFISCStakers = FISCUnstakedYield -
            FISCUnstakedToBTCDStakers;

        uint256 BTCDUnstakedToFISCStakers = (BTCDUnstakedYield *
            BTCDUnstakedToFISCStakersRate) / SCALAR;
        uint256 BTCDUnstakedToBTCDStakers = BTCDUnstakedYield -
            BTCDUnstakedToFISCStakers;

        // Aggregate yields for each staking pool
        uint256 yieldToBTCDStakers = BTCDStakedYield +
            BTCDUnstakedToBTCDStakers +
            FISCUnstakedToBTCDStakers;

        uint256 yieldToFISCStakers = FISCStakedYield +
            FISCUnstakedToFISCStakers +
            BTCDUnstakedToFISCStakers;

        // Distribute yields to the respective staking contracts
        if (yieldToBTCDStakers > 0) {
            BTCDStaking.transferInRewards(yieldToBTCDStakers);
        }
        if (yieldToFISCStakers > 0) {
            FISCStaking.transferInRewards(yieldToFISCStakers);
        }
    }
}
