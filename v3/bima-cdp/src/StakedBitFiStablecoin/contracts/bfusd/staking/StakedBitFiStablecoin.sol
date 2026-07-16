// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@layerzerolabs/oft-evm-upgradeable/contracts/oft/OFTUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts/interfaces/IERC4626.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";

import "../utils/BitFiPausable.sol";
import "../../interfaces/IBitFiStablecoin.sol";
import "../../interfaces/IBitFiStablecoinManager.sol";
import "../libraries/FeeLibrary.sol";

/**
 * @title StakedBitFiStablecoin
 * @author BitFi Labs
 * @notice Staking vault for bfUSD with delayed withdrawals and epoch-based ratio pricing.
 */
contract StakedBitFiStablecoin is Initializable, UUPSUpgradeable, OFTUpgradeable, BitFiPausable, IERC4626 {
    using Math for uint256;

    // --- Errors ---
    error AddressBlacklisted();
    error OnlyManager();
    error InvalidAmount();
    error NoWithdrawalRequest();
    error NotWithdrawalOwner();
    error WithdrawalNotReady();
    error SupplyCapExceeded();
    error EpochAlreadySet();
    error EpochNotEnded();

    // --- Events ---
    event WithdrawalRequested(
        address indexed user,
        uint256 indexed withdrawalId,
        uint256 requestEpoch,
        uint256 claimableEpoch,
        uint256 shares,
        uint256 bfusdAmount,
        uint256 unvestedYield
    );
    event WithdrawalClaimed(
        address indexed user,
        uint256 indexed withdrawalId,
        uint256 bfusdAmount,
        uint256 feeAmount
    );
    event AssetDeposited(address indexed user, address indexed receiver, uint256 epoch, uint256 assets, uint256 shares);
    event SupplyCapSet(uint256 oldCap, uint256 newCap);
    event CrossChainFeeCollected(address indexed user, uint256 amount, uint256 fee);
    event RatioUpdated(uint256 indexed epoch, uint64 newRatio, uint256 endTime);

    // --- State ---
    IBitFiStablecoin underlying;
    IBitFiStablecoinManager public manager;

    struct EpochRatio {
        uint64 startRatio;
        uint64 endRatio;
        uint64 startTime;
        uint64 endTime;
    }

    struct Withdrawal {
        address user;
        bool claimed;
        uint256 amount;
        uint256 epoch;
        uint256 unvestedYield;
    }

    mapping(uint256 => EpochRatio) public epochRatios; // epoch => EpochRatio
    uint256 public withdrawalIdCounter;
    mapping(uint256 => Withdrawal) public withdrawals;

    FeeLibrary.Fees public redemptionFee;
    FeeLibrary.Fees public crossChainFee;
    uint256 public settlementDelay; // Delay in number of epochs

    uint256 public supplyCap;
    uint256 public pendingWithdrawals;

    uint256 private constant RATIO_PRECISION = 1e8;

    constructor(address _lzEndpoint) OFTUpgradeable(_lzEndpoint) {
        _disableInitializers();
    }

    function initialize(
        address _owner,
        IBitFiStablecoin _asset,
        IBitFiStablecoinManager _manager,
        string calldata _name,
        string calldata _symbol,
        uint256 _settlementDelay,
        uint256 _supplyCap,
        uint64 _initialRatio
    ) external initializer {
        __ERC20_init(_name, _symbol);
        __OFT_init(_name, _symbol, _owner);
        __Ownable_init(_owner);
        __Pausable_init();

        underlying = _asset;
        manager = _manager;
        settlementDelay = _settlementDelay;
        uint256 currentEpoch = manager.currentEpoch();
        epochRatios[currentEpoch] = EpochRatio({
            startRatio: _initialRatio,
            endRatio: _initialRatio,
            startTime: uint64(block.timestamp),
            endTime: uint64(block.timestamp)
        });
        emit RatioUpdated(currentEpoch, _initialRatio, block.timestamp);
        supplyCap = _supplyCap;
        emit SupplyCapSet(0, _supplyCap);
    }

    function initializeV2(uint256 _pendingWithdrawals) external reinitializer(2) {
        pendingWithdrawals = _pendingWithdrawals;
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    // --- ERC4626 ---

    function deposit(uint256 assets, address receiver) external override returns (uint256) {
        (uint256 epoch, uint256 shares) = _convertToSharesDeposit(assets, Math.Rounding.Floor);
        if (shares == 0) revert InvalidAmount();
        if (totalSupply() + shares > supplyCap) revert SupplyCapExceeded();

        _deposit(msg.sender, receiver, assets, shares, epoch);
        return shares;
    }

    function mint(uint256 shares, address receiver) public override returns (uint256) {
        (uint256 epoch, uint256 assets) = _convertToAssetsDeposit(shares, Math.Rounding.Ceil);
        if (assets == 0) revert InvalidAmount();
        if (totalSupply() + shares > supplyCap) revert SupplyCapExceeded();

        _deposit(msg.sender, receiver, assets, shares, epoch);
        return assets;
    }

    function _deposit(address caller, address receiver, uint256 assets, uint256 shares, uint256 epoch) internal {
        underlying.transferFrom(caller, address(this), assets);
        _mint(receiver, shares);
        emit Deposit(caller, receiver, assets, shares);
        emit AssetDeposited(caller, receiver, epoch, assets, shares);
    }

    function withdraw(uint256 assets, address receiver, address owner) public override returns (uint256) {
        (uint256 epoch, uint256 shares) = _convertToSharesCurrent(assets, Math.Rounding.Ceil);
        _withdraw(msg.sender, owner, receiver, shares, assets, epoch);
        return shares;
    }

    function redeem(uint256 shares, address receiver, address owner) public override returns (uint256) {
        (uint256 epoch, uint256 assets) = _convertToAssets(shares, Math.Rounding.Floor);
        _withdraw(msg.sender, owner, receiver, shares, assets, epoch);
        return assets;
    }

    function _withdraw(
        address caller,
        address owner,
        address receiver,
        uint256 shares,
        uint256 assetsRequested,
        uint256 epoch
    ) internal returns (uint256) {
        if (shares == 0) revert InvalidAmount();

        if (caller != owner) {
            _spendAllowance(owner, caller, shares);
        }
        _burn(owner, shares);
        uint256 currentRatioValue = _currentRatio(epoch);
        uint256 assetsNow = shares.mulDiv(currentRatioValue, RATIO_PRECISION, Math.Rounding.Floor);
        uint256 endRatio = epochRatios[epoch].endRatio;
        uint256 assetsAtEnd = shares.mulDiv(endRatio, RATIO_PRECISION, Math.Rounding.Floor);
        uint256 unvestedYield;
        if (assetsAtEnd > assetsNow) {
            unvestedYield = assetsAtEnd - assetsNow;
        }
        pendingWithdrawals += assetsNow + unvestedYield;

        uint256 withdrawalId = ++withdrawalIdCounter;
        uint256 claimableEpoch = epoch + settlementDelay;
        withdrawals[withdrawalId] = Withdrawal({
            user: receiver,
            amount: assetsNow,
            epoch: claimableEpoch,
            claimed: false,
            unvestedYield: unvestedYield
        });

        emit Withdraw(caller, receiver, owner, assetsRequested, shares);
        emit WithdrawalRequested(owner, withdrawalId, epoch, claimableEpoch, shares, assetsNow, unvestedYield);
        return withdrawalId;
    }

    function _convertToSharesDeposit(uint256 assets, Math.Rounding rounding) internal view returns (uint256, uint256) {
        uint256 currentEpoch = manager.currentEpoch();
        uint256 ratio = epochRatios[currentEpoch].endRatio;
        if (ratio == 0) return (currentEpoch, 0);

        return (currentEpoch, assets.mulDiv(RATIO_PRECISION, ratio, rounding));
    }

    function _convertToAssetsDeposit(uint256 shares, Math.Rounding rounding) internal view returns (uint256, uint256) {
        uint256 currentEpoch = manager.currentEpoch();
        if (shares == 0) return (currentEpoch, 0);
        uint256 ratio = epochRatios[currentEpoch].endRatio;
        if (ratio == 0) return (currentEpoch, 0);
        return (currentEpoch, shares.mulDiv(ratio, RATIO_PRECISION, rounding));
    }

    function _convertToSharesCurrent(uint256 assets, Math.Rounding rounding) internal view returns (uint256, uint256) {
        uint256 currentEpoch = manager.currentEpoch();
        uint256 ratio = _currentRatio(currentEpoch);
        if (ratio == 0) return (currentEpoch, 0);

        return (currentEpoch, assets.mulDiv(RATIO_PRECISION, ratio, rounding));
    }

    function _convertToAssets(uint256 shares, Math.Rounding rounding) internal view returns (uint256, uint256) {
        uint256 currentEpoch = manager.currentEpoch();
        if (shares == 0) return (currentEpoch, 0);
        uint256 ratio = _currentRatio(currentEpoch);
        if (ratio == 0) return (currentEpoch, 0);
        return (currentEpoch, shares.mulDiv(ratio, RATIO_PRECISION, rounding));
    }

    function convertToShares(uint256 assets) public view override returns (uint256 shares) {
        (, shares) = _convertToSharesDeposit(assets, Math.Rounding.Floor);
    }

    function convertToAssets(uint256 shares) public view override returns (uint256 assets) {
        (, assets) = _convertToAssets(shares, Math.Rounding.Floor);
    }

    function asset() public view override returns (address) {
        return address(underlying);
    }

    function totalAssets() public view override returns (uint256) {
        return convertToAssets(totalSupply());
    }

    function maxDeposit(address /*receiver*/) public view override returns (uint256) {
        if (supplyCap <= totalSupply()) return 0;
        uint256 maxShares = supplyCap - totalSupply();
        (, uint256 assets) = _convertToAssetsDeposit(maxShares, Math.Rounding.Floor);
        return assets;
    }

    function maxMint(address /*receiver*/) public view override returns (uint256) {
        if (supplyCap <= totalSupply()) return 0;
        return supplyCap - totalSupply();
    }

    function maxWithdraw(address owner) public view override returns (uint256) {
        return convertToAssets(balanceOf(owner));
    }

    function maxRedeem(address owner) public view override returns (uint256) {
        return balanceOf(owner);
    }

    function previewDeposit(uint256 assets) public view override returns (uint256) {
        return convertToShares(assets);
    }

    function previewMint(uint256 shares) public view override returns (uint256 assets) {
        (, assets) = _convertToAssetsDeposit(shares, Math.Rounding.Ceil);
    }

    function previewWithdraw(uint256 assets) public view override returns (uint256 shares) {
        (, shares) = _convertToSharesCurrent(assets, Math.Rounding.Ceil);
    }

    function previewRedeem(uint256 shares) public view override returns (uint256) {
        return convertToAssets(shares);
    }

    // --- Withdrawal Claims ---

    function claimWithdrawals(uint256[] calldata withdrawalIds) external {
        _claimWithdrawals(msg.sender, withdrawalIds);
    }

    function claimWithdrawalsFor(address user, uint256[] calldata withdrawalIds) external {
        if (msg.sender != address(manager)) revert OnlyManager();
        _claimWithdrawals(user, withdrawalIds);
    }

    function _claimWithdrawals(address user, uint256[] calldata withdrawalIds) internal {
        _requireNotPaused();
        bool hasFee = !manager.isFeeWhitelisted(user);
        uint256 totalRedemptionFee;
        uint256 totalUnvestedYield;
        uint256 totalClaimAssets;
        uint256 currentEpoch = manager.currentEpoch();
        for (uint256 i; i < withdrawalIds.length; ++i) {
            uint256 withdrawalId = withdrawalIds[i];
            Withdrawal storage withdrawal = withdrawals[withdrawalId];

            if (withdrawal.user != user) revert NotWithdrawalOwner();
            if (withdrawal.claimed) revert NoWithdrawalRequest();
            if (currentEpoch < withdrawal.epoch) revert WithdrawalNotReady();

            withdrawal.claimed = true;
            uint256 assetsToClaim = withdrawal.amount;
            pendingWithdrawals -= (withdrawal.amount + withdrawal.unvestedYield);

            uint256 fee;
            if (hasFee) {
                fee = FeeLibrary.calculateFee(assetsToClaim, redemptionFee);
                if (fee > 0) {
                    assetsToClaim -= fee;
                    totalRedemptionFee += fee;
                }
            }
            uint256 unvestedYield = withdrawal.unvestedYield;
            if (unvestedYield > 0) {
                totalUnvestedYield += unvestedYield;
            }
            totalClaimAssets += assetsToClaim;

            emit WithdrawalClaimed(user, withdrawalId, assetsToClaim, fee);
        }

        uint256 aggregateFee = totalRedemptionFee + totalUnvestedYield;
        if (aggregateFee > 0) {
            underlying.transfer(manager.feeReceiver(), aggregateFee);
        }
        if (totalClaimAssets > 0) {
            underlying.transfer(user, totalClaimAssets);
        }
    }

    // --- Ratio Calculation ---

    function _currentRatio(uint256 _epoch) internal view returns (uint256) {
        EpochRatio memory ratio = epochRatios[_epoch];
        if (block.timestamp >= ratio.endTime || ratio.endRatio <= ratio.startRatio) {
            return ratio.endRatio;
        }

        uint256 timeElapsed = block.timestamp - ratio.startTime;
        uint256 epochDuration = ratio.endTime - ratio.startTime;

        uint256 ratioIncrease = ratio.endRatio - ratio.startRatio;
        return ratio.startRatio + (ratioIncrease * timeElapsed) / epochDuration;
    }

    function currentRatio() public view returns (uint256) {
        return _currentRatio(manager.currentEpoch());
    }

    function currentDepositRatio() public view returns (uint256) {
        return epochRatios[manager.currentEpoch()].endRatio;
    }

    // --- Ratio Management (Only for Manager) ---

    function setRatio(uint256 _epoch, uint64 _newRatio, uint256 _endTime) external {
        if (msg.sender != address(manager)) revert OnlyManager();
        if (epochRatios[_epoch].startTime != 0) revert EpochAlreadySet();

        EpochRatio memory lastEpoch = epochRatios[_epoch - 1];
        if (block.timestamp < lastEpoch.endTime) revert EpochNotEnded();

        epochRatios[_epoch] = EpochRatio({
            startRatio: lastEpoch.endRatio,
            endRatio: _newRatio,
            startTime: uint64(block.timestamp),
            endTime: uint64(_endTime)
        });

        emit RatioUpdated(_epoch, _newRatio, _endTime);
    }

    // --- Security (Blacklist) ---

    function _update(address from, address to, uint256 value) internal override whenNotPaused {
        if (address(manager) != address(0)) {
            if (manager.blacklisted(from) || manager.blacklisted(to)) {
                revert AddressBlacklisted();
            }
        }
        super._update(from, to, value);
    }

    // --- Admin Functions ---

    function setFees(FeeLibrary.Fees calldata _fees) external onlyOwner {
        redemptionFee = _fees;
    }

    function setCrossChainFee(FeeLibrary.Fees calldata _fees) external onlyOwner {
        crossChainFee = _fees;
    }

    function setSettlementDelay(uint256 _delay) external onlyOwner {
        settlementDelay = _delay;
    }

    function setDepositCap(uint256 _cap) external onlyOwner {
        uint256 oldCap = supplyCap;
        supplyCap = _cap;
        emit SupplyCapSet(oldCap, _cap);
    }

    // --- Cross-chain Operations ---

    function _calculateCrossChainDebitAmounts(
        address from,
        uint256 amount,
        uint256 minAmount
    ) internal view returns (uint256 fee) {
        if (address(manager) == address(0) || manager.isFeeWhitelisted(from)) {
            return 0;
        }

        fee = FeeLibrary.calculateFee(amount, crossChainFee);
        if (fee > 0 && (amount - fee) < minAmount) {
            revert InvalidAmount();
        }
    }

    function _debitView(
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32 // dstEid
    ) internal view override returns (uint256 amountSentLD, uint256 amountReceivedLD) {
        uint256 fee = _calculateCrossChainDebitAmounts(msg.sender, _amountLD, _minAmountLD);
        amountSentLD = _amountLD;
        amountReceivedLD = _amountLD - fee;
        return (amountSentLD, amountReceivedLD);
    }

    function _debit(
        address _from,
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32 // dstEid
    ) internal virtual override returns (uint256 amountSentLD, uint256 amountReceivedLD) {
        uint256 fee = _calculateCrossChainDebitAmounts(_from, _amountLD, _minAmountLD);
        amountSentLD = _amountLD;
        amountReceivedLD = _amountLD - fee;

        if (fee > 0) {
            uint256 feeBfusd = (fee * currentDepositRatio()) / RATIO_PRECISION;
            if (feeBfusd > 0) {
                underlying.transfer(manager.feeReceiver(), feeBfusd);
            }
        }

        // Burn the user's staked tokens
        _burn(_from, _amountLD);

        // Emit fee collection event
        if (fee > 0) {
            emit CrossChainFeeCollected(_from, amountSentLD, fee);
        }

        return (amountSentLD, amountReceivedLD);
    }

    function _credit(
        address _to,
        uint256 _amountLD,
        uint32 // srcEid
    ) internal virtual override returns (uint256 amountReceivedLD) {
        amountReceivedLD = _amountLD;

        // Mint the staked tokens
        _mint(_to, _amountLD);

        return amountReceivedLD;
    }

    // --- ERC20 Metadata ---
    function decimals() public pure override(IERC20Metadata, ERC20Upgradeable) returns (uint8) {
        return 6;
    }
}
