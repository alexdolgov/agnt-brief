// ============================================================
// FILE: @openzeppelin/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.1.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC-20 standard as defined in the ERC.
 */
interface IERC20 {
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
     * @dev Returns the value of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the value of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 value) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens.
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
    function approve(address spender, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the
     * allowance mechanism. `value` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/Context.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.1) (utils/Context.sol)

pragma solidity ^0.8.20;

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
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    function _contextSuffixLength() internal view virtual returns (uint256) {
        return 0;
    }
}

// ============================================================
// FILE: contracts/gateway/interface/IFrontendGateway.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IFrontendGateway {
    struct FrontendCode {
        uint256 balance;
        address owner;
    }

    event FrontendCodeRegistered(address owner, bytes32 frontendCode);
    event FrontendCodeTransferred(address from, address to, bytes32 frontendCode);
    event FrontendCodeRewardsWithdrawn(address to, uint256 amount, bytes32 frontendCode);
    event NewPositionRegistered(address position, bytes32 frontendCode);
    event RateChangesProposed(address who, uint24 nextFeeRate, uint24 nextSavingsFeeRate, uint24 nextMintingFeeRate, uint256 nextChange);
    event RateChangesExecuted(address who, uint24 nextFeeRate, uint24 nextSavingsFeeRate, uint24 nextMintingFeeRate);
    
    event InvestRewardAdded(bytes32 frontendCode, address user, uint256 amount, uint256 reward);
    event RedeemRewardAdded(bytes32 frontendCode, address user, uint256 amount, uint256 reward);
    event UnwrapAndSellRewardAdded(bytes32 frontendCode, address user, uint256 amount, uint256 reward);
    event SavingsRewardAdded(bytes32 frontendCode, address saver, uint256 interest, uint256 reward);
    event PositionRewardAdded(bytes32 frontendCode, address position, uint256 amount, uint256 reward);

    error FrontendCodeAlreadyExists();
    error NotFrontendCodeOwner();
    error NotGatewayService();
    error ProposedChangesToHigh();
    error NoOpenChanges();
    error NotDoneWaiting(uint256 minmumExecutionTime);
    error EquityTooLow();

    function invest(uint256 amount, uint256 expectedShares, bytes32 frontendCode) external returns (uint256);
    function redeem(address target, uint256 shares, uint256 expectedProceeds, bytes32 frontendCode) external returns (uint256);
    function unwrapAndSell(uint256 amount, bytes32 frontendCode) external returns (uint256);

    function updateSavingCode(address savingsOwner, bytes32 frontendCode) external;
    function updateSavingRewards(address saver, uint256 interest) external;

    function registerPosition(address position, bytes32 frontendCode) external;
    function updatePositionRewards(address position, uint256 amount) external;
    function getPositionFrontendCode(address position)view external  returns(bytes32);

    // Frontend Code Logic
    function registerFrontendCode(bytes32 frontendCode) external returns (bool);
    function transferFrontendCode(bytes32 frontendCode, address to) external returns (bool);
    function withdrawRewards(bytes32 frontendCode) external returns (uint256);
    function withdrawRewardsTo(bytes32 frontendCode, address to) external returns (uint256);

    // Governance
    function proposeChanges(uint24 newFeeRatePPM_, uint24 newSavingsFeeRatePPM_, uint24 newMintingFeeRatePPM_, address[] calldata helpers) external;
    function executeChanges() external;
}

// ============================================================
// FILE: contracts/gateway/SavingsGateway.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import {IFrontendGateway} from "./interface/IFrontendGateway.sol";
import {Context} from "@openzeppelin/contracts/utils/Context.sol";
import {IDecentralizedEURO} from "../interface/IDecentralizedEURO.sol";
import {Savings} from "../Savings.sol";

contract SavingsGateway is Savings, Context {
    IFrontendGateway public immutable GATEWAY;

    constructor(IDecentralizedEURO deuro_, uint24 initialRatePPM, address gateway_) Savings(deuro_, initialRatePPM) {
        GATEWAY = IFrontendGateway(gateway_);
    }

    function refresh(address accountOwner) internal override returns (Account storage) {
        Account storage account = savings[accountOwner];
        uint64 ticks = currentTicks();
        if (ticks > account.ticks) {
            uint192 earnedInterest = calculateInterest(account, ticks);
            if (earnedInterest > 0) {
                // collect interest as you go and trigger accounting event
                (IDecentralizedEURO(address(deuro))).distributeProfits(address(this), earnedInterest);
                account.saved += earnedInterest;
                GATEWAY.updateSavingRewards(accountOwner, earnedInterest);
                emit InterestCollected(accountOwner, earnedInterest);
            }
            account.ticks = ticks;
        }
        return account;
    }

    function save(uint192 amount, bytes32 frontendCode) public {
        save(_msgSender(), amount, frontendCode);
    }

    function save(address owner, uint192 amount, bytes32 frontendCode) public {
        GATEWAY.updateSavingCode(_msgSender(), frontendCode);
        save(owner, amount);
    }

    function adjust(uint192 targetAmount, bytes32 frontendCode) public {
        GATEWAY.updateSavingCode(_msgSender(), frontendCode);
        adjust(targetAmount);
    }

    function withdraw(address target, uint192 amount, bytes32 frontendCode) public returns (uint256) {
        GATEWAY.updateSavingCode(_msgSender(), frontendCode);
        return withdraw(target, amount);
    }
}

