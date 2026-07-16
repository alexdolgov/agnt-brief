// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import "@aave/core-v3/contracts/flashloan/base/FlashLoanSimpleReceiverBase.sol";
import "@aave/core-v3/contracts/interfaces/IPoolAddressesProvider.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./EzAuction/EzAuction.sol";

contract FlashAuctionBuyer is FlashLoanSimpleReceiverBase, Ownable {
    using SafeERC20 for IERC20;

    struct AuctionData {
        address[] assets;
        uint256 deadline;
    }

    struct SocketData {
        bytes[] payloads;
    }

    EzAuction public auction;

    address public socketGateway;

    mapping(address => bool) public whitelisted;

    error SwapFailed();

    error InsufficientBalance();

    error UnAuthorizedCall();

    modifier onlyWhitelistedOrigin() {
        if (!whitelisted[tx.origin]) revert UnAuthorizedCall();
        _;
    }

    constructor(
        address _addressProvider,
        address payable _auction,
        address _socketGateway
    ) FlashLoanSimpleReceiverBase(IPoolAddressesProvider(_addressProvider)) {
        if (_auction == address(0) || _socketGateway == address(0)) revert InvalidZeroInput();
        auction = EzAuction(_auction);

        socketGateway = _socketGateway;
    }

    function setWhitelisted(address whitelistedAddress, bool isWhitelisted) external onlyOwner {
        whitelisted[whitelistedAddress] = isWhitelisted;
    }

    function recoverExcessAuctionPaymentToken() external onlyOwner {
        IERC20 paymentToken = auction.paymentToken();
        if (paymentToken.balanceOf(address(this)) > 0) {
            paymentToken.safeTransfer(msg.sender, paymentToken.balanceOf(address(this)));
        }
    }

    /// @dev Buy Auction assets
    function _buyAuctionAssets(
        address[] memory assets,
        IERC20 paymentToken,
        uint256 deadline,
        uint256 paymentTokenAmount
    ) internal {
        EzAuction.EpochData memory currentEpoch = auction.getCurrentEpoch();

        // approve asset to auction
        paymentToken.safeIncreaseAllowance(address(auction), paymentTokenAmount);

        // buy auction
        auction.buy(assets, address(this), currentEpoch.epochId, deadline, paymentTokenAmount);
    }

    /// @dev Send excess balance back to initiator and repay flash loan
    function _repayFlashLoan(
        address asset,
        uint256 amount,
        uint256 premium,
        address initiator
    ) internal {
        uint256 assetBalance = IERC20(asset).balanceOf(address(this));

        uint256 totalAmount = amount + premium;

        // check if total amount < amount + premium revert
        if (assetBalance < totalAmount) revert InsufficientBalance();

        // send any extra balance to initiater
        if (assetBalance > totalAmount) {
            IERC20(asset).safeTransfer(initiator, assetBalance - totalAmount);
        }

        // Approve totalAmount to Pool
        IERC20(asset).safeIncreaseAllowance(address(POOL), totalAmount);
    }

    function executeOperation(
        address asset,
        uint256 amount,
        uint256 premium,
        address initiator,
        bytes calldata params
    ) external override onlyWhitelistedOrigin returns (bool) {
        (
            bytes memory preAuctionSwapPayload,
            AuctionData memory auctionData,
            SocketData memory socketPayload
        ) = abi.decode(params, (bytes, AuctionData, SocketData));

        // revert if asset and payload length mismatch
        if (auctionData.assets.length != socketPayload.payloads.length)
            revert MismatchedArrayLengths();

        IERC20 paymentToken = IERC20(asset);
        uint256 paymentTokenAmount = amount;

        // 1. Execute pre-auction swap payloads
        // approve the asset to socketGateway
        if (preAuctionSwapPayload.length > 0) {
            IERC20(asset).safeIncreaseAllowance(
                socketGateway,
                IERC20(asset).balanceOf(address(this))
            );

            (bool success, ) = socketGateway.call(preAuctionSwapPayload);
            if (!success) revert SwapFailed();

            paymentToken = auction.paymentToken();
            paymentTokenAmount = paymentToken.balanceOf(address(this));
        }

        // 2. Buy Auction assets
        _buyAuctionAssets(
            auctionData.assets,
            paymentToken,
            auctionData.deadline,
            paymentTokenAmount
        );

        // sell received assets (use 1 inch)
        for (uint256 i = 0; i < socketPayload.payloads.length; ) {
            if (auctionData.assets[i] != address(paymentToken)) {
                // approve tokens to socketRegistery
                IERC20(auctionData.assets[i]).safeIncreaseAllowance(
                    socketGateway,
                    IERC20(auctionData.assets[i]).balanceOf(address(this))
                );
                (bool success, ) = socketGateway.call(socketPayload.payloads[i]);

                if (!success) revert SwapFailed();
            }
            unchecked {
                ++i;
            }
        }

        _repayFlashLoan(asset, amount, premium, initiator);

        return true;
    }
}
