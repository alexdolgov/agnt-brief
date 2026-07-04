// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {
    ERC4626Upgradeable,
    ERC20Upgradeable,
    IERC4626,
    Math
} from "@openzeppelin-upgradeable/contracts/token/ERC20/extensions/ERC4626Upgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol";
import {SafeERC20, IERC20} from "lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC3156FlashBorrower} from "@openzeppelin/contracts/interfaces/IERC3156FlashBorrower.sol";
import {IManagedLeveragedVault} from "src/interfaces/core/boyco/IManagedLeveragedVault.sol";
import {IMetaBeraborrowCore} from "src/interfaces/core/IMetaBeraborrowCore.sol";
import {IBorrowerOperations} from "src/interfaces/core/IBorrowerOperations.sol";
import {ILiquidStabilityPool} from "src/interfaces/core/ILiquidStabilityPool.sol";
import {IInfraredCollateralVault} from "src/interfaces/core/vaults/IInfraredCollateralVault.sol";
import {IDebtToken} from "src/interfaces/core/IDebtToken.sol";
import {IPriceFeed} from "src/interfaces/core/IPriceFeed.sol";
import {ICollVaultRouter} from "src/interfaces/periphery/ICollVaultRouter.sol";
import {IDenManager} from "src/interfaces/core/IDenManager.sol";
import {IRebalancer} from "src/interfaces/utils/integrations/IRebalancer.sol";
import {IAsset} from "src/interfaces/utils/tokens/IAsset.sol";
import {EmissionsLib} from "src/libraries/EmissionsLib.sol";
import {PriceLib} from "src/libraries/PriceLib.sol";
import {FeeLib} from "src/libraries/FeeLib.sol";
import {EpochLib} from "src/libraries/EpochLib.sol";
import {ReentrancyGuardLib} from "src/libraries/ReentrancyGuardLib.sol";
import {BeraborrowMath} from "src/dependencies/BeraborrowMath.sol";


/**
 * @title ManagedLeveragedVault
 * @author Beraborrow team
 * @notice Managed leverage token with the set leverage/CR target.
 * @dev Implementation unique for *existing* BoycoVaults, since den is already opened. Breaks ERC4626 standard.
 * @dev ExposureToken is sNECT initially for first days, then BB.SNECT, future version of ManagedLeveragedVault will be agnostic
 */
