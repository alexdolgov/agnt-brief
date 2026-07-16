// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { Ownable, Ownable2Step } from "@openzeppelin/contracts/access/Ownable2Step.sol";
import { ReentrancyGuardTransient } from "@openzeppelin/contracts/utils/ReentrancyGuardTransient.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

import { BondingCurve } from "./BondingCurve.sol";
import { Token } from "./Token.sol";
import { IFactory } from "./interfaces/IFactory.sol";

/// @title  Factory
/// @notice Deploys (Token, BondingCurve) pairs at CREATE2-mineable addresses.
contract Factory is IFactory, Ownable2Step, ReentrancyGuardTransient {
    /* -------------------------------------------------------------------------- */
    /*                                   ERRORS                                   */
    /* -------------------------------------------------------------------------- */

    error ZeroAddress();
    error TotalFeeTooHigh(uint256 bps);
    error GraduationFeeTooHigh(uint256 wei_);
    error CreatorRewardTooHigh(uint256 wei_);
    error GraduationBudgetTooHigh(uint256 wei_);
    error CreationFeeTooHigh(uint256 wei_);
    error CreationFeeMismatch(uint256 expected, uint256 actual);
    error CreatorWindowTooLong(uint64 sec_);
    error InvalidConfig();
    error AddressMismatch(address expected, address actual);
    error FeeTransferFailed();
    error InvalidCreator(address creator);

    /* -------------------------------------------------------------------------- */
    /*                                  CONSTANTS                                 */
    /* -------------------------------------------------------------------------- */

    uint256 public constant MAX_FEE_BPS = 200;
    uint256 public constant MAX_GRADUATION_FEE = 1 ether;
    uint256 public constant MAX_CREATOR_REWARD = 1 ether;
    uint256 public constant MAX_GRADUATION_BUDGET = 1.5 ether;
    uint256 public constant MAX_CREATION_FEE = 0.01 ether;
    uint64 public constant MAX_CREATOR_WINDOW = 1 hours;

    /* -------------------------------------------------------------------------- */
    /*                                  STORAGE                                   */
    /* -------------------------------------------------------------------------- */

    CurveConfig public currentConfig;

    /// @inheritdoc IFactory
    uint256 public override creationFeeWei;

    /// @inheritdoc IFactory
    mapping(address curve => bool) public override isBondingCurve;

    /// @inheritdoc IFactory
    /// @dev Plain storage (not transient): the token reads via staticcall from its own
    ///      constructor's namespace, where transient storage is unavailable.
    address public override pendingCurve;

    /// @inheritdoc IFactory
    string public override pendingURI;

    /// @inheritdoc IFactory
    address public override deployerProxy;

    /* -------------------------------------------------------------------------- */
    /*                                CONSTRUCTOR                                 */
    /* -------------------------------------------------------------------------- */

    constructor(address owner_, CurveConfig memory cfg, uint256 creationFeeWei_) Ownable(owner_) {
        _setConfig(cfg);
        _setCreationFee(creationFeeWei_);
    }

    /* -------------------------------------------------------------------------- */
    /*                                ADMIN ACTIONS                               */
    /* -------------------------------------------------------------------------- */

    /// @inheritdoc IFactory
    function setConfig(CurveConfig calldata cfg) external override onlyOwner {
        _setConfig(cfg);
    }

    /// @inheritdoc IFactory
    function setCreationFee(uint256 wei_) external override onlyOwner {
        _setCreationFee(wei_);
    }

    /// @inheritdoc IFactory
    /// @dev Authorizes `proxy` to call {IToken.setEnsReverseName} on every token deployed
    ///      by this factory. Zero clears the authorization (only the creator path remains).
    ///      Scope of rotation:
    ///        - Tokens whose single-shot `ensReverseSet` slot is ALREADY burned are
    ///          immutable; no caller — old, new, or none — can set the reverse name.
    ///        - Tokens with an UNCLAIMED slot (e.g. deployed via direct `createToken`
    ///          without the atomic proxy) have their reverse name settable by whichever
    ///          address currently occupies this slot. A malicious owner could therefore
    ///          race those tokens' creators to claim a bogus reverse name; ENS-aware
    ///          wallets reject the display via forward-validation, so the worst outcome
    ///          is a visible but non-resolving reverse record — never fund loss.
    ///      Atomic-proxy deploys burn the slot in the same tx as the token creation, so
    ///      they have no race window.
    function setDeployerProxy(address proxy) external override onlyOwner {
        address old = deployerProxy;
        deployerProxy = proxy;
        emit DeployerProxyChanged(old, proxy);
    }

    /* -------------------------------------------------------------------------- */
    /*                               PUBLIC ACTIONS                               */
    /* -------------------------------------------------------------------------- */

    /// @inheritdoc IFactory
    function createToken(
        string calldata name,
        string calldata symbol,
        address creator,
        string calldata metadataURI,
        bool cashbackMode,
        bool creatorFirstBuy,
        bytes32 tokenSalt,
        bytes32 curveSalt
    ) external payable override nonReentrant returns (address token, address curve) {
        if (creator == address(0)) revert ZeroAddress();
        if (msg.value != creationFeeWei) revert CreationFeeMismatch(creationFeeWei, msg.value);

        CurveConfig memory cfg = currentConfig;
        // Reject creators that would brick the pull-payment claim path: this contract has
        // no `receive()`, and the migrator has no payout path either.
        if (creator == address(this) || creator == cfg.migrator) revert InvalidCreator(creator);

        (token, curve) =
            _deployPair(name, symbol, creator, metadataURI, cashbackMode, creatorFirstBuy, cfg, tokenSalt, curveSalt);

        isBondingCurve[curve] = true;
        emit TokenCreated(token, creator, curve, name, symbol);

        if (msg.value != 0) {
            // Bounded-gas forward: a malicious recipient can't brick createToken.
            (bool ok,) = payable(cfg.protocolFeeRecipient).call{ value: msg.value, gas: 30_000 }("");
            if (!ok) revert FeeTransferFailed();
        }
    }

    /* -------------------------------------------------------------------------- */
    /*                                   VIEWS                                    */
    /* -------------------------------------------------------------------------- */

    /// @inheritdoc IFactory
    function getCurrentConfig() external view override returns (CurveConfig memory) {
        return currentConfig;
    }

    /// @inheritdoc IFactory
    function predictAddresses(
        string calldata name,
        string calldata symbol,
        address creator,
        bytes32 tokenSalt,
        bytes32 curveSalt
    ) external view override returns (address token, address curve) {
        return _predictAddresses(name, symbol, creator, false, false, currentConfig, tokenSalt, curveSalt);
    }

    /// @notice Variant of {predictAddresses} that accounts for the launch flags. Both
    ///         `cashbackMode` and `creatorFirstBuy` enter the curve's CREATE2 init-code hash.
    function predictAddressesWithMode(
        string calldata name,
        string calldata symbol,
        address creator,
        bool cashbackMode,
        bool creatorFirstBuy,
        bytes32 tokenSalt,
        bytes32 curveSalt
    ) external view returns (address token, address curve) {
        return _predictAddresses(
            name, symbol, creator, cashbackMode, creatorFirstBuy, currentConfig, tokenSalt, curveSalt
        );
    }

    /* -------------------------------------------------------------------------- */
    /*                              INTERNAL HELPERS                              */
    /* -------------------------------------------------------------------------- */

    function _deployPair(
        string calldata name,
        string calldata symbol,
        address creator,
        string calldata metadataURI,
        bool cashbackMode,
        bool creatorFirstBuy,
        CurveConfig memory cfg,
        bytes32 tokenSalt,
        bytes32 curveSalt
    ) private returns (address token, address curve) {
        (address predictedToken, address predictedCurve) = _predictAddresses(
            name, symbol, creator, cashbackMode, creatorFirstBuy, cfg, tokenSalt, curveSalt
        );

        BondingCurve c = new BondingCurve{ salt: curveSalt }(
            _initParams(predictedToken, creator, cashbackMode, creatorFirstBuy, cfg)
        );
        if (address(c) != predictedCurve) revert AddressMismatch(predictedCurve, address(c));

        pendingCurve = address(c);
        pendingURI = metadataURI;
        // Mix `creator` into the effective token salt so two creators can share
        // (name, symbol, tokenSalt) without colliding at the same CREATE2 address.
        bytes32 effectiveTokenSalt = keccak256(abi.encode(tokenSalt, creator));
        Token t = new Token{ salt: effectiveTokenSalt }(name, symbol, address(this));
        pendingCurve = address(0);
        delete pendingURI;
        if (address(t) != predictedToken) revert AddressMismatch(predictedToken, address(t));

        token = address(t);
        curve = address(c);
    }

    function _initParams(
        address token,
        address creator,
        bool cashbackMode,
        bool creatorFirstBuy,
        CurveConfig memory cfg
    ) private view returns (BondingCurve.InitParams memory) {
        return BondingCurve.InitParams({
            token: token,
            creator: creator,
            factory: address(this),
            protocolFeeRecipient: cfg.protocolFeeRecipient,
            migrator: cfg.migrator,
            virtualTokenReserves: cfg.virtualTokenReserves,
            virtualEthReserves: cfg.virtualEthReserves,
            curveSupply: cfg.curveSupply,
            migrationSupply: cfg.migrationSupply,
            graduationEthTarget: cfg.graduationEthTarget,
            graduationFeeWei: cfg.graduationFeeWei,
            creatorGraduationRewardWei: cfg.creatorGraduationRewardWei,
            protocolFeeBps: cfg.protocolFeeBps,
            creatorFeeBps: cfg.creatorFeeBps,
            cashbackMode: cashbackMode,
            creatorWindowDuration: creatorFirstBuy ? cfg.creatorFirstBuyWindowSec : 0
        });
    }

    function _predictAddresses(
        string calldata name,
        string calldata symbol,
        address creator,
        bool cashbackMode,
        bool creatorFirstBuy,
        CurveConfig memory cfg,
        bytes32 tokenSalt,
        bytes32 curveSalt
    ) private view returns (address token, address curve) {
        bytes32 tokenInitHash = keccak256(
            abi.encodePacked(type(Token).creationCode, abi.encode(name, symbol, address(this)))
        );
        bytes32 effectiveTokenSalt = keccak256(abi.encode(tokenSalt, creator));
        token = _create2Address(effectiveTokenSalt, tokenInitHash);

        bytes32 curveInitHash = keccak256(
            abi.encodePacked(
                type(BondingCurve).creationCode,
                abi.encode(_initParams(token, creator, cashbackMode, creatorFirstBuy, cfg))
            )
        );
        curve = _create2Address(curveSalt, curveInitHash);
    }

    function _create2Address(bytes32 salt, bytes32 initHash) private view returns (address) {
        return address(uint160(uint256(keccak256(abi.encodePacked(bytes1(0xff), address(this), salt, initHash)))));
    }

    function _setConfig(CurveConfig memory cfg) private {
        if (
            cfg.protocolFeeRecipient == address(0) || cfg.migrator == address(0) || cfg.virtualTokenReserves == 0
                || cfg.virtualEthReserves == 0 || cfg.curveSupply == 0 || cfg.migrationSupply == 0
                || cfg.graduationEthTarget == 0
        ) revert InvalidConfig();
        if (cfg.virtualTokenReserves < cfg.curveSupply) revert InvalidConfig();
        // Curve must hold enough tokens to cover both the curve sale and the migration seed
        // (mirrors `Token.TOTAL_SUPPLY` to avoid a deployed-instance read at config time).
        if (cfg.curveSupply + cfg.migrationSupply > 1_000_000_000 * 1e18) revert InvalidConfig();

        uint256 totalBps = uint256(cfg.protocolFeeBps) + uint256(cfg.creatorFeeBps);
        if (totalBps > MAX_FEE_BPS) revert TotalFeeTooHigh(totalBps);
        if (cfg.graduationFeeWei > MAX_GRADUATION_FEE) revert GraduationFeeTooHigh(cfg.graduationFeeWei);
        if (cfg.creatorGraduationRewardWei > MAX_CREATOR_REWARD) {
            revert CreatorRewardTooHigh(cfg.creatorGraduationRewardWei);
        }

        uint256 gradBudget = cfg.graduationFeeWei + cfg.creatorGraduationRewardWei;
        if (gradBudget > MAX_GRADUATION_BUDGET) revert GraduationBudgetTooHigh(gradBudget);
        if (gradBudget >= cfg.graduationEthTarget) revert InvalidConfig();
        // Both graduation paths (ETH-target and supply-exhaust) must clear the budget.
        // Curve invariant gives `ethAtSupplyCap = V_e * curveSupply / (V_t - curveSupply)`.
        uint256 ethAtSupplyCap =
            Math.mulDiv(cfg.virtualEthReserves, cfg.curveSupply, cfg.virtualTokenReserves - cfg.curveSupply);
        if (ethAtSupplyCap < gradBudget) revert InvalidConfig();
        if (cfg.creatorFirstBuyWindowSec > MAX_CREATOR_WINDOW) {
            revert CreatorWindowTooLong(cfg.creatorFirstBuyWindowSec);
        }

        currentConfig = cfg;
        emit ConfigUpdated(cfg);
    }

    function _setCreationFee(uint256 wei_) private {
        if (wei_ > MAX_CREATION_FEE) revert CreationFeeTooHigh(wei_);
        creationFeeWei = wei_;
        emit CreationFeeUpdated(wei_);
    }
}
