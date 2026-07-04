// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.26;

import {
    ERC4626Upgradeable,
    ERC20Upgradeable,
    IERC4626,
    Math
} from "@openzeppelin-upgradeable/contracts/token/ERC20/extensions/ERC4626Upgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {SafeERC20, IERC20} from "lib/openzeppelin-contracts-upgradeable/lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {IBaseManagedLeveragedVault} from "src/interfaces/core/mlv/base/IBaseManagedLeveragedVault.sol";
import {IMetaBeraborrowCore} from "src/interfaces/core/IMetaBeraborrowCore.sol";
import {IAsset} from "src/interfaces/utils/tokens/IAsset.sol";
import {PriceLib} from "src/libraries/PriceLib.sol";
import {FeeLib} from "src/libraries/FeeLib.sol";
import {ReentrancyGuardLib} from "src/libraries/ReentrancyGuardLib.sol";
import {IFeeHook} from "src/interfaces/utils/integrations/IFeeHook.sol";
import {ITargetICRHook} from "src/interfaces/utils/integrations/ITargetICRHook.sol";
import {IBaseManagedLeveragedVaultGetters} from "src/interfaces/core/helpers/mlv/base/IBaseManagedLeveragedVaultGetters.sol";

abstract contract BaseManagedLeveragedVault is ERC4626Upgradeable, UUPSUpgradeable, IBaseManagedLeveragedVault {
    using Math for uint256;
    using PriceLib for uint256;
    using SafeERC20 for IERC20;
    using FeeLib for uint256;

    uint256 constant WAD = 1e18;
    uint16 constant BP = 1e4;
    uint16 constant MAX_DEVIATION_ICR = 500; // 5%
    uint16 constant MAX_DEVIATION_TA = 250; // 2.5%
    uint16 constant MAX_SLIPPAGE_SWAP = 300; // 3%

    struct BaseManagedLeveragedVaultStorage {
        IMetaBeraborrowCore metaBeraborrowCore;
        IERC20 debtToken; // Debt token used for leverage
        IERC20 collateral; // In case it's different from the asset
        uint16 maxDeviationICRinBP; // BP
        uint16 maxDeviationTotalAssetsInBP; // BP
        uint16 maxSlippageSwapInBP; // BP
        address keeper;
        ITargetICRHook targetICRHook;
        IFeeHook feeHook; // Hook to charge fees on deposit/withdraw
        IBaseManagedLeveragedVaultGetters getters;
    }

    // keccak256(abi.encode(uint(keccak256("openzeppelin.storage.ManagedLeveragedVault")) - 1)) & ~bytes32(uint(0xff))
    bytes32 internal constant ManagedLeveragedVaultStorageLocation =
        0x12ca37b393c412d053690654fb6d504d2a16c55c2bd10941af581f2221d9c100;

    function _getBaseManagedLeveragedVaultStorage()
        internal
        pure
        returns (BaseManagedLeveragedVaultStorage storage store)
    {
        assembly {
            store.slot := ManagedLeveragedVaultStorageLocation
        }
    }

    constructor() {
        _disableInitializers();
    }

    function _baseInitialize(BaseInitParams memory params) internal {
        BaseManagedLeveragedVaultStorage storage $ = _getBaseManagedLeveragedVaultStorage();

        if (
            params.metaBeraborrowCore == address(0)
        ) revert ZeroAddress();

        __ERC4626_init(params.asset);
        __ERC20_init(params.name, params.symbol);

        $.metaBeraborrowCore = IMetaBeraborrowCore(params.metaBeraborrowCore);
        $.debtToken = IERC20(params.debtToken);
        $.collateral = IERC20(params.collateral);
        _setTargetICRHook(params.targetICRHook);
        _setMaxDeviationICRinBP(params.maxDeviationICRinBP);
        _setMaxDeviationTotalAssetsInBP(params.maxDeviationTotalAssetsInBP);
        _setMaxSlippageSwapInBP(params.maxSlippageSwapInBP);
        _setKeeper(params.keeper);
        _setFeeHook(params.feeHook);
        _setGetters(params.getters);
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

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

    modifier pullRewards() {
        _pullRewards();
        _;
    }

    /// @dev Checks if the operation is within the max deviation in totalAssets, and swap slippage limits
    modifier maxOperationCost(address inputToken, bytes memory payload) {
        uint256 prevTotalAssets = totalAssets();
        _;
        uint256 amountToSwap = _decodeSwapAmount(inputToken, payload);
        _getBaseManagedLeveragedVaultStorage().getters.checkMaxOperationCost(inputToken, amountToSwap, prevTotalAssets);
    }

    function deposit(uint256, address) public pure override returns (uint256) { revert NotSupportedMethod(); }
    function mint(uint256, address) public pure override returns (uint256) { revert NotSupportedMethod(); }
    function withdraw(uint256, address, address) public pure override returns (uint256) { revert NotSupportedMethod(); }
    function redeem(uint256, address, address) public pure override returns (uint256) { revert NotSupportedMethod(); }

    function totalAssets() public view override(ERC4626Upgradeable, IBaseManagedLeveragedVault) virtual returns (uint256) {
        return _totalAssets(Math.Rounding.Down);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                      CORE INTERNALS                        */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Make sure to override in child implementation
    function _totalAssets(Math.Rounding rounding) internal view virtual returns (uint256) {}

    /**
     * @notice Accepts `asset()`, wraps into into a collateral (if needed) and deposits it into the position as margin
     * @notice There's an entryFeeInBP which is charged in this vault shares
     * @dev Position is incentivized to be opened with a CR close to target, with only a small deviation accepted
     * @dev Any operation cost in internalized to the user (e.g.negative slippage, borrowing fees...) lead to fewer shares, positive slippage can lead to more
     * @param assets Amount of `asset()` to deposit
     * @param receiver Address to receive shares
     * @param leveragePayload Encoded parameters for the leverage rebalance operation
     * @param minSharesOut Minimum amount of shares to be minted, after applying entry fee and potential slippage
     */
    function deposit(uint256 assets, address receiver, bytes calldata leveragePayload, uint256 minSharesOut)
        public
        nonReentrant
        pullRewards
        returns (uint256 shares)
    {
        uint256 prevTotalAssets = _depositCheckInteraction(assets, receiver);

        _leverage(assets, leveragePayload);

        shares = _depositEffects(prevTotalAssets, minSharesOut, receiver);
    }

    /**
     * @notice Redeems shares for `asset()`
     * @dev Internally deleverages, by repaying the corresponding debt of the position, using its exposure
     * @dev Slippage costs of the deleveraging are applied to the user, resulting in fewer assets, to not socialize costs
     * @dev The exit fee is charged in shares
     * @param shares Amount of shares to burn
     * @param receiver Address to receive assets
     * @param owner Address that owns the shares, if different from the sender needs an approval
     * @param deleveragePayload Struct with parameters for the deleverage rebalance operation
     * @param minAssetsOut Minimum amount of assets to be redeemed, after applying exit fee and potential slippage
     */
    function redeem(uint256 shares, address receiver, address owner, bytes calldata deleveragePayload, uint256 minAssetsOut)
        public
        nonReentrant
        pullRewards
        returns (uint256 assets)
    {
        uint256 coll = _redeemChecksInteractions(shares, owner);

        uint256 collToRedeem = _deleverage(coll, deleveragePayload);

        assets = _redeemEffects(receiver, owner, shares, collToRedeem, minAssetsOut, deleveragePayload);
    }

    function _depositCheckInteraction(uint256 assets, address receiver) internal returns (uint256 prevTotalAssets) {
        uint256 maxAssets = maxDeposit(receiver);
        if (assets > maxAssets) {
            revert ERC4626ExceededMaxDeposit(receiver, assets, maxAssets);
        }

        if (assets == 0) revert ZeroAmount();

        IERC20(asset()).safeTransferFrom(msg.sender, address(this), assets);

        prevTotalAssets = _totalAssets(Math.Rounding.Up);
    }

    function _depositEffects(uint256 prevTotalAssets, uint256 minSharesOut, address receiver) internal returns (uint256 shares) {
        BaseManagedLeveragedVaultStorage storage $ = _getBaseManagedLeveragedVaultStorage();

        uint256 currTotalAssets = totalAssets();
        uint256 newAssets = currTotalAssets - prevTotalAssets;

        (uint256 rawShares, uint256 feeShares) = _previewDeposit(newAssets, prevTotalAssets);
        shares = rawShares - feeShares;

        if (shares < minSharesOut) revert VaultSlippage(minSharesOut, shares);

        if (feeShares != 0) {
            _mint($.metaBeraborrowCore.feeReceiver(), feeShares);
        }

        _mint(receiver, shares);

        emit Deposit(msg.sender, receiver, newAssets, shares);
    }

    function _redeemChecksInteractions(uint256 shares, address owner) internal returns (uint256 coll) {
        BaseManagedLeveragedVaultStorage storage $ = _getBaseManagedLeveragedVaultStorage();

        uint256 maxShares = maxRedeem(owner);
        if (shares > maxShares) {
            revert ERC4626ExceededMaxRedeem(owner, shares, maxShares);
        }

        if (shares == 0) revert ZeroAmount();

        (uint256 assets, uint256 shareFee) = _previewRedeem(shares);

        if (shareFee != 0) {
            _mint($.metaBeraborrowCore.feeReceiver(), shareFee);
        }

        _burn(owner, shares);

        coll = _collConversion(assets);

        if (coll == 0) revert ZeroAmount();
    }

    function _redeemEffects(address receiver, address owner, uint256 shares, uint256 collToRedeem, uint256 minAssetsOut, bytes memory deleveragePayload) internal returns (uint256 assets) {
        _preRedeemEffects();

        if (msg.sender != owner) {
            _spendAllowance(owner, msg.sender, shares);
        }

        assets = _afterRedeemEffects(collToRedeem, receiver, deleveragePayload);

        if (assets < minAssetsOut) revert VaultSlippage(minAssetsOut, assets);

        emit Withdraw(msg.sender, receiver, owner, assets, shares);
    }

    /**
     * @dev Implementation has to check for the following invariants:
     * - Collateral increased by at least the margin amount
     * - Debt increased by any amount
     * - If swaps, and can be passed offchain, check for no donations to swapper or address(this)
     * - If user called, check for operation CR within deviation range of target CR
     * - If keeper called, should have a 'maxOperationCost' wrapping this internal
     * @param margin Amount of margin to use for leverage, if 0, indicates it's keeper leverage
     * @param levPayload Payload with parameters for the leverage rebalance operation
     */
    function _leverage(uint256 margin, bytes calldata levPayload) internal virtual {}

    /**
     * @dev Implementation has to check for the following invariants:
     * - Collateral and debt decreases
     * - If swaps are used, and can be passed offchain, check for no donations to swapper or address(this)
     * - If user called, check for operation CR within deviation range of target CR
     * - If keeper called, should have a 'maxOperationCost' wrapping this internal
     * @param collToReceive Amount of collateral expected to receive after deleveraging, if 0, indicates its keeper deleverage
     *                      It can decrease/increase if the slippage is negative/positive
     * @param delevPayload Payload with parameters for the deleverage rebalance operation
     * @return collToRedeem Definite of collateral to redeem
    */
    function _deleverage(uint256 collToReceive, bytes calldata delevPayload) internal virtual returns (uint256 collToRedeem) {}

    function _computeNetColl(
        uint256 debtSurplusInAssets,
        uint256 collToReceive,
        uint256 prevTotalAssets
    ) internal view returns (uint256 netColl) {
        return _getBaseManagedLeveragedVaultStorage().getters.computeNetColl(
            debtSurplusInAssets,
            collToReceive,
            prevTotalAssets
        );
    }

    function _getCurrentPositionICR() internal view returns (uint256) {
        BaseManagedLeveragedVaultStorage storage $ = _getBaseManagedLeveragedVaultStorage();

        return $.getters.getCurrentPositionICR();
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           SETTERS                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function setMaxDeviationICRinBP(uint16 _maxDeviationICRinBP) external onlyOwner {
        _setMaxDeviationICRinBP(_maxDeviationICRinBP);
    }

    function setMaxDeviationTotalAssetsInBP(uint16 _maxDeviationTotalAssetsInBP) external onlyOwner {
        _setMaxDeviationTotalAssetsInBP(_maxDeviationTotalAssetsInBP);
    }

    function setMaxSlippageSwapInBP(uint16 _maxSlippageSwapInBP) external onlyOwner {
        _setMaxSlippageSwapInBP(_maxSlippageSwapInBP);
    }

    function setKeeper(address _keeper) external onlyOwner {
        _setKeeper(_keeper);
    }

    function setTargetICRHook(address _targetICRHook) external onlyOwner {
        _setTargetICRHook(_targetICRHook);
    }

    function setFeeHook(address _feeHook) external onlyOwner {
        _setFeeHook(_feeHook);
    }

    function setGetters(address _getters) external onlyOwner {
        _setGetters(_getters);
    }

    function _setMaxDeviationICRinBP(uint16 _maxDeviationICRinBP) internal {
        BaseManagedLeveragedVaultStorage storage $ = _getBaseManagedLeveragedVaultStorage();

        if (_maxDeviationICRinBP > MAX_DEVIATION_ICR) revert SurpassedPrecision(MAX_DEVIATION_ICR);

        $.maxDeviationICRinBP = _maxDeviationICRinBP;

        emit NewMaxDeviationICRInBP(_maxDeviationICRinBP);
    }

    function _setMaxDeviationTotalAssetsInBP(uint16 _maxDeviationTotalAssetsInBP) internal {
        BaseManagedLeveragedVaultStorage storage $ = _getBaseManagedLeveragedVaultStorage();

        if (_maxDeviationTotalAssetsInBP > MAX_DEVIATION_TA) revert SurpassedPrecision(MAX_DEVIATION_TA);

        $.maxDeviationTotalAssetsInBP = _maxDeviationTotalAssetsInBP;

        emit NewMaxDeviationTotalAssetsInBP(_maxDeviationTotalAssetsInBP);
    }

    function _setMaxSlippageSwapInBP(uint16 _maxSlippageSwapInBP) internal {
        BaseManagedLeveragedVaultStorage storage $ = _getBaseManagedLeveragedVaultStorage();

        if (_maxSlippageSwapInBP > MAX_SLIPPAGE_SWAP) revert SurpassedPrecision(MAX_SLIPPAGE_SWAP);

        $.maxSlippageSwapInBP = _maxSlippageSwapInBP;

        emit NewMaxSlippageSwapInBP(_maxSlippageSwapInBP);
    }

    function _setKeeper(address _keeper) internal {
        BaseManagedLeveragedVaultStorage storage $ = _getBaseManagedLeveragedVaultStorage();

        if (_keeper == address(0)) revert ZeroAddress();

        $.keeper = _keeper;

        emit NewKeeper(_keeper);
    }

    function _setTargetICRHook(address _targetICRHook) internal {
        BaseManagedLeveragedVaultStorage storage $ = _getBaseManagedLeveragedVaultStorage();

        if (_targetICRHook == address(0)) revert ZeroAddress();

        $.targetICRHook = ITargetICRHook(_targetICRHook);

        emit NewTargetICRHook(_targetICRHook);
    }

    function _setFeeHook(address _feeHook) internal {
        BaseManagedLeveragedVaultStorage storage $ = _getBaseManagedLeveragedVaultStorage();

        if (_feeHook == address(0)) revert ZeroAddress();

        $.feeHook = IFeeHook(_feeHook);

        emit NewFeeHook(_feeHook);
    }

    function _setGetters(address _getters) internal {
        BaseManagedLeveragedVaultStorage storage $ = _getBaseManagedLeveragedVaultStorage();

        // Save bytecode size with same custom error
        if (_getters == address(0) || address(IBaseManagedLeveragedVaultGetters(_getters).vault()) != address(this)) revert ZeroAddress();

        $.getters = IBaseManagedLeveragedVaultGetters(_getters);

        emit NewGetters(_getters);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          GETTERS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

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

    function getPrice(
        address token
    ) public view returns (uint256 scaledPriceInUsdWad) {
        BaseManagedLeveragedVaultStorage storage $ = _getBaseManagedLeveragedVaultStorage();

        return $.getters.getPrice(token);
    }

    // Preview ERC4626 functions applying entry/exit fees
    function previewDeposit(uint256 assets) public view override returns (uint) {
        (uint256 rawShares, uint256 feeShares) = _previewDeposit(assets);
        return rawShares - feeShares;
    }

    /// @dev Preview taking an exit fee on redeem. See {IERC4626-previewRedeem}.
    /// @dev Doesn't account intra-operation slippage losses which may decrease assets withdrawn
    function previewRedeem(
        uint256 shares
    ) public view override returns (uint) {
        (uint256 assets,) = _previewRedeem(shares);
        return assets;
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         INTERNALS                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    function _modifyCollAndRepayDebt(
        bytes memory modifyPositionPayload,
        int256 missingExposure,
        uint256 debt
    ) internal virtual {}

    function _openPosition(
        bytes calldata openPositionPayload
    ) internal virtual returns (uint256 shares) {}

    function _preDeposit(uint256 assetsAmount) internal virtual returns (uint256 coll) {}

    function _preRedeemEffects() internal virtual {}

    function _afterRedeemEffects(uint256 collToRedeem, address receiver, bytes memory deleveragePayload) internal virtual returns (uint256 assets) {}

    function _collConversion(uint256 assets) internal view virtual returns (uint256 coll) {}

    function _decodeSwapAmount(address inputToken, bytes memory payload) internal virtual returns (uint256 amountToSwap) {}

    function _collateralDecimals() internal view virtual returns (uint8) {}

    function _getPositionCollAndDebt() internal view virtual returns (uint256 coll, uint256 debt) {}

    function _previewDeposit(uint256 assets) internal view returns (uint256 rawShares, uint256 feeShares) {
        rawShares = super.previewDeposit(assets);
        feeShares = rawShares.feeOnRaw(_entryFeeInBP(assets));
    }

    function _previewDeposit(uint256 _assets, uint256 _totalAssets) internal view returns (uint256 rawShares, uint256 feeShares) {
        rawShares = _assets.mulDiv(totalSupply() + 10 ** _decimalsOffset(), _totalAssets + 1, Math.Rounding.Down);
        feeShares = rawShares.feeOnRaw(_entryFeeInBP(_assets));
    }

    function _previewRedeem(uint256 shares) internal view returns (uint, uint) {
        uint256 shareFee = shares.feeOnRaw(_exitFeeInBP(shares));
        uint256 assets = super.previewRedeem(shares - shareFee);
        return (assets, shareFee);
    }

    function _getTargetICR() internal view returns (uint256) {
        BaseManagedLeveragedVaultStorage storage $ = _getBaseManagedLeveragedVaultStorage();

        return $.getters.getTargetICR();
    }

    function _checkInvariantICR(uint256 currentICR, uint256 targetICR, Tolerance tolerance) internal view {
        BaseManagedLeveragedVaultStorage storage $ = _getBaseManagedLeveragedVaultStorage();

        $.getters.checkInvariantICR(currentICR, targetICR, tolerance);
    }

    function _entryFeeInBP(uint256 amount) private view returns (uint256) {
        BaseManagedLeveragedVaultStorage storage $ = _getBaseManagedLeveragedVaultStorage();

        return $.getters.entryFeeInBP(amount, msg.sender);
    }

    function _exitFeeInBP(uint256 amount) private view returns (uint256) {
        BaseManagedLeveragedVaultStorage storage $ = _getBaseManagedLeveragedVaultStorage();

        return $.getters.exitFeeInBP(amount, msg.sender);
    }

    function _onlyOwner() private view {
        if (msg.sender != _getBaseManagedLeveragedVaultStorage().metaBeraborrowCore.owner()) revert NotOwner(msg.sender);
    }

    function _onlyOwnerOrKeeper() private view {
        if (msg.sender != _getBaseManagedLeveragedVaultStorage().metaBeraborrowCore.owner() && msg.sender != _getBaseManagedLeveragedVaultStorage().keeper) revert NotOwner(msg.sender);
    }

    function _pullRewards() internal virtual {}
}