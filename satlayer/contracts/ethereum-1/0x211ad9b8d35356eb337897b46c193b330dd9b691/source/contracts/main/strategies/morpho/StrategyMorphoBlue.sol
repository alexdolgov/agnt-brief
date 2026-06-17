// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@morpho-org/morpho-blue/src/interfaces/IMorpho.sol";
import "@morpho-org/morpho-blue/src/libraries/periphery/MorphoBalancesLib.sol";
import "@morpho-org/morpho-blue/src/libraries/periphery/MorphoStorageLib.sol";
import "@morpho-org/morpho-blue/src/libraries/MarketParamsLib.sol";
import "@morpho-org/morpho-blue/src/interfaces/IOracle.sol";
import "../../../interfaces/IStrategy.sol";
import "../../../interfaces/midas/IDepositVault.sol";
import "../../../interfaces/midas/IRedemptionVault.sol";
import "../../../interfaces/midas/IMidasOracle.sol";
import "../../libraries/Errors.sol";
import "../../common/Constants.sol";
/**
 * @title StrategyMorphoBlue contract
 * @author Naturelab
 * @dev This contract is the actual address of the strategy pool.
 */

contract StrategyMorphoBlue is IStrategy, OwnableUpgradeable, Constants {
    using SafeERC20 for IERC20;
    using MorphoBalancesLib for IMorpho;

    // The version of the contract
    string public constant VERSION = "1.1";

    // The maximum allowable ratio for the protocol, set to 91%
    uint256 public constant MAX_PROTOCOL_RATIO = 0.915e18;

    bytes32 internal constant STORAGE_SLOT = keccak256("cian.morpho.fasanara");

    uint256 internal constant PRECISION = 10 ** 18;

    uint256 internal constant USE_PREVIOUS_OUT = type(uint256).max - 1;

    // Morpho
    address internal constant MORPHO_POOL = 0xBBBBBbbBBb9cC5e90e3b3Af64bdAF62C37EEFFCb;
    address internal constant MORPHO_ORACLE = 0x0cB1928EcA8783F05a07D9Ae2AfB33f38BFBEb78;
    address internal constant MORPHO_IRM = 0x870aC11D48B15DB9a138Cf899d20F13F79Ba00BC;
    uint256 internal constant MORPHO_LLTV = 9150 * 10 ** 14;

    // Midas
    address internal constant MIDAS_ORACLE = 0x8D51DBC85cEef637c97D02bdaAbb5E274850e68C;
    address internal constant MIDAS_MINT = 0x41438435c20B1C2f1fcA702d387889F346A0C3DE;
    address internal constant MIDAS_REDEEM = 0x44b0440e35c596e858cEA433D0d82F5a985fD19C;

    struct StrategyStorage {
        address vault;
        address rebalancer;
        uint256 safeProtocolRatio;
        address executor;
        uint256 redeemRequestId;
    }

    enum ActionSelectors {
        Deposit, // 0
        Withdraw, // 1
        Borrow, // 2
        Repay, // 3
        MintMFONE, // 4
        RedeemMFONERapid, // 5
        RedeemMFONESlow // 6

    }

    event UpdateRebalancer(address oldRebalancer, address newRebalancer);
    event UpdateSafeProtocolRatio(uint256 oldSafeProtocolRatio, uint256 newSafeProtocolRatio);
    event OnTransferIn(address token, uint256 amount);
    event TransferToVault(address token, uint256 amount);
    event UpdateRedeemRequestId(uint256 oldId, uint256 newId);
    event RedeemMFONESlow(uint256 redeemRequestId);
    event Deposit(address token, uint256 amount);
    event Withdraw(address token, uint256 amount);
    event Borrow(address token, uint256 amount);
    event Repay(address asset, uint256 amount);

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
        if (msg.sender != getStorage().rebalancer) revert Errors.CallerNotRebalancer();
        _;
    }

    /**
     * @dev Initialize the strategy with given parameters.
     * @param _initBytes Initialization data
     */
    function initialize(bytes calldata _initBytes) external initializer {
        (uint256 _safeProtocolRatio, address _admin, address _rebalancer) =
            abi.decode(_initBytes, (uint256, address, address));

        if (_admin == address(0)) revert Errors.InvalidAdmin();
        if (_safeProtocolRatio > MORPHO_LLTV) revert Errors.InvalidSafeProtocolRatio();
        if (_rebalancer == address(0)) revert Errors.InvalidRebalancer();

        StrategyStorage storage s = getStorage();

        s.safeProtocolRatio = _safeProtocolRatio;
        s.rebalancer = _rebalancer;
        s.vault = msg.sender;
        s.executor = address(0);
        s.redeemRequestId = 0;

        __Ownable_init(_admin);
    }

    function vault() external view returns (address) {
        return getStorage().vault;
    }

    function rebalancer() external view returns (address) {
        return getStorage().rebalancer;
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

    function updateSafeProtocolRatio(uint256 _newRatio) external onlyOwner {
        if (_newRatio > MAX_PROTOCOL_RATIO) revert Errors.InvalidSafeProtocolRatio();
        emit UpdateSafeProtocolRatio(getStorage().safeProtocolRatio, _newRatio);
        getStorage().safeProtocolRatio = _newRatio;
    }

    /**
     * @dev Transfers funds from the vault contract to this contract.
     * This function is called by the vault to move tokens into this contract.
     * It uses the `safeTransferFrom` function from the SafeERC20 library to ensure the transfer is successful.
     * @param _token The address of the token to be transferred.
     * @param _amount The amount of tokens to be transferred.
     * @return A boolean indicating whether the transfer was successful.
     */
    function onTransferIn(address _token, uint256 _amount) external override onlyVault returns (bool) {
        if (_token != USDC && _token != MF_ONE) revert Errors.InvalidUnderlyingToken();
        IERC20(_token).safeTransferFrom(msg.sender, address(this), _amount);
        emit OnTransferIn(_token, _amount);
        return true;
    }

    /**
     * @dev Transfer tokens to the Vault.
     * @param _token The address of the token to transfer.
     * @param _amount The amount of tokens to transfer.
     */
    function transferToVault(address _token, uint256 _amount) external onlyRebalancer {
        IERC20(_token).safeTransfer(getStorage().vault, _amount);

        emit TransferToVault(_token, _amount);
    }

    function callFlashLoan(uint256 _amount, bytes calldata _data) external onlyRebalancer {
        getStorage().executor = msg.sender;
        IMorpho(MORPHO_POOL).flashLoan(USDC, _amount, _data);

        getStorage().executor = address(0);
    }

    /**
     * @dev Callback function for flashloan operations.
     * @param _assets The amount of tokens.
     * @param _data The parameters for the flashloan.
     */
    function onMorphoFlashLoan(uint256 _assets, bytes calldata _data) external {
        if (getStorage().executor == address(0) || msg.sender != MORPHO_POOL) {
            revert Errors.InvalidFlashloanCall();
        }

        (uint8[] memory _actionId, bytes[] memory _actionData) = abi.decode(_data, (uint8[], bytes[]));

        if (_actionId.length != _actionData.length || _actionId.length < 1) revert Errors.InvalidLength();

        uint256 previousOut_ = _assets;
        for (uint256 i = 0; i < _actionId.length - 1; ++i) {
            previousOut_ = _dispatchCall(_actionId[i], previousOut_, _actionData[i]);
        }
        previousOut_ = _assets;
        _dispatchCall(_actionId[_actionId.length - 1], previousOut_, _actionData[_actionData.length - 1]);
    }

    function getMarketParams() public pure returns (MarketParams memory) {
        return MarketParams({
            loanToken: USDC,
            collateralToken: MF_ONE,
            oracle: MORPHO_ORACLE,
            irm: MORPHO_IRM,
            lltv: MORPHO_LLTV
        });
    }

    function getRatio() public view returns (uint256 ratio_) {
        uint256 mFONEAMount_ = collateralAssetsUser();
        uint256 usdcAmount_ = borrowAssetsUser();
        ratio_ = mFONEAMount_ > 0 ? (usdcAmount_ * 1e12 * PRECISION / mFONEAMount_) : 0;
    }

    /**
     * @dev Get the collateral ratio and its status.
     * @return collateralRatio_ The collateral ratio.
     * @return isOK_ Boolean indicating whether the ratio is within safe limits.
     */
    function getCollateralRatio() public view returns (uint256 collateralRatio_, bool isOK_) {
        collateralRatio_ = getRatio();
        isOK_ = getStorage().safeProtocolRatio > collateralRatio_;
    }

    function getProtocolAccountData() public view returns (uint256 mFONEAmount_, uint256 debtUSDCAmount_) {
        mFONEAmount_ = collateralAssetsUser();
        debtUSDCAmount_ = borrowAssetsUser();
    }

    /**
     * @dev Get the amount of net assets in the protocol.
     * @return net_ The amount of net assets.
     */
    function getProtocolNetAssets() public view returns (uint256) {
        // decimal 6
        uint256 mFONEACollateral_ = collateralAssetsUser();
        uint256 usdcDebt_ = borrowAssetsUser();

        return convertMFONEtoUSDC(mFONEACollateral_) - usdcDebt_;
    }

    /**
     * @dev Get the amount of assets in all lending protocols involved in this contract for the strategy pool.
     * @return netAssets The total amount of net assets.
     */
    function getNetAssets() public view override returns (uint256) {
        // decimal 6
        uint256 mFONEAMount_ = collateralAssetsUser() + IERC20(MF_ONE).balanceOf(address(this));
        uint256 usdcDebt_ = borrowAssetsUser();

        uint256 usdcAmount_ = IERC20(USDC).balanceOf(address(this));

        // statistic redeem request
        Request memory request = IRedemptionVault(MIDAS_REDEEM).redeemRequests(getStorage().redeemRequestId);
        uint256 usdcPending_ = 0;
        if (request.status == RequestStatus.Pending) {
            usdcPending_ = request.mTokenRate * request.amountMToken / (PRECISION * 1e12);
        }

        return usdcAmount_ + usdcPending_ + convertMFONEtoUSDC(mFONEAMount_) - usdcDebt_;
    }

    function deposit(address _asset, uint256 _amount) external onlyRebalancer {
        _deposit(_asset, _amount);
        emit Deposit(_asset, _amount);
    }

    function withdraw(address _asset, uint256 _amount) external onlyRebalancer {
        _withdraw(_asset, _amount);
        emit Withdraw(_asset, _amount);
    }

    function borrow(address _asset, uint256 _amount) external onlyRebalancer {
        _borrow(_asset, _amount);
        emit Borrow(_asset, _amount);
    }

    function repay(address _asset, uint256 _amount) external onlyRebalancer {
        _repay(_asset, _amount);
        emit Repay(_asset, _amount);
    }

    function supplyAssetsUser() public view returns (uint256 totalSupplyAssets) {
        totalSupplyAssets = IMorpho(MORPHO_POOL).expectedSupplyAssets(getMarketParams(), address(this));
    }

    function collateralAssetsUser() public view returns (uint256 totalCollateralAssets) {
        bytes32[] memory slots = new bytes32[](1);
        slots[0] =
            MorphoStorageLib.positionBorrowSharesAndCollateralSlot(MarketParamsLib.id(getMarketParams()), address(this));
        bytes32[] memory values = IMorpho(MORPHO_POOL).extSloads(slots);
        totalCollateralAssets = uint256(values[0] >> 128);
    }

    function borrowAssetsUser() public view returns (uint256 totalBorrowAssets) {
        totalBorrowAssets = IMorpho(MORPHO_POOL).expectedBorrowAssets(getMarketParams(), address(this));
    }

    function mintMFONE(uint256 _amount, uint256 _minRecv) external onlyRebalancer returns (uint256) {
        uint256 mfOneAmount = _mintMFONE(_amount, _minRecv);
        return mfOneAmount;
    }

    function redeemMFONESlow(uint256 _amount) external onlyRebalancer returns (uint256) {
        uint256 requestId_ = _redeemMFONESlow(_amount);
        return requestId_;
    }

    function redeemMFONERapid(uint256 _amount, uint256 _minRecv) external onlyRebalancer returns (uint256) {
        uint256 amount_ = _redeemMFONERapid(_amount, _minRecv);
        return amount_;
    }

    function enterProtocol() external onlyOwner {
        IERC20(USDC).approve(MORPHO_POOL, type(uint256).max);
        IERC20(MF_ONE).approve(MORPHO_POOL, type(uint256).max);

        IERC20(USDC).approve(MIDAS_MINT, type(uint256).max);
        IERC20(MF_ONE).approve(MIDAS_REDEEM, type(uint256).max);
    }

    function updateRedeemRequestId(uint256 _newId) external onlyRebalancer {
        emit UpdateRedeemRequestId(getStorage().redeemRequestId, _newId);
        getStorage().redeemRequestId = _newId;
    }

    // INTERNAL

    function convertMFONEtoUSDC(uint256 _amountIn) internal view returns (uint256 _amountOut) {
        int256 rawPrice_ = IMidasOracle(MIDAS_ORACLE).lastAnswer();
        if (rawPrice_ < 0) revert Errors.PriceBelowZero();
        uint256 price_ = uint256(rawPrice_);
        _amountOut = (_amountIn * price_) / 1e20; // Price 1e8, amount 1e18
    }

    function getStorage() internal pure returns (StrategyStorage storage s) {
        bytes32 slot = STORAGE_SLOT;
        assembly {
            s.slot := slot
        }
    }

    function _deposit(address _asset, uint256 _amount) internal {
        if (_asset != MF_ONE) revert Errors.InvalidAsset();
        if (_amount == 0) return;
        if (_amount == type(uint256).max) {
            _amount = IERC20(MF_ONE).balanceOf(address(this));
        }
        IMorpho(MORPHO_POOL).supplyCollateral(getMarketParams(), _amount, address(this), "");
    }

    /**
     * @dev Execute a withdrawal operation in the Morpho Blue protocol.
     * @param _asset The address of the asset to withdraw.
     * @param _amount The amount of the asset to withdraw.
     */
    function _withdraw(address _asset, uint256 _amount) internal {
        if (_asset != MF_ONE) revert Errors.InvalidAsset();
        if (_amount == 0) return;
        if (_amount == type(uint256).max) {
            (_amount,) = getProtocolAccountData();
        }
        IMorpho(MORPHO_POOL).withdrawCollateral(getMarketParams(), _amount, address(this), address(this));
        checkProtocolRatio();
    }

    /**
     * @dev Execute a borrow operation in the Morpho Blue protocol.
     * @param _asset The address of the asset to borrow.
     * @param _amount The amount of the asset to borrow.
     */
    function _borrow(address _asset, uint256 _amount) internal {
        if (_asset != USDC) revert Errors.InvalidAsset();
        if (_amount == 0) return;
        IMorpho(MORPHO_POOL).borrow(getMarketParams(), _amount, 0, address(this), address(this));
        checkProtocolRatio();
    }

    /**
     * @dev Execute a repay operation in the Morpho Blue protocol.
     * @param _asset The address of the asset to repay.
     * @param _amount The amount of the asset to repay.
     */
    function _repay(address _asset, uint256 _amount) internal {
        if (_asset != USDC) revert Errors.InvalidAsset();
        if (_amount == 0) return;
        if (_amount == type(uint256).max) {
            uint256 shares_ =
                IMorpho(MORPHO_POOL).position(MarketParamsLib.id(getMarketParams()), address(this)).borrowShares;
            IMorpho(MORPHO_POOL).repay(getMarketParams(), 0, shares_, address(this), "");
            return;
        }
        IMorpho(MORPHO_POOL).repay(getMarketParams(), _amount, 0, address(this), "");
    }

    /**
     * @dev Mint mF_ONE from midas
     * @param _amount The amount of the USDC for mint.
     * @param _minRecv The minimum receive amount of mToken base 18.
     */
    function _mintMFONE(uint256 _amount, uint256 _minRecv) internal returns (uint256) {
        if (_amount == 0) return 0;
        uint256 targetAmount_ = _amount * 1e12; // Midas require base 18
        IDepositVault(MIDAS_MINT).depositInstant(USDC, targetAmount_, _minRecv, bytes32(0));
        uint256 mfOneAmount_ = IERC20(MF_ONE).balanceOf(address(this));
        return mfOneAmount_;
    }

    /**
     * @dev Redeem usdc from midas slowly
     * @param _amount The amount of the mF_ONE for redeem. Base 18.
     */
    function _redeemMFONESlow(uint256 _amount) internal returns (uint256) {
        uint256 requestId_ = IRedemptionVault(MIDAS_REDEEM).redeemRequest(USDC, _amount);
        getStorage().redeemRequestId = requestId_;
        emit RedeemMFONESlow(requestId_);
        return requestId_;
    }

    /**
     * @dev Redeem usdc from midas rapidly
     * @param _amount The amount of the mF_ONE for redeem. Base 18.
     * @param _minRecv The minimum receive amount of USDC. Base 18.
     */
    function _redeemMFONERapid(uint256 _amount, uint256 _minRecv) internal returns (uint256) {
        if (_amount == type(uint256).max) {
            _amount = IERC20(MF_ONE).balanceOf(address(this));
        }
        uint256 usdcAmountBefore_ = IERC20(USDC).balanceOf(address(this));
        IRedemptionVault(MIDAS_REDEEM).redeemInstant(USDC, _amount, _minRecv);
        uint256 usdcAmountAfter_ = IERC20(USDC).balanceOf(address(this));

        return usdcAmountAfter_ - usdcAmountBefore_;
    }

    /**
     * @dev Check the health status of a specific protocol after an operation
     * to prevent the strategy pool from being in a risky position.
     */
    function checkProtocolRatio() internal view {
        (, bool isOK_) = getCollateralRatio();
        if (!isOK_) revert Errors.RatioOutOfRange();
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
        } else if (_actionId == uint8(ActionSelectors.MintMFONE)) {
            (uint256 amount_, uint256 minRecv_) = abi.decode(_data, (uint256, uint256));
            if (amount_ == USE_PREVIOUS_OUT) {
                amount_ = _previousOut;
            }
            return _mintMFONE(amount_, minRecv_);
        } else if (_actionId == uint8(ActionSelectors.RedeemMFONERapid)) {
            (uint256 amount_, uint256 minRecv_) = abi.decode(_data, (uint256, uint256));
            if (amount_ == USE_PREVIOUS_OUT) {
                amount_ = _previousOut;
            }
            return _redeemMFONERapid(amount_, minRecv_);
        } else if (_actionId == uint8(ActionSelectors.RedeemMFONESlow)) {
            (uint256 amount_) = abi.decode(_data, (uint256));
            if (amount_ == USE_PREVIOUS_OUT) {
                amount_ = _previousOut;
            }
            return _redeemMFONESlow(amount_);
        }
        return 0;
    }
}
