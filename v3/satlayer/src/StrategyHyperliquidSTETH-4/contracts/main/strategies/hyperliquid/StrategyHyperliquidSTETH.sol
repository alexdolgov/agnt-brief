// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/interfaces/IERC3156FlashLender.sol";
import "../../../interfaces/flashloanHelper/IFlashloanHelper.sol";
import "../../../interfaces/aave/v3/IPoolV3.sol";
import "../../../interfaces/aave/IAaveOracle.sol";
import "../../../interfaces/IStrategy.sol";
import "../../../interfaces/lido/IWstETH.sol";
import "../../../interfaces/circle/ITokenMessenger.sol";
import "../../../interfaces/kelp/ILRTDepositPool.sol";
import "../../libraries/Errors.sol";
import "../../swap/ParaSwapCaller.sol";

contract StrategyHyperliquidSTETH is
    IStrategy,
    IERC3156FlashBorrower,
    OwnableUpgradeable,
    ParaSwapCaller
{
    using SafeERC20 for IERC20;

    uint256 public constant PRECISION = 1e18;

    // The version of the contract
    string public constant VERSION = "1.0";
    // Storage
    bytes32 internal constant STORAGE_SLOT = keccak256("cian.hedge.steth");
    // USE_MAX is used to indicate that the maximum amount should be used.
    uint256 internal constant USE_MAX = type(uint256).max;

    uint256 internal constant USE_PREVIOUS_OUT = type(uint256).max - 1;
    // The address of the AAVE v3 Pool contract
    IPoolV3 internal constant POOL_AAVEV3 = IPoolV3(0x87870Bca3F3fD6335C3F4ce8392D69350B4fA4E2);
    // The address of the AAVE v3 Oracle contract
    IAaveOracle internal constant ORACLE_AAVEV3 = IAaveOracle(0x54586bE62E3c3580375aE3723C145253060Ca0C2);
    // The address of USDC
    address internal constant USDC = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;
    // The address of aave wstETH
    address internal constant A_WSTETH = 0x0B925eD163218f6662a35e0f0371Ac234f9E9371;
    // The address of AAVE v3 variable debt token for USDC
    address internal constant D_USDC_AAVEV3 = 0x72E95b8931767C79bA4EeE721354d6E99a61D004;
    // Max Daily NetValue Change
    uint256 internal constant MAX_DAILY_NET_ASSET_CHANGE = 1e16; // 100bps per day

    address public constant STETH = 0xae7ab96520DE3A18E5e111B5EaAb095312D7fE84;

    address public constant WSTETH = 0x7f39C581F595B53c5cb19bD0b3f8dA6c935E2Ca0;

    address public constant RSETH = 0xA1290d69c65A6Fe4DF752f95823fae25cB99e5A7;

    ILRTDepositPool internal constant KELP_POOL = ILRTDepositPool(0x036676389e48133B63a802f8635AD39E752D375D);

    struct HedgeStorage {
        address vault;
        address rebalancer;
        address flashLoanHelper;
        address circleBridge;
        uint256 originalAssetAmount;
        uint256 totalValue;
        uint256 latestUpdateTimestamp;
        uint256 maxRatio;
        address L2Receiver;
        uint256 bridgeMaxFee;
    }

    enum ActionSelectors {
        Deposit,
        Withdraw,
        Borrow,
        Repay,
        Swap,
        TransferTo,
        Bridge,
        RepayWithRemain
    }

    event UpdateRebalancer(address oldRebalancer, address newRebalancer);
    event UpdateSafeProtocolRatio(uint256 oldSafeProtocolRatio, uint256 newSafeProtocolRatio);
    event OnTransferIn(address token, uint256 amount);
    event TransferRsETHToVault(address token, uint256 amount);
    event NetAssetsUpdated(uint256 oldNetAssets, uint256 newNetAssets);
    event Deposit(address token, uint256 amount);
    event Withdraw(address token, uint256 amount);
    event Borrow(address token, uint256 amount);
    event Repay(address token, uint256 amount);
    event Swap(address srcToken, address dstToken, uint256 amount);
    event Wrap(uint256 amount);
    event Unwrap(uint256 amount);
    event Bridge(uint256 amount, address token, address receiver);
    event UpdateMaxRatio(uint256 oldMaxRatio, uint256 newMaxRatio);
    event UpdateL2Receiver(address oldReceiver, address newReceiver);
    event UpdateBridgeMaxFee(uint256 oldMaxFee, uint256 newMaxFee);

    /**
     * @dev Ensure that this method is only called by the Vault contract.
     */
    modifier onlyVault() {
        if (msg.sender != getStorage().vault) revert Errors.CallerNotVault();
        _;
    }

    /**
     * @dev  Ensure that this method is only called by authorized portfolio managers.
     */
    modifier onlyRebalancer() {
        if (msg.sender != getStorage().rebalancer)
            revert Errors.CallerNotRebalancer();
        _;
    }

    /**
     * @dev Initialize the strategy with given parameters.
     * @param _initBytes Initialization data
     */
    function initialize(bytes calldata _initBytes) external initializer {
        (uint256 _maxLtv, address _admin, address _rebalancer, address _flashLoanHelper, address _circleBridge, address _L2Receiver) = abi.decode(
            _initBytes,
            (uint256, address, address, address, address, address)
        );
        __Ownable_init(_admin);
        if (_admin == address(0)) revert Errors.InvalidAdmin();
        if (_rebalancer == address(0)) revert Errors.InvalidRebalancer();

        HedgeStorage storage s = getStorage();
        s.rebalancer = _rebalancer;
        s.vault = msg.sender;
        s.maxRatio = _maxLtv;
        s.flashLoanHelper = _flashLoanHelper;
        s.circleBridge = _circleBridge;
        s.L2Receiver = _L2Receiver;

        IERC20(WSTETH).safeIncreaseAllowance(address(POOL_AAVEV3), USE_MAX);
        IERC20(USDC).safeIncreaseAllowance(address(POOL_AAVEV3), USE_MAX);
        // POOL_AAVEV3.setUserEMode(3); 

        __Ownable_init(_admin);
    }

    /**
     * @dev Add a new address to the position adjustment whitelist.
     * @param _newRebalancer The new address to be added.
     */
    function updateRebalancer(address _newRebalancer) external onlyOwner {
        if (_newRebalancer == address(0)) revert Errors.InvalidRebalancer();
        emit UpdateRebalancer(getStorage().rebalancer, _newRebalancer);
        getStorage().rebalancer = _newRebalancer;
    }

    function updateAssetAmount(uint256 _amount) external onlyRebalancer {
        getStorage().originalAssetAmount = _amount;
    }

    function updateL2Receiver(address _newReceiver) public onlyRebalancer {
        emit UpdateL2Receiver(getStorage().L2Receiver, _newReceiver);
        getStorage().L2Receiver = _newReceiver;
    }

    function updateBridgeMaxFee(uint256 _newMaxFee) public onlyRebalancer {
        emit UpdateBridgeMaxFee(getStorage().bridgeMaxFee, _newMaxFee);
        getStorage().bridgeMaxFee = _newMaxFee;
    }

    function getStorage() internal pure returns (HedgeStorage storage s) {
        bytes32 slot = STORAGE_SLOT;
        assembly {
            s.slot := slot
        }
    }

    function vault() external view returns (address) {
        return getStorage().vault;
    }

    function rebalancer() external view returns (address) {
        return getStorage().rebalancer;
    }

    function originalAssetAmount() external view returns (uint256) {
        return getStorage().originalAssetAmount;
    }

    function _deposit(address _token, uint256 _amount) internal {
        if (_token != WSTETH) revert Errors.InvalidAsset();
        if (_amount == 0) return;
        POOL_AAVEV3.supply(_token, _amount, address(this), 0);
    }

    function _withdraw(address _token, uint256 _amount) internal {
        if (_token != WSTETH) revert Errors.InvalidAsset();
        if (_amount == 0) return;
        
        POOL_AAVEV3.withdraw(_token, _amount, address(this));
        checkProtocolRatio();
    }

    function _borrow(address _token, uint256 _amount) internal {
        if (_token != USDC) revert Errors.InvalidAsset();
        if (_amount == 0) return;
        
        POOL_AAVEV3.borrow(_token, _amount, 2, 0, address(this));
        checkProtocolRatio();
    }

    function _repay(address _token, uint256 _amount) internal {
        if (_token != USDC) revert Errors.InvalidAsset();
        if (_amount == 0) return;
        POOL_AAVEV3.repay(_token, _amount, 2, address(this));
    }

    function _swap(address _srcToken, address _dstToken, uint256 _amount, uint256 _minOut, bytes memory _swapData)
        internal
        returns (uint256)
    {
        (uint256 out_,) = executeSwap(_amount, _srcToken, _dstToken, _swapData, _minOut);
        return out_;
    }

    function _wrap(uint256 _amount) internal returns (uint256) {
        // if (IERC20(STETH).balanceOf(address(this)) < _amount) {
        //     revert Errors.InvalidAsset();
        // }
        IERC20(STETH).safeIncreaseAllowance(address(WSTETH), _amount);
        uint256 wrappedAmount_ = IWstETH(WSTETH).wrap(_amount);
        return wrappedAmount_;
    }

    function _unwrap(uint256 _amount) internal returns (uint256) {
        // if (IERC20(WSTETH).balanceOf(address(this)) < _amount) {
        //     revert Errors.InvalidAsset();
        // }
        uint256 unwrappedAmount_ = IWstETH(WSTETH).unwrap(_amount);
        return unwrappedAmount_;
    }

    function _bridge(address _token, uint256 _amount, address _receiver) internal {
        if (_token != USDC) revert Errors.InvalidAsset();
        if ( _receiver != getStorage().L2Receiver) revert Errors.InvalidL2Receiver();

        if (_amount == type(uint256).max) {
            _amount = IERC20(USDC).balanceOf(address(this));
        }

        IERC20(USDC).approve(getStorage().circleBridge, _amount);
        bytes32 recieverBytes_ = bytes32(abi.encodePacked(_receiver));

        uint256 maxFee = _amount * getStorage().bridgeMaxFee / 10000;
        ITokenMessenger(getStorage().circleBridge).depositForBurn(_amount, uint32(3), recieverBytes_, USDC, recieverBytes_, maxFee, 2000);
    }

    function _repayWithRemain(address _token, uint256 _remainAmount) internal {
        uint256 balance_ = IERC20(_token).balanceOf(address(this));
        if (balance_ < _remainAmount) {
            return;
        }
        balance_ -= _remainAmount;
        _repay(_token, balance_);
    }

    function checkProtocolRatio() internal view {
        uint256 ratio_ = getRatio();
        if (ratio_ > getStorage().maxRatio) revert Errors.RatioOutOfRange();
    }

    function convertWstETHToRsETH(uint256 _amount) internal returns (uint256 rsETHAmount_, uint256 stETHAmount_) {
        uint256 amountBefore_ = IERC20(STETH).balanceOf(address(this));
        _unwrap(_amount);
        uint256 amountAfter_ = IERC20(STETH).balanceOf(address(this));

        stETHAmount_ = amountAfter_ - amountBefore_;

        IERC20(STETH).safeIncreaseAllowance(address(KELP_POOL), stETHAmount_);
        KELP_POOL.depositAsset(STETH, stETHAmount_, 0, "");

        rsETHAmount_ = IERC20(RSETH).balanceOf(address(this));
    }

    function deposit(address _token, uint256 _amount) external onlyRebalancer {
        _deposit(_token, _amount);
        emit Deposit(_token, _amount);
    }

    function withdraw(address _token, uint256 _amount) external onlyRebalancer {
        _withdraw(_token, _amount);
        emit Withdraw(_token, _amount);
    }

    function borrow(address _token, uint256 _amount) external onlyRebalancer {
        _borrow(_token, _amount);
        emit Borrow(_token, _amount);
    }

    function repay(address _token, uint256 _amount) external onlyRebalancer {
        _repay(_token, _amount);
        emit Repay(_token, _amount);
    }

    function swap(
        address _srcToken,
        address _dstToken,
        uint256 _amount,
        uint256 _minOut,
        bytes memory _swapData
    ) external onlyRebalancer {
        if (
            (_srcToken == USDC && _dstToken == WSTETH) ||
            (_srcToken == WSTETH && _dstToken == USDC)
        ) {
            _swap(_srcToken, _dstToken, _amount, _minOut, _swapData);
            emit Swap(_srcToken, _dstToken, _amount);
        }
    }

    function wrap(uint256 _amount) external onlyRebalancer {
        _wrap(_amount);
        emit Wrap(_amount);
    }

    function unwrap(uint256 _amount) external onlyRebalancer {
        _unwrap(_amount);
        emit Unwrap(_amount);
    }

    function bridge(address _token, uint256 _amount, address _receiver) external onlyRebalancer {
        _bridge(_token, _amount, _receiver);
        emit Bridge(_amount, _token, _receiver);
    }    

    function getMaxRatio() public view returns (uint256) {
        return getStorage().maxRatio;
    }

    function getProtocolAccountData() public view returns (uint256 wstEthAmount_, uint256 debtWstEthAmount_) {
        wstEthAmount_ = IERC20(A_WSTETH).balanceOf(address(this));
        uint256 dUsdcAmount_ = IERC20(D_USDC_AAVEV3).balanceOf(address(this)); // Return base 6

        uint256 wstEthPrice = ORACLE_AAVEV3.getAssetPrice(WSTETH); // Return base 8

        debtWstEthAmount_ = dUsdcAmount_ == 0 ? 0 : dUsdcAmount_ * PRECISION * 1e2 / wstEthPrice;
    }

    function getNetAssets() external view returns (uint256) {
        return KELP_POOL.getRsETHAmountToMint(STETH, getStorage().totalValue);
    }

    function getRatio() public view returns (uint256 ratio_) {
        (uint256 wstEthAmount_, uint256 debtWstEthAmount_) = getProtocolAccountData();
        ratio_ = wstEthAmount_ == 0 ? 0 : debtWstEthAmount_ * PRECISION / wstEthAmount_;
    }

    function updateMaxRatio(uint256 _newMaxRatio) external onlyOwner {
        uint256 oldMaxRatio_ = getStorage().maxRatio;
        getStorage().maxRatio = _newMaxRatio;
        emit UpdateMaxRatio(oldMaxRatio_, _newMaxRatio);
    }

    function snapshotProtocolUSD() public view returns (uint256 deposits_, uint256 debts_) {
        (deposits_, debts_,,,,) = POOL_AAVEV3.getUserAccountData(address(this));
    }

    function snapshotProtocol() public view returns (uint256 deposits_, uint256 debts_) {
        deposits_ = IERC20(A_WSTETH).balanceOf(address(this));
        debts_ = IERC20(D_USDC_AAVEV3).balanceOf(address(this));
    } 

    function snapshotBalance(address[] calldata tokens) public view returns (uint256[] memory balances_) {
        balances_ = new uint256[](tokens.length);
        for (uint256 i = 0; i < tokens.length; ++i) {
            balances_[i] = IERC20(tokens[i]).balanceOf(address(this));
        }
    }

    function updateNetAssets(uint256 _newNetAsset) external onlyRebalancer {
        uint256 oldNetAsset_ = getStorage().totalValue;
        if (oldNetAsset_ != 0) {
            // Check difference with latest netAssets
            uint256 allowedDiff_ = (((block.timestamp -
                getStorage().latestUpdateTimestamp) / 86400) + 1) *
                MAX_DAILY_NET_ASSET_CHANGE;
            uint256 diff_ = _newNetAsset > oldNetAsset_
                ? ((_newNetAsset - oldNetAsset_) * 1e18) / oldNetAsset_
                : ((oldNetAsset_ - _newNetAsset) * 1e18) / oldNetAsset_;
            if (diff_ > allowedDiff_) revert Errors.InvalidNetAssets();
        }
        getStorage().totalValue = _newNetAsset;
        getStorage().latestUpdateTimestamp = block.timestamp;
        emit NetAssetsUpdated(oldNetAsset_, _newNetAsset);
    }

    function composedCall(uint8[] calldata _actionId, bytes[] calldata _data) external onlyRebalancer {
        if (_actionId.length != _data.length) revert Errors.InvalidLength();
        uint256 previousOut_ = 0;
        for (uint256 i = 0; i < _actionId.length; ++i) {
            previousOut_ = _dispatchCall(_actionId[i], previousOut_, _data[i]);
        }
    }

    function onTransferIn(
        address _token,
        uint256 _amount
    ) external onlyVault returns (bool) {
        if (_token != STETH) revert Errors.InvalidUnderlyingToken();
        IERC20(_token).safeTransferFrom(msg.sender, address(this), _amount);

        uint256 amountBefore_ = IERC20(WSTETH).balanceOf(address(this));

        _wrap(_amount);

        uint256 amountAfter_ = IERC20(WSTETH).balanceOf(address(this));

        getStorage().originalAssetAmount += amountAfter_ - amountBefore_;
        getStorage().totalValue += _amount;

        emit OnTransferIn(_token, _amount);
        return true;
    }

    function transferToVault(
        address _token,
        uint256 _amount
    ) external onlyRebalancer {
        if (_token != WSTETH) revert Errors.InvalidUnderlyingToken();
        if (_amount == type(uint256).max) {
            _amount = IERC20(WSTETH).balanceOf(address(this));
        }

        HedgeStorage storage s = getStorage();

        // uint256 amountBefore_ = IERC20(STETH).balanceOf(address(this));
        // _unwrap(_amount);
        // uint256 amountAfter_ = IERC20(STETH).balanceOf(address(this));

        (uint256 rsETHAmount_, uint256 stETHAmount_) = convertWstETHToRsETH(_amount);

        IERC20(RSETH).safeTransfer(
            s.vault,
            rsETHAmount_
        );

        uint256 currentDeposit_ = s.originalAssetAmount;
        if (_amount > currentDeposit_) {
            _amount = currentDeposit_;
        }

        s.originalAssetAmount -= _amount;
        s.totalValue = s.totalValue > (stETHAmount_) ? s.totalValue - (stETHAmount_) : 0;

        emit TransferRsETHToVault(RSETH, rsETHAmount_);
    }

    function callFlashLoan(
        address _token,
        uint256 _amount,
        bytes calldata _data
    ) external onlyRebalancer {
        bytes memory dataBytes_ = abi.encode(uint256(0), this.onFlashLoan.selector, _data);
        IFlashloanHelper(getStorage().flashLoanHelper).flashLoan(IERC3156FlashBorrower(address(this)), _token, _amount, dataBytes_);
    }

    function onFlashLoan(
        address _initiator,
        address _token,
        uint256 _amount,
        uint256 _fee,
        bytes calldata _data
    ) external override returns (bytes32) {
        if (_initiator != address(this) || msg.sender != getStorage().flashLoanHelper) revert Errors.InvalidFlashloanCall();

        (uint8[] memory _actionId, bytes[] memory _actionData) = abi.decode(_data, (uint8[], bytes[]));

        if (_actionId.length != _actionData.length || _actionId.length < 1) revert Errors.InvalidLength();

        uint256 previousOut_ = _amount;
        for (uint256 i = 0; i < _actionId.length - 1; ++i) {
            previousOut_ = _dispatchCall(_actionId[i], previousOut_, _actionData[i]);
        }
        previousOut_ = _amount + _fee;
        _dispatchCall(_actionId[_actionId.length - 1], previousOut_, _actionData[_actionData.length - 1]);
        IERC20(_token).safeIncreaseAllowance(msg.sender, _amount + _fee);

        return keccak256("ERC3156FlashBorrower.onFlashLoan");
    }

    function _dispatchCall(uint8 _actionId, uint256 _previousOut, bytes memory _data) internal returns (uint256) {
        if (_actionId == uint8(ActionSelectors.Deposit)) {
            (address token_, uint256 amount_) = abi.decode(_data, (address, uint256));
            if (amount_ == USE_PREVIOUS_OUT) {
                amount_ = _previousOut;
            }
            _deposit(token_, amount_);
            return 0;
        } else if (_actionId == uint8(ActionSelectors.Withdraw)) {
            (address token_, uint256 amount_) = abi.decode(_data, (address, uint256));
            if (amount_ == USE_PREVIOUS_OUT) {
                amount_ = _previousOut;
            }
            _withdraw(token_, amount_);
            return 0;
        } else if (_actionId == uint8(ActionSelectors.Borrow)) {
            (address token_, uint256 amount_) = abi.decode(_data, (address, uint256));
            if (amount_ == USE_PREVIOUS_OUT) {
                amount_ = _previousOut;
            }
            _borrow(token_, amount_);
            return 0;
        } else if (_actionId == uint8(ActionSelectors.Repay)) {
            (address token_, uint256 amount_) = abi.decode(_data, (address, uint256));
            if (amount_ == USE_PREVIOUS_OUT) {
                amount_ = _previousOut;
            }
            _repay(token_, amount_);
            return 0;
        } else if (_actionId == uint8(ActionSelectors.Swap)) {
            (address fromToken_, address toToken_, uint256 amount_, uint256 minOut_, bytes memory swapData_) =
                abi.decode(_data, (address, address, uint256, uint256, bytes));
            return _swap(fromToken_, toToken_, amount_, minOut_, swapData_);
        } else if (_actionId == uint8(ActionSelectors.Bridge)) {
            (address token_, uint256 amount_, address receiver_) = abi.decode(_data, (address, uint256, address));
            _bridge(token_, amount_, receiver_);
            return 0;
        } else if (_actionId == uint8(ActionSelectors.RepayWithRemain)) {
            (address token_, uint256 remainAmount_) = abi.decode(_data, (address, uint256));
            if (remainAmount_ == USE_PREVIOUS_OUT) {
                remainAmount_ = _previousOut;
            }
            _repayWithRemain(token_, remainAmount_);
            return 0;
        }
        return 0;
    }
}
