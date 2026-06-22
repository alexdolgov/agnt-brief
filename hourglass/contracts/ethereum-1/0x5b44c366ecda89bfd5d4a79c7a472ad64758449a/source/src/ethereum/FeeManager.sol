// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "@openzeppelin-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin-upgradeable/access/AccessControlUpgradeable.sol";

contract FeeManager is UUPSUpgradeable, AccessControlUpgradeable {

    /// @notice Setter role
    bytes32 public constant SETTER = keccak256("SETTER");
    /// @notice Upgrader role
    bytes32 public constant UPGRADER = keccak256("UPGRADER");

    /// @notice Address where fees are sent
    address public feeAddress;
    /// @notice Platform fee, bps
    uint256 public platformFee;
    /// @notice Rewards fee, bps
    uint256 public rewardsFee;
    /// @notice Trade fee, bps
    uint256 public tradeFee;
    /// @notice Mature asset yield fee, bps
    uint256 public matureFee;

    /// @notice Denominates weights, bps to %
    uint256 public constant DENOMINATOR = 10000;

    /// @notice The address where rewards are sent for later deposit (distributor checkpointer)
    address public rewardsAddress;
    /// @notice Address of the rewards distributor
    address public rewardDistributor;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    function initialize(address _setter, address _upgrader, address _feeAddress) public initializer {
        __UUPSUpgradeable_init();
        __AccessControl_init();
        // __Context_init_unchained();
        // __ERC165_init_unchained();

        _grantRole(DEFAULT_ADMIN_ROLE, _upgrader);
        _grantRole(SETTER, _setter);
        _grantRole(UPGRADER, _upgrader);

        feeAddress = _feeAddress;
        rewardsFee = 100;
        matureFee = 2500;
    }

    /// @notice Override to allow upgrades by the upgrader role
    function _authorizeUpgrade(address newImplementation) internal override onlyRole(UPGRADER) {
    }

    /// @notice Set fees
    /// @param _platformFee Platform fee, bps
    /// @param _rewardsFee Rewards fee, bps
    /// @param _tradeFee Trade fee, bps
    /// @param _matureFee Mature asset yield fee, bps
    function setFees(
        uint256 _platformFee, 
        uint256 _rewardsFee, 
        uint256 _tradeFee, 
        uint256 _matureFee
    ) external onlyRole(SETTER) {
        require(_platformFee + _rewardsFee + _tradeFee <= DENOMINATOR / 2, "fees > 50%");
        platformFee = _platformFee;
        rewardsFee = _rewardsFee;
        tradeFee = _tradeFee;
        matureFee = _matureFee;

        emit FeesSet(_platformFee, _rewardsFee, _tradeFee, _matureFee);
    }

    /// @notice Set fee address
    /// @param _feeAddress Address where fees are sent
    function setFeeAddress(address _feeAddress) external onlyRole(SETTER) {
        feeAddress = _feeAddress;

        emit FeeAddressSet(_feeAddress);
    }

    /// @notice Set rewards address
    /// @param _rewardsAddress The address where rewards are sent for later deposit (distributor checkpointer)
    /// @param _rewardDistributor Address of the rewards distributor
    function setRewardsAddress(address _rewardsAddress, address _rewardDistributor) external onlyRole(SETTER) {
        if (_rewardsAddress != address(0)) {
            rewardsAddress = _rewardsAddress;
        }
        if (_rewardDistributor != address(0)) {
            rewardDistributor = _rewardDistributor;
        }
    }

    ////////// Events //////////
    event FeesSet(uint256 platformFee, uint256 rewardsFee, uint256 tradeFee, uint256 matureFee);
    event FeeAddressSet(address feeAddress);
}