// ============================================================
// FILE: contracts/interface/IDecentralizedEURO.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IReserve} from "./IReserve.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IDecentralizedEURO is IERC20 {
    function suggestMinter(
        address _minter,
        uint256 _applicationPeriod,
        uint256 _applicationFee,
        string calldata _message
    ) external;

    function registerPosition(address position) external;

    function denyMinter(address minter, address[] calldata helpers, string calldata message) external;

    function reserve() external view returns (IReserve);

    function minterReserve() external view returns (uint256);

    function calculateAssignedReserve(uint256 mintedAmount, uint32 _reservePPM) external view returns (uint256);

    function calculateFreedAmount(uint256 amountExcludingReserve, uint32 _reservePPM) external view returns (uint256);

    function equity() external view returns (uint256);

    function isMinter(address minter) external view returns (bool);

    function getPositionParent(address position) external view returns (address);

    function mint(address target, uint256 amount) external;

    function mintWithReserve(address target, uint256 amount, uint32 reservePPM) external;

    function burn(uint256 amount) external;

    function burnFrom(address target, uint256 amount) external;

    function burnWithoutReserve(uint256 amount, uint32 reservePPM) external;

    function burnFromWithReserve(
        address payer,
        uint256 targetTotalBurnAmount,
        uint32 reservePPM
    ) external returns (uint256);

    function coverLoss(address source, uint256 amount) external;

    function distributeProfits(address recipient, uint256 amount) external;

    function collectProfits(address source, uint256 _amount) external;
}

// ============================================================
// FILE: contracts/interface/IReserve.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IReserve is IERC20 {
    function invest(uint256 amount, uint256 expected) external returns (uint256);
    function checkQualified(address sender, address[] calldata helpers) external view;
}

// ============================================================
// FILE: contracts/Leadrate.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IReserve} from "./interface/IReserve.sol";

/**
 * @title Leadrate (attempt at translating the concise German term 'Leitzins')
 *
 * A module that can provide other modules with the leading interest rate for the system.
 *
 **/
contract Leadrate {
    IReserve public immutable equity;

    // The following five variables are less than 256 bits, so they should be stored
    // in the same slot, making them cheaper to access together, right?

    uint24 public currentRatePPM; // 24 bits allows rates of up to ~1670% per year
    uint24 public nextRatePPM;
    uint40 public nextChange;

    uint40 private anchorTime; // 40 bits for time in seconds spans up to 1000 human generations
    uint64 private ticksAnchor; // in bips * seconds

    event RateProposed(address who, uint24 nextRate, uint40 nextChange);
    event RateChanged(uint24 newRate);

    error NoPendingChange();
    error ChangeNotReady();

    constructor(IReserve equity_, uint24 initialRatePPM) {
        equity = equity_;
        nextRatePPM = initialRatePPM;
        currentRatePPM = initialRatePPM;
        nextChange = uint40(block.timestamp);
        anchorTime = nextChange;
        ticksAnchor = 0;
        emit RateChanged(initialRatePPM); // emit for initialization indexing, if desired
    }

    /**
     * Proposes a new interest rate that will automatically be applied after seven days.
     * To cancel a proposal, just overwrite it with a new one proposing the current rate.
     */
    function proposeChange(uint24 newRatePPM_, address[] calldata helpers) external {
        equity.checkQualified(msg.sender, helpers);
        nextRatePPM = newRatePPM_;
        nextChange = uint40(block.timestamp + 7 days);
        emit RateProposed(msg.sender, nextRatePPM, nextChange);
    }

    /**
     * Setting a previously proposed interest rate change into force.
     */
    function applyChange() external {
        if (currentRatePPM == nextRatePPM) revert NoPendingChange();
        uint40 timeNow = uint40(block.timestamp);
        if (timeNow < nextChange) revert ChangeNotReady();
        ticksAnchor += (timeNow - anchorTime) * currentRatePPM;
        anchorTime = timeNow;
        currentRatePPM = nextRatePPM;
        emit RateChanged(currentRatePPM);
    }

    /**
     * Total accumulated 'interest ticks' since this contract was deployed.
     * One 'tick' is a ppm-second, so one month of 12% annual interest is
     *   120000*30*24*3600 = 311040000000 ticks.
     * Two months of 6% annual interest would result in the same number of
     * ticks. For simplicity, this is linear, so there is no "interest on interest".
     */
    function currentTicks() public view returns (uint64) {
        return ticks(block.timestamp);
    }

    function ticks(uint256 timestamp) public view returns (uint64) {
        return ticksAnchor + (uint64(timestamp) - anchorTime) * currentRatePPM;
    }
}

