// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

import "./libraries/NoDelegateCallUpgradable.sol";
import "./interfaces/INativePoolFactory.sol";
import "./Blacklistable.sol";
import {PeripheryState} from "./libraries/PeripheryState.sol";

import "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "./storage/NativePoolFactoryStorage.sol";

contract NativePoolFactory is
    INativePoolFactory,
    OwnableUpgradeable,
    NoDelegateCallUpgradable,
    PausableUpgradeable,
    UUPSUpgradeable,
    NativePoolFactoryStorage,
    ReentrancyGuardUpgradeable
{
    // bytes4(keccak256("initialize((address,address,address,address,bool,bool,uint256[],address[],address[],uint256[]),address)"));
    bytes4 public constant INIT_SELECTOR = 0x8b1efc71;
    // bytes4(keccak256("initialize(string,address,address,address,address,address)"));
    bytes4 public constant INIT_RFQ_SELECTOR = 0x8182e707;
    // bytes4(keccak256("upgradeTo(address)"));
    bytes4 public constant UPGRADE_SELECTOR = 0x3659cfe6;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize() public initializer {
        __Ownable_init();
        __NoDelegateCall_init();
        __Pausable_init();
        __UUPSUpgradeable_init();
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    function getImplementation() public view returns (address) {
        return _getImplementation();
    }

    function setPauser(address _pauser) external onlyOwner {
        pauser = _pauser;
    }

    modifier onlyOwnerOrPauser() {
        if (msg.sender != owner() && msg.sender != pauser) {
            revert onlyOwnerOrPauserCanCall();
        }
        _;
    }

    function pause() external onlyOwnerOrPauser {
        _pause();
    }

    function pausePools(address[] calldata pools) external onlyOwnerOrPauser {
        for (uint i = 0; i < pools.length; ) {
            NativePool(pools[i]).pause();
            unchecked {
                i++;
            }
        }
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function addMultiPoolTreasury(address treasury) external onlyOwner whenNotPaused {
        if (isMultiPoolTreasury[treasury]) revert AlreadyMultiPoolTreasury();
        isMultiPoolTreasury[treasury] = true;
        emit AddMultiPoolTreasury(treasury);
    }

    function removeMultiPoolTreasury(address treasury) external onlyOwner whenNotPaused {
        if (!isMultiPoolTreasury[treasury]) revert NotMultiPoolTreasury();
        isMultiPoolTreasury[treasury] = false;
        emit RemoveMultiPoolTreasury(treasury);
    }

    function createNewPool(
        NewPoolConfig calldata poolConfig
    ) external override whenNotPaused nonReentrant returns (address) {
        if (
            treasuryToPool[poolConfig.treasuryAddress] != address(0) && !isMultiPoolTreasury[poolConfig.treasuryAddress]
        ) {
            revert NotMultiPoolTreasuryAndBindedToOtherPool(poolConfig.treasuryAddress);
        }
        if (registry == address(0)) revert RegistryNotSet();
        if (poolConfig.routerAddress == address(0)) revert ZeroAddressInput();
        address pool = address(
            new ERC1967Proxy(poolImplementation, abi.encodeWithSelector(INIT_SELECTOR, poolConfig, registry))
        );

        Blacklistable(address(pool)).updateBlacklister(poolConfig.poolOwnerAddress);
        OwnableUpgradeable(address(pool)).transferOwnership(poolConfig.poolOwnerAddress);

        pools[address(pool)] = true;
        treasuryToPool[poolConfig.treasuryAddress] = address(pool);
        poolArray.push(address(pool));

        emit PoolCreated(
            poolConfig.treasuryAddress,
            poolConfig.poolOwnerAddress,
            poolConfig.signerAddress,
            address(pool),
            poolImplementation
        );
        return pool;
    }

    function upgradePools(address[] calldata _pools, address[] calldata _impls) external override onlyOwner {
        if (_pools.length != _impls.length) revert InputArrayLengthMismatch();

        for (uint256 i = 0; i < _pools.length; ) {
            _upgradePool(_pools[i], _impls[i]);

            unchecked {
                i++;
            }
        }
    }

    function upgradePool(address _pool, address _impl) external override onlyOwner {
        _upgradePool(_pool, _impl);
    }

    function setPoolImplementation(address newPoolImplementation) external override onlyOwner {
        poolImplementation = newPoolImplementation;
    }

    function _upgradePool(address _pool, address _impl) internal {
        (bool success, ) = _pool.call(abi.encodeWithSelector(UPGRADE_SELECTOR, _impl));

        if (!success) revert PoolUpgradeFailed();
        emit PoolUpgraded(_pool, _impl);
    }

    function setRegistry(address _registry) public onlyOwner {
        if (_registry == address(0)) revert ZeroAddressInput();
        registry = _registry;
    }

    function getPool(address treasuryAddress) public view override returns (address) {
        return treasuryToPool[treasuryAddress];
    }

    function verifyPool(address poolAddress) public view override returns (bool) {
        return pools[poolAddress];
    }

    function isRfqPool(address poolAddress) public view returns (bool) {
        return rfqPools[poolAddress];
    }

    function createNewRfqPool(
        address rfgPoolImpl,
        string calldata name,
        address owner,
        address signer,
        address router,
        address treasury
    ) public whenNotPaused onlyOwner returns (address) {
        address wethAddr = PeripheryState(router).WETH9();
        address pool = address(
            new ERC1967Proxy(
                rfgPoolImpl,
                abi.encodeWithSelector(INIT_RFQ_SELECTOR, name, owner, signer, router, wethAddr, treasury)
            )
        );
        rfqPools[pool] = true;
        poolArray.push(pool);
        emit RfqPoolCreated(pool, rfgPoolImpl);
        return pool;
    }
}
