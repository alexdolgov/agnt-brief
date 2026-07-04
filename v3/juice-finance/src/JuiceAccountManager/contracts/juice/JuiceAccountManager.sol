// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import "../managers/StrategyAccountManager.sol";
import "../interfaces/IAssetPriceProvider.sol";
import "../libraries/accounts/AccountLib.sol";
import "../libraries/Errors.sol";
import "./JuiceModule.sol";
import "./JuiceAccount.sol";
import "../managers/CollateralAccountManager.sol";
import "./periphery/BlastGas.sol";
import "./periphery/BlastPoints.sol";
import "../periphery/PythPusher.sol";

abstract contract JuiceAccountManagerEvents {
    /// @notice When yield is accrued
    event YieldAccrued(uint256 amount);
    event AutoCompoundingToggled(bool isAutoCompounding);
}

/// @title JuiceAccountManager supports one account implementation
/// @dev Facilitates collateralization of WETH.
/// @notice The AccountManager contract deploys Account contracts.
contract JuiceAccountManager is
    CollateralAccountManager,
    PythPusher,
    JuiceModule,
    JuiceAccountManagerEvents,
    BlastGas,
    BlastPoints
{
    using EnumerableSet for EnumerableSet.AddressSet;
    using SafeERC20 for IERC20;
    using Address for address;

    uint256 public constant MINIMUM_COMPOUND_AMOUNT = 1e6;

    bool public isAutoCompounding;

    /// @notice Constructs the factory
    /// @param params The parameters for the JuiceAccountManager
    constructor(
        address protocolGovernor_,
        address pointsOperator_,
        bool isAutoCompounding_,
        InitParams memory params
    )
        JuiceModule(protocolGovernor_)
        BlastPoints(protocolGovernor_, pointsOperator_)
        BlastGas(protocolGovernor_)
        CollateralAccountManager(protocolGovernor_, params)
    {
        _initializePyth(protocolGovernor_);
        IERC20Rebasing(address(params.collateral)).configure(YieldMode.CLAIMABLE);
        isAutoCompounding = isAutoCompounding_;
    }

    function toggleAutoCompounding() public onlyOwner {
        isAutoCompounding = !isAutoCompounding;
    }

    /// @dev Takes assets from `msg.sender`, deposits them into the contract, and mints shares to the receiver.
    /// The shares are nontransferrable and reside in the receiver's address, but are used to credit the receiver's
    /// account contract.
    function deposit(
        uint256 assets,
        address receiver
    )
        public
        override
        nonReentrant
        returns (uint256 updatedAssets, uint256 shares)
    {
        if (isAutoCompounding) {
            compound();
        }
        (updatedAssets, shares) = _deposit(assets, msg.sender, receiver);
    }

    /// @dev Burns shares from the account of `msg.sender` and sends them to the receiver.
    /// `msg.sender` must be owner of account that owns the shares.
    function withdraw(
        uint256 shares,
        address receiver
    )
        public
        override
        nonReentrant
        returns (uint256 updatedAssets, uint256 updatedShares)
    {
        if (isAutoCompounding) {
            compound();
        }
        (updatedAssets, updatedShares) = _withdraw(msg.sender, receiver, shares, new bytes[](0));
    }

    function _withdraw(
        address caller,
        address receiver,
        uint256 shares,
        bytes[] memory pythPricesUpdates
    )
        internal
        returns (uint256 updatedAssets, uint256 updatedShares)
    {
        (updatedAssets, updatedShares) = _withdraw(caller, receiver, shares);
        updatePythPriceFeeds(pythPricesUpdates);
    }

    function compound() public returns (uint256 earned) {
        IERC20Rebasing collateral = IERC20Rebasing(address(_collateral));
        earned = collateral.getClaimableAmount(address(this));

        // Avoid compounding dust.
        // We assume the claim just works.
        if (earned >= MINIMUM_COMPOUND_AMOUNT) {
            _totalCollateralAssets += earned;
            earned = IERC20Rebasing(address(_collateral)).claim(address(this), earned);
            emit YieldAccrued(earned);
        }
    }

    function withdraw(
        uint256 shares,
        address receiver,
        bytes[] memory pythPriceUpdates
    )
        external
        payable
        nonReentrant
        returns (uint256 updatedAssets, uint256 updatedShares)
    {
        (updatedAssets, updatedShares) = _withdraw(msg.sender, receiver, shares, pythPriceUpdates);
    }

    function totalAssets() public view virtual override returns (uint256) {
        return _totalCollateralAssets + IERC20Rebasing(address(_collateral)).getClaimableAmount(address(this));
    }
}
