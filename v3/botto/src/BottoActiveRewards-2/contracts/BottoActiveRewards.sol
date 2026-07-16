// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "./libs/Constants.sol";
import "./libs/TransferHelper.sol";
import "./interfaces/IBottoActiveRewards.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/cryptography/EIP712Upgradeable.sol";

/**
 * @title BottoActiveRewards
 * @notice Contract for distributing rewards
 * @author Eleven-Yellow BOTTO
 **/
contract BottoActiveRewards is
    AccessControl,
    EIP712Upgradeable,
    ReentrancyGuardUpgradeable,
    IBottoActiveRewards
{
    // Invalidate claim permit
    uint256 public override claimNonce;

    // Invalidate recover permit
    uint256 public override recoverNonce;

    // Rewards being distributed in total
    uint256 public override totalRewardsDistributed;

    // Rewards being distributed per user
    mapping(address => uint256) public override userRewardsDistributed;

    function initialize() public initializer {
        __EIP712_init("BOTTO-ACTIVE-REWARDS", "1.0.0");
        __ReentrancyGuard_init();

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(Constants.REWARD_ROLE, msg.sender);
    }

    /// @notice Deposit native reward tokens
    receive() external payable {
        emit DepositNative(msg.sender, msg.value);
    }

    /// @notice Deposit ERC20 reward tokens
    /// @param token_ Asset of rewards
    /// @param amount_ Amount of rewards to be transferred to
    function deposit(address token_, uint256 amount_) external {
        if (token_ == address(0)) {
            revert BAR_ADDRESS_ZERO();
        }

        TransferHelper.safeTransferFrom(
            token_,
            msg.sender,
            address(this),
            amount_
        );

        emit DepositERC20(msg.sender, token_, amount_);
    }

    /// @notice Transfer reward tokens to a specified recipient address
    /// @param claimPermit_ All the data needed to construct the digest for claim validation
    /// @param signature_ Signed digest data
    /// @dev Only a signer having a REWARD_ROLE can execute that function
    function claim(RedeemPermit calldata claimPermit_, bytes memory signature_)
        external
        override
        nonReentrant
    {
        // Check if recipient is zero address for the money to not be lost
        if (claimPermit_.recipient == address(0)) {
            revert BAR_ADDRESS_ZERO();
        }

        // Check if permit is expired
        if (
            claimPermit_.kickoff > block.timestamp ||
            claimPermit_.deadline < block.timestamp
        ) {
            revert BAR_EXPIRED_PERMIT();
        }

        address signer = _verify(
            abi.encode(
                Constants.REDEEM_PERMIT_TYPEHASH,
                claimPermit_.amount,
                claimNonce,
                claimPermit_.currency,
                claimPermit_.kickoff,
                claimPermit_.deadline,
                claimPermit_.recipient,
                keccak256(claimPermit_.data)
            ),
            signature_
        );

        // Make sure that the signer is authorized to create rewards and permit is valid
        if (!hasRole(Constants.REWARD_ROLE, signer)) {
            revert BAR_NO_ROLE();
        }

        // Invalidate used claim permit
        claimNonce++;

        // Update rewards distribution counters
        totalRewardsDistributed += claimPermit_.amount;
        userRewardsDistributed[claimPermit_.recipient] += claimPermit_.amount;

        // Transfer reward amount
        _transferAmount(
            claimPermit_.currency,
            claimPermit_.recipient,
            claimPermit_.amount
        );

        emit Claim(msg.sender, claimPermit_);
    }

    /// @notice Sweeps tokens to a specified recipient address
    /// @param recoverPermit_ All the data needed to construct the digest for recover validation
    /// @param signature_ Signed digest data
    /// @dev Only a signer having a DEFAULT_ADMIN_ROLE can execute that function
    function recover(
        RecoverPermit calldata recoverPermit_,
        bytes memory signature_
    ) external override nonReentrant {
        // Check if recipient is zero address for the money to not be lost
        if (recoverPermit_.recipient == address(0)) {
            revert BAR_ADDRESS_ZERO();
        }

        // Check if permit is expired
        if (recoverPermit_.deadline < block.timestamp) {
            revert BAR_EXPIRED_PERMIT();
        }

        // Check if permit is expired
        if (recoverPermit_.amount == 0) {
            revert BAR_ZERO_AMOUNT();
        }

        address signer = _verify(
            abi.encode(
                Constants.RECOVER_PERMIT_TYPEHASH,
                recoverPermit_.amount,
                recoverPermit_.currency,
                recoverPermit_.deadline,
                recoverPermit_.recipient,
                recoverNonce
            ),
            signature_
        );

        // Make sure that the signer is authorized to create rewards and permit is valid
        if (!hasRole(DEFAULT_ADMIN_ROLE, signer)) {
            revert BAR_NO_ROLE();
        }

        // Invalidate used recover permit
        recoverNonce++;

        // Transfer recover amount
        _transferAmount(
            recoverPermit_.currency,
            recoverPermit_.recipient,
            recoverPermit_.amount
        );

        emit Recover(msg.sender, recoverPermit_);
    }

    /// @notice Reusable function for transfering native/ERC20 asset
    /// @param token_ The asset to be transferred (address(0) == native)
    /// @param recepient_ The address to receive the amount
    /// @param amount_ The amount to be transffered
    function _transferAmount(
        address token_,
        address recepient_,
        uint256 amount_
    ) internal {
        if (token_ == address(0)) {
            TransferHelper.safeTransferNative(recepient_, amount_);
        } else {
            TransferHelper.safeTransfer(token_, recepient_, amount_);
        }
    }

    /// @notice Recover signer address from digest and signature
    /// @param digest_ Hashed data that is to match the signature
    /// @param signature_ Signature that should match the digest
    function _verify(bytes memory digest_, bytes memory signature_)
        internal
        view
        returns (address)
    {
        return ECDSA.recover(_hashTypedDataV4(keccak256(digest_)), signature_);
    }
}
