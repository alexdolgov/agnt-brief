// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import '@openzeppelin/contracts/security/ReentrancyGuard.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import '@openzeppelin/contracts/access/Ownable.sol';
import '@openzeppelin/contracts/utils/math/Math.sol';

contract TokenVesting is ReentrancyGuard, Ownable {
    using SafeERC20 for IERC20;
    using Math for uint256;

    // Events
    event VestingScheduleCreated(
        uint256 indexed scheduleId,
        address indexed beneficiary,
        uint256 amountTotal,
        uint256 tgeAmount,
        uint256 cliffDuration,
        uint256 cliffAmount,
        uint256 vestingInterval,
        uint256 vestingRound
    );
    event VestingScheduleRevoked(uint256 indexed scheduleId);
    event TokensClaimed(uint256 indexed scheduleId, address indexed beneficiary, uint256 amount);

    struct VestingSchedule {
        // schedule created
        bool created;
        // beneficiary of tokens after they are released
        address payable beneficiary;
        // total amount of tokens to be released at the end of the vesting
        uint256 amountTotal;
        // tge amount to be released when tge start
        uint256 tgeAmount;
        // cliff duration in seconds
        uint256 cliffDuration;
        // cliff amount of tokens to be released at the end of the cliff
        uint256 cliffAmount;
        // interval of the vesting period in seconds
        uint256 vestingInterval;
        // vesting round
        uint256 vestingRound;
        // amount of tokens released
        uint256 released;
        // whether or not the vesting has been revoked
        bool revoked;
    }

    // address of the ERC20 token
    IERC20 public token;
    // tge time
    uint256 public tge;
    // total amount for vesting
    uint256 public vestingSchedulesTotalAmount;

    mapping(uint256 => VestingSchedule) public vestingSchedules;

    constructor(address _token) {
        // Check that the token address is not 0x0.
        require(_token != address(0));
        // Set the token address.
        token = IERC20(_token);
    }

    /**
     * @dev Reverts if the vesting schedule does not exist or has been revoked.
     */
    modifier onlyNotRevoked(uint256 scheduleId) {
        require(!vestingSchedules[scheduleId].revoked);
        _;
    }

    /**
     * @notice Update the TGE time
     */
    function updateTge(uint256 _tge) external onlyOwner {
        require(_tge >= tge, "TokenVesting: cannot turn back TGE time");
        tge = _tge;
    }

    /**
     * @notice Creates a new vesting schedule for a beneficiary.
     */
    function createVestingSchedule(
        uint256 _scheduleId,
        address payable _beneficiary,
        uint256 _amountTotal,
        uint256 _tgeAmount,
        uint256 _cliffDuration,
        uint256 _cliffAmount,
        uint256 _vestingInterval,
        uint256 _vestingRound
    ) external onlyOwner {
        require(!vestingSchedules[_scheduleId].created, "TokenVesting: schedule created");
        require(_beneficiary != address(0), "TokenVesting: beneficiary must be non-zero address");
        require(_amountTotal > 0, "TokenVesting: amount must be > 0");
        require(getRemainingAmount() >= _amountTotal, "TokenVesting: insufficient tokens");
        require(tge > 0, "TokenVesting: must set tge time");
        if (_vestingInterval == 0) {
            require(_amountTotal == _tgeAmount + _cliffAmount, "TokenVesting: cannot remaining token");
        } else {
            require(_amountTotal >= _tgeAmount + _cliffAmount, "TokenVesting: cannot exceed amount total");
            require(_vestingRound != 0, "TokenVesting: vesting interval must non-zero");
        }

        vestingSchedules[_scheduleId] = VestingSchedule(
            true,
            _beneficiary,
            _amountTotal,
            _tgeAmount,
            _cliffDuration,
            _cliffAmount,
            _vestingInterval,
            _vestingRound,
            0,
            false
        );

        vestingSchedulesTotalAmount = vestingSchedulesTotalAmount + _amountTotal;

        emit VestingScheduleCreated(_scheduleId, _beneficiary, _amountTotal, _tgeAmount, _cliffDuration, _cliffAmount, _vestingInterval, _vestingRound);
    }

    /**
     * @notice Revokes the vesting schedule for given identifier.
     * @param _scheduleId the vesting schedule identifier
     */
    function revoke(uint256 _scheduleId) external onlyOwner onlyNotRevoked(_scheduleId) {
        claim(_scheduleId);

        VestingSchedule storage vestingSchedule = vestingSchedules[_scheduleId];
        uint256 unreleased = vestingSchedule.amountTotal - vestingSchedule.released;
        vestingSchedulesTotalAmount = vestingSchedulesTotalAmount - unreleased;
        vestingSchedule.revoked = true;
        emit VestingScheduleRevoked(_scheduleId);
    }

    /**
     * @notice Claim vested amount of tokens.
     */
    function claim(uint256 _scheduleId) public nonReentrant onlyNotRevoked(_scheduleId) {
        VestingSchedule storage vestingSchedule = vestingSchedules[_scheduleId];
        require(
            msg.sender == vestingSchedule.beneficiary || msg.sender == owner(),
            "TokenVesting: only beneficiary and owner can claim vested tokens"
        );

        uint256 releasableAmount = _computeReleasableAmount(vestingSchedule);
        if (releasableAmount > 0) {
            vestingSchedule.released = vestingSchedule.released + releasableAmount;

            vestingSchedulesTotalAmount = vestingSchedulesTotalAmount - releasableAmount;
            token.safeTransfer(vestingSchedule.beneficiary, releasableAmount);
            emit TokensClaimed(_scheduleId, vestingSchedule.beneficiary, releasableAmount);
        }
    }

    /**
     * @dev Returns the amount of tokens that remaining.
     * @return the amount of tokens
     */
    function getRemainingAmount() public view returns (uint256) {
        return token.balanceOf(address(this)) - vestingSchedulesTotalAmount;
    }

    /**
     * @notice Computes the vested amount of tokens for the given vesting schedule identifier.
     * @return the vested amount
     */
    function computeReleasableAmount(uint256 _scheduleId) external view returns (uint256){
        VestingSchedule storage vestingSchedule = vestingSchedules[_scheduleId];
        return _computeReleasableAmount(vestingSchedule);
    }

    /**
     * @dev Computes the releasable amount of tokens for a vesting schedule.
     * @return the amount of releasable tokens
     */
    function _computeReleasableAmount(
        VestingSchedule memory vestingSchedule
    ) internal view returns (uint256) {
        if (vestingSchedule.revoked) {
            return 0;
        }
        uint256 currentTime = block.timestamp;
        uint256 releasable;
        // after tge
        if (currentTime < tge) {
            return 0;
        }
        releasable += vestingSchedule.tgeAmount;

        // after cliff
        uint256 cliffTime = vestingSchedule.cliffDuration + tge;
        if (currentTime < cliffTime) {
            return releasable - vestingSchedule.released;
        }
        releasable += vestingSchedule.cliffAmount;

        // no vesting
        if (vestingSchedule.vestingInterval == 0) {
            return releasable - vestingSchedule.released;
        }

        // vesting
        uint256 timeDelta = currentTime - cliffTime;
        uint256 vestedRound = timeDelta / vestingSchedule.vestingInterval;

        // release all
        if (vestedRound >= vestingSchedule.vestingRound) {
            return vestingSchedule.amountTotal - vestingSchedule.released;
        }

        // vesting round
        uint256 vestingAmount = vestingSchedule.amountTotal - vestingSchedule.tgeAmount - vestingSchedule.cliffAmount;
        uint256 vestingAmountPerRound = vestingAmount / vestingSchedule.vestingRound;
        uint256 vestedAmount = vestedRound * vestingAmountPerRound;
        releasable += vestedAmount;

        return releasable - vestingSchedule.released;
    }

}
