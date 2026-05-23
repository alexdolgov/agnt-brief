pragma solidity 0.8.23;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

import "../../interfaces/IStakePool.sol";
import "../../interfaces/IAGaugeController.sol";

contract StakePoolDistributor is OwnableUpgradeable, ReentrancyGuardUpgradeable {
    using SafeERC20 for IERC20;

    /// @notice Role identifier for accounts that can trigger distributions
    address public distributorRole;

    IStakePool public immutable stakePool;
    IAGaugeController public immutable gaugeController;
    IERC20 public immutable anzen;
    uint256 public lastDistributionTime;

    /// @notice Emitted when rewards are distributed to the stake pool
    /// @param timestamp The time of distribution
    /// @param stakePool The address of the stake pool receiving rewards
    /// @param amount The amount of ANZEN tokens distributed
    event RewardsDistributed(uint256 timestamp, address indexed stakePool, uint256 amount);

    modifier onlyDistributor() {
        require(msg.sender == distributorRole || msg.sender == owner(), "StakePoolDistributor: not distributor");
        _;
    }

    constructor(
        address _stakePool,
        address _gaugeController,
        address _anzen
    ) initializer {
        require(_stakePool != address(0), "Zero address: stakePool");
        require(_gaugeController != address(0), "Zero address: gaugeController");
        require(_anzen != address(0), "Zero address: anzen");

        stakePool = IStakePool(_stakePool);
        gaugeController = IAGaugeController(_gaugeController);
        anzen = IERC20(_anzen);
    }

    function initialize(
        address _distributorRole
    ) external initializer {
        OwnableUpgradeable.__Ownable_init();
        __ReentrancyGuard_init();

        require(_distributorRole != address(0), "Zero address: distributor");

        distributorRole = _distributorRole;
    }

    /// @notice Distributes rewards for the next epoch based on gauge voting
    /// @dev Claims rewards from gauge controller and transfers them to stake pool
    function distributeRewards() external onlyDistributor nonReentrant {
        (, uint128 accumulatedAnzen,, ) = gaugeController.rewardData(address(this));

        if (accumulatedAnzen > 0) {
            // Claim rewards from gauge controller
            gaugeController.redeemMarketReward();

            stakePool.addRewardPool(address(anzen), block.timestamp, block.timestamp + 604800, accumulatedAnzen / 604800);

            lastDistributionTime = block.timestamp;

            // Transfer ownership of rewards to the stake pool
            anzen.safeTransfer(address(stakePool), accumulatedAnzen);

            emit RewardsDistributed(block.timestamp, address(stakePool), accumulatedAnzen);
        }
    }

    function setDistributorRole(address _distributorRole) external onlyOwner {
        distributorRole = _distributorRole;
    }
}
