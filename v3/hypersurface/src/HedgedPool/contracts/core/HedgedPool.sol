// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.18;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/IERC20MetadataUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {IOtoken, IOracle, IController} from "../interfaces/IGamma.sol";
import "./HedgedPoolStorage.sol";
import "../interfaces/ILpManager.sol";
import "../libs/Math.sol";
import "../libs/Dates.sol";
import "../libs/HedgedPoolLib.sol";
import "../interfaces/IOrderUtil.sol";
import "../interfaces/IFeeCollector.sol";
import "../interfaces/ITradeExecutor.sol";
import "../interfaces/CustomErrors.sol";
import "@openzeppelin/contracts/token/ERC1155/utils/ERC1155Holder.sol";

contract HedgedPool is
    Initializable,
    OwnableUpgradeable,
    ERC20Upgradeable,
    ReentrancyGuardUpgradeable,
    ERC1155Holder,
    HedgedPoolStorageV1
{
    /// @notice Pool is initialized
    event HedgedPoolInitialized(
        address strikeToken,
        address collateralToken,
        string tokenName,
        string tokenSymbol
    );

    /// @notice All series for a given expiry settled
    event ExpirySettled(uint256 expiryTimestamp);

    struct TradeLeg {
        int256 amount;
        int256 premium;
        uint256 fee;
        address oToken;
    }

    event Trade(
        address account,
        address referrer,
        uint256 totalPremium,
        uint256 totalFee,
        uint256 totalNotional,
        uint256 underlyingPrice,
        TradeLeg[] legs
    );

    event HedgerSet(address hedger);

    /// @dev NOTE: No local variables should be added here.  Instead see HedgedPoolStorage.sol

    /// Use safe ERC20 functions for any token transfers since people don't follow the ERC20 standard */
    using SafeERC20 for IERC20;

    using EnumerableSet for EnumerableSet.AddressSet;

    event InventoryCapUpdated(address _underlying, uint256 _cap);

    event UnderlyingConfigured(address _underlying, bool _enabled);

    event Exercised(address oToken, uint256 amount);

    event KeeperSet(address indexed keeper, bool isPermitted);

    event QuoteProviderSet(address indexed quoteProvider, bool isPermitted);

    event LockStatusChanged(bool isLocked);

    event AdminRoundClosed(uint256 pricePerShare, uint256 timestamp);

    event AuthorizedMarketMakerSet(address indexed mm, bool isAuthorized);

    function onlyKeeper() internal view {
        if (!keepers[msg.sender]) {
            revert CustomErrors.Unauthorized();
        }
    }

    function onlyKeeperOrHedger() internal view {
        if (!keepers[msg.sender] && msg.sender != hedger) {
            revert CustomErrors.Unauthorized();
        }
    }

    function onlyAccessKey() internal view {
        if (
            isLocked &&
            IERC1155(addressBook.getAccessKey()).balanceOf(
                msg.sender,
                accessKeyId
            ) ==
            0
        ) {
            revert CustomErrors.NoAccessKey();
        }
    }

    /// Initialize the contract, and create an lpToken to track ownership
    function __HedgedPool_init(
        address _addressBookAddress,
        address _strikeToken,
        address _collateralToken,
        string calldata _tokenName,
        string calldata _tokenSymbol
    ) public initializer {
        addressBook = IAddressBook(_addressBookAddress);

        strikeToken = IERC20(_strikeToken);
        collateralToken = IERC20(_collateralToken);

        // Initizlie ERC20 LP token
        __ERC20_init(_tokenName, _tokenSymbol);
        numDecimals = IERC20MetadataUpgradeable(address(collateralToken))
            .decimals();

        // Set first rounds end date
        lastSettledExpiry = Dates.get8amAligned(block.timestamp, 1 days);
        withdrawalRoundEnd = lastSettledExpiry + 1 days;
        depositRoundEnd = Dates.get8amAligned(block.timestamp, 1 days) + 1 days;

        __Ownable_init();
        __ReentrancyGuard_init();

        // Set default values
        pricePerShareCached = 1e8;

        _refreshConfigInternal();

        emit HedgedPoolInitialized(
            _strikeToken,
            _collateralToken,
            _tokenName,
            _tokenSymbol
        );
    }

    /// @notice Get total value of the pool shares
    /// @param pricePerShare price per share * 1e8
    function getTotalPoolValue(
        uint256 pricePerShare
    ) public view returns (uint256) {
        return (totalSupply() * pricePerShare) / 1e8;
    }

    /// @notice Get total pool value based on the latest cached share price
    function getTotalPoolValueCached() public view returns (uint256) {
        return getTotalPoolValue(pricePerShareCached);
    }

    /**
     * @notice Settle all expired oTokens
     */
    function settleAll(uint8 maxExpires) public {
        uint256 expiry = lastSettledExpiry + 1 days;
        uint8 numProcessed;
        while (expiry <= block.timestamp && numProcessed < maxExpires) {
            numProcessed += 1;
            HedgedPoolLib.settleExpiry(
                expiry,
                underlyingTokens,
                oTokensByExpiry,
                controller,
                notionalExposure,
                activeOTokens
            );

            lastSettledExpiry = expiry;

            emit ExpirySettled(expiry);

            expiry += 1 days;
        }

        processWithdrawals();
    }

    function settleOtokens(address[] calldata oTokens) public {
        HedgedPoolLib.settleOtokens(
            oTokens,
            controller,
            notionalExposure,
            activeOTokens
        );
    }

    /*****************
    Keeper methods
    ******************/

    function exercise(
        address oTokenAddress,
        uint256 amountToExercise,
        IController.ExerciseVaultsArgs[] calldata vaultsToExerciseFrom
    ) external {
        onlyKeeper();

        IOtoken oToken = IOtoken(oTokenAddress);
        address underlying = oToken.underlyingAsset();
        bool isPut = oToken.isPut();

        IController(controller).exercise(
            oTokenAddress,
            amountToExercise,
            vaultsToExerciseFrom,
            address(0),
            ""
        );

        if (isPut) {
            notionalExposure[underlying][true] -= amountToExercise;
        } else {
            notionalExposure[underlying][false] -= amountToExercise;
        }

        emit Exercised(oTokenAddress, amountToExercise);
    }

    /// @notice Close current deposit and withdrawal rounds at specified share price within the guardrails
    /// @param pricePerShare price per share * 1e8
    function closeRound(uint256 pricePerShare) external {
        onlyKeeper();

        // price per share guardrails (10% per day)
        if (
            pricePerShare < (pricePerShareCached * 90) / 100 ||
            pricePerShare > (pricePerShareCached * 110) / 100
        ) {
            revert CustomErrors.InvalidPricePerShare();
        }

        _closeRound(pricePerShare);
    }

    /// @notice Manually close round using price per share outside of the guardrails
    /// @param pricePerShare price per share * 1e8
    function closeRoundAdmin(uint256 pricePerShare) external onlyOwner {
        _closeRound(pricePerShare);
        emit AdminRoundClosed(pricePerShare, block.timestamp);
    }

    /// @notice Close current deposit and withdrawal rounds at specified share price
    /// @param pricePerShare price per share * 1e8
    function _closeRound(uint256 pricePerShare) internal {
        // cannot close a round when there's unsettled expiry
        if (lastSettledExpiry + 1 days < block.timestamp) {
            revert CustomErrors.NotSettled();
        }

        // advance to the next round if necessary
        int256 sharesDiff;
        // close withdrawal round
        if (withdrawalRoundEnd <= block.timestamp) {
            sharesDiff -= int256(
                ILpManager(lpManager).closeWithdrawalRound(pricePerShare)
            );

            withdrawalRoundEnd += 1 days;

            pricePerShareCached = pricePerShare;
        }

        if (depositRoundEnd <= block.timestamp) {
            sharesDiff += int256(
                ILpManager(lpManager).closeDepositRound(pricePerShare)
            );

            depositRoundEnd += 1 days;

            pricePerShareCached = pricePerShare;
        }

        // mint or burn LP tokens
        if (sharesDiff < 0) {
            // burn lp tokens corresponding to filled withdrawal shares
            _burn(address(this), uint256(-sharesDiff));
        } else if (sharesDiff > 0) {
            // mint lp tokens corresponding to new deposits
            _mint(address(this), uint256(sharesDiff));
        }
    }

    /*****************
    LP Manager methods
    ******************/

    /// @dev process pending withdrawals
    function processWithdrawals() internal {
        uint256 freeCollateral = 0;
        uint256 hedgedPoolBalance = collateralToken.balanceOf(address(this));
        uint256 cashLocked = ILpManager(lpManager).getCashLocked(
            address(this),
            true
        );
        if (hedgedPoolBalance > cashLocked) {
            freeCollateral = hedgedPoolBalance - cashLocked;
        }

        uint256 unfilledShares = ILpManager(lpManager).getUnfilledShares(
            address(this)
        );
        // lock amount using the last cached price per share + 10%
        // any excess will be refunded after round close
        uint256 requiredAmount = (unfilledShares * pricePerShareCached * 11) /
            1e9;
        uint256 withdrawAmount = Math.min(requiredAmount, freeCollateral);
        if (withdrawAmount > 0) {
            ILpManager(lpManager).addPendingCash(withdrawAmount);
        }
    }

    /// @notice Redeem shares from processed deposits
    function redeemShares() external nonReentrant {
        _redeemShares(msg.sender);
    }

    function _redeemShares(address lpAddress) private {
        uint256 sharesAmount = ILpManager(lpManager).redeemShares(lpAddress);

        if (sharesAmount > 0) {
            this.transfer(lpAddress, sharesAmount);
        }
    }

    /// @notice Request withdrawal
    function requestWithdrawal(uint256 sharesAmount) external nonReentrant {
        address lpAddress = msg.sender;

        // redeem unredeemed shares first
        _redeemShares(msg.sender);

        if (balanceOf(lpAddress) < sharesAmount) {
            revert CustomErrors.InsufficientBalance();
        }

        ILpManager(lpManager).requestWithdrawal(lpAddress, sharesAmount);

        // Burn the lp tokens
        _burn(msg.sender, sharesAmount);
        // mint LP tokens to self for accounting
        _mint(address(this), sharesAmount);
    }

    /// @notice Withdraw available cash
    function withdrawCash() external nonReentrant {
        (uint256 cashAmount, ) = ILpManager(lpManager).withdrawCash(msg.sender);

        if (cashAmount > 0) {
            IERC20(collateralToken).safeTransfer(msg.sender, cashAmount);
        }
    }

    /// @notice Request deposit
    function requestDeposit(uint256 amount) external nonReentrant onlyOwner {
        onlyAccessKey();

        if (amount == 0) {
            revert CustomErrors.ZeroValue();
        }

        address lpAddress = msg.sender;

        ILpManager(lpManager).requestDeposit(lpAddress, amount);

        IERC20(collateralToken).safeTransferFrom(
            lpAddress,
            address(this),
            amount
        );
    }

    /// @notice Cancel pending unprocessed deposit
    function cancelPendingDeposit(uint256 amount) external nonReentrant {
        ILpManager(lpManager).cancelPendingDeposit(msg.sender, amount);

        IERC20(collateralToken).safeTransfer(msg.sender, amount);
    }

    /// @notice Available liquidity in the pool (excludes pending deposits and withdrawals)
    function getCollateralBalance() public view override returns (uint256) {
        return
            collateralToken.balanceOf(address(this)) -
            ILpManager(lpManager).getCashLocked(address(this), true);
    }

    /*****************
    ERC20 methods
    ******************/

    function decimals() public view override(ERC20Upgradeable) returns (uint8) {
        return numDecimals;
    }

    function balanceOf(
        address account
    ) public view override(ERC20Upgradeable) returns (uint256) {
        (, uint256 sharesRedeemable) = ILpManager(lpManager).getDepositStatus(
            address(this),
            account
        );
        return super.balanceOf(account) + sharesRedeemable;
    }

    function _transfer(
        address sender,
        address recipient,
        uint256 amount
    ) internal override(ERC20Upgradeable) {
        // redeem unredeemed shares first
        _redeemShares(sender);

        super._transfer(sender, recipient, amount);
    }

    /***********************
    Trading methods
    ***********************/

    /// @notice execute a signed buy or sell order
    /// @param order Order struct containing order parameters
    /// @param traderVaultId MarginVault id of the trader
    /// @param autoCreateVault Whether to auto create vault if it doesn't exist
    function trade(
        IOrderUtil.Order calldata order,
        uint256 traderVaultId,
        bool autoCreateVault
    ) public nonReentrant {
        onlyAccessKey();

        // validate that the order signer has QUOTE_PROVIDER role. The signing contract has to return the recovered signer.
        processOrder(order);
        address[] memory oTokens;
        uint256 fee = order.legs[0].fee;

        (oTokens) = ITradeExecutor(tradeExecutor).executeTrade(
            order,
            msg.sender,
            traderVaultId,
            autoCreateVault,
            authorizedMarketMakers[msg.sender]
        );
        IOrderUtil.OptionLeg memory optionLeg = order.legs[0];

        if (optionLeg.amount < 0) {
            // trader sells oToken to the pool

            // update notional exposure
            notionalExposure[order.underlying][optionLeg.isPut] += uint256(
                -optionLeg.amount
            );

            uint256 totalPoolExposure = HedgedPoolLib.totalPoolExposure(
                notionalExposure,
                underlyingTokens,
                oracle
            );
            uint256 cap = inventoryCaps[address(collateralToken)];
            if (totalPoolExposure > cap) {
                revert CustomErrors.InventoryCapExceeded(
                    cap,
                    totalPoolExposure
                );
            }

            if (!optionLeg.isPut) {
                // send premium to trader
                collateralToken.safeTransfer(
                    msg.sender,
                    uint256(-optionLeg.premium) - fee
                );
            }
        } else {
            // trader buys back existing oToken from the pool

            // collect premium from trader
            collateralToken.safeTransferFrom(
                msg.sender,
                address(this),
                uint256(optionLeg.premium) + fee
            );

            notionalExposure[order.underlying][optionLeg.isPut] -= uint256(
                optionLeg.amount
            );
        }

        // charge fee
        if (fee > 0) {
            IFeeCollector(feeCollector).collectFee(
                address(collateralToken),
                fee,
                order.referrer
            );
        }

        // store oTokens
        uint256 underlyingPrice = IOracle(oracle).getPrice(order.underlying);

        TradeLeg[] memory tradeLegs = new TradeLeg[](1);
        processOToken(order.underlying, optionLeg.expiration, oTokens[0]);

        tradeLegs[0] = TradeLeg({
            oToken: oTokens[0],
            amount: optionLeg.amount,
            premium: optionLeg.premium,
            fee: optionLeg.fee
        });

        emit Trade(
            msg.sender,
            order.referrer,
            Math.abs(optionLeg.premium),
            fee,
            Math.abs(optionLeg.amount),
            underlyingPrice,
            tradeLegs
        );
    }

    /// @notice Process a pool order
    /// @param order is the id of the vault to be settled
    function processOrder(IOrderUtil.Order calldata order) internal {
        if (!underlyingTokens.contains(order.underlying)) {
            revert CustomErrors.InvalidUnderlying();
        }

        // Allow only one leg
        if (order.legs.length != 1) revert CustomErrors.InvalidLegsCount();

        // Validate leg
        IOrderUtil.OptionLeg memory leg = order.legs[0];
        if (leg.expiration <= block.timestamp) {
            revert CustomErrors.SeriesExpired();
        }
        // same as exercise window.
        // TODO: should we set this as param?
        if (block.timestamp > leg.expiration - 24 * 3600) {
            revert CustomErrors.TooCloseToExpiration();
        }
        if (
            leg.amount == 0 ||
            leg.premium == 0 ||
            (leg.amount > 0 && leg.premium < 0) ||
            (leg.amount < 0 && leg.premium > 0)
        ) {
            revert CustomErrors.InvalidOrder();
        }

        // Check that the pool address
        if (order.poolAddress != address(this)) {
            revert CustomErrors.InvalidPoolAddress();
        }

        // Get order signers
        (address signer /* address[] memory coSigners */, ) = IOrderUtil(
            orderUtil
        ).processOrder(order);

        // TODO: check n-of-m co-signers
        // Check that the signatory has the Role Quote provider
        if (!quoteProviders[signer]) {
            revert CustomErrors.Unauthorized();
        }
        if (order.account != msg.sender) {
            revert CustomErrors.InvalidAccount();
        }
    }

    // delete after contract update
    function approveActiveOtokensAdmin() external onlyOwner {
        for (uint256 i = 0; i < activeOTokens.length(); i++) {
            IERC20(activeOTokens.at(i)).approve(
                tradeExecutor,
                type(uint256).max
            );
        }
    }

    function withdrawVaultCollateral(
        uint256 vaultId,
        address collateralAsset,
        uint256 withdrawalAmount
    ) external {
        HedgedPoolLib.withdrawCollateral(
            controller,
            msg.sender,
            vaultId,
            msg.sender,
            collateralAsset,
            withdrawalAmount
        );
    }

    /// @notice Get active oToken by index
    /// @param index is the index of the active oToken
    /// @return oToken address
    function getActiveOToken(uint256 index) public view returns (address) {
        return activeOTokens.at(index);
    }

    /// @notice Get all active oTokens
    function getActiveOTokens() public view returns (address[] memory) {
        address[] memory series = new address[](activeOTokens.length());
        for (uint256 i = 0; i < activeOTokens.length(); i++) {
            series[i] = activeOTokens.at(i);
        }
        return series;
    }

    function getOTokensByExpiry(
        address underlying,
        uint256 expiry
    ) public view returns (address[] memory) {
        return oTokensByExpiry[underlying][expiry];
    }

    /*******************
    Series management
    ********************/

    /// @notice Validates oToken and adds it to the pool mappings for tracking
    function processOToken(
        address underlying,
        uint256 expiry,
        address oToken
    ) internal {
        // If otoken exists in our amm we can return otoken Address
        if (activeOTokens.contains(oToken)) {
            return;
        }

        // Finally add to our active oTokens in our pool
        activeOTokens.add(oToken);
        oTokensByExpiry[underlying][expiry].push(oToken);
        IERC20(oToken).approve(tradeExecutor, type(uint256).max);
    }

    /*******************
    Pool config
    ********************/

    /// @notice This function allows the owner address to update allowed strikes for the auto series creation feature
    /// @param _underlying underlying token address
    /// @param _enabled whether the underlying is enabled or not
    /// @dev Only the owner address should be allowed to call this
    function configUnderlying(
        address _underlying,
        bool _enabled
    ) public onlyOwner {
        require(_underlying != address(0));

        if (_enabled) {
            // enable underlying
            if (!underlyingTokens.contains(_underlying)) {
                underlyingTokens.add(_underlying);
            }

            IERC20(_underlying).approve(marginPool, type(uint256).max);
            if (hedger != address(0)) {
                IERC20(_underlying).approve(hedger, type(uint256).max);
            }
        } else {
            // disable underlying
            underlyingTokens.remove(_underlying);
            IERC20(_underlying).approve(marginPool, 0);
            if (hedger != address(0)) {
                IERC20(_underlying).approve(hedger, 0);
            }
        }

        emit UnderlyingConfigured(_underlying, _enabled);
    }

    function getAllUnderlyings() external view returns (address[] memory) {
        address[] memory underlyings = new address[](underlyingTokens.length());
        for (uint256 i = 0; i < underlyingTokens.length(); i++) {
            underlyings[i] = underlyingTokens.at(i);
        }
        return underlyings;
    }

    /// @notice Allow/disallow an address to perform keeper tasks
    function setKeeper(
        address keeperAddress,
        bool isPermitted
    ) external onlyOwner {
        keepers[keeperAddress] = isPermitted;
        emit KeeperSet(keeperAddress, isPermitted);
    }

    /// @notice Add/remove an address from allowed quote providers
    function setQuoteProvider(
        address quoteProviderAddress,
        bool isPermitted
    ) external onlyOwner {
        quoteProviders[quoteProviderAddress] = isPermitted;
        emit QuoteProviderSet(quoteProviderAddress, isPermitted);
    }

    /// @notice Refresh frequently used addresses
    function refreshConfiguration() external onlyOwner {
        _refreshConfigInternal();
    }

    /// @notice Store frequently used addresses
    function _refreshConfigInternal() internal {
        // remove old approvals
        if (marginPool != address(0)) {
            collateralToken.approve(marginPool, 0);
        }
        if (feeCollector != address(0)) {
            collateralToken.approve(feeCollector, 0);
        }
        if (tradeExecutor != address(0)) {
            collateralToken.approve(tradeExecutor, 0);
        }

        controller = addressBook.getController();
        oracle = addressBook.getOracle();
        marginPool = addressBook.getMarginPool();
        orderUtil = addressBook.getOrderUtil();
        lpManager = addressBook.getLpManager();
        feeCollector = addressBook.getFeeCollector();
        tradeExecutor = addressBook.getTradeExecutor();

        // give approvals
        collateralToken.approve(marginPool, type(uint256).max);
        collateralToken.approve(feeCollector, type(uint256).max);
        collateralToken.approve(tradeExecutor, type(uint256).max);
    }

    /// @notice Set access key token requirement
    function setLock(bool _isLocked) external onlyOwner {
        isLocked = _isLocked;
        emit LockStatusChanged(_isLocked);
    }

    function updateInventoryCap(
        address _underlying,
        uint256 _cap
    ) external onlyOwner {
        inventoryCaps[_underlying] = _cap;
        emit InventoryCapUpdated(_underlying, _cap);
    }

    function getPoolCapState() external view returns (uint256, uint256) {
        return (
            inventoryCaps[address(collateralToken)],
            HedgedPoolLib.totalPoolExposure(
                notionalExposure,
                underlyingTokens,
                oracle
            )
        );
    }

    receive() external payable {}

    function borrowFromPool(address token, uint256 amount) external {
        onlyKeeperOrHedger();
        IController(controller).borrowFromPool(token, amount);
    }

    function depositToPool(address token, uint256 amount) external {
        onlyKeeperOrHedger();
        IController(controller).depositToPool(token, amount);
    }

    /// @notice Enable/disable a hedger
    function setHedger(address newHedgerAddress) external onlyOwner {
        if (hedger != address(0) && hedger != newHedgerAddress) {
            // remove old approvals
            for (uint i = 0; i < underlyingTokens.length(); i++) {
                IERC20(underlyingTokens.at(i)).approve(hedger, 0);
            }
            collateralToken.approve(hedger, 0);
        }

        hedger = newHedgerAddress;

        collateralToken.approve(newHedgerAddress, type(uint256).max);
        for (uint i = 0; i < underlyingTokens.length(); i++) {
            IERC20(underlyingTokens.at(i)).approve(
                newHedgerAddress,
                type(uint256).max
            );
        }
        emit HedgerSet(newHedgerAddress);
    }

    function setAuthorizedMarketMaker(
        address _mm,
        bool _isAuthorized
    ) external onlyOwner {
        authorizedMarketMakers[_mm] = _isAuthorized;
        emit AuthorizedMarketMakerSet(_mm, _isAuthorized);
    }
}
