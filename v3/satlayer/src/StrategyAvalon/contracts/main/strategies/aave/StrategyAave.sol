// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;


import "@openzeppelin/contracts/interfaces/IERC1271.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "../../../interfaces/flashloanHelper/IFlashloanHelper.sol";
import "../../../interfaces/aave/IAaveOracle.sol";
import "../../../interfaces/aave/v3/IPoolV3.sol";
import "../../../interfaces/IStrategy.sol";
import "../../libraries/Errors.sol";
import "../../swap/ParaSwapCaller.sol";
import "../base/StrategyBase.sol";

contract StrategyAave is StrategyBase, ParaSwapCaller {
    using SafeERC20 for IERC20;

    // The contract used for USDE minting and redemption.
    IPoolV3 internal constant AavePool = IPoolV3(0x87870Bca3F3fD6335C3F4ce8392D69350B4fA4E2);

    IAaveOracle internal constant AaveOracle = IAaveOracle(0x54586bE62E3c3580375aE3723C145253060Ca0C2);
    
    bytes32 internal constant executorLocation = keccak256("app.cian.yieldlayer.fbtc.usda.aave.executor");

    bytes32 internal constant STORAGE_SLOT = keccak256("app.cian.yieldlayer.fbtc.usda.aave");

    address internal constant RLUSD = 0x8292Bb45bf1Ee4d140127049757C2E0fF06317eD;

    address internal constant A_FBTC_AAVEV3 = 0xcCA43ceF272c30415866914351fdfc3E881bb7c2;

    address internal constant A_RLUSD_AAVEV3 = 0xFa82580c16A31D0c1bC632A36F82e83EfEF3Eec0;

    address internal constant D_USDT_AAVEV3 = 0x6df1C1E379bC5a00a7b4C6e67A203333772f45A8;


    struct StrategyConfig {
        address flashloanHelper; // The address of the flashloan helper contract.
        address meritDistributor; // The address of the merit distributor.
        address rlusdReceiver; // The address that receives RLUSD.
        uint256 maxCollRate; // The maximum collateralization rate for the strategy.
    }

    event UpdateMeritDistributor(address indexed meritDistributor);
    event UpdateMaxCollRate(uint256 maxCollRate);
    event ClaimRLUSD(address indexed receiver, uint256 amount);

    modifier rebalancerOrOwner() {
        require(msg.sender == rebalancer || msg.sender == owner(), "Not authorized");
        _;
    }

    function setExecutor(address _executor) internal {
        bytes32 executorLocation_ = executorLocation;
        assembly {
            tstore(executorLocation_, _executor)
        }
    }

    function getExecutor() internal view returns (address executor_) {
        bytes32 executorLocation_ = executorLocation;
        assembly {
            executor_ := tload(executorLocation_)
        }
    }

    function $() internal pure returns (StrategyConfig storage config) {
        bytes32 slot = STORAGE_SLOT;
        assembly {
            config.slot := slot
        }
    }

    function initialize(bytes calldata _initBytes) external override initializer {
        (address admin_, address rebalancer_, address flashloanHelper_, address rlUsdReceiver_, uint256 maxCollRate_) = abi.decode(_initBytes, (address, address, address, address, uint256));
        if (admin_ == address(0)) revert Errors.InvalidAdmin();
        if (rebalancer_ == address(0)) revert Errors.InvalidRebalancer();
        if (flashloanHelper_ == address(0)) revert Errors.InvalidTarget();
        __Ownable_init(admin_);

        rebalancer = rebalancer_;
        vault = msg.sender;

        $().maxCollRate = maxCollRate_;
        $().flashloanHelper = flashloanHelper_;
        $().rlusdReceiver = rlUsdReceiver_;

        // Approve to pool
        IERC20(FBTC).safeIncreaseAllowance(address(AavePool), type(uint256).max);
        IERC20(RLUSD).safeIncreaseAllowance(address(AavePool), type(uint256).max);
        IERC20(USDT).safeIncreaseAllowance(address(AavePool), type(uint256).max);
    }

    function meritDistributor() external view returns (address) {
        return $().meritDistributor;
    }

    function updateMeritDistributor(address _meritDistributor) external onlyOwner {
        if (_meritDistributor == address(0)) revert Errors.InvalidTarget();
        $().meritDistributor = _meritDistributor;
        emit UpdateMeritDistributor(_meritDistributor);
    }

    function maxCollRate() external view returns (uint256) {
        return $().maxCollRate;
    }

    function updateMaxCollRate(uint256 _maxCollRate) external onlyOwner {
        if (_maxCollRate == 0) revert Errors.InvalidLimit();
        $().maxCollRate = _maxCollRate;
        emit UpdateMaxCollRate(_maxCollRate);
    }

    function flashloanHelper() external view returns (address) {
        return $().flashloanHelper;
    }

    function updateFlashloanHelper(address _flashloanHelper) external onlyOwner {
        if (_flashloanHelper == address(0)) revert Errors.InvalidTarget();
        $().flashloanHelper = _flashloanHelper;
    }

    function rlusdReceiver() external view returns (address) {
        return $().rlusdReceiver;
    }

    function updateRlusdReceiver(address _rlusdReceiver) external onlyOwner {
        if (_rlusdReceiver == address(0)) revert Errors.InvalidTarget();
        $().rlusdReceiver = _rlusdReceiver;
    }

    function onTransferIn(address _token, uint256 _amount) external override onlyVault returns (bool) {
        if (_token != FBTC) revert Errors.InvalidToken();
        IERC20(FBTC).safeTransferFrom(msg.sender, address(this), _amount);
        emit OnTransferIn(_token, _amount);
        return true;
    }

    function checkProtocolRatio() internal view {
        (uint256 colInUsd_, uint256 debtInUsd_,,,,) = AavePool.getUserAccountData(address(this));
        if (colInUsd_ == 0) {
            return; // No collateral, no need to check ratio
        }
        uint256 rate_ = debtInUsd_ * 1e18 / colInUsd_;
        if (rate_ > $().maxCollRate) {
            revert Errors.RatioOutOfRange();
        }
    }

    function _deposit(address _token, uint256 _amount) internal {
        if (_amount == type(uint256).max) {
            _amount = IERC20(_token).balanceOf(address(this));
        }
        AavePool.deposit(_token, _amount, address(this), 0);
    }

    function deposit(address _token, uint256 _amount) external onlyRebalancer {
        _deposit(_token, _amount);
    }

    function _withdraw(address _token, uint256 _amount) internal {
        AavePool.withdraw(_token, _amount, address(this));
    }

    function withdraw(address _token, uint256 _amount) external onlyRebalancer {
        _withdraw(_token, _amount);
        checkProtocolRatio();
    }

    function _borrow(address _token, uint256 _amount) internal {
        AavePool.borrow(_token, _amount, 2, 0, address(this));
    }

    function borrow(uint256 _amount) external onlyRebalancer {
        _borrow(USDT, _amount);
        checkProtocolRatio();
    }

    function _repay(uint256 _amount) internal {
        if (_amount == type(uint256).max) {
            _amount = IERC20(USDT).balanceOf(address(this));
        }
        uint256 currentDebt_ = IERC20(D_USDT_AAVEV3).balanceOf(address(this));
        if (_amount > currentDebt_) {
            _amount = currentDebt_;
        }
        AavePool.repay(USDT, _amount, 2, address(this));
    }

    function repay(uint256 _amount) external onlyRebalancer {
        _repay(_amount);
    }

    function swap(address _from, address _to, uint256 _inAmount, uint256 _minOut, bytes calldata _data) external onlyRebalancer returns (uint256 outAmount_) {
        // Require that the from & to is in [FBTC, RLUSD, USDT]
        if (!(_from == FBTC || _from == RLUSD || _from == USDT) ||
            !(_to == FBTC || _to == RLUSD || _to == USDT)) {
            revert Errors.UnsupportedToken();
        }
        // Call the ParaSwap swap function
        (uint256 out_, ) = executeSwap(_inAmount, _from, _to, _data, _minOut);
        return out_;
    }

    function claim(bytes calldata _data) external rebalancerOrOwner {
        // Check _data signature should be 0x71ee95c0 (claim(address[], address[], uint256[], bytes32[][]))
        bytes4 sig = bytes4(_data[:4]);
        if (sig != 0x71ee95c0) {
            revert Errors.UnSupportedOperation();
        }
        // Call merit distributor's claim function
        (bool success_, ) = $().meritDistributor.call(_data);
        if (!success_) {
            revert Errors.InfoExpired();
        }
    }

    function flashLeverage(
        uint256 _depositAmount,
        uint256 _borrowAmount,
        uint256 _minOut,
        bytes calldata _swapData
    ) external onlyRebalancer {
        bytes memory payload_ = abi.encode(true, _depositAmount, _minOut, _swapData);
        payload_ = abi.encode(0, this.onFlashLoan.selector, payload_);
        if (getExecutor() != address(0)) revert Errors.FlashloanInProgress();
        setExecutor(msg.sender);
        IFlashloanHelper($().flashloanHelper).flashLoan(
            IERC3156FlashBorrower(address(this)), USDT, _borrowAmount, payload_
        );
        setExecutor(address(0));
        checkProtocolRatio();
    }

    function flashDeLeverage(
        uint256 _withdrawAmount,
        uint256 _borrowAmount,
        uint256 _minOut,
        bytes calldata _swapData
    ) external onlyRebalancer {
        bytes memory payload_ = abi.encode(false, _withdrawAmount, _minOut, _swapData);
        payload_ = abi.encode(0, this.onFlashLoan.selector, payload_);
        if (getExecutor() != address(0)) revert Errors.FlashloanInProgress();
        setExecutor(msg.sender);
        IFlashloanHelper($().flashloanHelper).flashLoan(
            IERC3156FlashBorrower(address(this)), USDT, _borrowAmount, payload_
        );
        setExecutor(address(0));
    }

    /**
     * @dev Callback function for flashloan operations.
     * @param _initiator The address of the initiator.
     * @param _token The address of the token.
     * @param _amount The amount of tokens.
     * @param _fee The fee for the flashloan.
     * @param _params The parameters for the flashloan.
     * @return A bytes32 value indicating success.
     */
    function onFlashLoan(address _initiator, address _token, uint256 _amount, uint256 _fee, bytes calldata _params)
        external
        returns (bytes32)
    {
        if (msg.sender != $().flashloanHelper || getExecutor() == address(0) || _initiator != address(this)) {
            revert Errors.InvalidFlashloanCall();
        }
        (bool isLeverage_, uint256 depositOrWithdrawAmount_, uint256 minOut_, bytes memory swapData_) = abi.decode(_params, (bool, uint256, uint256, bytes));
        isLeverage_
            ? leverageCallback(depositOrWithdrawAmount_, _amount, minOut_, _fee, swapData_)
            : deleverageCallback(depositOrWithdrawAmount_, _amount, minOut_, _fee, swapData_);
        IERC20(_token).safeIncreaseAllowance(msg.sender, _amount + _fee);
        return keccak256("ERC3156FlashBorrower.onFlashLoan");
    }

    function leverageCallback(
        uint256 _depositAmount,
        uint256 _repayAmount,
        uint256 _swapGetMin,
        uint256 _fee,
        bytes memory _swapData
    ) internal {
        // First, we need to do deposit
        _deposit(FBTC, _depositAmount);
        // Then we need to swap USDT to RLUSD.
        // Print the swap data
        (uint256 swapGet_, ) = executeSwap(_repayAmount, USDT, RLUSD, _swapData, _swapGetMin);
        // deposit RLUSD to Aave
        _deposit(RLUSD, swapGet_);
        // Then we need to borrow USDT from Aave.
        _borrow(USDT, _repayAmount + _fee);
        // done.
    }

    function deleverageCallback(
        uint256 _withdrawAmount,
        uint256 _repayAmount,
        uint256 _swapGetMin,
        uint256 _fee,
        bytes memory _swapData
    ) internal {
        // First we need to repay USDT to Aave.
        _repay(_repayAmount);
        // Then we need to withdraw RLUSD from Aave.
        _withdraw(RLUSD, _withdrawAmount);
        // Then we need to swap RLUSD to USDT.
        (uint256 swapGet_, ) = executeSwap(_withdrawAmount, RLUSD, USDT, _swapData, _swapGetMin);
        // Then we need to repay USDT.
        // Repay surplus USDT to Aave
        uint256 remainUSDT_ = IERC20(USDT).balanceOf(address(this));
        if (remainUSDT_ > _repayAmount + _fee) {
            _repay(remainUSDT_ - _repayAmount - _fee);
        }
    }

    function getProtocolAccountData() external view returns (
        uint256 depositedFBTC_,
        uint256 depositedRLUSD_,
        uint256 borrowedUSDT_
    ) {
        return (
            IERC20(A_FBTC_AAVEV3).balanceOf(address(this)),
            IERC20(A_RLUSD_AAVEV3).balanceOf(address(this)),
            IERC20(D_USDT_AAVEV3).balanceOf(address(this))
        );
    }

    function getRealNetAssets() external view returns (uint256) {
        // Get [FBTC, RLUSD] balances + [USDT] balance - [D_USDT_AAVEV3] balance
        uint256 fbtcBalance_ = IERC20(FBTC).balanceOf(address(this));
        uint256 rlusdBalance_ = IERC20(RLUSD).balanceOf(address(this));
        uint256 usdtBalance_ = IERC20(USDT).balanceOf(address(this));
        fbtcBalance_ += IERC20(A_FBTC_AAVEV3).balanceOf(address(this));
        rlusdBalance_ += IERC20(A_RLUSD_AAVEV3).balanceOf(address(this));
        uint256 usdtDebt_ = IERC20(D_USDT_AAVEV3).balanceOf(address(this));
        // Read usdt + rlusd + fbtc price from AavePool
        uint256 fbtcPrice_ = AaveOracle.getAssetPrice(FBTC);
        uint256 rlusdPrice_ = AaveOracle.getAssetPrice(RLUSD);
        uint256 usdtPrice_ = AaveOracle.getAssetPrice(USDT);
        // Calculate net value to fbtc
        return fbtcBalance_ + 
            (rlusdBalance_ * rlusdPrice_) / 1e10 / fbtcPrice_ + 
            (usdtBalance_ * usdtPrice_) * 1e2 / fbtcPrice_ - 
            (usdtDebt_ * usdtPrice_) * 1e2 / fbtcPrice_;
    }

    function getNetAssets() external view returns (uint256) {
        return IERC20(FBTC).balanceOf(address(this)) + IERC20(A_FBTC_AAVEV3).balanceOf(address(this));
    }

    function claimRLUSD(uint256 _amount) external rebalancerOrOwner {
        if ($().rlusdReceiver == address(0)) revert Errors.InvalidTarget();
        IERC20(RLUSD).safeTransfer($().rlusdReceiver, _amount);
        emit ClaimRLUSD($().rlusdReceiver, _amount);
    }
}