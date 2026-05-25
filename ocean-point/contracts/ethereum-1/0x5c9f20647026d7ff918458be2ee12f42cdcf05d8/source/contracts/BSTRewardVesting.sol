pragma solidity 0.8.14;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract BSTRewardVesting is OwnableUpgradeable {
    struct VestInfo {
        uint256 vestAmount;
        uint256 claimedAmount;
        uint256 startVest;
        uint256 endVest;
    }

    IERC20 private _bstContract;
    address private _bsptStakingContract;
    mapping(address => mapping(address => VestInfo[])) private _vestingInfo;
    mapping(address => bool) private _canWithdrawReward;

    uint256 private _vestPeriod;

    event AddedVestInfo(address property, address user, uint256 reward);
    event BurnedReward(
        address property,
        address user,
        uint256 index,
        uint256 reward
    );
    event ClaimReward(address property, address user, uint256 reward);
    event VestPeriod(uint256 period);

    constructor() {
        // Only interact with this contract through proxy
        _disableInitializers();
    }

    /// @notice Initialize contract. Can only be called once
    /// @param bstContract Address BST token
    /// @param bsptStakingContract Address of BSPT staking contract
    /// @param owner Address of owner of this contract
    function initialize(
        address bstContract,
        address bsptStakingContract,
        address owner,
        uint256 vestPeriod
    ) external initializer {
        require(
            bstContract != address(0) &&
                bsptStakingContract != address(0) &&
                owner != address(0) &&
                vestPeriod > 0,
            "BSTRewardVesting: Address iz zero"
        );
        _bstContract = IERC20(bstContract);
        _bsptStakingContract = bsptStakingContract;
        _transferOwnership(owner);
        _vestPeriod = vestPeriod * 24 * 60 * 60;
    }

    function addVestingInfo(
        address property,
        address user,
        uint256 reward
    ) external returns (bool) {
        require(
            msg.sender == _bsptStakingContract,
            "BSTRewardVesting: Only BSPT staking contract can add vesting"
        );
        if (reward > 0) {
            require(
                _bstContract.transferFrom(
                    _bsptStakingContract,
                    address(this),
                    reward
                ),
                "BSTRewardVesting: Couldn't transfer BST"
            );
            _vestingInfo[property][user].push(
                VestInfo(
                    reward,
                    0,
                    block.timestamp,
                    block.timestamp + _vestPeriod
                )
            );
            emit AddedVestInfo(property, user, reward);
        }
        return true;
    }

    function enableRewardForProperty(address property) external onlyOwner {
        _canWithdrawReward[property] = true;
    }

    function burnReward(
        address property,
        address user,
        uint256 index
    ) external onlyOwner {
        require(
            !_canWithdrawReward[property],
            "BSTRewardVesting: Can't burn because reward can be claimed"
        );
        VestInfo storage vestingInfo = _vestingInfo[property][user][index];
        uint256 toBurn = vestingInfo.vestAmount - vestingInfo.claimedAmount;
        require(
            _bstContract.transfer(
                address(0x000000000000000000000000000000000000dEaD),
                toBurn
            ),
            "BSTRewardVesting: Couldn't transfer BST to zero address"
        );
        vestingInfo.claimedAmount = vestingInfo.vestAmount;
        emit BurnedReward(property, user, index, toBurn);
    }

    function claimReward(address property) external {
        require(
            _canWithdrawReward[property],
            "BSTRewardVesting: Reward claiming is not yet enabled"
        );
        uint256 totalAmount = 0;
        for (
            uint256 i = 0;
            i < _vestingInfo[property][msg.sender].length;
            i++
        ) {
            VestInfo storage vestInfo = _vestingInfo[property][msg.sender][i];
            if (vestInfo.claimedAmount == vestInfo.vestAmount) {
                continue;
            }
            uint256 reward = _calculateRemainingReward(vestInfo);
            totalAmount += reward;
            vestInfo.claimedAmount += reward;
        }
        require(
            _bstContract.transfer(msg.sender, totalAmount),
            "BSTRewardVesting: Couldn't send reward"
        );
        emit ClaimReward(property, msg.sender, totalAmount);
    }

    // Vest period should be in days
    function changeVestPeriod(uint256 newVestPeriod) external onlyOwner {
        _vestPeriod = newVestPeriod * 24 * 60 * 60;
        emit VestPeriod(newVestPeriod);
    }

    function _calculateRemainingReward(VestInfo memory vestInfo)
        private
        view
        returns (uint256)
    {
        return
            _calculateUnlockedRewardAtTimestamp(vestInfo, block.timestamp) -
            vestInfo.claimedAmount;
    }

    function _calculateUnlockedRewardAtTimestamp(
        VestInfo memory vestInfo,
        uint256 time
    ) private pure returns (uint256) {
        if (vestInfo.endVest <= time) {
            return vestInfo.vestAmount;
        }
        return
            (vestInfo.vestAmount * (time - vestInfo.startVest)) /
            (vestInfo.endVest - vestInfo.startVest);
    }

    function calculateRemainingReward(
        address property,
        address user,
        uint256 index
    ) public view returns (uint256) {
        if (!_canWithdrawReward[property]) {
            return 0;
        }
        VestInfo memory vestInfo = _vestingInfo[property][user][index];
        return _calculateRemainingReward(vestInfo);
    }

    function calculateRemainingRewardForProperty(address property, address user)
        external
        view
        returns (uint256)
    {
        uint256 totalAmount = 0;
        for (uint256 i = 0; i < _vestingInfo[property][user].length; i++) {
            totalAmount += calculateRemainingReward(property, user, i);
        }
        return totalAmount;
    }

    function calculateUnlockedRewardAtTimestamp(
        address property,
        address user,
        uint256 index,
        uint256 time
    ) public view returns (uint256) {
        VestInfo memory vestInfo = _vestingInfo[property][user][index];
        return _calculateUnlockedRewardAtTimestamp(vestInfo, time);
    }

    function isRewardEnabled(address property) external view returns (bool) {
        return _canWithdrawReward[property];
    }

    function numberOfEntries(address property, address user)
        external
        view
        returns (uint256)
    {
        return _vestingInfo[property][user].length;
    }

    function getVestingInfo(
        address property,
        address user,
        uint256 index
    ) external view returns (VestInfo memory) {
        return _vestingInfo[property][user][index];
    }

    function getVestingPeriod() external view returns (uint256) {
        return _vestPeriod;
    }

    function calculateTotalReward(address property, address user)
        external
        view
        returns (uint256)
    {
        uint256 totalAmount = 0;
        for (uint256 i = 0; i < _vestingInfo[property][user].length; i++) {
            totalAmount += _vestingInfo[property][user][i].vestAmount;
        }
        return totalAmount;
    }

    function calculateAlreadyClaimedReward(address property, address user)
        external
        view
        returns (uint256)
    {
        uint256 totalAmount = 0;
        for (uint256 i = 0; i < _vestingInfo[property][user].length; i++) {
            totalAmount += _vestingInfo[property][user][i].claimedAmount;
        }
        return totalAmount;
    }
}
