// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import "@shared/lib-contracts-v0.8/contracts/Dependencies/TransferHelper.sol";

import "./Interfaces/IelETH.sol";
import "./Interfaces/ILRTOracle.sol";
import "./Interfaces/ILRTWithdrawalManager.sol";
import "./Interfaces/ILRTDepositPool.sol";
import "./Interfaces/ILRTUnstakingVault.sol";
import "./Utils/DoubleEndedQueue.sol";
import "./Utils/LRTConstants.sol";
import "./Utils/LRTChecker.sol";

contract LRTWithdrawalManager is
    ILRTWithdrawalManager,
    LRTChecker,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable,
    AccessControlUpgradeable
{
    using DoubleEndedQueue for DoubleEndedQueue.Uint256Deque;
    using SafeERC20 for IERC20;

    address public elETH;
    ILRTOracle public lrtOracle;
    address public lrtUnstakingVault;

    mapping(address => uint256) public minAmountToWithdraw;
    uint256 public withdrawalDelayBlocks;

    // Next available nonce for withdrawal requests per asset, indicating total requests made.
    mapping(address => uint256) public nextUnusedNonce;

    // Next nonce for which a withdrawal request remains locked.
    mapping(address => uint256) public nextLockedNonce;

    // Mapping from a unique request identifier to its corresponding withdrawal request
    mapping(bytes32 => WithdrawalRequest) public withdrawalRequests;

    // Maps each asset to user addresses, pointing to an ordert list of their withdrawal request nonces.
    // Utilizes a double-ended queue for efficient management and removal of initial requests.
    mapping(address => mapping(address => DoubleEndedQueue.Uint256Deque))
        public userAssociatedNonces;

    // Asset amount commited to be withdrawn by users.
    mapping(address => uint256) public assetsCommitted;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Initializes the contract
    /// @param _lrtConfig LRT config address
    function initialize(
        address _lrtConfig,
        address _elETH,
        address _lrtOracle,
        address _lrtUnstakingVault
    ) external initializer {
        __AccessControl_init();
        __Pausable_init_unchained();
        __ReentrancyGuard_init_unchained();

        lrtConfig = ILRTConfig(_lrtConfig);
        elETH = _elETH;
        lrtOracle = ILRTOracle(_lrtOracle);
        lrtUnstakingVault = _lrtUnstakingVault;

        withdrawalDelayBlocks = 8 days / 12 seconds;

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(LRTConstants.ADMIN_ROLE, msg.sender);
    }

    modifier onlySupportedLST(address asset) {
        if (
            !lrtConfig.isSupportedAsset(asset) ||
            AddressLib.isPlatformToken(asset) ||
            lrtConfig.getStrategy(asset) == address(0)
        ) {
            revert NotSupportedLST();
        }
        _;
    }

    /*//////////////////////////////////////////////////////////////
                                VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Get request id
    /// @param asset Asset address
    /// @param requestIndex The requests index to generate id for
    function getRequestId(
        address asset,
        uint256 requestIndex
    ) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(asset, requestIndex));
    }

    /// @notice Get asset amount to receive when trading in elETH
    /// @param asset Asset address of LST to receive
    /// @param amount elETH amount to convert
    /// @return underlyingToReceive Amount of underlying to receive
    function getExpectedAssetAmount(
        address asset,
        uint256 amount
    ) public view override returns (uint256 underlyingToReceive) {
        // calculate underlying asset amount to receive based on elETH amount and asset exchange rate
        underlyingToReceive =
            (amount * lrtOracle.elETHPrice()) /
            lrtOracle.getAssetPrice(asset);
    }

    /// @notice Calculates the amount of asset available for withdrawal.
    /// @param asset The asset address.
    /// @return availableAssetAmount The asset amount avaialble for withdrawal.
    function getAvailableAssetAmount(
        address asset
    ) public view override returns (uint256 availableAssetAmount) {
        ILRTDepositPool lrtDepositPool = ILRTDepositPool(
            lrtConfig.getContract(LRTConstants.LRT_DEPOSIT_POOL)
        );
        uint256 totalAssets = lrtDepositPool.getTotalAssetDeposits(asset);
        availableAssetAmount = totalAssets > assetsCommitted[asset]
            ? totalAssets - assetsCommitted[asset]
            : 0;
    }

    /// @notice View user withdrawal request
    /// @param asset Asset address
    /// @param user User address
    /// @param userIndex Index in list of users withdrawal request
    function getUserWithdrawalRequest(
        address asset,
        address user,
        uint256 userIndex
    )
        public
        view
        override
        returns (
            uint256 elETHAmount,
            uint256 expectedAssetAmount,
            uint256 withdrawalStartBlock
        )
    {
        bytes32 requestId = getRequestId(
            asset,
            userAssociatedNonces[asset][user].at(userIndex)
        );
        elETHAmount = withdrawalRequests[requestId].elETHUnstaked;
        expectedAssetAmount = withdrawalRequests[requestId].expectedAssetAmount;
        withdrawalStartBlock = withdrawalRequests[requestId]
            .withdrawalStartBlock;
    }

    function getUserWithdrawlLength(
        address asset,
        address user
    ) external view returns (uint256) {
        return userAssociatedNonces[asset][user].length();
    }

    /*//////////////////////////////////////////////////////////////
                        User Withdrawal functions
    //////////////////////////////////////////////////////////////*/

    /// @notice Initiates a withdrawal request for converting elETH to a specified LST.
    /// @param asset The LST address the user wants to receive.
    /// @param elETHUnstaked The amount of elETH the user wishes to unstake.
    /// @dev This function is only callable by the user and is used to initiate a withdrawal request for a specific
    /// asset. Will be finalised by calling `completeWithdrawal` after the manager unlocked the request and the delay
    /// has past. There is an edge case were the user withdraws last underlying asset and that asset gets slashed.
    function initiateWithdrawal(
        address asset,
        uint256 elETHUnstaked
    ) external override whenNotPaused nonReentrant onlySupportedLST(asset) {
        if (elETHUnstaked == 0 || elETHUnstaked < minAmountToWithdraw[asset]) {
            revert InvalidAmountToWithdraw();
        }

        IERC20(elETH).safeTransferFrom(
            msg.sender,
            address(this),
            elETHUnstaked
        );

        uint256 expectedAssetAmount = getExpectedAssetAmount(
            asset,
            elETHUnstaked
        );

        // Ensure the withdrawal does not exceed the available shares.
        if (expectedAssetAmount > getAvailableAssetAmount(asset)) {
            revert ExceedAmountToWithdraw();
        }

        // preventing over-withdrawal.
        assetsCommitted[asset] += expectedAssetAmount;

        _addUserWithdrawalRequest(asset, elETHUnstaked, expectedAssetAmount);

        emit AssetWithdrawalQueued(msg.sender, asset, elETHUnstaked);
    }

    /// @notice Completes a user's withdrawal process by transferring the LST amount corresponding to the elETH
    /// unstaked.
    /// @param asset The asset address the user wishes to withdraw.
    function completeWithdrawal(
        address asset
    ) external payable whenNotPaused onlySupportedLST(asset) nonReentrant {
        // Retrieve and remove the oldest withdrawal request for the user.
        uint256 usersFirstWithdrawalRequestNonce = userAssociatedNonces[asset][
            msg.sender
        ].popFront();
        // Ensure the request is already unlocked.
        if (usersFirstWithdrawalRequestNonce >= nextLockedNonce[asset]) {
            revert WithdrawalLocked();
        }

        bytes32 requestId = getRequestId(
            asset,
            usersFirstWithdrawalRequestNonce
        );
        WithdrawalRequest memory request = withdrawalRequests[requestId];

        delete withdrawalRequests[requestId];

        // Check that the withdrawal delay has passed since the request's initiation.
        if (
            block.number < request.withdrawalStartBlock + withdrawalDelayBlocks
        ) {
            revert WithdrawalDelayNotPassed();
        }

        TransferHelper.safeTransferToken(
            asset,
            msg.sender,
            request.expectedAssetAmount
        );

        emit AssetWithdrawalFinalized(
            msg.sender,
            asset,
            request.elETHUnstaked,
            request.expectedAssetAmount
        );
    }

    /*//////////////////////////////////////////////////////////////
                        MANAGER UNSTAKING FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Unlocks assets in the queue up to a specified limit.
    /// @param asset The address of the asset to unlock.
    /// @param firstExcludedIndex First withdrawal requests index that will not be considered for unlocking.
    /// @param minimumAssetPrice The minimum acceptable price for the asset.
    /// @param minimumElEthPrice The minimum acceptable price for elETH.
    function unlockQueue(
        address asset,
        uint256 firstExcludedIndex,
        uint256 minimumAssetPrice,
        uint256 minimumElEthPrice
    )
        external
        nonReentrant
        onlySupportedLST(asset)
        onlyRole(LRTConstants.ADMIN_ROLE)
        returns (uint256 elETHBurned, uint256 assetAmountUnlocked)
    {
        uint256 elETHPrice = lrtOracle.elETHPrice();
        uint256 assetPrice = lrtOracle.getAssetPrice(asset);

        // Ensure the current prices meet or exceed the minimum required prices.
        if (elETHPrice < minimumElEthPrice)
            revert ElETHPriceMustBeGreaterMinimum(elETHPrice);
        if (assetPrice < minimumAssetPrice)
            revert AssetPriceMustBeGreaterMinimum(assetPrice);

        uint256 totalAvailableAssets = ILRTUnstakingVault(lrtUnstakingVault)
            .balanceOf(asset);

        if (totalAvailableAssets == 0) {
            revert AmountMustBeGreaterThanZero();
        }

        // Updates and unlocks withdrawal requests up to a specified upper limit or until allocated assets are fully
        // utilized.
        (elETHBurned, assetAmountUnlocked) = _unlockWithdrawalRequests(
            asset,
            totalAvailableAssets,
            elETHPrice,
            assetPrice,
            firstExcludedIndex
        );

        if (elETHBurned != 0) {
            IelETH(elETH).burn(address(this), elETHBurned);
        }
        // Take the amount to distribute from vault
        ILRTUnstakingVault(lrtUnstakingVault).redeem(
            asset,
            assetAmountUnlocked
        );

        emit AssetUnlocked(
            asset,
            elETHBurned,
            assetAmountUnlocked,
            elETHPrice,
            assetPrice
        );
    }

    /*//////////////////////////////////////////////////////////////
                        MANAGER FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice update min amount to withdraw
    /// @dev only callable by LRT admin
    /// @param asset Asset address
    /// @param minAmountToWithdraw_ Minimum amount to withdraw
    function setMinAmountToWithdraw(
        address asset,
        uint256 minAmountToWithdraw_
    ) external onlyRole(LRTConstants.ADMIN_ROLE) {
        minAmountToWithdraw[asset] = minAmountToWithdraw_;
        emit MinAmountToWithdrawUpdated(asset, minAmountToWithdraw_);
    }

    /// @notice update withdrawal delay
    /// @dev only callable by LRT admin
    /// @param withdrawalDelayBlocks_ The amount of blocks to wait till to complete a withdraw
    function setWithdrawalDelayBlocks(
        uint256 withdrawalDelayBlocks_
    ) external onlyRole(LRTConstants.ADMIN_ROLE) {
        withdrawalDelayBlocks = withdrawalDelayBlocks_;
        emit WithdrawalDelayBlocksUpdated(withdrawalDelayBlocks);
    }

    /// @dev Triggers stopped state. Contract must not be paused.
    function pause() external onlyRole(LRTConstants.ADMIN_ROLE) {
        _pause();
    }

    /// @dev Returns to normal state. Contract must be paused
    function unpause() external onlyRole(LRTConstants.ADMIN_ROLE) {
        _unpause();
    }

    /*//////////////////////////////////////////////////////////////
                            INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Registers a new request for withdrawing an asset in exchange for elETH.
    /// @param asset The address of the asset being withdrawn.
    /// @param elETHUnstaked The amount of elETH being exchanged.
    /// @param expectedAssetAmount The expected amount of the asset to be received upon withdrawal completion.
    function _addUserWithdrawalRequest(
        address asset,
        uint256 elETHUnstaked,
        uint256 expectedAssetAmount
    ) internal {
        // Generate a unique identifier for the new withdrawal request.
        bytes32 requestId = getRequestId(asset, nextUnusedNonce[asset]);

        // Create and store the new withdrawal request.
        withdrawalRequests[requestId] = WithdrawalRequest({
            elETHUnstaked: elETHUnstaked,
            expectedAssetAmount: expectedAssetAmount,
            withdrawalStartBlock: block.number
        });

        // Map the user to the newly created request index and increment the nonce for future requests.
        userAssociatedNonces[asset][msg.sender].pushBack(
            nextUnusedNonce[asset]
        );
        nextUnusedNonce[asset]++;
    }

    /// @dev Unlocks user withdrawal requests based on current asset availability and prices.
    /// Iterates through pending requests and unlocks them until the provided asset amount is fully allocated.
    /// @param asset The asset's address for which withdrawals are being processed.
    /// @param elETHPrice Current elETH to ETH exchange rate.
    /// @param assetPrice Current asset to ETH exchange rate.
    /// @param firstExcludedIndex First withdrawal requests index that will not be considered for unlocking.
    /// @return elETHAmountToBurn The total amount of elETH unlocked for withdrawals.
    /// @return assetAmountToUnlock The total asset amount allocated to unlocked withdrawals.
    function _unlockWithdrawalRequests(
        address asset,
        uint256 availableAssetAmount,
        uint256 elETHPrice,
        uint256 assetPrice,
        uint256 firstExcludedIndex
    )
        internal
        returns (uint256 elETHAmountToBurn, uint256 assetAmountToUnlock)
    {
        // Check that upper limit is in the range of existing withdrawal requests. If it is greater set it to the first
        // nonce with no withdrawal request.
        if (firstExcludedIndex > nextUnusedNonce[asset]) {
            firstExcludedIndex = nextUnusedNonce[asset];
        }

        // Revert when trying to unlock a request that has already been unlocked
        if (nextLockedNonce[asset] >= firstExcludedIndex)
            revert NoPendingWithdrawals();

        while (nextLockedNonce[asset] < firstExcludedIndex) {
            bytes32 requestId = getRequestId(asset, nextLockedNonce[asset]);
            WithdrawalRequest storage request = withdrawalRequests[requestId];

            // Calculate the amount user will recieve
            uint256 payoutAmount = _calculatePayoutAmount(
                request,
                elETHPrice,
                assetPrice
            );

            if (availableAssetAmount < payoutAmount) break; // Exit if not enough assets to cover this request

            assetsCommitted[asset] -= request.expectedAssetAmount;
            // Set the amount the user will recieve
            request.expectedAssetAmount = payoutAmount;
            elETHAmountToBurn += request.elETHUnstaked;
            availableAssetAmount -= payoutAmount;
            assetAmountToUnlock += payoutAmount;
            unchecked {
                nextLockedNonce[asset]++;
            }
        }
    }

    /// @notice Determines the final amount to be disbursed to the user, based on the lesser of the initially
    /// expected asset amount and the currently calculated return.
    /// @param request The specific withdrawal request being processed.
    /// @param elETHPrice The latest exchange rate of elETH to ETH.
    /// @param assetPrice The latest exchange rate of the asset to ETH.
    /// @return The final amount the user is going to receive.
    function _calculatePayoutAmount(
        WithdrawalRequest memory request,
        uint256 elETHPrice,
        uint256 assetPrice
    ) private pure returns (uint256) {
        uint256 currentReturn = (request.elETHUnstaked * elETHPrice) /
            assetPrice;
        return
            (request.expectedAssetAmount < currentReturn)
                ? request.expectedAssetAmount
                : currentReturn;
    }

    receive() external payable {}
}
