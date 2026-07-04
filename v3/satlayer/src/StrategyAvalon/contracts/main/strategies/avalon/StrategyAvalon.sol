// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/interfaces/IERC1271.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "../../../interfaces/IVault.sol";
import "../../../interfaces/avalon/IPoolManager.sol";
import "../../../interfaces/chainlink/IAggregatorInterface.sol";
import "../../../interfaces/ethena/IEthenaMinting.sol";
import "../../../interfaces/ethena/IStakedUSDe.sol";
import "../../../interfaces/ethena/IStakedUSDeCooldown.sol";
import "../../../interfaces/IStrategy.sol";
import "../../libraries/Errors.sol";
import "../../swap/OneInchCallerV6.sol";
import "../base/StrategyBase.sol";
import "../../swap/OneInchCallerV6.sol";

/**
 * @title StrategyAvalon contract
 * @author Naturelab
 * @dev This contract is the actual address of the strategy pool, which
 * manages some assets in Avalon.
 */
contract StrategyAvalon is IERC1271, StrategyBase, OneInchCallerV6 {
    using SafeERC20 for IERC20;

    // The version of the contract
    string public constant VERSION = "1.1";

    // The maximum allowable ratio for the protocol, set to 60%
    uint256 public constant MAX_PROTOCOL_RATIO = 0.6e18;

    uint256 internal constant MAX_NETASSETS_UPDATED_PERIOD = 14 days;

    address internal constant BTC_ORACLE = 0xF4030086522a5bEEa4988F8cA5B36dbC97BeE88c;

    address internal constant USDT_ORACLE = 0x3E7d1eAB13ad0104d2750B8863b489D65364e32D;

    // The contract used for USDE minting and redemption.
    address internal constant EthenaMinting = 0xe3490297a08d6fC8Da46Edb7B6142E4F461b62D3;

    // The contract used for Avalon lending management.
    IPoolManager internal constant AVALON_POOL = IPoolManager(0x3f390dD6EF69f68f9877aACC086856a200808693);

    // Records the total net assets of the current strategy, denominated in FBTC.
    uint256 public netAssets;

    // Records the timestamp of the last total assets update to prevent outdated information errors.
    uint256 public lastUpdateTime;

    // For ethena order.
    address public orderSigner;

    // For avalon fbtc<-->bbtc
    address public safeBtcWallet;

    // For avalon usda<-->usdt
    address public safeUsdWallet;

    // The safe collateral rate for the protocol
    uint256 public safeProtocolRatio;

    event Stake(uint256 amount);
    event Unstake(uint256 amount);
    event ClaimUnstake();
    event SwapToken(uint256 amount, address srcToken, address dstToken, uint256 swapGet);
    event ApproveMint(uint256 usdtAmount);
    event ApproveRedeem(uint256 usdeAmount);
    event UpdateSafeProtocolRatio(uint256 oldSafeProtocolRatio, uint256 newSafeProtocolRatio);
    event UpdateOrderSigner(address oldOrderSigner, address newOrderSigner);
    event UpdateBtcWallet(address oldWallet, address newWallet);
    event UpdateUsdWallet(address oldWallet, address newWallet);
    event UpdateNetAssets(uint256 oldNetAssets, uint256 newNetAssets);
    event Deposit(uint256 amount);
    event Withdraw(uint256 amount);
    event ClaimBTC(uint256 amount);
    event Borrow(uint256 amount);
    event Repay(uint256 amount);
    event TransferToBtcWallet(address token, uint256 amount);
    event TransferToUsdWallet(address token, uint256 amount);
    event TransferToRebalancer(address token, uint256 amount);

    /**
     * @dev Initialize the strategy with given parameters.
     * @param _initBytes Initialization data
     */
    function initialize(bytes calldata _initBytes) external override initializer {
        (
            uint256 safeProtocolRatio_,
            address admin_,
            address rebalancer_,
            address orderSigner_,
            address btcWallet_,
            address usdWallet_
        ) = abi.decode(_initBytes, (uint256, address, address, address, address, address));
        if (admin_ == address(0)) revert Errors.InvalidAdmin();
        if (safeProtocolRatio_ > MAX_PROTOCOL_RATIO) revert Errors.InvalidSafeProtocolRatio();
        if (rebalancer_ == address(0)) revert Errors.InvalidRebalancer();
        if (orderSigner_.code.length > 0 || orderSigner_ == address(0)) revert Errors.UnSupportedOperation();
        if (btcWallet_.code.length == 0 || btcWallet_ == address(0)) revert Errors.UnSupportedOperation();
        if (usdWallet_.code.length == 0 || usdWallet_ == address(0)) revert Errors.UnSupportedOperation();
        __Ownable_init(admin_);
        netAssets = 0;
        lastUpdateTime = block.timestamp;
        safeProtocolRatio = safeProtocolRatio_;
        rebalancer = rebalancer_;
        vault = msg.sender;
        orderSigner = orderSigner_;
        safeBtcWallet = btcWallet_;
        safeUsdWallet = usdWallet_;
    }

    function updateSafeProtocolRatio(uint256 _newRatio) external onlyOwner {
        if (_newRatio > MAX_PROTOCOL_RATIO) revert Errors.InvalidSafeProtocolRatio();
        emit UpdateSafeProtocolRatio(safeProtocolRatio, _newRatio);
        safeProtocolRatio = _newRatio;
    }

    function updateOrderSigner(address _newOrderSigner) external onlyOwner {
        if (_newOrderSigner.code.length > 0 || _newOrderSigner == address(0)) revert Errors.UnSupportedOperation();
        emit UpdateOrderSigner(orderSigner, _newOrderSigner);
        orderSigner = _newOrderSigner;
    }

    function updateBtcWallet(address _newSafeWallet) external onlyOwner {
        if (_newSafeWallet.code.length == 0 || _newSafeWallet == address(0)) revert Errors.UnSupportedOperation();
        emit UpdateBtcWallet(safeBtcWallet, _newSafeWallet);
        safeBtcWallet = _newSafeWallet;
    }

    function updateUsdWallet(address _newSafeWallet) external onlyOwner {
        if (_newSafeWallet.code.length == 0 || _newSafeWallet == address(0)) revert Errors.UnSupportedOperation();
        emit UpdateUsdWallet(safeUsdWallet, _newSafeWallet);
        safeUsdWallet = _newSafeWallet;
    }

    function updateNetAssets(uint256 _newNetAssets) external onlyOwner {
        if (_newNetAssets == 0) revert Errors.IncorrectState();
        emit UpdateNetAssets(netAssets, _newNetAssets);
        netAssets = _newNetAssets;
        lastUpdateTime = block.timestamp;
    }

    function onTransferIn(address _token, uint256 _amount) external override onlyVault returns (bool) {
        if (_token != FBTC && _token != BBTC) revert Errors.UnsupportedToken();
        IERC20(_token).safeTransferFrom(msg.sender, address(this), _amount);
        emit OnTransferIn(_token, _amount);
        return true;
    }

    function getNetAssets() public view returns (uint256) {
        // if (block.timestamp - lastUpdateTime > MAX_NETASSETS_UPDATED_PERIOD) revert Errors.IncorrectState();
        return netAssets;
    }

    function swapToken(
        uint256 _amount,
        address _srcToken,
        address _dstToken,
        bytes memory _swapData,
        uint256 _swapGetMin
    ) external onlyRebalancer {
        if (_srcToken != USDT && _srcToken != FBTC && _srcToken != SUSDe) {
            revert Errors.UnSupportedOperation();
        }
        if (_dstToken != USDT && _dstToken != FBTC && _dstToken != SUSDe) {
            revert Errors.UnSupportedOperation();
        }
        IERC20(_srcToken).safeIncreaseAllowance(ONEINCH_ROUTER, _amount);
        (uint256 return_,) = executeSwap(_amount, _srcToken, _dstToken, _swapData, _swapGetMin);

        emit SwapToken(_amount, _srcToken, _dstToken, return_);
    }

    // ethena

    function approveMint(uint256 _usdtAmount) external onlyRebalancer {
        IERC20(USDT).safeIncreaseAllowance(EthenaMinting, _usdtAmount);

        emit ApproveMint(_usdtAmount);
    }

    function approveRedeem(uint256 _usdeAmount) external onlyRebalancer {
        IERC20(USDe).safeIncreaseAllowance(EthenaMinting, _usdeAmount);

        emit ApproveRedeem(_usdeAmount);
    }

    function isValidSignature(bytes32 _hash, bytes calldata _signature) external view returns (bytes4 magic) {
        if (ECDSA.recover(_hash, _signature) == orderSigner) {
            magic = IERC1271.isValidSignature.selector;
        } else {
            magic = hex"00000000";
        }
    }

    function stake(uint256 _usdeAmount) external onlyRebalancer returns (uint256) {
        emit Stake(_usdeAmount);
        IERC20(USDe).safeIncreaseAllowance(SUSDe, _usdeAmount);
        return IERC4626(SUSDe).deposit(_usdeAmount, address(this));
    }

    function unstake(uint256 _susdeAmount) external onlyRebalancer returns (uint256) {
        emit Unstake(_susdeAmount);
        return IStakedUSDeCooldown(SUSDe).cooldownShares(_susdeAmount);
    }

    function claimUnstake() external onlyRebalancer {
        IStakedUSDeCooldown(SUSDe).unstake(address(this));

        emit ClaimUnstake();
    }

    function cooldowns() public view returns (uint104 cooldownEnd_, uint152 underlyingAmount_) {
        return IStakedUSDeCooldown(SUSDe).cooldowns(address(this));
    }

    function getUnstakingAmount() public view returns (uint256) {
        (, uint152 underlyingAmount_) = cooldowns();
        return uint256(underlyingAmount_);
    }

    // avalon lend

    function executeDeposit(uint256 _amount) external onlyRebalancer {
        IERC20(FBTC).safeIncreaseAllowance(address(AVALON_POOL), _amount);
        AVALON_POOL.supply(_amount);

        emit Deposit(_amount);
    }

    function executeWithdraw(uint256 _amount) external onlyRebalancer {
        AVALON_POOL.withdraw(_amount);
        checkProtocolRatio();

        emit Withdraw(_amount);
    }

    function executeClaim(uint256 _amount) external onlyRebalancer {
        AVALON_POOL.claimBTC(_amount);

        emit ClaimBTC(_amount);
    }

    function executeBorrow(uint256 _amount) external onlyRebalancer {
        AVALON_POOL.borrow(_amount);
        checkProtocolRatio();

        emit Borrow(_amount);
    }

    function executeRepay(uint256 _amount) external onlyRebalancer {
        IERC20(USDa).safeIncreaseAllowance(address(AVALON_POOL), _amount);
        AVALON_POOL.repay(_amount);

        emit Repay(_amount);
    }

    function getCollateralRatio() public view returns (uint256 collateralRatio_, bool isOK_) {
        (, uint256 collateral_, uint256 debt_,,) = AVALON_POOL.getUserPoolReserveInformation(address(this));
        uint256 collateralBase_ = collateral_ * uint256(IAggregatorInterface(BTC_ORACLE).latestAnswer());
        uint256 debtBase_ = debt_ * uint256(IAggregatorInterface(USDT_ORACLE).latestAnswer()) / 1e10;

        collateralRatio_ = collateralBase_ == 0 ? 0 : debtBase_ * 1e18 / collateralBase_;
        isOK_ = safeProtocolRatio > collateralRatio_;
    }

    /**
     * @dev Check the health status of a specific protocol after an operation
     * to prevent the strategy pool from being in a risky position.
     */
    function checkProtocolRatio() internal view {
        (, bool isOK_) = getCollateralRatio();
        if (!isOK_) revert Errors.RatioOutOfRange();
    }

    // avalon converter

    function transferToBtcWallet(address _token, uint256 _amount) external onlyRebalancer {
        if (_token != BBTC) revert Errors.UnSupportedOperation();
        IERC20(_token).safeTransfer(safeBtcWallet, _amount);

        emit TransferToBtcWallet(_token, _amount);
    }

    function transferToUsdWallet(address _token, uint256 _amount) external onlyRebalancer {
        if (_token != USDa && _token != USDT) revert Errors.UnSupportedOperation();
        IERC20(_token).safeTransfer(safeUsdWallet, _amount);

        emit TransferToUsdWallet(_token, _amount);
    }

    function transferTokenToRebalancer(address _token, uint256 _amount) external onlyRebalancer {
        if (_token != sENA && _token != FBTC && _token != USDe && _token != SUSDe) {
            revert Errors.UnSupportedOperation();
        }
        IERC20(_token).safeTransfer(rebalancer, _amount);

        emit TransferToRebalancer(_token, _amount);
    }

    function getUserPoolReserveInformation()
        public
        view
        returns (
            uint256 timeStampIndex,
            uint256 collateral,
            uint256 debt,
            uint256 accumulatedInterest,
            uint256 claimableBTC
        )
    {
        return AVALON_POOL.getUserPoolReserveInformation(address(this));
    }
}
