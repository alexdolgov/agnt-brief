// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";

/// @title JPGD Staking
/// @notice This contract allows users to stake their JPGD and get a share of the protocol's treasury.
/// Staked JPGD can be withdrawn at any time before {snapshot} is called by the owner.
/// After the {snapshot} call, the staked JPGD will be locked with a linear vesting schedule defined in {vestingSchedule}.
/// The start of the vesting schedule is set during the first {increaseClaimableTokenAmount} call, which also distributes owner
/// defined assets.
/// The distribution can also happen in chunks, in which case {increaseClaimableTokenAmount} and {addClaimableToken} will
/// be called more than once.
contract JPGDStaking is Ownable, ReentrancyGuard, Pausable {
    using SafeERC20 for IERC20;

    error ZeroAddress();
    error ZeroAmount();
    error InsufficientStake();
    error NothingToClaim();
    error InvalidIndex(uint256 _idx);
    error InvalidCliff();

    event JPGDStaked(address indexed _staker, uint256 _amount);
    event JPGDUnstaked(address indexed _staker, uint256 _amount);
    event Snapshot(uint256 _totalStaked);
    event VestingStarted(
        uint256 _startingBlock,
        uint256 _cliffBlock,
        uint256 _endBlock
    );
    event NewClaimableToken(uint256 indexed _idx, IERC20 _token);
    event ClaimableTokenAmountIncreased(uint256 indexed _idx, uint256 _amount);
    event TokensClaimed(
        address indexed _from,
        uint256 indexed _tokenIdx,
        uint256 _claimedAmount
    );
    event JPGDClaimed(address indexed _staker, uint256 _claimedAmount);

    struct VestingSchedule {
        uint80 startingBlock;
        uint80 cliffBlocks;
        uint80 durationBlocks;
    }

    IERC20 public immutable JPGD;

    /// @notice The total amount of JPGD deposits, by address
    mapping(address => uint256) public stakedJPGD;
    /// @notice The addresses of the claimable assets
    mapping(uint256 => IERC20) public claimableTokens;
    /// @notice The amount of claimable tokens, by asset
    mapping(uint256 => uint256) public claimableAmounts;
    /// @notice The total amount of assets claimed, by address
    mapping(address => mapping(uint256 => uint256)) public userClaimedAmounts;
    /// @notice The total amount of vested JPGD claimed, by address
    mapping(address => uint256) public userClaimedVestedJPGD;

    uint256 public totalStakedJPGD;

    uint256 public claimableTokensLength;

    VestingSchedule public vestingSchedule;

    constructor(address _jpgd) Ownable(msg.sender) {
        if (_jpgd == address(0)) revert ZeroAddress();

        JPGD = IERC20(_jpgd);
    }

    /// @notice Allows users to stake their JPGD. It can be called more than once by the same address and only before the snapshot.
    /// @param _stakeFor The address to stake for.
    /// @param _jpgdAmount The amount of JPGD to deposit.
    function stake(
        address _stakeFor,
        uint256 _jpgdAmount
    ) external whenNotPaused nonReentrant {
        if (_stakeFor == address(0)) revert ZeroAddress();
        if (_jpgdAmount == 0) revert ZeroAmount();

        JPGD.transferFrom(msg.sender, address(this), _jpgdAmount);

        stakedJPGD[_stakeFor] += _jpgdAmount;
        totalStakedJPGD += _jpgdAmount;

        emit JPGDStaked(_stakeFor, _jpgdAmount);
    }

    /// @notice Allows users to unstake their JPGD. Can only be called before the snapshot.
    /// @param _jpgdAmount The amount to unstake
    /// @param _recipient The address to send the tokens to
    function unstake(
        uint256 _jpgdAmount,
        address _recipient
    ) external whenNotPaused nonReentrant {
        if (_jpgdAmount == 0) revert ZeroAmount();
        uint256 _stakedAmount = stakedJPGD[msg.sender];
        if (_jpgdAmount > _stakedAmount) revert InsufficientStake();

        stakedJPGD[msg.sender] = _stakedAmount - _jpgdAmount;
        totalStakedJPGD -= _jpgdAmount;

        JPGD.transfer(_recipient, _jpgdAmount);

        emit JPGDUnstaked(msg.sender, _jpgdAmount);
    }

    /// @notice Function used to claim assets available for distribution.
    /// @param _recipient The address to send assets to.
    function claimTokens(address _recipient) external whenPaused nonReentrant {
        uint256 _stakedAmount = stakedJPGD[msg.sender];
        if (_stakedAmount == 0) revert ZeroAmount();

        bool _hasClaimed;
        uint256 _length = claimableTokensLength;
        if (_length == 0) revert NothingToClaim();
        uint256 _totalStakedAmount = totalStakedJPGD;
        for (uint256 i; i < _length; ++i) {
            uint256 _claimedAmount = userClaimedAmounts[msg.sender][i];
            uint256 _userClaimableAmount = (_stakedAmount *
                claimableAmounts[i]) / _totalStakedAmount;
            uint256 _remainingAmount = _userClaimableAmount - _claimedAmount;

            if (_remainingAmount != 0) {
                _hasClaimed = true;
                userClaimedAmounts[msg.sender][i] = _userClaimableAmount;
                claimableTokens[i].safeTransfer(_recipient, _remainingAmount);

                emit TokensClaimed(msg.sender, i, _remainingAmount);
            }
        }

        if (!_hasClaimed) {
            revert NothingToClaim();
        }
    }

    /// @notice Allows users to claim vested JPGD. Can only be called after the cliff.
    /// @param _recipient The address to send the assets to
    function claimVestedJPGD(
        address _recipient
    ) external whenPaused nonReentrant {
        uint256 _stakedAmount = stakedJPGD[msg.sender];
        if (_stakedAmount == 0) revert ZeroAmount();

        VestingSchedule memory _schedule = vestingSchedule;
        if (
            _schedule.startingBlock == 0 ||
            _schedule.startingBlock + _schedule.cliffBlocks > block.number
        ) revert NothingToClaim();

        uint256 _elapsedBlocks = block.number - _schedule.startingBlock;
        uint256 _claimableJPGD = _elapsedBlocks > _schedule.durationBlocks
            ? _stakedAmount
            : (_stakedAmount * _elapsedBlocks) / _schedule.durationBlocks;

        uint256 _claimedJPGD = userClaimedVestedJPGD[msg.sender];

        if (_claimableJPGD != _claimedJPGD) {
            userClaimedVestedJPGD[msg.sender] = _claimableJPGD;
            JPGD.transfer(_recipient, _claimableJPGD - _claimedJPGD);

            emit JPGDClaimed(msg.sender, _claimableJPGD - _claimedJPGD);
        } else revert NothingToClaim();
    }

    /// @notice Allows the owner to stop deposits/withdrawals and set the vesting schedule
    function snapshot(
        uint80 _vestingCliffBlocks,
        uint80 _vestingDurationBlocks
    ) external onlyOwner whenNotPaused {
        _pause();

        if (_vestingDurationBlocks == 0) revert ZeroAmount();
        if (_vestingCliffBlocks > _vestingDurationBlocks) revert InvalidCliff();

        vestingSchedule = VestingSchedule({
            startingBlock: 0,
            cliffBlocks: _vestingCliffBlocks,
            durationBlocks: _vestingDurationBlocks
        });

        emit Snapshot(totalStakedJPGD);
    }

    /// @notice Allows the owner to add claimable tokens
    function addClaimableToken(address _token) external onlyOwner {
        if (_token == address(0)) revert ZeroAddress();

        uint256 _tokensLength = claimableTokensLength;
        claimableTokens[_tokensLength] = IERC20(_token);
        claimableTokensLength = _tokensLength + 1;

        emit NewClaimableToken(_tokensLength, IERC20(_token));
    }

    /// @notice Allows the owner to increase the amount of a specific claimable token
    function increaseClaimableTokenAmount(
        uint256 _tokenIndex,
        uint256 _amountToIncrease
    ) external onlyOwner whenPaused {
        if (_amountToIncrease == 0) revert ZeroAmount();

        IERC20 _token = claimableTokens[_tokenIndex];
        if (address(_token) == address(0)) revert InvalidIndex(_tokenIndex);

        VestingSchedule memory _vestingSchedule = vestingSchedule;
        if (_vestingSchedule.startingBlock == 0) {
            vestingSchedule.startingBlock = uint80(block.number);
            emit VestingStarted(
                block.number,
                _vestingSchedule.cliffBlocks + block.number,
                _vestingSchedule.durationBlocks + block.number
            );
        }

        _token.safeTransferFrom(msg.sender, address(this), _amountToIncrease);
        claimableAmounts[_tokenIndex] += _amountToIncrease;

        emit ClaimableTokenAmountIncreased(_tokenIndex, _amountToIncrease);
    }

    /// @notice Allows the owner to withdraw any token.
    /// Should only be called in case of emergency as it leaves the contract with not enough
    /// tokens to distribute and in a broken state until the withdrawn tokens are sent back
    function withdrawToken(IERC20 _token, uint256 _amount) external onlyOwner {
        _token.safeTransfer(msg.sender, _amount);
    }
}
