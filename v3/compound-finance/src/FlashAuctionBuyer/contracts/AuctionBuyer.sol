// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.19;

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

    error MismatchedArrayLengths();

    error UnAuthorizedCall();

    modifier onlyWhitelistedOrigin() {
        if (!whitelisted[tx.origin]) revert UnAuthorizedCall();
        _;
    }

    constructor(
        address _addressProvider,
        address _auction,
        address _socketGateway
    ) FlashLoanSimpleReceiverBase(IPoolAddressesProvider(_addressProvider)) {
        if (_auction == address(0) || _socketGateway == address(0)) revert InvalidZeroInput();
        auction = EzAuction(_auction);

        socketGateway = _socketGateway;
    }

    function setWhitelisted(address whitelistedAddress, bool isWhitelisted) external onlyOwner {
        whitelisted[whitelistedAddress] = isWhitelisted;
    }

    function executeOperation(
        address asset,
        uint256 amount,
        uint256 premium,
        address initiator,
        bytes calldata params
    ) external override onlyWhitelistedOrigin returns (bool) {
        (AuctionData memory auctionData, SocketData memory socketPayload) = abi.decode(
            params,
            (AuctionData, SocketData)
        );

        // revert if asset and payload length mismatch
        if (auctionData.assets.length != socketPayload.payloads.length)
            revert MismatchedArrayLengths();
        EzAuction.EpochData memory currentEpoch = auction.getCurrentEpoch();

        // approve asset to auction
        IERC20(asset).safeIncreaseAllowance(address(auction), amount);

        // buy auction
        auction.buy(
            auctionData.assets,
            address(this),
            currentEpoch.epochId,
            auctionData.deadline,
            amount
        );

        // sell received assets (use 1 inch)
        for (uint256 i = 0; i < socketPayload.payloads.length; ) {
            // approve tokens to socketRegistery
            IERC20(auctionData.assets[i]).safeIncreaseAllowance(
                socketGateway,
                IERC20(auctionData.assets[i]).balanceOf(address(this))
            );
            (bool success, ) = socketGateway.call(socketPayload.payloads[i]);

            if (!success) revert SwapFailed();

            unchecked {
                ++i;
            }
        }

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

        return true;
    }
}
