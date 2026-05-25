// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {
    ERC20Upgradeable,
    IERC20Metadata
} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
import { SafeCast } from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import { SafeERC20, IERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {
    ERC4626Upgradeable
} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";

import { IDomfiVault } from "./interfaces/IDomfiVault.sol";
import { IDomfiOpenPnl } from "./interfaces/IDomfiOpenPnl.sol";
import { IDomfiRegistry } from "./interfaces/IDomfiRegistry.sol";
import { IDomfiLockedDepositNft } from "./interfaces/IDomfiLockedDepositNft.sol";

contract DomfiVault is IDomfiVault, ERC4626Upgradeable {
    using Math for uint256;
    using SafeCast for uint256;

    using SafeCast for int256;

    IDomfiRegistry public registry;

    uint64 internal constant PRECISION_18 = 1e18; // 18 decimals
    uint64 internal constant MIN_DAILY_ACC_PNL_DELTA = 1e13; // PRECISION_18

    uint16 internal constant MAX_DISCOUNT_P = 5000; // PRECISION_2 - 50%
    uint16 internal constant MAX_SUPPLY_INCREASE_DAILY_P = 30000; // PRECISION_2 300% per day

    uint32 internal constant PRECISION_6 = 1e6; // 6 decimals
    uint32 internal constant MAX_LOCK_DURATION = 365 days;
    uint32 internal constant MIN_LOCK_DURATION = 1 weeks;

    uint8 internal constant PRECISION_2 = 1e2; // 2 decimals

    // slither-disable-next-line naming-convention
    uint8[3] WITHDRAW_EPOCHS_LOCKS;

    uint32 public currentEpochStart;
    uint32 public lastMaxSupplyUpdateTs;
    uint32 public lastDailyAccPnlDeltaResetTs;

    uint16 public currentEpoch;
    uint16 public maxDiscountP; // PRECISION_2 (%)
    uint16 public maxDiscountThresholdP; // PRECISION_2 (%)
    uint16 public maxSupplyIncreaseDailyP; // PRECISION_2 (% per day)
    uint16[2] public withdrawLockThresholdsP; // PRECISION_2

    uint256 public currentMaxSupply;
    uint256 public shareToAssetsPrice;
    uint256 public accRewardsPerToken;
    uint256 public lockedDepositsCount;
    uint256 public maxAccOpenPnlDeltaPerToken;
    uint256 public maxDailyAccPnlDeltaPerToken;

    int256 public currentEpochOpenPnl;

    int256 public totalAccPnl;
    int256 public accPnlPerTokenUsed;
    int256 public dailyAccPnlDeltaPerToken;

    int256 public totalClosedPnl;
    uint256 public totalLockedDiscounts;
    uint256 public totalDiscounts;

    mapping(uint256 depositId => LockedDeposit) public lockedDeposits;
    mapping(address trader => mapping(uint16 withdrawEpoch => uint256)) public withdrawRequests;
    mapping(address trader => mapping(uint16 withdrawEpoch => uint256)) public withdrawPrices;

    constructor() {
        _disableInitializers();
    }

    function initialize(
        address assetAddress,
        address registryAddress,
        string memory tokenName,
        string memory tokenSymbol,
        uint256 initialMaxAccOpenPnlDeltaPerToken,
        uint256 initialMaxDailyAccPnlDeltaPerToken,
        uint16 initialMaxSupplyIncreaseDailyP,
        uint16 initialMaxDiscountP,
        uint16 initialMaxDiscountThresholdP,
        uint16[2] calldata initialWithdrawLockThresholdsP
    ) external initializer {
        if (
            assetAddress == address(0) || registryAddress == address(0)
                || initialMaxDailyAccPnlDeltaPerToken < MIN_DAILY_ACC_PNL_DELTA
                || initialWithdrawLockThresholdsP[uint256(Bound.UPPER)]
                    <= initialWithdrawLockThresholdsP[uint256(Bound.LOWER)]
                || initialMaxSupplyIncreaseDailyP > MAX_SUPPLY_INCREASE_DAILY_P
                || initialMaxDiscountP > MAX_DISCOUNT_P
                || initialMaxDiscountThresholdP <= uint16(100) * PRECISION_2
        ) revert WrongParams();

        registry = IDomfiRegistry(registryAddress);

        __ERC20_init(tokenName, tokenSymbol);
        __ERC4626_init(IERC20Metadata(assetAddress));

        maxAccOpenPnlDeltaPerToken = initialMaxAccOpenPnlDeltaPerToken;
        maxDailyAccPnlDeltaPerToken = initialMaxDailyAccPnlDeltaPerToken;
        withdrawLockThresholdsP = initialWithdrawLockThresholdsP;
        maxSupplyIncreaseDailyP = initialMaxSupplyIncreaseDailyP;
        maxDiscountP = initialMaxDiscountP;
        maxDiscountThresholdP = initialMaxDiscountThresholdP;

        currentEpoch = 1;
        shareToAssetsPrice = PRECISION_18;
        currentEpochStart = uint32(block.timestamp);
        WITHDRAW_EPOCHS_LOCKS = [3, 2, 1];
    }

    modifier onlyGov() {
        _onlyGov(_msgSender());
        _;
    }

    function _onlyGov(address a) private view {
        if (a != registry.gov()) revert NotGov(a);
    }

    modifier onlyCallbacks() {
        _onlyCallbacks(_msgSender());
        _;
    }

    function _onlyCallbacks(address a) private view {
        if (a != registry.getContractAddress("callbacks")) {
            revert NotCallbacks(a);
        }
    }

    modifier checks(uint256 assetsOrShares) {
        _checks(assetsOrShares);
        _;
    }

    function _checks(uint256 assetsOrShares) private view {
        if (assetsOrShares == 0) revert NullAmount();
        if (shareToAssetsPrice == 0) revert NullPrice();
    }

    modifier validDiscount(uint256 lockDuration) {
        _validDiscount(lockDuration);
        _;
    }

    function _validDiscount(uint256 lockDuration) private view {
        if (maxDiscountP == 0) {
            revert NoActiveDiscount();
        }
        if (lockDuration < MIN_LOCK_DURATION || lockDuration > MAX_LOCK_DURATION) {
            revert WrongLockDuration(lockDuration, MIN_LOCK_DURATION, MAX_LOCK_DURATION);
        }
    }

    function updateMaxAccOpenPnlDeltaPerToken(uint256 newMaxAccOpenPnlDeltaPerToken)
        external
        onlyGov
    {
        maxAccOpenPnlDeltaPerToken = newMaxAccOpenPnlDeltaPerToken;
        emit MaxAccOpenPnlDeltaPerTokenUpdated(newMaxAccOpenPnlDeltaPerToken);
    }

    function updateMaxDailyAccPnlDeltaPerToken(uint256 newMaxDailyAccPnlDeltaPerToken)
        external
        onlyGov
    {
        if (newMaxDailyAccPnlDeltaPerToken < MIN_DAILY_ACC_PNL_DELTA) revert WrongParams();
        maxDailyAccPnlDeltaPerToken = newMaxDailyAccPnlDeltaPerToken;
        emit MaxDailyAccPnlDeltaPerTokenUpdated(newMaxDailyAccPnlDeltaPerToken);
    }

    function updateWithdrawLockThresholdsP(uint16[2] calldata newWithdrawLockThresholdsP)
        external
        onlyGov
    {
        if (
            newWithdrawLockThresholdsP[uint256(Bound.UPPER)]
                <= newWithdrawLockThresholdsP[uint256(Bound.LOWER)]
        ) {
            revert WrongParams();
        }
        withdrawLockThresholdsP = newWithdrawLockThresholdsP;
        emit WithdrawLockThresholdsPUpdated(newWithdrawLockThresholdsP);
    }

    function updateMaxSupplyIncreaseDailyP(uint256 newMaxSupplyIncreaseDailyP) external onlyGov {
        if (newMaxSupplyIncreaseDailyP > MAX_SUPPLY_INCREASE_DAILY_P) revert WrongParams();
        maxSupplyIncreaseDailyP = newMaxSupplyIncreaseDailyP.toUint16();
        emit MaxSupplyIncreaseDailyPUpdated(newMaxSupplyIncreaseDailyP);
    }

    function updateMaxDiscountP(uint256 newMaxDiscountP) external onlyGov {
        if (newMaxDiscountP > MAX_DISCOUNT_P) revert WrongParams();
        maxDiscountP = newMaxDiscountP.toUint16();
        emit MaxDiscountPUpdated(newMaxDiscountP);
    }

    function updateMaxDiscountThresholdP(uint256 newMaxDiscountThresholdP) external onlyGov {
        if (
            newMaxDiscountThresholdP <= uint16(100) * PRECISION_2
                || newMaxDiscountThresholdP > type(uint16).max
        ) {
            revert WrongParams();
        }
        maxDiscountThresholdP = newMaxDiscountThresholdP.toUint16();
        emit MaxDiscountThresholdPUpdated(newMaxDiscountThresholdP);
    }

    function maxAccPnlPerToken() public view returns (uint256) {
        return accRewardsPerToken + PRECISION_18;
    }

    function getPnlPerToken() internal view returns (int256) {
        uint256 supply = totalSupply();
        return (supply == 0) ? int256(0) : totalAccPnl / supply.toInt256();
    }

    function collateralizationP() public view returns (uint256) {
        uint256 _maxAccPnlPerToken = maxAccPnlPerToken();
        return (accPnlPerTokenUsed > 0
                    ? (_maxAccPnlPerToken - uint256(accPnlPerTokenUsed))
                    : (_maxAccPnlPerToken + uint256(accPnlPerTokenUsed * (-1)))) * 100 * PRECISION_2
            / _maxAccPnlPerToken;
    }

    function withdrawEpochsTimelock() public view returns (uint8) {
        uint256 collatP = collateralizationP();
        uint256 overCollatP = (collatP - Math.min(collatP, uint16(100) * PRECISION_2));

        return overCollatP > withdrawLockThresholdsP[uint256(Bound.UPPER)]
            ? WITHDRAW_EPOCHS_LOCKS[uint8(LockTier.SHORT)]
            : overCollatP > withdrawLockThresholdsP[uint256(Bound.LOWER)]
                ? WITHDRAW_EPOCHS_LOCKS[uint8(LockTier.MEDIUM)]
                : WITHDRAW_EPOCHS_LOCKS[uint8(LockTier.LONG)];
    }

    function lockDiscountP(uint256 collatP, uint32 lockDuration) public view returns (uint256) {
        // slither-disable-next-line divide-before-multiply
        return (collatP <= uint16(100) * PRECISION_2
                    ? uint256(maxDiscountP) * 1e16
                    : collatP <= maxDiscountThresholdP
                        ? uint256(maxDiscountP) * 1e16 * (maxDiscountThresholdP - collatP)
                        / (maxDiscountThresholdP - uint16(100) * PRECISION_2)
                        : 0) * lockDuration / MAX_LOCK_DURATION;
    }

    function totalSharesBeingWithdrawn(address owner) public view returns (uint256 shares) {
        for (
            uint16 i = currentEpoch;
            i <= currentEpoch + WITHDRAW_EPOCHS_LOCKS[uint8(LockTier.LONG)];
            i++
        ) {
            shares += withdrawRequests[owner][i];
        }
    }

    function tryUpdateCurrentMaxSupply() public {
        // slither-disable-next-line timestamp
        if (block.timestamp - lastMaxSupplyUpdateTs >= 24 hours) {
            currentMaxSupply = totalSupply() * (uint16(100) * PRECISION_2 + maxSupplyIncreaseDailyP)
                / (PRECISION_2 * uint16(100));
            lastMaxSupplyUpdateTs = uint32(block.timestamp);

            emit CurrentMaxSupplyUpdated(currentMaxSupply);
        }
    }

    function tryResetDailyAccPnlDelta() public {
        // slither-disable-next-line timestamp
        if (block.timestamp - lastDailyAccPnlDeltaResetTs >= 24 hours) {
            int256 prevDailyAccPnlDeltaPerToken = dailyAccPnlDeltaPerToken;
            dailyAccPnlDeltaPerToken = 0;
            lastDailyAccPnlDeltaResetTs = uint32(block.timestamp);

            emit DailyAccPnlDeltaReset(prevDailyAccPnlDeltaPerToken);
        }
    }

    function tryNewOpenPnlRequestOrEpoch() public {
        // slither-disable-next-line low-level-calls
        (bool success,) = registry.getContractAddress("openPnl")
            .call(abi.encodeCall(IDomfiOpenPnl.newOpenPnlRequestOrEpoch, ()));

        if (!success) {
            emit OpenPnlCallFailed();
        }
    }

    function updateShareToAssetsPrice() private {
        shareToAssetsPrice = maxAccPnlPerToken()
            - (accPnlPerTokenUsed > 0 ? uint256(accPnlPerTokenUsed) : uint256(0));

        emit ShareToAssetsPriceUpdated(shareToAssetsPrice);
    }

    function _assetIERC20() private view returns (IERC20) {
        return IERC20(asset());
    }

    // Override ERC-20 functions (prevent sending to address that is withdrawing)
    function transfer(address to, uint256 amount)
        public
        override(ERC20Upgradeable, IERC20)
        returns (bool)
    {
        address sender = _msgSender();
        uint256 balance = balanceOf(sender);

        if (balance < amount) {
            revert ERC20InsufficientBalance(sender, balance, amount);
        }

        if (totalSharesBeingWithdrawn(sender) > balanceOf(sender) - amount) {
            revert PendingWithdrawal(sender, amount);
        }
        _transfer(sender, to, amount);
        return true;
    }

    function transferFrom(address from, address to, uint256 amount)
        public
        override(ERC20Upgradeable, IERC20)
        returns (bool)
    {
        uint256 balance = balanceOf(from);

        if (balance < amount) {
            revert ERC20InsufficientBalance(from, balance, amount);
        }

        if (totalSharesBeingWithdrawn(from) > balance - amount) {
            revert PendingWithdrawal(from, amount);
        }
        _spendAllowance(from, _msgSender(), amount);
        _transfer(from, to, amount);
        return true;
    }

    // Override ERC-4626 view functions
    function decimals() public pure override(ERC4626Upgradeable) returns (uint8) {
        return 6;
    }

    function _convertToShares(uint256 assets, Math.Rounding rounding)
        internal
        view
        override
        returns (uint256)
    {
        return assets.mulDiv(PRECISION_18, shareToAssetsPrice, rounding);
    }

    function _convertToAssets(uint256 shares, Math.Rounding rounding)
        internal
        view
        override
        returns (uint256)
    {
        if (shares == type(uint256).max && shareToAssetsPrice >= PRECISION_18) {
            return shares;
        }

        return shares.mulDiv(shareToAssetsPrice, PRECISION_18, rounding);
    }

    function maxMint(address) public view override returns (uint256) {
        return accPnlPerTokenUsed > 0
            ? currentMaxSupply - Math.min(currentMaxSupply, totalSupply())
            : type(uint256).max;
    }

    function maxDeposit(address owner) public view override returns (uint256) {
        return _convertToAssets(maxMint(owner), Math.Rounding.Floor);
    }

    function maxRedeem(address owner) public view override returns (uint256) {
        uint256 supply = totalSupply();
        IDomfiOpenPnl openPnl = IDomfiOpenPnl(registry.getContractAddress("openPnl"));

        return openPnl.nextEpochValuesRequestCount() == 0
            ? Math.min(withdrawRequests[owner][currentEpoch], supply == 0 ? 0 : supply - 1)
            : 0;
    }

    function maxWithdraw(address owner) public view override returns (uint256) {
        uint256 requestPrice = withdrawPrices[owner][currentEpoch] > 0
            ? withdrawPrices[owner][currentEpoch]
            : shareToAssetsPrice;

        uint256 effectivePrice = Math.min(requestPrice, shareToAssetsPrice);

        uint256 shares = maxRedeem(owner);
        uint256 assets = shares.mulDiv(effectivePrice, PRECISION_18, Math.Rounding.Floor);

        return assets;
    }

    function deposit(uint256 assets, address receiver) public override returns (uint256) {
        return depositWithSlippage(assets, receiver, 0);
    }

    // Deposit with max slippage % (protects against receiving too few shares)
    function depositWithSlippage(uint256 assets, address receiver, uint256 minShares)
        public
        returns (uint256 shares)
    {
        if (assets == 0) revert NullAmount();
        if (shareToAssetsPrice == 0) revert NullPrice();

        tryUpdateCurrentMaxSupply();

        require(assets <= maxDeposit(receiver), "ERC4626: deposit more than max");

        shares = previewDeposit(assets);
        require(shares >= minShares, "Slippage: too few shares received");

        _deposit(_msgSender(), receiver, assets, shares);
        return shares;
    }

    function mint(uint256 shares, address receiver) public override returns (uint256) {
        return mintWithSlippage(shares, receiver, type(uint256).max);
    }

    // Mint with max slippage % (protects against depositing too many assets)
    function mintWithSlippage(uint256 shares, address receiver, uint256 maxAssets)
        public
        returns (uint256 assets)
    {
        if (shares == 0) revert NullAmount();
        if (shareToAssetsPrice == 0) revert NullPrice();

        tryUpdateCurrentMaxSupply();

        require(shares <= maxMint(receiver), "ERC4626: mint more than max");

        assets = previewMint(shares);
        require(assets <= maxAssets, "Slippage: too many assets required");

        _deposit(_msgSender(), receiver, assets, shares);
        return assets;
    }

    function withdraw(uint256 assets, address receiver, address owner)
        public
        override
        returns (uint256)
    {
        return withdrawWithSlippage(assets, receiver, owner, type(uint256).max);
    }

    // Withdraw with max slippage % (protects against burning too many shares)
    function withdrawWithSlippage(
        uint256 assets,
        address receiver,
        address owner,
        uint256 maxShares
    ) public returns (uint256 shares) {
        if (assets == 0) revert NullAmount();
        if (shareToAssetsPrice == 0) revert NullPrice();

        require(assets <= maxWithdraw(owner), "ERC4626: assets exceed max withdraw");

        uint256 requestPrice = withdrawPrices[owner][currentEpoch] > 0
            ? withdrawPrices[owner][currentEpoch]
            : shareToAssetsPrice;

        uint256 effectivePrice = Math.min(requestPrice, shareToAssetsPrice);
        shares = assets.mulDiv(PRECISION_18, effectivePrice, Math.Rounding.Floor);
        require(shares <= maxShares, "Slippage: too many shares burned");

        withdrawRequests[owner][currentEpoch] -= shares;

        _withdraw(_msgSender(), receiver, owner, assets, shares);

        return shares;
    }

    function redeem(uint256 shares, address receiver, address owner)
        public
        override
        returns (uint256)
    {
        return redeemWithSlippage(shares, receiver, owner, 0);
    }

    // Redeem with max slippage % (protects against receiving too few assets)
    function redeemWithSlippage(uint256 shares, address receiver, address owner, uint256 minAssets)
        public
        returns (uint256 assets)
    {
        if (shares == 0) revert NullAmount();
        if (shareToAssetsPrice == 0) revert NullPrice();

        require(shares <= maxRedeem(owner), "ERC4626: shares exceed max redeem");

        withdrawRequests[owner][currentEpoch] -= shares;

        uint256 requestPrice = withdrawPrices[owner][currentEpoch] > 0
            ? withdrawPrices[owner][currentEpoch]
            : shareToAssetsPrice;

        uint256 effectivePrice = Math.min(requestPrice, shareToAssetsPrice);
        assets = shares.mulDiv(effectivePrice, PRECISION_18, Math.Rounding.Floor);
        require(assets >= minAssets, "Slippage: too few assets received");

        _withdraw(_msgSender(), receiver, owner, assets, shares);

        return assets; // Call standard redeem
    }

    function makeWithdrawRequest(uint256 shares, address owner) external {
        IDomfiOpenPnl openPnl = IDomfiOpenPnl(registry.getContractAddress("openPnl"));

        if (openPnl.nextEpochValuesRequestCount() != 0) {
            revert WaitNextEpochStart();
        }

        address sender = _msgSender();
        uint256 allowance = allowance(owner, sender);

        if (sender != owner && (allowance == 0 || allowance < shares)) {
            revert NotAllowed(sender);
        }

        if (totalSharesBeingWithdrawn(owner) + shares > balanceOf(owner)) {
            revert AboveBalance();
        }

        if (sender != owner) {
            _spendAllowance(owner, sender, shares);
        }

        uint16 unlockEpoch = currentEpoch + withdrawEpochsTimelock();
        withdrawRequests[owner][unlockEpoch] += shares;

        withdrawPrices[owner][unlockEpoch] = withdrawPrices[owner][unlockEpoch] > 0
            ? Math.min(withdrawPrices[owner][unlockEpoch], shareToAssetsPrice)
            : shareToAssetsPrice;

        emit WithdrawRequested(sender, owner, shares, currentEpoch, unlockEpoch);
    }

    function cancelWithdrawRequest(uint256 shares, address owner, uint16 unlockEpoch) external {
        if (shares > withdrawRequests[owner][unlockEpoch]) {
            revert AboveWithdrawAmount();
        }

        address sender = _msgSender();
        uint256 allowance = allowance(owner, sender);

        if (sender != owner && (allowance == 0 || allowance < shares)) {
            revert NotAllowed(sender);
        }

        if (sender != owner) {
            _spendAllowance(owner, sender, shares);
        }

        withdrawRequests[owner][unlockEpoch] -= shares;

        withdrawPrices[owner][unlockEpoch] = withdrawPrices[owner][unlockEpoch] > 0
            ? Math.min(withdrawPrices[owner][unlockEpoch], shareToAssetsPrice)
            : shareToAssetsPrice;

        emit WithdrawCanceled(sender, owner, shares, currentEpoch, unlockEpoch);
    }

    function depositWithDiscountAndLock(
        uint256 assets,
        uint32 lockDuration,
        address receiver,
        uint256 minShares
    ) external checks(assets) validDiscount(lockDuration) returns (uint256) {
        tryUpdateCurrentMaxSupply();

        uint256 simulatedAssets = assets
            * (PRECISION_18 * uint256(100) + lockDiscountP(collateralizationP(), lockDuration))
            / (PRECISION_18 * uint256(100));

        if (simulatedAssets > maxDeposit(receiver)) {
            revert AboveMaxDeposit();
        }

        uint256 shares = previewDeposit(simulatedAssets);
        require(shares >= minShares, "Slippage: too few shares received");

        return _executeDiscountAndLock(
            simulatedAssets, assets, previewDeposit(simulatedAssets), lockDuration, receiver
        );
    }

    function mintWithDiscountAndLock(
        uint256 shares,
        uint32 lockDuration,
        address receiver,
        uint256 maxAssetsDeposited
    ) external checks(shares) validDiscount(lockDuration) returns (uint256) {
        tryUpdateCurrentMaxSupply();

        if (shares > maxMint(receiver)) {
            revert AboveMaxMint();
        }

        uint256 assets = previewMint(shares);
        uint256 multiplier = PRECISION_18 * uint256(100);

        uint256 denominator =
            PRECISION_18 * uint256(100) + lockDiscountP(collateralizationP(), lockDuration);

        // Round up to ensure assetsDeposited > 0
        uint256 assetsDeposited = Math.mulDiv(assets, multiplier, denominator, Math.Rounding.Ceil);

        require(assetsDeposited <= maxAssetsDeposited, "Slippage: too many assets deposited");

        return _executeDiscountAndLock(assets, assetsDeposited, shares, lockDuration, receiver);
    }

    function _executeDiscountAndLock(
        uint256 assets,
        uint256 assetsDeposited,
        uint256 shares,
        uint32 lockDuration,
        address receiver
    ) private returns (uint256) {
        if (assets <= assetsDeposited) {
            revert NoDiscount();
        }

        uint256 depositId = ++lockedDepositsCount;
        uint256 assetsDiscount = assets - assetsDeposited;

        LockedDeposit storage d = lockedDeposits[depositId];
        d.owner = receiver;
        d.shares = shares;
        d.assetsDeposited = assetsDeposited;
        d.assetsDiscount = assetsDiscount;
        d.atTimestamp = uint32(block.timestamp);
        d.lockDuration = lockDuration;

        address sender = _msgSender();
        _deposit(sender, address(this), assetsDeposited, shares);

        totalDiscounts += assetsDiscount;
        totalLockedDiscounts += assetsDiscount;

        IDomfiLockedDepositNft(registry.getContractAddress("lockedDepositNft"))
            .mint(receiver, depositId);

        emit DepositLocked(sender, d.owner, depositId, d);

        return depositId;
    }

    function unlockDeposit(uint256 depositId, address receiver) external {
        IDomfiLockedDepositNft lockedDepositNft =
            IDomfiLockedDepositNft(registry.getContractAddress("lockedDepositNft"));

        LockedDeposit storage d = lockedDeposits[depositId];

        address sender = _msgSender();
        address owner = lockedDepositNft.ownerOf(depositId);

        if (
            owner != sender && lockedDepositNft.getApproved(depositId) != sender
                && !lockedDepositNft.isApprovedForAll(owner, sender)
        ) revert NotAllowed(sender);

        // slither-disable-next-line timestamp
        if (block.timestamp < d.atTimestamp + d.lockDuration) {
            revert DepositNotUnlocked(depositId);
        }

        // Note discount is applied in underlying base asset value
        uint256 discount = d.assetsDiscount.mulDiv(PRECISION_18, totalSupply(), Math.Rounding.Ceil);

        if (discount > accRewardsPerToken) {
            revert NotEnoughAssets();
        }

        accRewardsPerToken -= uint256(discount);

        if (getPnlPerToken() > maxAccPnlPerToken().toInt256()) {
            revert NotEnoughAssets();
        }

        // slither-disable-next-line reentrancy-benign
        lockedDepositNft.burn(depositId);

        totalLockedDiscounts -= d.assetsDiscount;

        _transfer(address(this), receiver, d.shares);

        emit DepositUnlocked(sender, receiver, owner, depositId, d);
    }

    function distributeReward(uint256 assets) external {
        address sender = _msgSender();
        SafeERC20.safeTransferFrom(_assetIERC20(), sender, address(this), assets);

        accRewardsPerToken += assets * PRECISION_18 / totalSupply();

        emit RewardDistributed(sender, assets, accRewardsPerToken);
    }

    function sendAssets(uint256 assets, address receiver) external onlyCallbacks {
        address sender = _msgSender();

        int256 accPnlDelta =
            assets.mulDiv(PRECISION_18, totalSupply(), Math.Rounding.Ceil).toInt256();

        totalAccPnl += (assets * PRECISION_18).toInt256();

        if (getPnlPerToken() > maxAccPnlPerToken().toInt256()) {
            revert NotEnoughAssets();
        }

        tryResetDailyAccPnlDelta();
        dailyAccPnlDeltaPerToken += accPnlDelta;

        if (dailyAccPnlDeltaPerToken > maxDailyAccPnlDeltaPerToken.toInt256()) {
            revert MaxDailyPnlReached();
        }

        totalClosedPnl += assets.toInt256();

        tryNewOpenPnlRequestOrEpoch();
        tryUpdateCurrentMaxSupply();

        SafeERC20.safeTransfer(_assetIERC20(), receiver, assets);

        emit AssetsSent(sender, receiver, assets);
    }

    function receiveAssets(uint256 assets, address user) external onlyCallbacks {
        address sender = _msgSender();
        SafeERC20.safeTransferFrom(_assetIERC20(), sender, address(this), assets);

        int256 accPnlDelta = (assets * PRECISION_18 / totalSupply()).toInt256();

        totalAccPnl -= (assets * PRECISION_18).toInt256();

        tryResetDailyAccPnlDelta();
        dailyAccPnlDeltaPerToken -= accPnlDelta;

        totalClosedPnl -= assets.toInt256();

        // slither-disable-next-line reentrancy-benign
        tryNewOpenPnlRequestOrEpoch();
        tryUpdateCurrentMaxSupply();

        emit AssetsReceived(sender, user, assets);
    }

    function updateAccPnlPerTokenUsed(int256 prevOpenPnl, int256 newOpenPnl)
        external
        returns (int256)
    {
        address sender = _msgSender();
        if (sender != registry.getContractAddress("openPnl")) {
            revert NotOpenPnl(sender);
        }

        int256 delta = newOpenPnl - prevOpenPnl;
        uint256 supply = totalSupply();

        int256 maxAccPnl = (Math.min(
                uint256(maxAccPnlPerToken().toInt256() - getPnlPerToken()) * supply / PRECISION_6,
                maxAccOpenPnlDeltaPerToken * supply / PRECISION_6
            ))
        .toInt256();

        delta = delta > maxAccPnl ? maxAccPnl : delta;

        totalAccPnl += (delta * int32(PRECISION_6));

        accPnlPerTokenUsed = getPnlPerToken();
        updateShareToAssetsPrice();

        currentEpoch++;
        currentEpochStart = block.timestamp.toUint32();
        currentEpochOpenPnl = prevOpenPnl + delta;

        tryUpdateCurrentMaxSupply();

        emit AccPnlPerTokenUsedUpdated(
            sender, currentEpoch, prevOpenPnl, newOpenPnl, currentEpochOpenPnl, accPnlPerTokenUsed
        );

        return currentEpochOpenPnl;
    }

    function getLockedDeposit(uint256 depositId) external view returns (LockedDeposit memory) {
        return lockedDeposits[depositId];
    }

    function tvl() external view returns (uint256) {
        return maxAccPnlPerToken() * totalSupply() / PRECISION_18;
    }

    function availableAssets() public view returns (uint256) {
        return
            uint256(int256(maxAccPnlPerToken()) - accPnlPerTokenUsed) * totalSupply() / PRECISION_18;
    }

    function currentBalance() external view returns (uint256) {
        return availableAssets();
    }

    function marketCap() external view returns (uint256) {
        return (totalSupply() * shareToAssetsPrice) / PRECISION_18;
    }
}