contract ManagedLeveragedVault is ERC4626Upgradeable, UUPSUpgradeable, IManagedLeveragedVault {
    using Math for uint256;
    using PriceLib for uint256;
    using SafeERC20 for IERC20;
    using FeeLib for uint256;
    using EpochLib for uint256;

    uint8 constant COLL_VAULT_DECIMALS = 18; // All collVaults have a decimalOffset to 18
    uint256 constant WAD = 1e18;
    uint256 constant BP = 1e4;

    uint256 constant EPOCH_SECS = 15 minutes;
    uint256 constant CUTOFF_SECS = 2 hours;
    uint256 constant GRANULARITY = 48; // GRANULARITY * EPOCH_SECS -> 12 hours

    bytes32 private constant _RETURN_VALUE = keccak256("ERC3156FlashBorrower.onFlashLoan");

    /// @custom:storage-location erc7201:openzeppelin.storage.BoycoVault
    struct BoycoVaultStorage {
        IMetaBeraborrowCore metaBeraborrowCore;
        mapping(address => bool) boycoAuthorized; // Unused
        IBorrowerOperations borrowerOperations;
        ILiquidStabilityPool lsp;
        address denManager;
        IInfraredCollateralVault collVault;
        IDebtToken nect;
        ICollVaultRouter collVaultRouter;
        uint16 nectOutThreshold; // Unused
        uint16 threshold; // Unused
        uint64 denICR; // WAD
        PromotionState boycoPromotionState; // Unused
        address keeper;
        uint64 lastKeeperOp; // Unused
    }

    /// @custom:storage-location erc7201:openzeppelin.storage.ManagedLeveragedVault
    struct ManagedLeveragedVaultStorage {
        address exposureToken;
        uint16 maxDeviationICRinBP;
        uint16 maxWithdrawalLossInBP;
        uint16 entryFeeInBP;
        uint16 exitFeeInBP;
        uint16 maxCompensationInBP;
        uint16 realizeLossThresholdInBP;
         /// @dev Max needed to select the starting time, "withdraw every 12h starting at 9PM time".
        uint256 epochOffset; // By default withdrawalEpoch ends at 12am/12pm UTC, this offsets it
        uint256 withdrawableWrappedAssets;
        mapping(bytes32 => uint16) threshold;
        mapping(uint256 => EpochReport) reports;
        mapping(address => bool) swapperWhitelist;
    }

    // keccak256(abi.encode(uint(keccak256("openzeppelin.storage.BoycoVault")) - 1)) & ~bytes32(uint(0xff))
    bytes32 private constant BoycoVaultStorageLocation =
        0x4b90d93bac34893618b51d871d9c8b3d48e01de187fe858a7a76d35f03985700;
    // keccak256(abi.encode(uint(keccak256("openzeppelin.storage.ManagedLeveragedVault")) - 1)) & ~bytes32(uint(0xff))
    bytes32 private constant ManagedLeveragedVaultStorageLocation =
        0x12ca37b393c412d053690654fb6d504d2a16c55c2bd10941af581f2221d9c100;

    function _getBoycoVaultStorage() internal pure returns (BoycoVaultStorage storage store) {
        assembly {
            store.slot := BoycoVaultStorageLocation
        }
    }

    function _getManagedLeveragedVaultStorage()
        internal
        pure
        returns (ManagedLeveragedVaultStorage storage store)
    {
        assembly {
            store.slot := ManagedLeveragedVaultStorageLocation
        }
    }

    constructor() {
        _disableInitializers();
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         MODIFIERS                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    modifier onlyOwner() {
        _onlyOwner();
        _;
    }

    modifier onlyOwnerOrKeeper() {
        _onlyOwnerOrKeeper();
        _;
    }

    modifier nonReentrant() {
        ReentrancyGuardLib._guard();
        _;
        ReentrancyGuardLib._unlockGuard();
    }

    modifier onlyThis() {
        // Only callable if inside a nonReentrant lock
        ReentrancyGuardLib._internalGuard();
        _;
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                       CORE FUNCTIONS                       */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /**
     * @notice Denominated in `asset()`, tracks collVaultShares (coll and margin) and substracts PnL of the exposure token, minus den debt
     * @dev Breaks ERC4626 since it can revert on BadDebt
     */
    function totalAssets() public view override(IManagedLeveragedVault, ERC4626Upgradeable) returns (uint256) {
        uint256 collVaultShares = getCollVaultBalance();
        uint256 debt = getDebtBalance();
        uint256 exposure = getExposureBalance();
        
        return _assetsValuation(collVaultShares, debt, exposure);
    }

    function mint(uint256, address) public override returns (uint256) { revert NotSupportedMethod(); }
    function withdraw(uint256, address, address) public override returns (uint256) { revert NotSupportedMethod(); }
    function redeem(uint256, address, address) public override returns (uint256) { revert NotSupportedMethod(); }


    function deposit(uint256 assets, address receiver) public override nonReentrant returns (uint256) {
        AddCollParams memory params = AddCollParams({
            upperHint: address(0),
            lowerHint: address(0),
            minSharesOut: 0,
            minCollVaultShares: 0
        });

        return _deposit(assets, receiver, params);
    }

    /**
     * @notice Accepts `asset()`, wraps into into a collVault and deposits it into the Den
     * @notice There's an entryFeeInBP which is charged in this vault shares
     * @dev It will increase Collateralization Ratio (ICR), which will shortly trigger a `increaseLeverage` call by the keeper
     * @param assets Amount of `asset()` to deposit
     * @param receiver Address to receive shares
     * @param params Struct with hints and minSharesOut of collVault wrapping
     */
    function deposit(uint256 assets, address receiver, AddCollParams calldata params)
        public
        nonReentrant
        returns (uint256)
    {
        return _deposit(assets, receiver, params);
    }

    /**
     * @notice Adds the intent into a withdrawal queue, which in a max duration of 13h -> (GRANULARITY * EPOCH_SECS) + CUTOFF_SECS
     * @notice This intent can be cancelled until 1 hour before the epoch end, transfering back all shares without any fee applied
     * @dev The shares are escrowed in the contract, and will be burned once the epoch is executed
     * @dev The exit fee is charged in shares
     */
    function redeemIntent(uint256 shares, address receiver, address owner)
        public
        nonReentrant
        returns (uint256 assets)
    {
        ManagedLeveragedVaultStorage storage $ = _getManagedLeveragedVaultStorage();

        uint256 maxShares = maxRedeem(owner);
        if (shares > maxShares) {
            revert ERC4626ExceededMaxRedeem(owner, shares, maxShares);
        }

        /// @dev Assets returned will variate once `executeWithdrawalEpoch` is called
        assets = previewRedeem(shares);

        if (msg.sender != owner) {
            _spendAllowance(owner, msg.sender, shares);
        }
        
        _transfer(owner, address(this), shares); // Escrow shares, will later be burned

        uint256 withdrawalEpoch = getWithdrawalRequestEpoch(block.timestamp);
        $.reports[withdrawalEpoch].balanceOf[receiver] += shares;
        $.reports[withdrawalEpoch].totalShares += shares;

        emit WithdrawalRequested(receiver, shares, withdrawalEpoch);
        emit Withdraw(msg.sender, receiver, owner, assets, shares);
    }

    /**
     * @notice Cancels a withdrawal intent, transferring back all his `redeemIntent` shares to the receiver
     * @dev Burns user escrowed shares
     */
    function cancelWithdrawalIntent(uint256 epoch, uint256 sharesToCancel, address receiver) external nonReentrant {
        if (epoch < getWithdrawalRequestEpoch(block.timestamp)) revert CancelTooLate();
    
        ManagedLeveragedVaultStorage storage $ = _getManagedLeveragedVaultStorage();
    
        if ($.reports[epoch].reported) revert AlreadyReported();
        uint256 shares = $.reports[epoch].balanceOf[msg.sender];
        if (shares == 0) revert AmountZero();
        if (sharesToCancel > shares) revert ExceededMaxRedeem(msg.sender, sharesToCancel, shares);
    
        $.reports[epoch].balanceOf[msg.sender] -= sharesToCancel;
        $.reports[epoch].totalShares -= sharesToCancel;
    
        _transfer(address(this), receiver, sharesToCancel);
    
        emit WithdrawalIntentCanceled(msg.sender, receiver, epoch, sharesToCancel);
    }

    /// @dev Can be called after cutOff of its withdrawalEpoch
    /// @dev Won't work during RecoveryMode
    /// @dev If `exposureValue > debtValue`, the potential issue is not enough collateral to withdraw from Den
    /// (e.g. collValue=100, debtValue=80, exposureValue=120). When we withdraw all shares, we need 140 collateral to withdraw. realizeProfit() fixes by shifting the status to collValue=140, debtValue=80, exposureValue=80.
    /// @dev If `exposureValue < debtValue`, the potential issue is not enough exposure tokens to swap to NECT for repay.
    /// (e.g. collValue=100, debtValue=80, exposureValue=60). When we withdraw shares, we need 80 NECT to repay. realizeLoss() fixes by shifting the status to collValue=80, debtValue=60, exposureValue=60.
    function executeWithdrawalEpoch(
        ExecuteWithdrawalParams calldata params
    ) external onlyOwner nonReentrant {
        (BoycoVaultStorage storage b$, ManagedLeveragedVaultStorage storage $) = _getStorage();

        _checkEpoch(params.epoch);

        CollDebt memory cd = _getCollVaultSharesAndDebtToUnwind(params.epoch);

        b$.borrowerOperations.adjustDen({
            denManager: b$.denManager,
            account: address(this),
            _maxFeePercentage: 0,
            _collDeposit: 0,
            _collWithdrawal: cd.collVaultSharesToWithdraw,
            _debtChange: cd.debtToUnwind,
            _isDebtIncrease: false,
            _upperHint: params.upperHint,
            _lowerHint: params.lowerHint
        });

        $.reports[params.epoch].reported = true;
        $.reports[params.epoch].wrappedAssets = cd.collVaultSharesToWithdraw;
        $.withdrawableWrappedAssets += cd.collVaultSharesToWithdraw;

        uint256 totalShares = $.reports[params.epoch].totalShares;

        _burn(address(this), totalShares);

        /// @dev Make sure position ICR has not substantially deviated
        _checkInvariantICR(getCurrentDenICR(), cd.prevICR, Tolerance.BOTH);

        emit EpochExecuted(params.epoch, totalShares, cd.collVaultSharesToWithdraw);
    }

    function withdrawFromEpoch(
        uint256 epoch,
        address receiver,
        ExternalRebalanceParams calldata unwrapParams
    ) external nonReentrant {
        (BoycoVaultStorage storage b$, ManagedLeveragedVaultStorage storage $) = _getStorage();

        if (!$.reports[epoch].reported) revert NotReported();

        uint256 shares = $.reports[epoch].balanceOf[msg.sender];
        if (shares == 0) revert AmountZero();

        uint256 epochTotalShares = $.reports[epoch].totalShares;
        uint256 epochWrappedAssets = $.reports[epoch].wrappedAssets;

        uint256 wrappedAssets = shares.mulDiv(epochWrappedAssets, epochTotalShares);

        uint256 assets = _rebalance(
                RebalanceParams({
                    sentCurrency: address(b$.collVault),
                    sentAmount: wrappedAssets,
                    receivedCurrency: asset(),
                    ext: unwrapParams
                })
            );

        delete $.reports[epoch].balanceOf[msg.sender];
        $.withdrawableWrappedAssets -= wrappedAssets;
        IERC20(asset()).safeTransfer(receiver, assets);

        emit WithdrawalProcessed(msg.sender, receiver, epoch, shares, assets);
    }

    /// @dev Mint NECT to increase exposure
    /// @dev Won't work during RecoveryMode
    /// @dev Keeper has to cap debtAmount to available debt, after accounting borrowingFee, since of maxSystemDebt
    function increaseLeverage(
        uint256 _maxFeePercentage,
        uint256 _debtAmount,
        address _upperHint,
        address _lowerHint,
        ExternalRebalanceParams memory params
    ) external onlyOwnerOrKeeper nonReentrant returns (uint256 exposure) {
        (BoycoVaultStorage storage b$, ManagedLeveragedVaultStorage storage $) = _getStorage();

        b$.borrowerOperations.withdrawDebt(
            b$.denManager,
            address(this),
            _maxFeePercentage,
            _debtAmount,
            _upperHint,
            _lowerHint
        );

        exposure = _rebalance(
            RebalanceParams({
                sentCurrency: address(b$.nect),
                sentAmount: _debtAmount,
                receivedCurrency: $.exposureToken,
                ext: params
            })
        );

        uint256 currentDenICR = getCurrentDenICR();
        uint256 targetICR = getTargetICR();
        if (currentDenICR < targetICR) revert PositionOutOfTargetCR(currentDenICR, targetICR);
    }

    /// @dev Burn NECT to reduce exposure
    function decreaseLeverage(
        uint256 _exposureAmount,
        address _upperHint,
        address _lowerHint,
        ExternalRebalanceParams calldata exposureToNectParams
    ) external onlyOwnerOrKeeper nonReentrant returns (uint256 debt) {
        (BoycoVaultStorage storage b$, ManagedLeveragedVaultStorage storage $) = _getStorage();

        debt = _rebalance(
            RebalanceParams({
                sentCurrency: $.exposureToken,
                sentAmount: _exposureAmount,
                receivedCurrency: address(b$.nect),
                ext: exposureToNectParams
            })
        );

        _repayDebt(debt, _upperHint, _lowerHint);

        _checkInvariantICR(getCurrentDenICR(), getTargetICR(), Tolerance.ABOVE);
    }

    function realizeProfit(
        uint16 profitsPercentageInBP,
        ExternalRebalanceParams calldata exposureToCollParams,
        address _upperHint,
        address _lowerHint
    ) external onlyOwnerOrKeeper nonReentrant {
        (BoycoVaultStorage storage b$, ManagedLeveragedVaultStorage storage $) = _getStorage();

        if (profitsPercentageInBP > BP) revert SurpassedPrecision(BP);

        int256 profit = getPnL();
        if (profit <= 0) revert NoProfit(profit);

        address exposureToken = $.exposureToken;
        uint256 profitInExposure = uint256(profit).convertToAmount(getPrice(exposureToken), IAsset(exposureToken).decimals(), Math.Rounding.Down);

        uint256 sentAmount = profitInExposure.mulDiv(profitsPercentageInBP, BP);

        uint256 coll = _rebalance(
            RebalanceParams({
                sentCurrency: exposureToken,
                sentAmount: sentAmount,
                receivedCurrency: address(b$.collVault),
                ext: exposureToCollParams
            })
        );

        _addColl(coll, _upperHint, _lowerHint);

        emit ProfitRealized(profitInExposure, sentAmount, coll);
    }

    /**
     * @notice Reduces debt by swapping collateral to NECT, and reducing debt repaying it
     * @dev Can only be called during cut-off period, or after withdrawal epoch only if `executeWithdrawalEpoch` wasn't called
     * @dev Ideally inside `executeWithdrawalEpoch`, but separated to reduce its complexity
     * @dev Has to be called as close as possible before calling `executeWithdrawalEpoch`
     */
    function realizeLoss(
        RealizeLossParams calldata params
    ) external onlyOwnerOrKeeper nonReentrant {
        (BoycoVaultStorage storage b$, ManagedLeveragedVaultStorage storage $) = _getStorage();

        uint256 maxWithdrawalEpoch = getWithdrawalRequestEpoch(block.timestamp);

        if (params.withdrawalEpoch > maxWithdrawalEpoch) revert EpochTooLate(params.withdrawalEpoch, maxWithdrawalEpoch);
        if ($.reports[params.withdrawalEpoch].reported) revert AlreadyReported();
        if ($.reports[params.withdrawalEpoch].lossRealized) revert LossAlreadyRealized();
        if (params.withdrawalEpoch == maxWithdrawalEpoch) {
            // Only callable after cutOff period
            uint256 cutoffTimestamp = getCutOffStartTimestamp(params.withdrawalEpoch);
            if (block.timestamp < cutoffTimestamp) revert EpochTooEarly(params.withdrawalEpoch, block.timestamp, cutoffTimestamp);
        }

        uint256 totalShares = $.reports[params.withdrawalEpoch].totalShares;

        if (totalShares == 0) revert AmountZero();

        (uint256 epochValueLoss, uint256 maxCollWithdrawnWithPremium, uint256 nectCompensation) = computeLosses(totalShares);

        if (epochValueLoss == 0) revert NoLoss();

        bytes memory data = abi.encode(
            OnFlashLoanParams({
                maxCollWithdrawnWithPremium: maxCollWithdrawnWithPremium,
                nectCompensation: nectCompensation,
                params: params
            })
        );

        // Flashloan NECT to be able to repay and withdraw coll without big change in ICR, swap coll to repay NECT flashloaned
        b$.nect.flashLoan({
            receiver: IERC3156FlashBorrower(address(this)),
            token: address(b$.nect),
            amount: epochValueLoss, // Assumes NECT is $1
            data: data
        });

        $.reports[params.withdrawalEpoch].lossRealized = true;
        
        emit LossRealized(params.withdrawalEpoch, totalShares, epochValueLoss, maxCollWithdrawnWithPremium);
    }

    /// @dev Flash‐loan callback to unwind loss for one epoch
    /// @dev Contract is whitelisted to not pay flash loan fee
    /// @dev Naive implementation would be to first withdraw the collateral, swap it to NECT and repay
    /// but we have to use a flashLoan since in RecoveryMode the withdrawal wouldn't be accepted
    function onFlashLoan(
        address initiator,
        address /*token*/,
        uint256 amount,
        uint256 /*fee*/,
        bytes calldata data
    ) external onlyThis returns (bytes32) {
        BoycoVaultStorage storage b$ = _getBoycoVaultStorage();

        if (msg.sender != address(b$.nect) || initiator != address(this)) revert NotNect(msg.sender);

        (
            OnFlashLoanParams memory p
        ) = abi.decode(data, (OnFlashLoanParams));

        // repay debt and withdraw coll
        b$.borrowerOperations.adjustDen({
            denManager: b$.denManager,
            account: address(this),
            _maxFeePercentage: 0,
            _collDeposit: 0,
            _collWithdrawal: p.maxCollWithdrawnWithPremium,
            _debtChange: amount + p.nectCompensation,
            _isDebtIncrease: false,
            _upperHint: p.params.upperHint,
            _lowerHint: p.params.lowerHint
        });

        // repay flash loan
        uint256 nectToRepayFlashLoan = _rebalance(
            RebalanceParams({
                sentCurrency: address(b$.collVault),
                sentAmount: p.maxCollWithdrawnWithPremium,
                receivedCurrency: address(b$.nect),
                ext: p.params.collVaultToNectParams
            })
        );

        if (nectToRepayFlashLoan < amount) revert VaultSlippage(nectToRepayFlashLoan, amount);

        uint256 leftOver = nectToRepayFlashLoan - amount;
        if (leftOver != 0) {
            _repayDebt(leftOver, p.params.upperHint, p.params.lowerHint);
        }

        b$.nect.approve(address(b$.nect), amount);

        return _RETURN_VALUE;
    }

    /// @notice Open a new Den with minNetDebt and all availabe collateral in the case of a migration (closedByOwner), or liquidation/redemption
    /// @dev If it's a migration, collVault will be obtained with the assets kept in the contract after the `closeBoycoDen` in previous 'BoycoVault' implementation
    /// @dev If it's a liquidation/redemption, if there's collSurplus it will be claimed
    function openDen(
        uint256 _maxFeePercentage,
        uint256 _minCollVaultShares,
        address _upperHint,
        address _lowerHint,
        ExternalRebalanceParams calldata exposureToAssetParams
    ) external onlyOwnerOrKeeper {
        (BoycoVaultStorage storage b$, ManagedLeveragedVaultStorage storage $) = _getStorage();

        IDenManager denManager = IDenManager(b$.denManager);

        {
            uint256 status = denManager.getDenStatus(address(this));
            if (DenStatus(status) == DenStatus.active) revert AlreadyOpened();

            uint256 exposureBalance = getExposureBalance();
            if (exposureBalance != 0) {
                _rebalance(
                    RebalanceParams({
                        sentCurrency: address($.exposureToken),
                        sentAmount: exposureBalance,
                        receivedCurrency: asset(),
                        ext: exposureToAssetParams
                    })
                );
            }
        }

        uint256 collVaultShares = b$.collVault.balanceOf(address(this)) - $.withdrawableWrappedAssets;
        collVaultShares += _claimCollateral();
        uint256 shares;
        {
            uint256 assetsAmount = IERC20(asset()).balanceOf(address(this));
            if (assetsAmount != 0) {
                IERC20(asset()).forceApprove(address(b$.collVault), assetsAmount);
                uint256 mintedShares = b$.collVault.deposit(assetsAmount, address(this));
                if (mintedShares < _minCollVaultShares) revert VaultSlippage(_minCollVaultShares, mintedShares);
                collVaultShares += mintedShares;
            }
            /// @dev The first openDen will only donate assets
            shares = previewDeposit(assetsAmount);
        }

        uint256 minNetDebt = b$.borrowerOperations.minNetDebt();

        IERC20(address(b$.collVault)).forceApprove(address(b$.borrowerOperations), collVaultShares);
        b$.borrowerOperations.openDen(
            address(denManager),
            address(this),
            _maxFeePercentage,
            collVaultShares,
            minNetDebt,
            _upperHint,
            _lowerHint
        );

        _mintOnce($.exposureToken, shares, minNetDebt);
    }

    function _mintOnce(address exposureToken, uint shares, uint minNetDebt) internal {
        BoycoVaultStorage storage b$ = _getBoycoVaultStorage();

        if (totalSupply() == 0) {
            uint256 lspMinted = b$.lsp.deposit(minNetDebt, address(this));

            if (exposureToken != address(b$.lsp)) {
                _bbSNectDeposit(address(b$.lsp), exposureToken, lspMinted);
            }

            _mint(b$.metaBeraborrowCore.owner(), shares);
        }
    }

    function _bbSNectDeposit(address lsp, address exposureToken, uint amount) internal {
        IERC20(lsp).forceApprove(exposureToken, amount);
        IERC4626(exposureToken).deposit(amount, address(this));
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           SETTERS                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /*
     * @notice Custom initialize for the additional namespaced storage this new implementation adds on top
     * @notice Batch update critical vault parameters
     * @dev Called in `upgradeToAndCall`
     * @params _previousTotalAssets only used in initialization
     */
    function setParameters(VaultParameters calldata params, uint256 _previousTotalAssets) external onlyOwner {
        (BoycoVaultStorage storage b$, ManagedLeveragedVaultStorage storage $) = _getStorage();

        if (params.denICR <= WAD) revert BelowCR();
        if (
            params.maxDeviationICRinBP > BP
            || params.entryFeeInBP > BP
            || params.exitFeeInBP > BP
            || params.maxCompensationInBP > BP
            || params.realizeLossThresholdInBP > BP
            || params.withdrawalMaxLossInBP > BP
        ) revert SurpassedPrecision(BP);
        if (params.epochOffset > GRANULARITY) revert SurpassedPrecision(GRANULARITY);

        if ($.exposureToken != params.exposureToken) {
            /// @dev Opinionated business logic, since initial exposure token is sNECT and once this is called will be to set BB.SNECT
            if (getPrice(params.exposureToken) == 0) revert InvalidExposureToken();

            if (params.exposureToken != address(b$.lsp)) {
                uint256 lspBalance = b$.lsp.balanceOf(address(this));

                if (lspBalance != 0) {
                    _bbSNectDeposit(address(b$.lsp), params.exposureToken, lspBalance);
                }
            }
            /// If params.exposureToken is LSP, don't do anything since it will be previous BoycoVault holding
            $.exposureToken = params.exposureToken;
        }

        if (_previousTotalAssets != 0) {
            uint256 _totalAssets = totalAssets();
            uint256 maxDelta = Math.min(_previousTotalAssets, _totalAssets) / BP;
            if (!BeraborrowMath._isApproxEqAbs(
                _previousTotalAssets,
                _totalAssets,
                maxDelta
            )) revert TotalAssetsDeviation();
        }

        b$.denICR = params.denICR;
        $.maxDeviationICRinBP = params.maxDeviationICRinBP;
        b$.denManager = params.denManager;
        b$.collVault = IInfraredCollateralVault(
            IDenManager(params.denManager).collateralToken()
        );
        b$.keeper = params.keeper;
        b$.borrowerOperations = IBorrowerOperations(
            params.borrowerOperations
        );
        $.entryFeeInBP = params.entryFeeInBP;
        $.exitFeeInBP = params.exitFeeInBP;
        $.maxCompensationInBP = params.maxCompensationInBP;
        $.realizeLossThresholdInBP = params.realizeLossThresholdInBP;
        $.maxWithdrawalLossInBP = params.withdrawalMaxLossInBP;
        $.epochOffset = params.epochOffset;

        emit ParametersUpdated(params);
    }

    function setWhitelist(
        address _swapper,
        bool _whitelisted
    ) external onlyOwner {
        ManagedLeveragedVaultStorage storage $ = _getManagedLeveragedVaultStorage();
        
        $.swapperWhitelist[_swapper] = _whitelisted;
    }

    function setPairThreshold(address _tokenIn, address _tokenOut, uint16 _thresholdInBP) external onlyOwner {
        _setPairThreshold(_tokenIn, _tokenOut, _thresholdInBP);
    }

    function _setPairThreshold(address _tokenIn, address _tokenOut, uint16 _thresholdInBP) internal {
        ManagedLeveragedVaultStorage storage $ = _getManagedLeveragedVaultStorage();

        if (_thresholdInBP > BP) revert SurpassedPrecision(BP);

        bytes32 hash = keccak256(abi.encodePacked(_tokenIn, _tokenOut));
        $.threshold[hash] = _thresholdInBP;

        emit NewPairThreshold(_tokenIn, _tokenOut, _thresholdInBP);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          GETTERS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Accounts for partial liquidations, coll/debt redistribution and debt interest
    function getCurrentDenICR() public view returns (uint256) {
        BoycoVaultStorage storage b$ = _getBoycoVaultStorage();

        IDenManager denManager = IDenManager(b$.denManager);

        uint256 collPrice = denManager.fetchPrice();

        return denManager.getCurrentICR(address(this), collPrice);
    }

    function getCollVaultBalance() public view returns (uint256) {
        BoycoVaultStorage storage b$ = _getBoycoVaultStorage();

        IDenManager denManager = IDenManager(b$.denManager);

        (uint256 collVaultShares,) = denManager.getDenCollAndDebt(address(this));
        collVaultShares += denManager.surplusBalances(address(this));

        return collVaultShares;
    }

    function getCollateralValue() public view returns (uint256) {
        uint256 collVaultShares = getCollVaultBalance();
        return _getCollateralValue(collVaultShares);
    }

    function getExposureBalance() public view returns (uint256) {
        ManagedLeveragedVaultStorage storage $ = _getManagedLeveragedVaultStorage();

        /// @dev If exposure is NECT (unlikely) it will account for nectCompensation
        // It's more serious if it's the coll of the pointing DenManager, since on `executeWithdrawalEpoch` it will be added to the balance, but is reserved for the withdrawer
        uint256 balance = IERC20($.exposureToken).balanceOf(address(this));
        return balance;
    }

    function getDebtBalance() public view returns (uint256) {
        BoycoVaultStorage storage b$ = _getBoycoVaultStorage();

        (, uint256 debt) = IDenManager(b$.denManager).getDenCollAndDebt(address(this));
        return debt;
    }

    function getExposureValue() public view returns (uint256) {
        uint256 balance = getExposureBalance();
        return _getExposureValue(balance);
    }
    
    function getPnL() public view returns (int256) {
        return int256(getExposureValue()) - int256(getDebtBalance());
    }

    function getTargetICR() public view returns (uint256) {
        BoycoVaultStorage storage b$ = _getBoycoVaultStorage();

        return b$.denICR;
    }

    function getWithdrawalRequestEpoch(uint256 timestamp) public pure returns (uint256) {
        return timestamp.getWithdrawalRequestEpoch(GRANULARITY, EPOCH_SECS, CUTOFF_SECS);
    }

    function getPrice(
        address token
    ) public view returns (uint256 scaledPriceInUsdWad) {
        IPriceFeed priceFeed = IPriceFeed(_getBoycoVaultStorage().metaBeraborrowCore.priceFeed());
        return priceFeed.fetchPrice(token);
    }

    function getDebtToUnwindAndCollRequested(uint256 _epoch) public view returns (uint256 debtToUnwind, uint256 collVaultSharesRequested, uint256 shareFee, uint256 currICR) {
        (BoycoVaultStorage storage b$, ManagedLeveragedVaultStorage storage $) = _getStorage();

        uint256 totalShares = $.reports[_epoch].totalShares;

        if (totalShares == 0) revert AmountZero();

        uint256 requestedAssets;
        (requestedAssets, shareFee) = _previewRedeem(totalShares);

        collVaultSharesRequested = _assetsToCollVaultShares(requestedAssets);

        (uint256 collVaultShares, uint256 debt) = IDenManager(b$.denManager).getDenCollAndDebt(address(this));

        currICR = BeraborrowMath._computeCR(collVaultShares, debt, IDenManager(b$.denManager).fetchPrice());

        // Find proportional debt unwind to collateral, so that ICR is unchanged, we assume an already pretty close ICR
        // If we were to responsabilize withdrawers to targetICR with a current deviated denICR, it would only responsabilize them to pay the slippage/borrow costs
        // Instead, we responsabilize both withdrawers and depositors, only using `increaseLeverage` and `decreaseLeverage`, which socializes losses
        debtToUnwind = debt.mulDiv(collVaultSharesRequested, collVaultShares);
    }

    function getCollVaultSharesToWithdraw(uint256 _collVaultSharesRequested, uint256 _debtToUnwind, uint256 _exposureWithdrawn) public view returns (uint) {
        BoycoVaultStorage storage b$ = _getBoycoVaultStorage();
        
        address collVault = address(b$.collVault);

        // Instead of recalculating totalAssets, which socializes the loss to everyone
        // Let's see how much the loss was, and apply it to the withdrawer by substracting the collVaultShares to withdraw
        uint256 exposureWithdrawnValue = _getExposureValue(_exposureWithdrawn);
        /// @dev Most cases will present a loss, but in case of profit, we don't add coll
        uint256 slippageLossInUsd = exposureWithdrawnValue > _debtToUnwind ? exposureWithdrawnValue - _debtToUnwind : 0;
        uint256 slippageLossInColl = slippageLossInUsd.convertToAmount(getPrice(collVault), COLL_VAULT_DECIMALS, Math.Rounding.Up);
        return _collVaultSharesRequested - slippageLossInColl;
    }

    // Preview ERC4626 functions applying entry/exit fees
    function previewDeposit(uint256 assets) public view override(IManagedLeveragedVault, ERC4626Upgradeable) returns (uint) {
        (uint256 rawShares, uint256 feeShares) = _previewDeposit(assets);
        return rawShares - feeShares;
    }

    /// @dev Preview taking an exit fee on redeem. See {IERC4626-previewRedeem}.
    /// @dev Doesn't account intra-operation slippage losses which may decrease assets withdrawn
    function previewRedeem(
        uint256 shares
    ) public view override(IManagedLeveragedVault, ERC4626Upgradeable) returns (uint) {
        (uint256 assets,) = _previewRedeem(shares);
        return assets;
    }

    function _previewDeposit(uint256 assets) internal view returns (uint256 rawShares, uint256 feeShares) {
        ManagedLeveragedVaultStorage storage $ = _getManagedLeveragedVaultStorage();

        rawShares = super.previewDeposit(assets);
        feeShares = rawShares.feeOnRaw($.entryFeeInBP);
    }

    function _previewRedeem(uint256 shares) internal view virtual returns (uint, uint) {
        ManagedLeveragedVaultStorage storage $ = _getManagedLeveragedVaultStorage();

        uint256 shareFee = shares.feeOnRaw($.exitFeeInBP);
        uint256 assets = super.previewRedeem(shares - shareFee);
        return (assets, shareFee);
    }

    /* STORAGE VIEW */

    function extSloads(bytes32[] calldata slots) external view returns (bytes32[] memory res) {
        uint nSlots = slots.length;

        res = new bytes32[](nSlots);

        for (uint i; i < nSlots;) {
            bytes32 slot = slots[i++];

            assembly ("memory-safe") {
                mstore(add(res, mul(i, 32)), sload(slot))
            }
        }
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         INTERNALS                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Pulls assets, applies entry fee and mints shares
    function _deposit(uint256 assets, address receiver, AddCollParams memory params) internal returns (uint256 shares) {
        BoycoVaultStorage storage b$ = _getBoycoVaultStorage();

        uint256 maxAssets = maxDeposit(receiver);
        if (assets > maxAssets) {
            revert ERC4626ExceededMaxDeposit(receiver, assets, maxAssets);
        }

        (uint rawShares, uint feeShares) = _previewDeposit(assets);
        shares = rawShares - feeShares;

        IERC20(asset()).safeTransferFrom(msg.sender, address(this), assets);

        if (feeShares != 0) {
            _mint(b$.metaBeraborrowCore.feeReceiver(), feeShares);
        }

        _mint(receiver, shares);

        emit Deposit(msg.sender, receiver, assets, shares);

        if (shares < params.minSharesOut) revert VaultSlippage(params.minSharesOut, shares);

        IERC20(asset()).forceApprove(address(b$.collVault), assets);
        uint256 collVaultShares = b$.collVault.deposit(assets, address(this));
        if (collVaultShares < params.minCollVaultShares) revert VaultSlippage(params.minCollVaultShares, collVaultShares);

        _addColl(collVaultShares, params.upperHint, params.lowerHint);
    }

    function _addColl(
        uint256 collVaultShares,
        address upperHint,
        address lowerHint
    ) internal {
        BoycoVaultStorage storage b$ = _getBoycoVaultStorage();
        
        IERC20(address(b$.collVault)).forceApprove(address(b$.borrowerOperations), collVaultShares);
        b$.borrowerOperations.addColl(
            b$.denManager,
            address(this),
            collVaultShares,
            upperHint,
            lowerHint
        );
    }

    function _repayDebt(
        uint256 debt,
        address _upperHint,
        address _lowerHint
    ) internal {
        BoycoVaultStorage storage b$ = _getBoycoVaultStorage();

        b$.borrowerOperations.repayDebt(
            b$.denManager,
            address(this),
            debt,
            _upperHint,
            _lowerHint
        );
    }

    function _rebalance(RebalanceParams memory p) internal returns (uint256) {
        (BoycoVaultStorage storage b$, ManagedLeveragedVaultStorage storage $) = _getStorage();

        if (p.sentCurrency == p.receivedCurrency) revert SameCurrency(p.sentCurrency, p.receivedCurrency);
        if (!_getManagedLeveragedVaultStorage().swapperWhitelist[p.ext.swapper]) revert SwapperNotWhitelisted(p.ext.swapper);

        uint256 sentPrice = getPrice(p.sentCurrency);
        uint256 receivedPrice = getPrice(p.receivedCurrency);
        uint256 sentCurrencyBalance = IERC20(p.sentCurrency).balanceOf(address(this));
        uint256 receivedCurrencyBalance = IERC20(p.receivedCurrency).balanceOf(address(this));

        // Perform the swap using the swapper contract
        IERC20(p.sentCurrency).safeTransfer(p.ext.swapper, p.sentAmount);
        IRebalancer(p.ext.swapper).swap(
            p.sentCurrency,
            p.sentAmount,
            p.receivedCurrency,
            p.ext.payload
        );

        uint256 received = IERC20(p.receivedCurrency).balanceOf(address(this)) - receivedCurrencyBalance;

        if (msg.sender == b$.keeper || msg.sender == b$.metaBeraborrowCore.owner() || p.ext.minRebalanceOut == 0) {
            uint256 sent = sentCurrencyBalance - IERC20(p.sentCurrency).balanceOf(address(this));

            uint256 receivedValue = received.convertToValue(receivedPrice, IAsset(p.receivedCurrency).decimals());
            uint256 sentValue = sent.convertToValue(sentPrice, IAsset(p.sentCurrency).decimals());

            bytes32 hash = keccak256(abi.encodePacked(p.sentCurrency, p.receivedCurrency));
            uint16 threshold = _getManagedLeveragedVaultStorage().threshold[hash];
            if (
                p.sentCurrency == address(b$.collVault)
                && p.receivedCurrency == address(b$.nect)
                && threshold == 0
            ) {
                threshold = $.realizeLossThresholdInBP;
            }

            // if threshold isn't set, it will be 0, not tolerating any slippage
            if (receivedValue < sentValue.mulDiv(BP - threshold, BP)) revert BelowThreshold(sentValue, receivedValue);
        }
        if (received < p.ext.minRebalanceOut) revert VaultSlippage(p.ext.minRebalanceOut, received);

        return received;
    }

    function _claimCollateral() internal returns (uint256 collVaultAmount) {
        BoycoVaultStorage storage b$ = _getBoycoVaultStorage();

        IDenManager denManager = IDenManager(b$.denManager);

        collVaultAmount = denManager.surplusBalances(address(this));

        if (collVaultAmount != 0) {
            denManager.claimCollateral(address(this), address(this));
        }
    }

    function _assetsValuation(uint256 collVaultShares, uint256 debt, uint256 exposure) internal view returns (uint256) {
        // Calculate values in USD (all with 18 decimals)
        uint256 collateralValue = _getCollateralValue(collVaultShares);
        uint256 exposureValue = _getExposureValue(exposure);
        uint256 debtValue = debt; // Soft peg NECT to $1
        
        // Check for bad debt
        if (debtValue > collateralValue + exposureValue) {
            revert BadDebt(debtValue - (collateralValue + exposureValue));
        }
        
        // Net value in USD (18 decimals)
        uint256 netValue = collateralValue + exposureValue - debtValue;
        
        // Convert to asset terms
        uint256 assetPrice = getPrice(asset());
        uint8 assetDecimals = IAsset(asset()).decimals();
        
        // Calculate assets with proper decimal scaling
        uint256 assets = netValue.mulDiv(10 ** assetDecimals, assetPrice);
        
        return assets;
    }

    function _getExposureValue(uint256 amount) internal view returns (uint256) {
        ManagedLeveragedVaultStorage storage $ = _getManagedLeveragedVaultStorage();

        /// @dev Points to `setSpotOracle` of `LSPOracle::fetchPrice` (sNECT) or `LSPOracle::fetchPrice * totalAssets / totalSupply` (BB.SNECT)
        uint256 price = getPrice($.exposureToken);
        uint8 _decimals = IAsset($.exposureToken).decimals();

        return amount.convertToValue(price, _decimals);
    }

    // Helper function to get collateral value in USD
    function _getCollateralValue(uint256 amount) internal view returns (uint256) {
        BoycoVaultStorage storage b$ = _getBoycoVaultStorage();

        uint256 price = getPrice(address(b$.collVault));
        
        return amount.convertToValue(price, COLL_VAULT_DECIMALS);
    }

    function _checkEpoch(uint256 _epoch) internal view {
        ManagedLeveragedVaultStorage storage $ = _getManagedLeveragedVaultStorage();

        if ($.reports[_epoch].reported) revert AlreadyReported();
        /// @dev We expect `realizeLosses` to be called shortly before `executeWithdrawalEpoch`
        if (getPnL() < 0 && !$.reports[_epoch].lossRealized) revert LossNotRealized();

        uint256 cutoffTimestamp = getCutOffStartTimestamp(_epoch);

        if (block.timestamp < cutoffTimestamp) revert EpochTooEarly(_epoch, block.timestamp, cutoffTimestamp);
    }

    function getCutOffStartTimestamp(uint256 _epoch) public pure returns (uint256) {
        return _epoch.getCutOffStartTimestamp(GRANULARITY, EPOCH_SECS, CUTOFF_SECS);
    }

    function _getCollVaultSharesAndDebtToUnwind(uint256 _epoch) internal returns (CollDebt memory cd) {
        (BoycoVaultStorage storage b$, ManagedLeveragedVaultStorage storage $) = _getStorage();

        uint256 collVaultSharesRequested;
        uint256 shareFee;
        (cd.debtToUnwind, collVaultSharesRequested, shareFee, cd.prevICR) = getDebtToUnwindAndCollRequested(_epoch);

        if (shareFee != 0) {
            _mint(b$.metaBeraborrowCore.feeReceiver(), shareFee);
        }

        // Withdrawal of pro-rata collateral, will probably require debt reduction
        // We unwind exposure to repay debt so that expected collWithdrawal doesn't deviate from target ICR
        /// @dev We can have `rebalance` modular approach, this is a built-in that only works for BB.sNECT
        /// @dev Inconvenient to modular approach for this version, is that it makes the calldata more complex
        // We want to get NECT, we'll need x LSP, withdraw of that debtToUnwind
        uint256 sharesToWithdraw = 
            $.exposureToken == address(b$.lsp)
                ? cd.debtToUnwind
                : IERC4626(b$.lsp).previewWithdraw(cd.debtToUnwind);

        uint256 exposureWithdrawn = IERC4626($.exposureToken).withdraw(sharesToWithdraw, address(this), address(this));

        if ($.exposureToken != address(b$.lsp)) {
            IERC4626(b$.lsp).withdraw(cd.debtToUnwind, address(this), address(this));
        }

        cd.collVaultSharesToWithdraw = getCollVaultSharesToWithdraw(collVaultSharesRequested, cd.debtToUnwind, exposureWithdrawn);

        collVaultSharesRequested = collVaultSharesRequested.mulDiv(BP - $.maxWithdrawalLossInBP, BP);
        if (cd.collVaultSharesToWithdraw < collVaultSharesRequested) revert VaultSlippage(cd.collVaultSharesToWithdraw, collVaultSharesRequested);
    }

    /// @dev Only enables `currentICR` higher than targetICR by a certain threshold
    function _checkInvariantICR(uint256 currentICR, uint256 targetICR, Tolerance tolerance) internal view {
        ManagedLeveragedVaultStorage storage $ = _getManagedLeveragedVaultStorage();

        uint256 maxDelta = Math.min(currentICR, targetICR).mulDiv($.maxDeviationICRinBP, BP);

        if (Tolerance.ABOVE == tolerance) {
            if (!BeraborrowMath._isWithinToleranceAbove(currentICR, targetICR, maxDelta)) revert PositionOutOfTargetCR(currentICR, targetICR);
        } else {
            if (!BeraborrowMath._isApproxEqAbs(currentICR, targetICR, maxDelta)) revert PositionOutOfTargetCR(currentICR, targetICR);
        }
    }

    function computeLosses(
        uint256 totalShares
    ) public view returns (uint256 epochValueLoss, uint256 maxCollWithdrawnWithPremium, uint256 nectCompensation) {
        (BoycoVaultStorage storage b$, ManagedLeveragedVaultStorage storage $) = _getStorage();

        uint256 debtValue = getDebtBalance(); // soft peg NECT to $1
        uint256 exposureValue = getExposureValue();
        uint256 _totalSupply = totalSupply();

        uint256 totalValueLoss = debtValue > exposureValue ? debtValue - exposureValue : 0;

        uint256 price = getPrice(address(b$.collVault)); // WAD-scaled

        epochValueLoss = totalShares.mulDiv(
            totalValueLoss,
            _totalSupply,
            Math.Rounding.Up
        );

        nectCompensation = Math.min(
            epochValueLoss * $.maxCompensationInBP / BP,
            IERC20(address(b$.nect)).balanceOf(address(this)) /// @dev Assumes NECT donated is only for compensation purposes
        );
        epochValueLoss -= nectCompensation;

        uint256 epochColLoss = epochValueLoss.mulDiv(
            WAD,
            price,
            Math.Rounding.Up
        );
        maxCollWithdrawnWithPremium = Math.min(getCollVaultBalance(), epochColLoss.mulDiv(BP + $.realizeLossThresholdInBP, BP));
    }

    function _getStorage() internal pure returns (BoycoVaultStorage storage b$, ManagedLeveragedVaultStorage storage $) {
        b$ = _getBoycoVaultStorage();
        $ = _getManagedLeveragedVaultStorage();
    }

    function _assetsToCollVaultShares(uint256 amount) internal view returns (uint256) {
        BoycoVaultStorage storage b$ = _getBoycoVaultStorage();

        return b$.collVault.convertToShares(amount);
    }

    function _onlyOwner() private view {
        if (msg.sender != _getBoycoVaultStorage().metaBeraborrowCore.owner()) revert NotOwner(msg.sender);
    }

    function _onlyOwnerOrKeeper() private view {
        if (msg.sender != _getBoycoVaultStorage().metaBeraborrowCore.owner() && msg.sender != _getBoycoVaultStorage().keeper) revert NotOwner(msg.sender);
    }
}