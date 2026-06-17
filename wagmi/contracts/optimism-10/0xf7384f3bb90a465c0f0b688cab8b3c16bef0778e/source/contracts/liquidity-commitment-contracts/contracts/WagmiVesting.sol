// SPDX-License-Identifier: SAL-1.0
pragma solidity 0.8.18;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/Pausable.sol";

// import "hardhat/console.sol";
interface IGMI {
    function totalLockedWagmi() external returns (uint256);
}

contract WagmiVesting is Ownable, Pausable {
    using SafeERC20 for IERC20;

    struct UserInfo {
        uint256 amount;
        uint256 accAmtPerSecond;
        uint256 lastClaimTimestamp;
    }
    uint256 public constant MULTIPLICATOR = 1e8;
    uint256 public constant MAX_VESTING_PERIOD = 6900 hours;
    IERC20 public immutable wagmiToken;
    address public immutable gmiAddress;
    mapping(address => UserInfo) public users;
    uint256 public vestingPeriod = 690 hours;
    uint256 public totalVestingAmount;

    modifier gmiOnly() {
        require(msg.sender == gmiAddress, "forbidden");
        _;
    }
    event UpVestingPeriod(uint256 period);
    event Exit(address user, uint256 amount);
    event GetBackWagmi(address to, uint256 amount);
    event StartVesting(address user, uint256 amount);

    constructor(address _wagmiToken, address _multisig) {
        wagmiToken = IERC20(_wagmiToken);
        gmiAddress = msg.sender;
        _transferOwnership(_multisig);
    }

    function wagmiBalance() public view returns (uint256) {
        (bool success, bytes memory data) = address(wagmiToken).staticcall(
            abi.encodeWithSelector(IERC20.balanceOf.selector, address(this))
        );
        require(success && data.length >= 32);
        return abi.decode(data, (uint256)) - totalVestingAmount;
    }

    /**
     * @dev Updates the vesting period for tokens.
     * @param _vestingPeriod The new vesting period in seconds.
     * Emits an `UpVestingPeriod` event with the new vesting period.
     * Requirements:
     * - Only the contract owner can call this function.
     * - Vesting period cannot be set to zero.
     * - Vesting period cannot be greater than the maximum vesting period.
     */
    function updateVestingPeriod(uint256 _vestingPeriod) external onlyOwner {
        require(_vestingPeriod > 0, "vestingPeriod cannot be zero");
        require(_vestingPeriod <= MAX_VESTING_PERIOD, "vestingPeriod too large");
        vestingPeriod = _vestingPeriod;
        emit UpVestingPeriod(_vestingPeriod);
    }

    /**
     * @dev Start vesting `amount` of tokens for the specified user.
     * @param _user The address of the user to start vesting for.
     * @param amount The number of tokens to vest.
     * Requirements:
     * - Only the GMI contract can call this function.
     * Effects:
     * - Increases the user's total vested amount by `amount`.
     * - Calculates and updates the user's rate of token release per second based on `amount` and the vesting period.
     * - Sets the user's last claim timestamp to the current block timestamp.
     */
    function startVesting(address _user, uint256 amount) external gmiOnly {
        require(amount > 0, "startVesting:amount cannot be zero");
        UserInfo storage user = users[_user];
        uint256 unlockedAmount = calculateUnlockedAmount(user);
        user.amount += amount;
        user.accAmtPerSecond += (amount * MULTIPLICATOR) / vestingPeriod;
        uint256 timeDelta = (unlockedAmount * MULTIPLICATOR) / user.accAmtPerSecond;
        user.lastClaimTimestamp = block.timestamp - timeDelta;
        totalVestingAmount += amount;
        emit StartVesting(_user, amount);
    }

    /**
     * @dev Estimates the amount of tokens that can be claimed by the specified user.
     * @param _user The address of the user to estimate claim for.
     * Return values:
     * - `amount` : A uint256 representing the available vesting tokens that can be claimed.
     * Note: This function is a pure function with no side effects on the state.
     */
    function estimateClaim(address _user) external view returns (uint256 amount) {
        UserInfo memory user = users[_user];
        amount = calculateUnlockedAmount(user);
    }

    function calculateUnlockedAmount(
        UserInfo memory user
    ) private view returns (uint256 unlockedAmount) {
        unlockedAmount =
            (user.accAmtPerSecond * (block.timestamp - user.lastClaimTimestamp)) /
            MULTIPLICATOR;
        if (unlockedAmount > user.amount) {
            unlockedAmount = user.amount;
        }
    }

    /**
     * @dev Transfers the vested tokens for the caller.
     * @notice This function allows the caller to transfer their tokens if they are fully unlocked.
     */
    function exit() external {
        _exit(msg.sender, false);
    }

    /**
     * @dev Transfers the vested tokens for the caller in case of an early exit.
     * @notice This function allows the caller to exit early and transfer their vested tokens.
     */
    function exitEarly() external {
        _exit(msg.sender, true);
    }

    /**
     * @dev Internal function for exiting the vesting contract.
     * @param recipient The address of the recipient who wants to exit.
     * @param early A boolean indicating if the exit is happening early or not.
     *
     * Effects:
     * - Retrieves the user's vesting information from storage.
     * - Calculates the number of unlocked tokens based on the user's vesting schedule.
     * - Checks if the user has unlocked tokens and whether it is an early exit or not.
     * - Updates the vesting state for the user, setting their vested token amount to zero and updating the necessary variables.
     * - Transfers the unlocked tokens to the recipient.
     *
     * Emits:
     * - `Exit` event with details of the recipient and the amount transferred.
     */
    function _exit(address recipient, bool early) private whenNotPaused {
        UserInfo storage user = users[recipient];
        uint256 unlockedAmount = calculateUnlockedAmount(user);

        if (unlockedAmount > 0) {
            require(early || unlockedAmount == user.amount, "too early");
            totalVestingAmount -= user.amount;
            user.amount = 0;
            user.lastClaimTimestamp = block.timestamp;
            user.accAmtPerSecond = 0;
            wagmiToken.safeTransfer(recipient, unlockedAmount);
            emit Exit(recipient, unlockedAmount);
        }
    }

    /**
     * @dev Retrieves a specified amount of WAGMI tokens from the contract and transfers them to the specified address.
     *      The amount transferred will not exceed the current balance of WAGMI tokens held by the contract.
     * @param amount The amount of WAGMI tokens to transfer.
     * @param to The address to which the WAGMI tokens will be transferred.
     */
    function getBackWagmi(uint256 amount, address to) public onlyOwner {
        uint256 wFreeBalance = wagmiBalance() - IGMI(gmiAddress).totalLockedWagmi();
        if (amount > wFreeBalance) {
            amount = wFreeBalance;
        }
        wagmiToken.safeTransfer(to, amount);
        emit GetBackWagmi(to, amount);
    }

    /**
     * @dev Pauses/unpauses exit of vesting.
     * @param pause `true` to pause, `false` to unpause.
     * Modifiers:
     * - `onlyOwner`: Function can only be called by the contract owner.
     */
    function pauseExitVesting(bool pause) external onlyOwner {
        pause ? _pause() : _unpause();
    }
}
