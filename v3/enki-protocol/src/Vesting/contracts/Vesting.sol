//SPDX-License-Identifier: MIT
pragma solidity 0.8.24;
        
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "./interface/IVesting.sol";
import "./Base.sol";


/// @title Vesting
/// @notice Vesting contract is used to lock eMetis for specified duration
contract Vesting is IVesting, ReentrancyGuardUpgradeable, Base {
    using SafeERC20 for IERC20;

    struct UserInfo {
        /// @notice staked ENKI balance
        uint256 balance;
        /// @notice cumulative claimable amount of eMetis
        /// @dev equals to the sum of vested eMetis
        uint256 cumulativeClaimAmount;
        /// @notice claimed amount of eMetis
        uint256 claimedAmount;
        /// @notice last vesting time
        uint256 lastVestingTime;
        /// @notice vested eMetis balance
        uint256 eMetisBalance;
    }

    address public seMetis;
    IERC20 public enki;
    IERC20 public eMetis;
    mapping(address => UserInfo) public userInfos;

    /// @notice Emits when user eMetis is deposited from seMetis vault (when user withdraws eMetis from the vault)
    /// @param user vesting user
    /// @param amount eMetis amount
    event Vested(address indexed user, uint256 amount);

    /// @notice Emits when user claims eMetis
    /// @param user vesting user
    /// @param amount eMetis amount
    event Claimed(address indexed user, uint256 amount);

    /// @notice Emits when user stakes ENKI
    /// @param user vesting user
    /// @param amount ENKI amount
    event Staked(address indexed user, uint256 amount);

    /// @notice Emits when user unstakes ENKI
    /// @param user vesting user
    /// @param amount ENKI amount
    event Unstaked(address indexed user, uint256 amount);

    /// @notice initialize the contract
    /// @param _config config contract address
    function initialize(address _config) external initializer {
        address[] memory _holdTokens = new address[](2);
        _holdTokens[0] = IConfig(_config).enki();
        _holdTokens[1] = IConfig(_config).eMetis();
        __Base_init(_config, _holdTokens);
        enki = IERC20(_holdTokens[0]);
        eMetis = IERC20(_holdTokens[1]);
        seMetis = config.seMetis();
    }

    /// @notice Deposit eMetis for specified user, user can stake ENKI to claim eMetis
    /// @param user vesting user
    /// @param amount asset amount
    function deposit(address user, uint256 amount) internalOnly(seMetis) external override {
        require(user != address(0), "Vesting: zero address");
        require(amount > 0, "Vesting: amount is zero");
        _updateVesting(user);

        eMetis.safeTransferFrom(msg.sender, address(this), amount);
        userInfos[user].eMetisBalance += amount;

        emit Vested(user, amount);
    }

    /// @notice Claims the vested eMetis for the message sender.
    /// @dev This function updates the vesting for the message sender, calculates the claimable amount,
    /// updates the claimed amount for the user, transfers the eMetis to the user, emits a Claimed event,
    /// and returns the claimed amount.
    function claim() nonReentrant external {
        _claim();
    }

    /// @notice stake ENKI to claim eMetis
    /// @param amount ENKI amount
    function stake(uint256 amount) external nonReentrant forUser {
        _updateVesting(msg.sender);
        enki.safeTransferFrom(msg.sender, address(this), amount);
        userInfos[msg.sender].balance += amount;

        emit Staked(msg.sender, amount);
    }

    /// @notice unstake ENKI, all ENKI will be unstaked
    function unstake() external nonReentrant forUser {
        UserInfo storage user = userInfos[msg.sender];
        _claim();
        uint256 amount = user.balance;
        enki.safeTransfer(msg.sender, amount);
        user.balance = user.cumulativeClaimAmount = user.claimedAmount = user.lastVestingTime = 0;
        emit Unstaked(msg.sender, amount);
    }

    /// @notice return the estimated time for all eMetis to be claimable
    /// @param account user account
    function estimateFinishTime(address account) external view returns (uint256) {
        UserInfo memory user = userInfos[account];
        uint256 a = _amountOfDuration(user);
        require(a > 0, "Vesting: no eMetis or no ENKI staked");
        uint256 time = config.vestingDuration() * user.eMetisBalance / a;
        return user.lastVestingTime + time;
    }

    /// @notice Calculates the amount of eMetis that will become claimable for a specific user over the course of the `vestingDuration`.
    /// @param account The address of the user account for which the calculation is being performed.
    function amountOfDuration(address account) external view returns (uint256) {
        return _amountOfDuration(userInfos[account]);
    }

    /// @notice return the claimable amount of eMetis
    /// @param _account user account
    function claimable(address _account) public view returns (uint256) {
        UserInfo memory user = userInfos[_account];
        return user.cumulativeClaimAmount - user.claimedAmount + _getNextClaimableAmount(_account);
    }

    /// @notice claim claimable eMetis
    function _claim() internal returns (uint256) {
        _updateVesting(msg.sender);
        uint256 amount = claimable(msg.sender);
        userInfos[msg.sender].claimedAmount += amount;
        eMetis.safeTransfer(msg.sender, amount);
        emit Claimed(msg.sender, amount);
        return amount;
    }

    /// @notice Calculates the amount of eMetis that will become claimable for a specific user over the course of the `vestingDuration`.
    /// @param user The user for which the calculation is being performed.
    /// @dev return the minimum value of staked ENKI and sum of vested eMetis amount
    function _amountOfDuration(UserInfo memory user) internal pure returns (uint256) {
        return Math.min(user.eMetisBalance + user.cumulativeClaimAmount, user.balance / 10);
    }

    /// @notice Updates the vesting information for a user.
    /// @param account The user's account.
    /// @dev This function is called when a user deposits, claims, or unstakes. It calculates the next claimable amount,
    /// updates the last vesting time, cumulative claim amount, and eMetis balance for the user.
    function _updateVesting(address account) internal {
        UserInfo storage user = userInfos[account];
        uint256 amount = _getNextClaimableAmount(account);
        user.lastVestingTime = block.timestamp;
        user.cumulativeClaimAmount += amount;
        user.eMetisBalance -= amount;
    }
    /// @notice Calculates the next claimable amount of eMetis for a user.
    /// @param account The user's account.
    /// @return The claimable amount of eMetis from the last vesting time to now.
    /// @dev This function calculates the time difference from the last vesting time to now, calculates the claimable amount
    /// based on the vested amount and the time difference, and ensures that the claimable amount does not exceed the user's eMetis balance.
    function _getNextClaimableAmount(address account) internal view returns (uint256) {
        UserInfo memory user = userInfos[account];
        uint256 timeDiff = block.timestamp - user.lastVestingTime;

        if (user.balance == 0) { return 0; }

        uint256 claimableAmount = _amountOfDuration(user) * timeDiff / config.vestingDuration();
        return Math.min(claimableAmount, user.eMetisBalance);
    }
}