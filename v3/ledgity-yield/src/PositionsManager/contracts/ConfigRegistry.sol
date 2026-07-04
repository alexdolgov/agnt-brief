// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {IConfigRegistry} from "./interfaces/IConfigRegistry.sol";
import {Constants} from "./utils/Constants.sol";

contract ConfigRegistry is Initializable, IConfigRegistry {
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }
    address public owner;
    address public guardian;

    mapping(address => AssetCfg) public assetCfg;
    mapping(address => IdleCfg) public idleCfg; // asset => cfg

    address public oracleRouter;
    uint16 public hfTargetBps = 11000; // 110%
    uint16 public hfSafeBps = 12000; // 120%

    modifier onlyOwner() {
        _onlyOwner();
        _;
    }

    modifier onlyGuardianOrOwner() {
        _onlyGuardianOrOwner();
        _;
    }

    function _onlyOwner() internal view {
        if (msg.sender != owner) revert Unauthorized();
    }

    function _onlyGuardianOrOwner() internal view {
        if (msg.sender != guardian && msg.sender != owner) revert NotGuardian();
    }

    function initialize(address _owner, address _oracle) external initializer {
        _setOwner(_owner);
        _setGuardian(_owner);
        _setOracle(_oracle);
        // set default risk thresholds to match constructor-era defaults
        _setHfTarget(11000); // 110%
        _setHfSafe(12000); // 120%
        // delay remains 0 by default
    }

    // Timelock delay for sensitive changes (seconds). Default 0 = disabled.
    uint32 public delay;

    function setDelay(uint32 d) external onlyOwner {
        delay = d;
        emit DelaySet(d);
    }

    function setOwner(address o) external onlyOwner {
        _setOwner(o);
    }

    function _setOwner(address o) internal {
        owner = o;
        emit OwnerChanged(o);
    }

    function setGuardian(address g) external onlyOwner {
        _setGuardian(g);
    }

    function _setGuardian(address g) internal {
        guardian = g;
        emit GuardianChanged(g);
    }

    // Immediate oracle update only when delay==0
    function setOracle(address o) external onlyOwner {
        if (delay != 0) revert OracleTimelock();
        _setOracle(o);
    }

    function _setOracle(address o) internal {
        oracleRouter = o;
        emit OracleSet(o);
    }

    struct PendingOracle {
        address next;
        uint64 eta;
    }

    PendingOracle public pendingOracle;

    function proposeOracle(address next) external onlyOwner {
        if (delay == 0) revert NoTimelock();
        uint64 eta = uint64(block.timestamp + delay);
        pendingOracle = PendingOracle({next: next, eta: eta});
        emit OracleChangeProposed(next, eta);
    }

    function executeOracle() external onlyOwner {
        if (pendingOracle.eta == 0 || block.timestamp < pendingOracle.eta) {
            revert TimelockNotReached();
        }
        oracleRouter = pendingOracle.next;
        emit OracleChangeExecuted(pendingOracle.next);
        delete pendingOracle;
    }

    function setAsset(address asset, AssetCfg calldata c) external onlyOwner {
        // Sanity checks: bps fields must be within [0, 10000]
        if (c.ltvBps > Constants.BPS || c.reserveFactorBps > Constants.BPS) revert InvalidBps();
        AssetCfg memory prev = assetCfg[asset];
        if (delay != 0) {
            if (c.ltvBps > prev.ltvBps) revert LTVTimelock(); // increases must go through timelock
        }
        assetCfg[asset] = c;
        emit AssetSet(asset, c);
    }

    function setIdleCfg(address asset, IdleCfg calldata c) external onlyOwner {
        // No timelock requirement by default; governance can choose to add if needed externally
        if (c.maxDepositBps > Constants.BPS) revert InvalidBps();
        idleCfg[asset] = c;
        emit IdleCfgSet(asset, c);
    }

    struct PendingLtv {
        uint16 ltvBps;
        uint64 eta;
    }

    mapping(address => PendingLtv) public pendingLtv;

    function proposeAssetLtv(address asset, uint16 newLtvBps) external onlyOwner {
        AssetCfg memory prev = assetCfg[asset];
        if (delay == 0) revert NoTimelock();
        if (newLtvBps > Constants.BPS) revert InvalidBps();
        if (newLtvBps < prev.ltvBps) revert OnlyIncrease();
        uint64 eta = uint64(block.timestamp + delay);
        pendingLtv[asset] = PendingLtv({ltvBps: newLtvBps, eta: eta});
        emit LtvChangeProposed(asset, prev.ltvBps, newLtvBps, eta);
    }

    function executeAssetLtv(address asset) external onlyOwner {
        PendingLtv memory p = pendingLtv[asset];
        if (p.eta == 0 || block.timestamp < p.eta) revert TimelockNotReached();
        AssetCfg storage cfg = assetCfg[asset];
        cfg.ltvBps = p.ltvBps;
        emit LtvChangeExecuted(asset, p.ltvBps);
        delete pendingLtv[asset];
        emit AssetSet(asset, cfg);
    }

    function getAssetCfg(address asset) external view returns (AssetCfg memory) {
        return assetCfg[asset];
    }

    function getIdleCfg(address asset) external view returns (IdleCfg memory) {
        return idleCfg[asset];
    }

    function setHFTarget(uint16 bps) external onlyGuardianOrOwner {
        if (bps < Constants.BPS) revert HealthFactorMinimum();
        _setHfTarget(bps);
    }

    function _setHfTarget(uint16 bps) internal {
        hfTargetBps = bps;
        emit HFTargetSet(bps);
    }

    function setHFSafe(uint16 bps) external onlyGuardianOrOwner {
        if (bps < hfTargetBps) revert HealthFactorMinimum();
        _setHfSafe(bps);
    }

    function _setHfSafe(uint16 bps) internal {
        hfSafeBps = bps;
        emit HFSafeSet(bps);
    }
}
