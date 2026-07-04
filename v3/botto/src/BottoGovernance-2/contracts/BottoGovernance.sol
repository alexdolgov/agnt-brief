// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "./libs/TransferHelper.sol";
import "./interfaces/IBottoGovernance.sol";

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

/**
 * @title BottoGovernance
 * @notice Staked BOTTO tokens represent a weighting for influence on governance issues
 * @author Eleven-Yellow BOTTO
 **/
contract BottoGovernance is
    OwnableUpgradeable,
    ReentrancyGuardUpgradeable,
    IBottoGovernance
{
    // Address of the botto token to be staked
    address public override botto;

    // Total staked amount of botto tokens
    uint256 public override totalStaked;

    // staked amount of botto tokens per user
    mapping(address => uint256) public override userStakes;

    /// @param botto_ ERC20 contract address of BOTTO token
    /// @dev BOTTO token contract address is initialized
    function initialize(address botto_) public initializer {
        __Ownable_init(msg.sender);
        __ReentrancyGuard_init();

        if (botto_ == address(0)) {
            revert BG_ADDRESS_ZERO();
        }

        botto = botto_;
    }

    /// @notice Stake BOTTO tokens for governance purposes
    /// @param amount_ the amount of BOTTO tokens to stake
    /// @dev Stake requires approval for governance contract to transfer & hold BOTTO tokens
    function stake(uint256 amount_) external nonReentrant {
        if (amount_ == 0) {
            revert BG_ZERO_AMOUNT();
        }

        TransferHelper.safeTransferFrom(
            botto,
            msg.sender,
            address(this),
            amount_
        );

        userStakes[msg.sender] += amount_;
        totalStaked += amount_;

        emit Staked(msg.sender, amount_);
    }

    /// @notice Unstake previously staked tokens
    /// @dev Existing token stake is transferred back to owner
    function unstake() external nonReentrant {
        uint256 amount = userStakes[msg.sender];
        if (amount == 0) {
            revert BG_ZERO_AMOUNT();
        }

        userStakes[msg.sender] = 0;
        totalStaked -= amount;

        TransferHelper.safeTransfer(botto, msg.sender, amount);

        emit Unstaked(msg.sender, amount);
    }

    /// @notice Sweeps excess tokens to a specified recipient address
    /// @param token_ address of token to recover
    /// @param recipient_  address for token beneficiary
    /// @dev Total token balance is recovered; only excess non-staked tokens in case of BOTTO
    function recover(address token_, address recipient_)
        external
        nonReentrant
        onlyOwner
    {
        uint256 _balance = IERC20(token_).balanceOf(address(this));

        if (token_ == botto) {
            _balance = _balance - totalStaked;
        }

        TransferHelper.safeTransfer(token_, recipient_, _balance);

        emit RecoveryTransfer(token_, _balance, recipient_);
    }
}
