// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "../base/StrategyBase.sol";
import "@openzeppelin/contracts/interfaces/IERC1271.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "../../../interfaces/euler/IEVault.sol";
import "../../../interfaces/euler/IEVC.sol";
import "../../../interfaces/euler/IOracle.sol";
import "../../../interfaces/euler/IRewardToken.sol";
import "../../../interfaces/hyperWave/ITeller.sol";
import "../../../interfaces/hyperWave/IAccountant.sol";
import "../swap/ParaSwapCaller.sol";

contract StrategyEuler is StrategyBase, ParaSwapCaller {
    using SafeERC20 for IERC20;

    // The version of the contract
    string public constant VERSION = "1.0";

    // The maximum allowable ratio for the protocol, set to 91%
    uint256 public constant MAX_PROTOCOL_RATIO = 0.91e18;

    // The maximum interval for netAssets updates.
    uint256 internal constant MAX_NETASSETS_UPDATED_PERIOD = 14 days;

    // The safe collateral rate for the protocol
    uint256 public safeProtocolRatio;

    // Records the total net assets of the current strategy, denominated in hwHLP.
    uint256 public netAssets;

    // Records the timestamp of the last netAssets update to prevent outdated information errors.
    uint256 public lastUpdateTime;

    // For ethena order.
    address public orderSigner;

    // ====================== Euler ======================
    // the address of the Euler hwHLP vault
    IEVault internal constant hwHLP_EVault = IEVault(0x4f36Bebf5dDb4b804F9C72644aEe82BAd165BFfc);

    // the address of the Euler USDC vault
    IEVault internal constant USDC_EVault = IEVault(0x3C75C170671acb394804DfAf63e4F9891C121625);

    // the address of the Euler ethereum vault connector
    IEVC internal constant EVC = IEVC(0x0C9a3dd6b8F28529d72d7f9cE918D493519EE383);

    // the address of the Euler common quote oracle
    IOracle internal constant Oracle = IOracle(0x360204d8e924eB04045Af63b3Ed36c1DB6Bd333D);

    // address(840), ISO 4217 code of the USD, see https://eips.ethereum.org/EIPS/eip-7726
    address internal constant USD_ADDRESS = 0x0000000000000000000000000000000000000348;

    // the address of euler reward token
    address internal constant rEUL = 0xf3e621395fc714B90dA337AA9108771597b4E696;

    // ====================== hyperWave ======================
    // the address of hyperWave Teller contract
    ITeller internal constant Teller = ITeller(0xfA9D7D4709716b90Cd5013fD88fB17AEEDd24Bc4);

    // the address of the hyperWave Accountant contract
    IAccountant internal constant Accountant = IAccountant(0x78E3Ac5Bf48dcAF1835e7F9861542c0D43D0B03E);

    // the address of the native token
    address internal constant NATIVE = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    // ====================== Ethena ======================
    address internal constant EthenaMinting = 0xe3490297a08d6fC8Da46Edb7B6142E4F461b62D3;

    event UpdateSafeProtocolRatio(uint256 oldSafeProtocolRatio, uint256 newSafeProtocolRatio);
    event UpdateNetAssets(uint256 oldNetAssets, uint256 newNetAssets);
    event Leverage(uint256 depositAmount, uint256 leverageAmount);
    event Repay(uint256 amount);
    event Withdrawal(uint256 amount, address receiver);
    event Borrow(uint256 amount);
    event BridgeHwHLP(uint256 amount, bytes32 messageId);
    event HwHLPTransferOut(uint256 amount, address receiver);
    event Swap(address srcToken, address destToken, uint256 amount, uint256 returnAmount);
    event ClaimRewards(uint256 amount, address receiver);
    event UpdateOrderSigner(address oldOrderSigner, address newOrderSigner);

    function initialize(bytes calldata _initBytes) external override initializer {
        (address admin_, address rebalancer_, uint256 safeProtocolRatio_, address orderSigner_) =
            abi.decode(_initBytes, (address, address, uint256, address));
        if (safeProtocolRatio_ > MAX_PROTOCOL_RATIO) {
            revert Errors.InvalidSafeProtocolRatio();
        }
        if (admin_ == address(0)) revert Errors.InvalidAdmin();
        if (rebalancer_ == address(0)) revert Errors.InvalidRebalancer();
        if (orderSigner.code.length > 0) revert Errors.UnSupportedOperation();
        __Ownable_init(admin_);

        netAssets = 0;
        rebalancer = rebalancer_;
        vault = msg.sender;
        safeProtocolRatio = safeProtocolRatio_;
        lastUpdateTime = block.timestamp;
        orderSigner = orderSigner_;
        _enterProtocol();
    }

    function updateSafeProtocolRatio(uint256 _newRatio) external onlyOwner {
        if (_newRatio > MAX_PROTOCOL_RATIO) {
            revert Errors.InvalidSafeProtocolRatio();
        }
        emit UpdateSafeProtocolRatio(safeProtocolRatio, _newRatio);
        safeProtocolRatio = _newRatio;
    }

    function updateOrderSigner(address _newOrderSigner) external onlyOwner {
        if (_newOrderSigner.code.length > 0) revert Errors.UnSupportedOperation();
        emit UpdateOrderSigner(orderSigner, _newOrderSigner);
        orderSigner = _newOrderSigner;
    }

    function updateNetAssets(uint256 _newNetAssets) external onlyOwner {
        if (_newNetAssets == 0) revert Errors.IncorrectState();
        emit UpdateNetAssets(netAssets, _newNetAssets);
        netAssets = _newNetAssets;
        lastUpdateTime = block.timestamp;
    }

    /**
     * @dev Transfers funds from the vault contract to this contract.
     * This function is called by the vault to move tokens into this contract.
     * It uses the `safeTransferFrom` function from the SafeERC20 library to ensure the transfer is successful.
     * @param _token The address of the token to be transferred.
     * @param _amount The amount of tokens to be transferred.
     * @return A boolean indicating whether the transfer was successful.
     */
    function onTransferIn(address _token, uint256 _amount) external onlyVault returns (bool) {
        IERC20(_token).safeTransferFrom(msg.sender, address(this), _amount);
        netAssets += _amount;
        lastUpdateTime = block.timestamp;
        emit OnTransferIn(_token, _amount);
        return true;
    }

    /**
     * @dev Transfer tokens to the Vault.
     * @param _token The address of the token to transfer.
     * @param _amount The amount of tokens to transfer.
     */
    function transferToVault(address _token, uint256 _amount) external onlyRebalancer {
        IERC20(_token).safeTransfer(vault, _amount);
        netAssets -= _amount;
        lastUpdateTime = block.timestamp;
        emit TransferToVault(_token, _amount);
    }

    /**
     * @dev Execute a leverage operation.
     * @param _depositAmount The amount of hwHLP to deposit.
     * @param _leverageAmount The amount of USDC to leverage.
     * @param _intermediateToken The intermediate token to swap to and deposit finally(should be eqaul to destToken in swapData).
     * @param _swapData The swap data.
     * @param _swapGetMin The minimum amount to get from the swap.
     */
    function leverage(
        uint256 _depositAmount,
        uint256 _leverageAmount,
        address _intermediateToken,
        bytes calldata _swapData,
        uint256 _swapGetMin
    ) external onlyRebalancer {
        if (_depositAmount > 0) {
            _executeDeposit(_depositAmount);
        }

        if (_leverageAmount > 0) {
            _executeBorrow(_leverageAmount);
            if (_intermediateToken != USDT && _intermediateToken != USDe) {
                revert Errors.UnsupportedSwapToken();
            }
            (uint256 tokenOut_,) = executeSwap(_leverageAmount, USDC, _intermediateToken, _swapData, _swapGetMin);

            uint256 hwHLPOut_ = _depositToHyperWave(_intermediateToken, tokenOut_);
            _executeDeposit(hwHLPOut_);
        }

        _checkProtocolRatio();
        emit Leverage(_depositAmount, _leverageAmount);
    }

    function repay(uint256 _amount) external onlyRebalancer {
        USDC_EVault.repay(_amount, address(this));
        emit Repay(_amount);
    }

    /**
     * @dev withdraw hwHLP from euler
     * @param _amount The amount of hwHLP to be withdrawn.
     */
    function withdraw(uint256 _amount, address _to) external onlyOwner {
        if (_amount == type(uint256).max) {
            _amount = hwHLP_EVault.maxWithdraw(address(this));
        }
        _executeWithdraw(_amount, _to);
        emit Withdrawal(_amount, _to);
    }

    /**
     * @dev borrow USDC from euler
     * @param _amount The amount of USDC to be borrowed.
     */
    function borrow(uint256 _amount) external onlyRebalancer {
        _executeBorrow(_amount);
        _checkProtocolRatio();
        emit Borrow(_amount);
    }

    /**
     * @dev deposit USDT/USDe to hyperWave to get hwHLP.
     * @param _token The token to be deposited.
     * @param _amount The amount of token to be deposited.
     * @return shares_ The amount of shares received.
     */
    function depositToHyperWave(address _token, uint256 _amount) external onlyRebalancer returns (uint256 shares_) {
        return _depositToHyperWave(_token, _amount);
    }

    /**
     * @dev bridge hwHLP from mainnet to hyperEVM.
     * @param shareAmount_ The amount of hwHLP to be bridged.
     * @param destReceiver_ The destination chain receiver.
     */
    function bridgeHwHLP(uint256 shareAmount_, address destReceiver_)
        external
        payable
        onlyRebalancer
        returns (bytes32 messageId)
    {
        ITeller.BridgeData memory data_ = ITeller.BridgeData(30367, destReceiver_, NATIVE, 200000, bytes("0x"));
        IERC20(hwHLP).safeIncreaseAllowance(address(Teller), shareAmount_);
        messageId = Teller.bridge{value: msg.value}(shareAmount_, data_);
        emit BridgeHwHLP(shareAmount_, messageId);
    }

    /**
     * @dev transfer hwHLP to EOA.
     */
    function transferHwHLP(uint256 _amount, address _to) external onlyOwner {
        if (_to == address(0)) {
            revert Errors.InvalidReceiveAddress();
        }
        IERC20(hwHLP).safeTransfer(_to, _amount);
        emit HwHLPTransferOut(_amount, _to);
    }

    /**
     * @dev Swap USDT/USDe received from hyperEVM cross-chain into USDC
     * @param _amount The amount of USDT/USDe to be swapped.
     * @param _tokenIn The token to be swapped.
     * @param _swapData The swap data.
     * @param _minAmountOut The minimum amount to get from the swap.
     * @return amountOut_ The amount of USDC received.
     */
    function swap(uint256 _amount, address _tokenIn, bytes memory _swapData, uint256 _minAmountOut)
        external
        onlyRebalancer
        returns (uint256 amountOut_)
    {
        if (_tokenIn != USDT && _tokenIn != USDe) {
            revert Errors.UnsupportedSwapToken();
        }
        (amountOut_,) = executeSwap(_amount, _tokenIn, USDC, _swapData, _minAmountOut);
        emit Swap(_tokenIn, USDC, _amount, amountOut_);
    }

    /**
     * @dev approve the EthenaMinting contract to redeem.
     */
    function approveRedeem(uint256 _usdeAmount) external onlyRebalancer {
        IERC20(USDe).safeIncreaseAllowance(EthenaMinting, _usdeAmount);
    }

    function isValidSignature(bytes32 _hash, bytes calldata _signature) external view returns (bytes4 magic) {
        if (ECDSA.recover(_hash, _signature) == orderSigner) {
            magic = IERC1271.isValidSignature.selector;
        } else {
            magic = hex"00000000";
        }
    }

    function getCollateralRatio() public view returns (uint256 collateralRatio_, bool isOK_) {
        (uint256 collateral_, uint256 debt_) = getAccountData();
        uint256 hwHLPPrice_ = Oracle.getQuote(1e6, hwHLP, USD_ADDRESS);
        uint256 USDCPrice_ = Oracle.getQuote(1e6, USDC, USD_ADDRESS);

        uint256 collateralValue_ = collateral_ * hwHLPPrice_ / 1e6;
        uint256 debtValue_ = debt_ * USDCPrice_ / 1e6;
        collateralRatio_ = collateralValue_ == 0 ? 0 : debtValue_ * 1e18 / collateralValue_;
        isOK_ = safeProtocolRatio > collateralRatio_;
    }

    /**
     * @dev Get the account data.
     * @return  col_ The amount of hwHLP collateral.
     * @return  debt_ The amount of USDC debt.
     */
    function getAccountData() public view returns (uint256 col_, uint256 debt_) {
        uint256 shares_ = hwHLP_EVault.balanceOf(address(this));
        col_ = hwHLP_EVault.convertToAssets(shares_);
        debt_ = USDC_EVault.debtOf(address(this));
    }

    function claimRewards(address _to, uint256 _amount) external onlyOwner {
        if (_to == address(0)) {
            revert Errors.InvalidReceiveAddress();
        }
        IRewardToken(rEUL).transfer(_to, _amount);
        emit ClaimRewards(_amount, _to);
    }

    function sweep() external onlyOwner {
        (bool success, ) = owner().call{value: address(this).balance}("");
        if (!success) revert Errors.FailedSweep();
    }

    function _checkProtocolRatio() internal view {
        (, bool isOK_) = getCollateralRatio();
        if (!isOK_) revert Errors.RatioOutOfRange();
    }

    /**
     * @dev execute a deposit operation.
     * @param _amount The amount of hwHLP to be deposited.
     * @return The amount of shares received.
     */
    function _executeDeposit(uint256 _amount) internal returns (uint256) {
        if (_amount == type(uint256).max) {
            // Handle depositAll.
            _amount = IERC20(hwHLP).balanceOf(address(this));
        }
        return hwHLP_EVault.deposit(_amount, address(this));
    }

    /**
     * @dev execute a withdraw operation.
     * @param _amount The amount of hwHLP to be withdrawn.
     */
    function _executeWithdraw(uint256 _amount, address _receiver) internal returns (uint256) {
        return hwHLP_EVault.withdraw(_amount, _receiver, address(this));
    }

    /**
     * @dev execute a borrow operation.
     * @param _amount The amount of USDC to be borrowed.
     */
    function _executeBorrow(uint256 _amount) internal {
        USDC_EVault.borrow(_amount, address(this));
    }

    /**
     * @dev execute a repay operation.
     * @param _amount The amount of USDC to be repaid.
     */
    function _executeRepay(uint256 _amount) internal {
        USDC_EVault.repay(_amount, address(this));
    }

    function _depositToHyperWave(address _token, uint256 _amount) internal returns (uint256 shares_) {
        uint256 minimumMint_ = _amount * 1e6 / Accountant.getRateInQuoteSafe(_token);
        IERC20(_token).safeIncreaseAllowance(address(hwHLP), _amount);
        return Teller.deposit(_token, _amount, minimumMint_);
    }

    function _enterProtocol() internal {
        EVC.enableCollateral(address(this), address(hwHLP_EVault));
        EVC.enableController(address(this), address(USDC_EVault));

        IERC20(hwHLP).safeIncreaseAllowance(address(hwHLP_EVault), type(uint256).max);
        IERC20(USDC).safeIncreaseAllowance(address(USDC_EVault), type(uint256).max);
    }

    function getNetAssets() public view returns (uint256) {
        if (block.timestamp - lastUpdateTime > MAX_NETASSETS_UPDATED_PERIOD) revert Errors.IncorrectState();
        return netAssets;
    }
}