// ============================================================
// FILE: contracts/Savings.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IDecentralizedEURO} from "./interface/IDecentralizedEURO.sol";
import {IReserve} from "./interface/IReserve.sol";
import {Leadrate} from "./Leadrate.sol";

/**
 * @title Savings
 *
 * Module to enable savings based on a Leadrate ("Leitzins") module.
 *
 * As the interest rate changes, the speed at which 'ticks' are accumulated is
 * adjusted. The ticks counter serves as the basis for calculating the interest
 * due for the individual accounts.
 */
contract Savings is Leadrate {
    IERC20 public immutable deuro;

    mapping(address => Account) public savings;

    struct Account {
        uint192 saved;
        uint64 ticks;
    }

    event Saved(address indexed account, uint192 amount);
    event InterestCollected(address indexed account, uint256 interest);
    event Withdrawn(address indexed account, uint192 amount);

    // The module is considered disabled if the interest is zero or about to become zero within three days.
    error ModuleDisabled();

    constructor(IDecentralizedEURO deuro_, uint24 initialRatePPM) Leadrate(IReserve(deuro_.reserve()), initialRatePPM) {
        deuro = IERC20(deuro_);
    }

    /**
     * Shortcut for refreshBalance(msg.sender)
     */
    function refreshMyBalance() public returns (uint192) {
        return refreshBalance(msg.sender);
    }

    /**
     * Collects the accrued interest and adds it to the account.
     *
     * It can be beneficial to do so every now and then in order to start collecting
     * interest on the accrued interest.
     */
    function refreshBalance(address owner) public returns (uint192) {
        return refresh(owner).saved;
    }

    function refresh(address accountOwner) virtual internal returns (Account storage) {
        Account storage account = savings[accountOwner];
        uint64 ticks = currentTicks();
        if (ticks > account.ticks) {
            uint192 earnedInterest = calculateInterest(account, ticks);
            if (earnedInterest > 0) {
                // collect interest as you go and trigger accounting event
                (IDecentralizedEURO(address(deuro))).distributeProfits(address(this), earnedInterest);
                account.saved += earnedInterest;
                emit InterestCollected(accountOwner, earnedInterest);
            }
            account.ticks = ticks;
        }
        return account;
    }

    function accruedInterest(address accountOwner) public view returns (uint192) {
        return accruedInterest(accountOwner, block.timestamp);
    }

    function accruedInterest(address accountOwner, uint256 timestamp) public view returns (uint192) {
        Account memory account = savings[accountOwner];
        return calculateInterest(account, ticks(timestamp));
    }

    function calculateInterest(Account memory account, uint64 ticks) public view returns (uint192) {
        if (ticks <= account.ticks || account.ticks == 0) {
            return 0;
        } else {
            uint192 earnedInterest = uint192((uint256(ticks - account.ticks) * account.saved) / 1_000_000 / 365 days);
            uint256 equity = IDecentralizedEURO(address(deuro)).equity();
            if (earnedInterest > equity) {
                return uint192(equity); // safe conversion as equity is smaller than uint192 earnedInterest
            } else {
                return earnedInterest;
            }
        }
    }

    /**
     * Save 'amount'.
     */
    function save(uint192 amount) public {
        save(msg.sender, amount);
    }

    function adjust(uint192 targetAmount) public {
        Account storage balance = refresh(msg.sender);
        if (balance.saved < targetAmount) {
            save(targetAmount - balance.saved);
        } else if (balance.saved > targetAmount) {
            withdraw(msg.sender, balance.saved - targetAmount);
        }
    }

    /**
     * Send 'amount' to the account of the provided owner.
     */
    function save(address owner, uint192 amount) public {
        if (currentRatePPM == 0) revert ModuleDisabled();
        if (nextRatePPM == 0 && (nextChange <= block.timestamp)) revert ModuleDisabled();
        Account storage balance = refresh(owner);
        deuro.transferFrom(msg.sender, address(this), amount);
        assert(balance.ticks >= currentTicks()); // @dev: should not differ, since there is no shift of interests
        balance.saved += amount;
        emit Saved(owner, amount);
    }

    /**
     * Withdraw up to 'amount' to the target address.
     * When trying to withdraw more than available, all that is available is withdrawn.
     * Returns the actually transferred amount.
     */
    function withdraw(address target, uint192 amount) public returns (uint256) {
        Account storage account = refresh(msg.sender);
        if (amount >= account.saved) {
            amount = account.saved;
            delete savings[msg.sender];
        } else {
            account.saved -= amount;
        }
        deuro.transfer(target, amount);
        emit Withdrawn(msg.sender, amount);
        return amount;
    }
}
