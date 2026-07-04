// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";

import "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

import "@layerzerolabs/oft-evm-upgradeable/contracts/oft/OFTUpgradeable.sol";

contract Bfbtc is Initializable, UUPSUpgradeable, OwnableUpgradeable, PausableUpgradeable, OFTUpgradeable {
    using SafeERC20 for IERC20;

    uint256 private constant RATIO_PRECISION = 1e8; // = decimals
    uint256 private constant PRICE_PRECISION = 1e6;
    uint256 private constant FEE_PRECISION = 100000;

    uint8 private constant WITHDRAWAL_STATUS_PENDING = 1;
    uint8 private constant WITHDRAWAL_STATUS_CLAIMABLE = 2;
    uint8 private constant WITHDRAWAL_STATUS_SENT_ON_NATIVE = 3;
    uint8 private constant WITHDRAWAL_STATUS_CLAIMED = 4;

    uint8 private constant FEE_TYPE_EVM = 0;
    uint8 private constant FEE_TYPE_NATIVE = 1;
    uint8 private constant FEE_TYPE_CROSSCHAIN = 2;

    uint256 public currentEpoch;
    uint256 public withdrawIdCounter;
    uint256 public cooldownEpoches;
    uint256 public underlyingDecimals;
    uint256 public stalePriceDelay;
    address public multisig;

    IERC20 public underlyingAsset;
    AggregatorV3Interface public oracle;
    address public underlyingWallet;

    mapping(uint256 => uint256) public ratio; // RATIO = bfBTC Total Supply (share) / BTC Total Custody (asset)
    mapping(uint256 => uint256) public underlyingPrice;
    mapping(uint256 => Withdrawal) public withdrawals;
    mapping(bytes32 => bool) public usedNativeTx;

    uint256 public minDepositTokenAmount;
    uint256 public minWithdrawBfbtcAmount;

    struct Withdrawal {
        address user;
        uint256 amount;
        bytes32 btcAddress;
        uint256 epoch;
        uint256 settleEpoch;
        bytes32 nativeTx;
        uint8 btcAddressType;
        uint8 status;
    }

    address public feeReceiver;
    struct FeeConfig {
        uint128 percentageFee;
        uint128 fixedFee;
    }
    mapping(uint8 => FeeConfig) public feeConfigs;
    mapping(address => bool) public feeWhitelist;

    event Deposit(address indexed user, uint256 epoch, uint256 underlyingAmount, uint256 bfBtcAmount);
    event DepositNative(address indexed user, uint256 epoch, uint256 underlyingAmount, uint256 bfBtcAmount, bytes32 nativeTx);
    event WithdrawRequest(address indexed user, uint256 epoch, uint256 withdrawId, uint256 bfBtcAmount);
    event WithdrawRequestNative(
        address indexed user,
        uint256 epoch,
        uint256 withdrawId,
        uint256 bfBtcAmount,
        uint8 btcAddressType,
        bytes32 btcAddress
    );
    event WithdrawalApproved(uint256 indexed withdrawId, uint256 settleEpoch);
    event WithdrawNative(uint256 indexed withdrawId, uint256 settleEpoch, bytes32 nativeTx);
    event Claimed(uint256 indexed withdrawId, uint256 btcAmount);
    event EpochUpdated(uint256 epochNumber, uint256 newRatio, uint256 newUnderlyingPrice);
    event FeeUpdated(uint8 indexed feeType, uint256 percentageFee, uint256 fixedFee);
    event FeeCollected(
        address indexed user,
        uint8 indexed feeType,
        uint256 id,
        uint256 amount,
        uint256 percentageFee,
        uint256 fixedFee
    );
    event FeeWhitelistUpdated(address indexed account, bool status);

    error InvalidWithdrawalStatus();
    error ZeroMintAmount();
    error NativeTxAlreadyUsed();
    error InvalidBTCAddressType();
    error ZeroRatio();
    error InvalidOraclePrice();
    error StalePriceData();
    error InvalidEpoch();
    error CooldownPeriodNotPassed();
    error InvalidData();
    error NotWithdrawalOwner();
    error WithdrawalNotClaimable();
    error MinimumAmountNotMet();
    error NotMultiSig();
    error ZeroAddress();
    error LessThanMinAmount();
    error InvalidFeeReceiver();
    error InvalidPercentageFee();
    error InsufficientWithdrawAmount();

    constructor(address _lzEndpoint) OFTUpgradeable(_lzEndpoint) {
        _disableInitializers();
    }

    function initialize(
        address _underlyingWallet,
        IERC20Metadata _underlyingAsset,
        AggregatorV3Interface _oracle,
        uint256 _stalePriceDelay,
        address _multisig,
        address _feeReceiver,
        uint256 _initialRatio
    ) external reinitializer(3) {
        __Ownable_init(_msgSender());
        __Pausable_init();
        __UUPSUpgradeable_init();
        __OFT_init("BitFi Bitcoin", "bfBTC", _msgSender());

        underlyingWallet = _underlyingWallet;
        if (address(_underlyingAsset) != address(0)) {
            _setUnderlyingAsset(_underlyingAsset, _oracle);
        } else {
            _setFeeConfig(FEE_TYPE_EVM, FEE_PRECISION, 0);
        }
        minWithdrawBfbtcAmount = 1e4;
        stalePriceDelay = _stalePriceDelay;
        cooldownEpoches = 1;
        currentEpoch = 1;
        ratio[0] = _initialRatio;
        emit EpochUpdated(0, _initialRatio, getLatestPrice(false));
        multisig = _multisig;

        feeReceiver = _feeReceiver;
        feeWhitelist[_feeReceiver] = true;
    }

    function _setUnderlyingAsset(IERC20Metadata _underlyingAsset, AggregatorV3Interface _oracle) internal {
        if (address(underlyingAsset) != address(0)) revert InvalidData();
        underlyingAsset = _underlyingAsset;
        oracle = _oracle;
        uint8 _underlyingDecimals = _underlyingAsset.decimals();
        underlyingDecimals = _underlyingDecimals;
        minDepositTokenAmount = 10 ** (_underlyingDecimals - 4);
    }

    function setUnderlyingAsset(IERC20Metadata _underlyingAsset, AggregatorV3Interface _oracle) external onlyOwner {
        _setUnderlyingAsset(_underlyingAsset, _oracle);
    }

    function initializeV3(address _feeReceiver) external reinitializer(3) {
        __OFT_init("BitFi Bitcoin", "bfBTC", owner());
        feeReceiver = _feeReceiver;
        feeWhitelist[_feeReceiver] = true;
    }

    function sharedDecimals() public pure override returns (uint8) {
        return 8;
    }

    function setFeeReceiver(address _feeReceiver) external onlyOwner {
        if (_feeReceiver == address(0)) revert InvalidFeeReceiver();
        address oldReceiver = feeReceiver;
        feeReceiver = _feeReceiver;
        feeWhitelist[oldReceiver] = false;
        feeWhitelist[_feeReceiver] = true;
    }

    function _setFeeConfig(uint8 feeType, uint256 percentageFee, uint256 fixedFee) internal {
        if (percentageFee > FEE_PRECISION) revert InvalidPercentageFee();
        feeConfigs[feeType] = FeeConfig({percentageFee: uint128(percentageFee), fixedFee: uint128(fixedFee)});
        emit FeeUpdated(feeType, percentageFee, fixedFee);
    }

    function setFee(uint8 feeType, uint256 percentageFee, uint256 fixedFee) external onlyOwner {
        _setFeeConfig(feeType, percentageFee, fixedFee);
    }

    function updateFeeWhitelist(address account, bool status) external onlyOwner {
        feeWhitelist[account] = status;
        emit FeeWhitelistUpdated(account, status);
    }

    function calculateFee(
        address user,
        uint256 amount,
        uint8 feeType
    ) public view returns (uint256 percentageFee, uint256 fixedFee) {
        if (feeWhitelist[user]) return (0, 0);

        FeeConfig memory config = feeConfigs[feeType];
        percentageFee = (amount * uint256(config.percentageFee)) / FEE_PRECISION;
        fixedFee = config.fixedFee;
    }

    function _calculateDebitAmounts(
        address from,
        uint256 amount,
        uint256 minAmount
    ) internal view returns (uint256 percentageFee, uint256 fixedFee) {
        (percentageFee, fixedFee) = calculateFee(from, amount, FEE_TYPE_CROSSCHAIN);
        uint256 amountReceived = amount - percentageFee - fixedFee;

        if (amountReceived < minAmount) {
            revert SlippageExceeded(amountReceived, minAmount);
        }

        return (percentageFee, fixedFee);
    }

    function _debitView(
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32
    ) internal view override returns (uint256 amountSentLD, uint256 amountReceivedLD) {
        (uint256 percentageFee, uint256 fixedFee) = _calculateDebitAmounts(msg.sender, _amountLD, _minAmountLD);
        amountSentLD = _amountLD;
        amountReceivedLD = _amountLD - percentageFee - fixedFee;
        return (amountSentLD, amountReceivedLD);
    }

    function _debit(
        address _from,
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32
    ) internal virtual override returns (uint256 amountSentLD, uint256 amountReceivedLD) {
        (uint256 percentageFee, uint256 fixedFee) = _calculateDebitAmounts(_from, _amountLD, _minAmountLD);
        amountSentLD = _amountLD;
        amountReceivedLD = _amountLD - percentageFee - fixedFee;

        _burn(_from, amountReceivedLD);

        if (percentageFee > 0 || fixedFee > 0) {
            _transfer(_from, feeReceiver, percentageFee + fixedFee);
            emit FeeCollected(_from, FEE_TYPE_CROSSCHAIN, 0, amountSentLD, percentageFee, fixedFee);
        }

        return (amountSentLD, amountReceivedLD);
    }

    function setMinDepositTokenAmount(uint256 _amount) external onlyOwner {
        minDepositTokenAmount = _amount;
    }

    function setMinWithdrawTokenAmount(uint256 _amount) external onlyOwner {
        minWithdrawBfbtcAmount = _amount;
    }

    function setMultisig(address _multisig) external onlyOwner {
        if (_multisig == address(0)) revert ZeroAddress();
        multisig = _multisig;
    }

    function setUnderlyingWallet(address _wallet) external onlyOwner {
        if (_wallet == address(0)) revert ZeroAddress();
        underlyingWallet = _wallet;
    }

    function _checkMultisig() internal view {
        if (msg.sender != multisig) revert NotMultiSig();
    }

    modifier onlyMultisig() {
        _checkMultisig();
        _;
    }

    function decimals() public pure override returns (uint8) {
        return 8;
    }

    function setPause(bool _paused) external onlyOwner {
        bool current = paused();
        if (_paused && !current) {
            _pause();
        } else if (!_paused && current) {
            _unpause();
        }
    }

    function getLatestPrice(bool min) public view returns (uint256 price) {
        if (address(oracle) == address(0)) {
            return PRICE_PRECISION;
        }
        (, int256 oraclePrice, , uint256 updatedAt, ) = oracle.latestRoundData();
        if (oraclePrice <= 0) revert InvalidOraclePrice();
        if (block.timestamp > updatedAt + stalePriceDelay) revert StalePriceData();
        uint8 pDecimals = oracle.decimals();
        price = (uint256(oraclePrice) * PRICE_PRECISION) / (10 ** pDecimals);
        price = min ? Math.min(PRICE_PRECISION, price) : Math.max(PRICE_PRECISION, price);
    }

    function currentRatio() public view returns (uint256) {
        return ratio[currentEpoch - 1];
    }

    function previewDeposit(uint256 amount) public view returns (uint256) {
        return (amount * getLatestPrice(true) * currentRatio()) / PRICE_PRECISION / (10 ** underlyingDecimals);
    }

    function deposit(uint256 amount, uint256 minAmount) external whenNotPaused {
        if (amount < minDepositTokenAmount) revert LessThanMinAmount();
        underlyingAsset.safeTransferFrom(msg.sender, underlyingWallet, amount);

        uint256 mintAmount = previewDeposit(amount);
        if (mintAmount < minAmount) revert MinimumAmountNotMet();

        _mint(msg.sender, mintAmount);

        emit Deposit(msg.sender, currentEpoch, amount, mintAmount);
    }

    function depositNative(
        address[] calldata users,
        uint256[] calldata amounts,
        bytes32[] calldata nativeTxs
    ) external whenNotPaused onlyMultisig {
        if (users.length != amounts.length || users.length != nativeTxs.length) revert InvalidData();
        uint256 cachedRatio = currentRatio();
        for (uint256 i; i < users.length; ++i) {
            if (users[i] == address(0)) revert ZeroAddress();
            if (amounts[i] == 0) revert ZeroMintAmount();
            if (usedNativeTx[nativeTxs[i]]) revert NativeTxAlreadyUsed();

            usedNativeTx[nativeTxs[i]] = true;
            uint256 mintAmount = (amounts[i] * cachedRatio) / (10 ** 8);
            _mint(users[i], mintAmount);

            emit DepositNative(users[i], currentEpoch, amounts[i], mintAmount, nativeTxs[i]);
        }
    }

    function _processWithdrawRequest(
        address user,
        uint256 amount,
        uint8 btcAddressType,
        bytes32 btcAddress,
        bool isNative
    ) internal returns (uint256 withdrawId) {
        if (amount < minWithdrawBfbtcAmount) revert LessThanMinAmount();
        if (isNative && (btcAddressType < 1 || btcAddressType > 4)) revert InvalidBTCAddressType();

        uint8 feeType = isNative ? FEE_TYPE_NATIVE : FEE_TYPE_EVM;
        (uint256 percentageFee, uint256 fixedFee) = calculateFee(user, amount, feeType);
        if (percentageFee + fixedFee >= amount) revert InsufficientWithdrawAmount();
        uint256 actualAmount = amount - percentageFee - fixedFee;

        _transfer(user, address(this), actualAmount);

        withdrawId = withdrawIdCounter++;
        withdrawals[withdrawId] = Withdrawal({
            user: user,
            amount: actualAmount,
            btcAddress: btcAddress,
            btcAddressType: btcAddressType,
            status: WITHDRAWAL_STATUS_PENDING,
            epoch: currentEpoch,
            settleEpoch: 0,
            nativeTx: bytes32(0)
        });

        // Emit events
        if (isNative) {
            emit WithdrawRequestNative(user, currentEpoch, withdrawId, actualAmount, btcAddressType, btcAddress);
        } else {
            emit WithdrawRequest(user, currentEpoch, withdrawId, actualAmount);
        }
        if (percentageFee > 0 || fixedFee > 0) {
            _transfer(user, feeReceiver, percentageFee + fixedFee);
            emit FeeCollected(user, feeType, withdrawId, amount, percentageFee, fixedFee);
        }
    }

    function requestWithdraw(uint256 amount) external whenNotPaused {
        _processWithdrawRequest(msg.sender, amount, 0, bytes32(0), false);
    }

    function requestWithdrawNative(uint256 amount, uint8 btcAddressType, bytes32 btcAddress) external whenNotPaused {
        _processWithdrawRequest(msg.sender, amount, btcAddressType, btcAddress, true);
    }

    function previewWithdraw(uint256 share, bool native) public view returns (uint256 underlyingAmount, uint256 fee) {
        (uint256 percentageFee, uint256 fixedFee) = calculateFee(msg.sender, share, native ? FEE_TYPE_NATIVE : FEE_TYPE_EVM);
        fee = percentageFee + fixedFee;

        if (fee >= share) {
            return (0, fee);
        }

        uint256 actualShare = share - fee;
        if (native) {
            underlyingAmount = (actualShare * (10 ** 8)) / currentRatio();
        } else {
            underlyingAmount =
                (actualShare * PRICE_PRECISION * (10 ** underlyingDecimals)) /
                getLatestPrice(false) /
                currentRatio();
        }
    }

    function approveWithdraw(uint256 epoch, uint256[] calldata withdrawIds) external whenNotPaused onlyMultisig {
        if (epoch >= currentEpoch) revert InvalidEpoch();
        uint256 totalShares;
        for (uint256 i; i < withdrawIds.length; ++i) {
            Withdrawal storage withdrawal = withdrawals[withdrawIds[i]];
            if (withdrawal.status != WITHDRAWAL_STATUS_PENDING) revert InvalidWithdrawalStatus();
            if (epoch < withdrawal.epoch + cooldownEpoches) revert CooldownPeriodNotPassed();

            if (withdrawal.btcAddressType == 0) {
                withdrawal.status = WITHDRAWAL_STATUS_CLAIMABLE;
                withdrawal.settleEpoch = epoch;
                totalShares += withdrawal.amount;
            } else {
                revert InvalidBTCAddressType();
            }

            emit WithdrawalApproved(withdrawIds[i], epoch);
        }
        _burn(address(this), totalShares);
    }

    function nativeWithdraw(
        uint256 epoch,
        uint256[] calldata withdrawIds,
        bytes32[] calldata nativeTxs
    ) external whenNotPaused onlyMultisig {
        if (epoch >= currentEpoch) revert InvalidEpoch();
        if (withdrawIds.length != nativeTxs.length) revert InvalidData();
        uint256 totalShares;
        for (uint256 i; i < withdrawIds.length; ++i) {
            Withdrawal storage withdrawal = withdrawals[withdrawIds[i]];
            if (withdrawal.status != WITHDRAWAL_STATUS_PENDING) revert InvalidWithdrawalStatus();
            if (epoch < withdrawal.epoch + cooldownEpoches) revert CooldownPeriodNotPassed();

            if (withdrawal.btcAddressType == 0) {
                revert InvalidBTCAddressType();
            } else {
                withdrawal.status = WITHDRAWAL_STATUS_SENT_ON_NATIVE;
                withdrawal.settleEpoch = epoch;
                withdrawal.nativeTx = nativeTxs[i];
                totalShares += withdrawal.amount;
            }

            emit WithdrawNative(withdrawIds[i], epoch, nativeTxs[i]);
        }
        _burn(address(this), totalShares);
    }

    function updateEpoch(uint256 newRatio) external whenNotPaused onlyMultisig {
        if (newRatio == 0) revert ZeroRatio();
        uint256 newPrice = getLatestPrice(false);
        ratio[currentEpoch] = newRatio;
        underlyingPrice[currentEpoch] = newPrice;
        emit EpochUpdated(currentEpoch, newRatio, newPrice);
        ++currentEpoch;
    }

    function _claimable(uint256 share, uint256 epoch) internal view returns (uint256) {
        return (share * PRICE_PRECISION * (10 ** underlyingDecimals)) / underlyingPrice[epoch] / ratio[epoch];
    }

    function claimable(uint256 id) external view returns (uint256) {
        Withdrawal storage withdrawal = withdrawals[id];
        if (withdrawal.status != WITHDRAWAL_STATUS_CLAIMABLE) return 0;
        return _claimable(withdrawal.amount, withdrawal.settleEpoch);
    }

    function claim(uint256[] calldata withdrawIds) external whenNotPaused {
        for (uint256 i; i < withdrawIds.length; ++i) {
            Withdrawal storage withdrawal = withdrawals[withdrawIds[i]];
            if (msg.sender != withdrawal.user) revert NotWithdrawalOwner();
            if (withdrawal.status != WITHDRAWAL_STATUS_CLAIMABLE) revert WithdrawalNotClaimable();

            withdrawal.status = WITHDRAWAL_STATUS_CLAIMED;
            uint256 claimAmount = _claimable(withdrawal.amount, withdrawal.settleEpoch);
            underlyingAsset.safeTransfer(withdrawal.user, claimAmount);

            emit Claimed(withdrawIds[i], claimAmount);
        }
    }

    function setCooldownEpoches(uint256 _cooldownEpoches) external onlyOwner {
        cooldownEpoches = _cooldownEpoches;
    }

    function setStalePriceDelay(uint256 _stalePriceDelay) external onlyOwner {
        stalePriceDelay = _stalePriceDelay;
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}
}
