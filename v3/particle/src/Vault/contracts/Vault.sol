// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {ReentrancyGuard} from "../lib/openzeppelin-contracts/contracts/security/ReentrancyGuard.sol";
import {Multicall} from "../lib/openzeppelin-contracts/contracts/utils/Multicall.sol";
import {ERC1967Proxy} from "../lib/openzeppelin-contracts/contracts/proxy/ERC1967/ERC1967Proxy.sol";
import {IERC20} from "../lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol";
import {SafeERC20} from "../lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";

import {IVault} from "./interfaces/IVault.sol";
import {IYieldManager} from "./interfaces/IYieldManager.sol";
import {RateMapping, FixedRateTerm, VariableRateTerm, VariableRatePrincipal} from "./libraries/Structs.sol";
import {BlastManager} from "./libraries/BlastManager.sol";
import {FixedRate} from "./FixedRate.sol";
import {VariableRate} from "./VariableRate.sol";
import {CoreRef} from "./core/CoreRef.sol";

contract Vault is IVault, ReentrancyGuard, Multicall, CoreRef, BlastManager {
    using SafeERC20 for IERC20;

    /* Constants */
    uint256 public constant BASIS = 1 ether;

    /* Immutables */
    // solhint-disable var-name-mixedcase
    address public TOKEN;
    uint256 public MATURITY; // maturity period in seconds
    address public FIXED_RATE; // fixed rate implementation address
    address public VARIABLE_RATE; // variable rate implementation address

    /* Variables */
    uint256 private _nextId;
    uint256 public fixedRateLockedYield;
    uint256 public positionFeeRate;
    address public yieldManager;
    RateMapping public rateMapping;
    VariableRatePrincipal public variableRatePrincipal;

    /* Storage */
    mapping(uint256 => FixedRateTerm) public fixedRateTerms; // id => (owner, principal, yield, maturityTimestamp)
    mapping(address => VariableRateTerm) public variableRateTerms; // owner => principal

    constructor(
        address token,
        uint256 maturity,
        address fixedRate,
        address variableRate,
        address coreAddress
    ) CoreRef(coreAddress) {
        TOKEN = token;
        MATURITY = maturity;
        FIXED_RATE = fixedRate;
        VARIABLE_RATE = variableRate;
    }

    /*==============================================================
                         Fixed rate LP deposit
    ==============================================================*/

    /// @inheritdoc IVault
    function mintFixedRate(
        uint256 amount,
        uint256 minLockedYield,
        address recipient
    ) external override nonReentrant returns (address owner, uint256 lockedYield, uint256 maturityTimestamp) {
        require(amount > 0, "Vault: invalid value");

        // log principal for yield manager
        IYieldManager(yieldManager).depositPrincipal(amount);

        // create fixed rate contract
        ERC1967Proxy fixedRateProxy = new ERC1967Proxy(FIXED_RATE, "");
        FixedRate fixedRate = FixedRate(address(fixedRateProxy));
        fixedRate.initialize(TOKEN, address(this), recipient);
        owner = address(fixedRate);

        // take the fee
        if (positionFeeRate > 0) {
            uint256 fee = (amount * positionFeeRate) / BASIS;
            amount -= fee;
            // drip the fee to this countract
            IERC20(TOKEN).safeTransferFrom(msg.sender, address(this), fee);
        }

        // get current amount to lock
        lockedYield = getYieldToLock(amount);

        // check slippage
        require(lockedYield >= minLockedYield, "Vault: slippage");

        // check enough yield to lock
        require(lockedYield <= IYieldManager(yieldManager).getIdleYield(), "Vault: overspend");

        // update the locked yield in storage
        fixedRateLockedYield += lockedYield;

        // mint
        uint256 id = _nextId++;
        fixedRateTerms[id] = FixedRateTerm({
            owner: owner,
            principal: amount,
            yield: lockedYield,
            maturityTimestamp: maturityTimestamp = block.timestamp + MATURITY
        });

        // mint the yield to the fixed rate contract
        IYieldManager(yieldManager).mintYield(owner, lockedYield);

        // route the fund to the fixed rate contract
        IERC20(TOKEN).safeTransferFrom(msg.sender, owner, amount);
        fixedRate.mint(id, amount, lockedYield, maturityTimestamp); // record keeping for the contract

        emit MintFixedRate(owner, id, amount, lockedYield);
    }

    /*=============================================================
                         Fixed rate LP withdraw
    ==============================================================*/

    /// @inheritdoc IVault
    function burnFixedRate(
        uint256 id,
        uint256 amount
    ) external override nonReentrant returns (uint256 yieldToUnlock, uint256 yieldToRelease) {
        require(amount > 0, "Vault: invalid value");

        // log principal for yield manager
        IYieldManager(yieldManager).withdrawPrincipal(amount);

        // SLOAD to memory
        FixedRateTerm memory fixedRateTerm = fixedRateTerms[id];

        // check the owner
        require(fixedRateTerm.owner == msg.sender, "Vault: unauthorized");

        // check the amount
        require(amount <= fixedRateTerm.principal, "Vault: overspend");

        // calculate the yield to release, and the yield to return back to the vault
        /// @dev For principal 100, locked 10 yield, maturity 100 days
        ///      Example 1: at day 50, withdraw 50 principal gets 2.5 yield, and return 2.5 yield back to vault
        ///      Example 2: at day 50, withdraw 100 principal gets 5 yield, and return 5 yield back to vault
        ///      Example 3: at day 0, withdraw 50 principal gets 0 yield, and return 5 yield back to vault
        uint256 timeLeft = block.timestamp < fixedRateTerm.maturityTimestamp
            ? fixedRateTerm.maturityTimestamp - block.timestamp
            : 0;
        yieldToUnlock = (fixedRateTerm.yield * amount) / fixedRateTerm.principal;
        yieldToRelease = (yieldToUnlock * (MATURITY - timeLeft)) / MATURITY;

        // update the balance storage
        fixedRateLockedYield -= yieldToUnlock;

        // burn
        if (fixedRateTerm.principal == amount) {
            delete fixedRateTerms[id]; // delete at full withdrawn
        } else {
            // update the term
            fixedRateTerms[id].principal = fixedRateTerm.principal - amount;
            fixedRateTerms[id].yield = fixedRateTerm.yield - yieldToUnlock;
        }

        // execute unmatured yield burn
        if (yieldToUnlock > yieldToRelease) {
            uint256 yieldToBurn = yieldToUnlock - yieldToRelease;
            require(yieldToBurn <= FixedRate(msg.sender).yield(), "Vault: overburn yield");
            IYieldManager(yieldManager).burnUnmaturedYield(msg.sender, yieldToBurn);
        }

        emit BurnFixedRate(msg.sender, id, amount, yieldToRelease);
    }

    /*==============================================================
                        Variable rate LP deposit
    ==============================================================*/

    /// @inheritdoc IVault
    function mintVariableRate(
        uint256 amount,
        address recipient
    ) external override nonReentrant returns (address owner) {
        require(amount > 0, "Vault: invalid value");

        // log principal for yield manager
        IYieldManager(yieldManager).depositPrincipal(amount);

        // create variable rate contract
        ERC1967Proxy variableRateProxy = new ERC1967Proxy(VARIABLE_RATE, "");
        VariableRate variableRate = VariableRate(address(variableRateProxy));
        variableRate.initialize(TOKEN, address(this), recipient);
        owner = address(variableRate);

        // update the balance storage
        variableRatePrincipal.principalTimespan +=
            variableRatePrincipal.principal * // update principal timespan until now first
            (block.timestamp - variableRatePrincipal.checkpointTimestamp);
        variableRatePrincipal.checkpointTimestamp = block.timestamp;
        variableRatePrincipal.principal += amount;

        // mint
        variableRateTerms[owner] = VariableRateTerm({principal: amount, mintTimestamp: block.timestamp});

        // route the fund to the variable rate contract
        IERC20(TOKEN).safeTransferFrom(msg.sender, owner, amount);
        variableRate.mint(amount); // record keeping for the contract

        emit MintVariableRate(owner, amount);
    }

    /*==============================================================
                        Variable rate LP withdraw
    ==============================================================*/

    /// @inheritdoc IVault
    function burnVariableRate(
        uint256 amount,
        uint256 minYield
    ) external override nonReentrant returns (uint256 yield, uint256 fee) {
        require(amount > 0, "Vault: invalid value");

        // log principal for yield manager
        IYieldManager(yieldManager).withdrawPrincipal(amount);

        // SLOAD the principal
        uint256 principal = variableRateTerms[msg.sender].principal;

        // check the amount
        require(amount <= principal, "Vault: overspend");

        // update variable rate principal storage
        variableRatePrincipal.principalTimespan +=
            variableRatePrincipal.principal * // update principal timespan until now first
            (block.timestamp - variableRatePrincipal.checkpointTimestamp);
        variableRatePrincipal.checkpointTimestamp = block.timestamp;

        // calculate the proportion to distribute the yield and position fee
        uint256 amountTimespan;
        (amountTimespan, yield, fee) = _getVariableRatePortion(msg.sender, amount);

        // check slippage
        require(yield >= minYield, "Vault: slippage");

        ///@dev amount should be subtracted from principal here, because the balance should not be updated in
        ///     `_getVariableRatePortion` above just yet, for the proportion calculation
        variableRatePrincipal.principalTimespan -= amountTimespan;
        variableRatePrincipal.principal -= amount;

        // burn
        if (amount == principal) {
            delete variableRateTerms[msg.sender]; // delete at full withdrawn
        } else {
            // update the term
            variableRateTerms[msg.sender].principal = principal - amount;
        }

        // mint the yield
        IYieldManager(yieldManager).mintYield(msg.sender, yield);

        // transfer position fee
        IERC20(TOKEN).safeTransfer(msg.sender, fee);

        emit BurnVariableRate(msg.sender, amount, yield, fee);
    }

    /**
     * @notice Get the portion to distribute the yield with position fee
     * @dev This function is called by burnVariableRate and the rebalnce step of mintVariableRate
     * @dev The passed in values are assumed to be already checked
     * @param owner the owner of the principal
     * @param amount the amount of principal to burn
     * @return amountTimespan the amount with timespan
     * @return yield the amount of yield to distribute
     * @return fee the amount of position fee to distribute
     */
    function _getVariableRatePortion(
        address owner,
        uint256 amount
    ) internal view returns (uint256 amountTimespan, uint256 yield, uint256 fee) {
        // calculate the amount over time
        amountTimespan = amount * (block.timestamp - variableRateTerms[owner].mintTimestamp);

        // read protocol idle yield available to distribute
        ///@dev total yield >= locked yield should always hold, because yield is always locked or withdrawn from idle
        uint256 idleYield = IYieldManager(yieldManager).getIdleYield();

        // SLOAD to memory
        uint256 variableRateTotalPrincipalTimespan = variableRatePrincipal.principalTimespan;

        if (variableRateTotalPrincipalTimespan > 0) {
            // get the proportional yield to distribute
            yield = (idleYield * amountTimespan) / variableRateTotalPrincipalTimespan;

            // get the proportional position fee to distribute
            fee = (IERC20(TOKEN).balanceOf(address(this)) * amountTimespan) / variableRateTotalPrincipalTimespan;
        }
    }

    /*==============================================================
                            Helper Functions
    ==============================================================*/

    /// @inheritdoc IVault
    function getYieldToLock(uint256 amount) public view override returns (uint256 yieldToLock) {
        uint256 fixedRate = getFixedRate(amount);
        yieldToLock = (amount * fixedRate * MATURITY) / BASIS; // linear rate
    }

    /// @inheritdoc IVault
    function getMaxFixedRateAmount() external view override returns (uint256 amount) {
        uint256 idleYield = IYieldManager(yieldManager).getIdleYield();
        amount = (idleYield * BASIS) / (getFixedRate(0) * MATURITY);
    }

    /// @inheritdoc IVault
    function getFixedRate(uint256 amount) public view override returns (uint256 rate) {
        // read idle yield from yield stripped token
        uint256 idleYield = IYieldManager(yieldManager).getIdleYield();

        // read protocol total yield = idle yield + locked yield
        uint256 totalYield = idleYield + fixedRateLockedYield;

        // ratio = idle yield / total yield * BASIS
        uint256 ratio = totalYield > 0 ? (idleYield * BASIS) / totalYield : 0;

        // relative rate (upper end) using the current idle yield / total yield ratio
        uint256 relativeRate = _mapRatioToRelativeRate(ratio);

        // relativeRate / BASIS is now the relative yield, multiply by the current yield rate to get the fixed term rate
        rate = (IYieldManager(yieldManager).getYieldRate() * relativeRate) / BASIS;

        // using the current rate, lock the yield, update idle yield
        uint256 yieldToLock = (amount * rate * MATURITY) / BASIS; // linear rate

        // update the new idle yield, after locking the yield under the current rate
        idleYield = idleYield > yieldToLock ? idleYield - yieldToLock : 0;

        // with the new idle yield, calculate the new ratio
        ratio = totalYield > 0 ? (idleYield * BASIS) / totalYield : 0;

        // relative rate (lower end) using the new idle yield / total yield ratio
        relativeRate = _mapRatioToRelativeRate(ratio);

        // return the new rate at lower end
        rate = (IYieldManager(yieldManager).getYieldRate() * relativeRate) / BASIS;
    }

    /// @inheritdoc IVault
    function getTotalYield() public view override returns (uint256 totalYield) {
        totalYield = IYieldManager(yieldManager).getIdleYield() + fixedRateLockedYield;
    }

    /// @inheritdoc IVault
    function getCurrentVariableRate(address owner) external view override returns (uint256 yield, uint256 fee) {
        (, yield, fee) = _getVariableRatePortion(owner, variableRateTerms[owner].principal);
    }

    /**
     * @notice Map the ratio to the relative rate
     * @param ratio the ratio of idle yield to total yield
     * @return relativeRate the relative rate
     */
    function _mapRatioToRelativeRate(uint256 ratio) internal view returns (uint256 relativeRate) {
        // mapping from ratio (x) to rate (y), a piecewise linear function:
        // 0 <= x < r1:      y = s1 / BASIS * x
        // r1 <= x < r2:     y = s1 / BASIS * r1 + s2 / BASIS * (x - r1)
        // r2 <= x <= BASIS: y = s1 / BASIS * r1 + s2 / BASIS * (r2 - r1) + s3 / BASIS * (x - r2)
        // y is capped at BASIS (relative yield = 1)
        if (ratio < rateMapping.r1) {
            relativeRate = (rateMapping.s1 * ratio) / BASIS;
        } else if (ratio < rateMapping.r2) {
            relativeRate = (rateMapping.s1 * rateMapping.r1 + rateMapping.s2 * (ratio - rateMapping.r1)) / BASIS;
        } else {
            relativeRate =
                ((rateMapping.s1 * rateMapping.r1) +
                    (rateMapping.s2 * (rateMapping.r2 - rateMapping.r1)) +
                    (rateMapping.s3 * (ratio - rateMapping.r2))) /
                BASIS;
        }
        relativeRate = relativeRate > BASIS ? BASIS : relativeRate;
    }

    /*==============================================================
                              Admin Logic
    ==============================================================*/

    /// @inheritdoc IVault
    function updateYieldManager(address newYieldManager) external override onlyGuardianOrGovernor {
        yieldManager = newYieldManager;
        emit UpdateYieldManager(newYieldManager);
    }

    /// @inheritdoc IVault
    function updateCurve(
        uint256 s1,
        uint256 s2,
        uint256 s3,
        uint256 r1,
        uint256 r2
    ) external override onlyGuardianOrGovernor nonReentrant {
        require(r1 <= r2, "Vault: invalid curve");
        rateMapping = RateMapping(s1, s2, s3, r1, r2);
        emit UpdateCurve(s1, s2, s3, r1, r2);
    }

    /// @inheritdoc IVault
    function updatePositionFeeRate(uint256 fee) external override onlyGuardianOrGovernor nonReentrant {
        require(fee < BASIS, "Vault: invalid position fee");
        positionFeeRate = fee;
        emit UpdatePositionFeeRate(fee);
    }
}
