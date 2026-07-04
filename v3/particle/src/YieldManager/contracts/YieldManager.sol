// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {ReentrancyGuard} from "../lib/openzeppelin-contracts/contracts/security/ReentrancyGuard.sol";
import {Multicall} from "../lib/openzeppelin-contracts/contracts/utils/Multicall.sol";
import {IERC20} from "../lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol";
import {SafeERC20} from "../lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";

import {IYieldManager} from "./interfaces/IYieldManager.sol";
import {IYieldStrippedToken} from "./interfaces/IYieldStrippedToken.sol";
import {BlastManager} from "./libraries/BlastManager.sol";
import {CoreRef} from "./core/CoreRef.sol";

contract YieldManager is IYieldManager, ReentrancyGuard, Multicall, CoreRef, BlastManager {
    using SafeERC20 for IERC20;

    /* Constants */
    uint256 public constant BASIS = 1 ether;

    /* Immutables */
    // solhint-disable var-name-mixedcase
    address public TOKEN;
    address public VAULT;

    /* Variables */
    uint256 public controlledIdleYield;
    uint256 public yieldRateMax;
    uint256 public yieldRate;
    uint256 public principal;
    uint256 public prevTimestamp;

    /* Events */
    event UpdateRate(uint256 rate);
    event UpdateMaxRate(uint256 rate);

    constructor(address token, address vault, address coreAddress) CoreRef(coreAddress) {
        TOKEN = token;
        VAULT = vault;
        yieldRateMax = BASIS;
    }

    /*==============================================================
                               Yield Logic
    ==============================================================*/

    /// @inheritdoc IYieldManager
    function mintYield(address recipient, uint256 yield) external override nonReentrant onlyVault {
        require(yield <= getIdleYield(), "Vault: overmint yield");
        IYieldStrippedToken(TOKEN).mint(recipient, yield);
        controlledIdleYield = controlledIdleYield > yield ? controlledIdleYield - yield : 0;
    }

    /// @inheritdoc IYieldManager
    function burnUnmaturedYield(address fixedRate, uint256 amount) external override nonReentrant onlyVault {
        IYieldStrippedToken(TOKEN).burnFrom(fixedRate, amount);
        controlledIdleYield += amount;
    }

    /// @inheritdoc IYieldManager
    function getIdleYield() public view override returns (uint256) {
        return controlledIdleYield + ((principal * (block.timestamp - prevTimestamp) * yieldRate) / BASIS);
    }

    /// @inheritdoc IYieldManager
    function getYieldRate() public view override returns (uint256) {
        return yieldRate;
    }

    /**
     * @notice update the controlled idle yield, based on yield rate, principal and time elapsed
     */
    function _updateIdleYield() internal {
        controlledIdleYield = getIdleYield();
        prevTimestamp = block.timestamp;
    }

    /*==============================================================
                           Principal Logging
    ==============================================================*/

    /// @inheritdoc IYieldManager
    function depositPrincipal(uint256 amount) external override nonReentrant onlyVault {
        _updateIdleYield();
        principal += amount;
    }

    /// @inheritdoc IYieldManager
    function withdrawPrincipal(uint256 amount) external override nonReentrant onlyVault {
        _updateIdleYield();
        principal = principal > amount ? principal - amount : 0;
    }

    /*==============================================================
                              Admin Logic
    ==============================================================*/

    /**
     * @notice update the yield rate
     * @param rate the new yield rate
     */
    function updateRate(uint256 rate) external onlyGuardianOrGovernor {
        require(rate <= yieldRateMax, "YieldManager: rate too large");
        _updateIdleYield();
        yieldRate = rate;
        emit UpdateRate(rate);
    }

    /**
     * @notice update the maximum yield rate
     * @param rate the new maximum yield rate
     */
    function updateMaxRate(uint256 rate) external onlyGovernor {
        yieldRateMax = rate;
        emit UpdateMaxRate(rate);
    }

    /*==============================================================
                               Modifiers
    ==============================================================*/

    modifier onlyVault() {
        require(msg.sender == VAULT, "YieldManager: not vault");
        _;
    }
}
