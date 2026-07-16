// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

interface IBottoActiveRewards {
    struct RedeemPermit {
        uint256 amount; // amount to reward
        address currency; // using the zero address means Ether
        uint256 kickoff; // block epoch timestamp in seconds when the permit is valid
        uint256 deadline; // block epoch timestamp in seconds when the permit is expired
        address recipient; // address to receive the rewards
        bytes data; // additional data
    }

    struct RecoverPermit {
        uint256 amount; // amount to reward
        address currency; // using the zero address means Ether
        uint256 deadline; // block epoch timestamp in seconds when the permit is expired
        address recipient; // address to receive the funds
    }

    error BAR_NO_ROLE();
    error BAR_ZERO_AMOUNT();
    error BAR_ADDRESS_ZERO();
    error BAR_EXPIRED_PERMIT();

    event DepositNative(address depositor_, uint256 amount_);
    event DepositERC20(address depositor_, address token_, uint256 amount_);
    event Claim(address claimCaller, RedeemPermit claimPermit_);
    event Recover(address recoverCaller, RecoverPermit recoverPermit_);

    function claimNonce() external view returns (uint256);

    function recoverNonce() external view returns (uint256);

    function totalRewardsDistributed() external view returns (uint256);

    function userRewardsDistributed(address recipient_)
        external
        view
        returns (uint256);

    function initialize() external;

    function claim(RedeemPermit calldata permit_, bytes memory signature_)
        external;

    function deposit(address token_, uint256 amount_) external;

    function recover(
        RecoverPermit calldata recoverPermit_,
        bytes memory signature_
    ) external;
}
