// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {Pausable} from "openzeppelin-contracts/contracts/utils/Pausable.sol";
import {Owned} from "./utils/Owned.sol";
import {IAcetAdaptor} from "./interfaces/IAcetAdaptor.sol";
import {IHookAccessControl} from "./interfaces/IHookAccessControl.sol";
import {IMintReserve} from "./interfaces/IMintReserve.sol";

/// @title MintReserve
/// @notice Shared cap accounting + mint authority for the 3 final ACT farms.
///
/// Design:
///  - This contract is the ONLY entity registered as a pool on AcetAdaptor for
///    the new farming campaign, and the ONLY holder of BALANCE_MANAGER_ROLE on
///    HookAccessControl. Each individual farm calls this contract; it forwards.
///  - Tracks `totalReserved` (promised but not yet minted) so the global 3B cap
///    holds across all 3 farms. Each stake reserves its full eventual reward
///    upfront; reservations are converted to actual mints at claim time.
///  - Hard cap check: ACT.totalSupply() + totalReserved + newReservation <= 3B.
///    Refuses new reservations once the projected total would breach the cap.
///    Already-reserved stakes are always payable.
///
/// Lifecycle:
///   1. Deploy MintReserve(adaptor, hookAccess, act).
///   2. EOA admin: `AcetAdaptor.increasePool(address(MintReserve))`.
///   3. EOA admin (DEFAULT_ADMIN_ROLE on HookAccessControl):
///        `HookAccessControl.grantRole(BALANCE_MANAGER_ROLE, address(MintReserve))`.
///   4. Deploy the 3 farms with `mintReserve` set to this address.
///   5. EOA admin: `MintReserve.setFarm(farm, true)` for each farm.
///   6. (End of campaign): `AcetAdaptor.renounceOwnership()` from the EOA.
contract MintReserve is IMintReserve, Owned, Pausable {
    /// @notice The terminal cap. Once minted reaches this, the campaign ends.
    uint256 public constant FINAL_MAX_SUPPLY = 3_000_000_000 * 1e18;

    IERC20 public immutable act;
    IAcetAdaptor public immutable adaptor;
    IHookAccessControl public immutable hookAccess;

    /// @notice Rewards reserved but not yet minted (i.e. owed to stakers).
    uint256 public override totalReserved;

    /// @notice Cumulative ACT minted by this MintReserve.
    uint256 public override totalMinted;

    /// @notice Farms allowed to reserve / mint / adjust buy balance.
    mapping(address => bool) public farms;

    event FarmAuthorized(address indexed farm, bool allowed);
    event Reserved(address indexed farm, uint256 amount, uint256 newTotalReserved);
    event ReservationReleased(address indexed farm, uint256 amount, uint256 newTotalReserved);
    event Minted(address indexed farm, address indexed user, uint256 amount);
    event BuyBalanceAdjusted(address indexed farm, address indexed user, int256 adjustment);

    error NotFarm();
    error CapBreached(uint256 supply, uint256 reserved, uint256 requested);
    error ReservationUnderflow();

    modifier onlyFarm() {
        if (!farms[msg.sender]) revert NotFarm();
        _;
    }

    constructor(IAcetAdaptor _adaptor, IHookAccessControl _hookAccess, IERC20 _act) Owned(msg.sender) {
        adaptor = _adaptor;
        hookAccess = _hookAccess;
        act = _act;
    }

    // ============ Admin ============

    function setFarm(address farm, bool allowed) external onlyOwner {
        farms[farm] = allowed;
        emit FarmAuthorized(farm, allowed);
    }

    /// @notice Global kill switch — halts reserve/mintAndCredit and buyBalance ops.
    /// `releaseReservation` stays callable (so emergency unwinds still work while paused).
    function pause() external onlyOwner { _pause(); }
    function unpause() external onlyOwner { _unpause(); }

    // ============ Reservation accounting (farms) ============

    /// @notice Reserve `amount` ACT against the global cap. Reverts if it would push past 3B.
    function reserve(uint256 amount) external override onlyFarm whenNotPaused {
        uint256 supply = act.totalSupply();
        if (supply + totalReserved + amount > FINAL_MAX_SUPPLY) {
            revert CapBreached(supply, totalReserved, amount);
        }
        unchecked {
            totalReserved += amount;
        }
        emit Reserved(msg.sender, amount, totalReserved);
    }

    /// @notice Release an existing reservation without minting (e.g. emergency unwind).
    /// Note: hard-locked stakes never hit this path; provided for safety.
    function releaseReservation(uint256 amount) external override onlyFarm {
        if (amount > totalReserved) revert ReservationUnderflow();
        unchecked {
            totalReserved -= amount;
        }
        emit ReservationReleased(msg.sender, amount, totalReserved);
    }

    /// @notice Convert a reservation into an actual mint to `user` and credit their buyBalance.
    /// Used at claim time. Mints via AcetAdaptor.toDev, then credits the v4 hook's buyBalance.
    function mintAndCredit(address user, uint256 amount) external override onlyFarm whenNotPaused {
        if (amount > totalReserved) revert ReservationUnderflow();
        unchecked {
            totalReserved -= amount;
            totalMinted += amount;
        }
        adaptor.toDev(amount, user, 0);
        hookAccess.adjustUserBuyBalance(user, int256(amount));
        emit Minted(msg.sender, user, amount);
        emit BuyBalanceAdjusted(msg.sender, user, int256(amount));
    }

    // ============ Pure buyBalance ops (farms) ============

    /// @notice Credit buyBalance without minting (e.g. V.2 360D 30% transform; V.4 unstake restore).
    function creditBuyBalance(address user, uint256 amount) external override onlyFarm whenNotPaused {
        hookAccess.adjustUserBuyBalance(user, int256(amount));
        emit BuyBalanceAdjusted(msg.sender, user, int256(amount));
    }

    /// @notice Debit buyBalance without minting (e.g. V.4 stake consumes user's v4 ACT).
    function debitBuyBalance(address user, uint256 amount) external override onlyFarm whenNotPaused {
        hookAccess.adjustUserBuyBalance(user, -int256(amount));
        emit BuyBalanceAdjusted(msg.sender, user, -int256(amount));
    }

    // ============ Views ============

    function remainingMintable() external view override returns (uint256) {
        uint256 used = act.totalSupply() + totalReserved;
        return used >= FINAL_MAX_SUPPLY ? 0 : FINAL_MAX_SUPPLY - used;
    }
}
