// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";

import "@shared/lib-contracts-v0.8/contracts/Dependencies/TransferHelper.sol";

import "./Interfaces/ILRTConfig.sol";
import "./Interfaces/IelETH.sol";
import "./Interfaces/ILRTOracle.sol";
import "./Interfaces/ILRTDepositPool.sol";
import "./Interfaces/ILRTProxy.sol";
import "./Interfaces/ILRTUnstakingVault.sol";
import "./Utils/LRTConstants.sol";
import "./Utils/LRTChecker.sol";

contract LRTDepositPool is
    ILRTDepositPool,
    LRTChecker,
    AccessControlUpgradeable,
    PausableUpgradeable
{
    using SafeERC20 for IERC20;

    address public elETH;
    ILRTOracle public lrtOracle;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _lrtConfig,
        address _elETH,
        address _lrtOracle
    ) public initializer {
        __AccessControl_init();

        __Pausable_init_unchained();

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);

        lrtConfig = ILRTConfig(_lrtConfig);
        elETH = _elETH;
        lrtOracle = ILRTOracle(_lrtOracle);
    }

    function pause() external onlyRole(LRTConstants.ADMIN_ROLE) {
        _pause();
    }

    function unpause() external onlyRole(LRTConstants.ADMIN_ROLE) {
        _unpause();
    }

    function transferAssetToProxy(
        address _asset,
        uint256 _amount
    ) external onlyRole(LRTConstants.ADMIN_ROLE) onlySupportedAsset(_asset) {
        address lrtProxy = lrtConfig.getContract(LRTConstants.LRT_PROXY);
        TransferHelper.safeTransferToken(_asset, lrtProxy, _amount);

        emit AssetTransferedToProxy(_asset, _amount, lrtProxy);
    }

    function getELETHAmountToMint(
        address _asset,
        uint256 _amount
    ) public view override onlySupportedAsset(_asset) returns (uint256) {
        return
            (_amount * lrtOracle.getAssetPrice(_asset)) /
            lrtOracle.elETHPrice();
    }

    function depositAsset(
        address _asset,
        uint256 _amount,
        uint256 _minELETHAmountToReceive,
        string calldata _referralId
    )
        external
        payable
        override
        whenNotPaused
        onlySupportedAsset(_asset)
        returns (uint256)
    {
        require(_amount > 0, "invalid _amount!");
        if (AddressLib.isPlatformToken(_asset)) {
            require(_amount == msg.value, "invalid _amount");
        } else {
            require(msg.value == 0, "invalid msg.value");
            IERC20(_asset).safeTransferFrom(msg.sender, address(this), _amount);
        }

        uint256 elETHAmountToMint = getELETHAmountToMint(_asset, _amount);
        require(
            elETHAmountToMint >= _minELETHAmountToReceive,
            "_minELETHAmountToReceive is too high"
        );
        IelETH(elETH).mint(msg.sender, elETHAmountToMint);

        emit AssetDeposited(
            msg.sender,
            _asset,
            _amount,
            elETHAmountToMint,
            _referralId
        );

        return elETHAmountToMint;
    }

    function getTotalAssetDeposits(
        address _asset
    ) external view override returns (uint256) {
        (
            uint256 assetLyingInDepositPool,
            uint256 assetLyingInProxy,
            uint256 assetStakedInEigenLayer,
            uint256 assetUnstakingFromEigenLayer,
            uint256 assetLyingUnstakingVault
        ) = getAssetDistributionData(_asset);
        return
            assetLyingInDepositPool +
            assetLyingInProxy +
            assetStakedInEigenLayer +
            assetUnstakingFromEigenLayer +
            assetLyingUnstakingVault;
    }

    function getAssetDistributionData(
        address _asset
    )
        public
        view
        onlySupportedAsset(_asset)
        returns (
            uint256 assetLyingInDepositPool,
            uint256 assetLyingInProxy,
            uint256 assetStakedInEigenLayer,
            uint256 assetUnstakingFromEigenLayer,
            uint256 assetLyingUnstakingVault
        )
    {
        assetLyingInDepositPool = TransferHelper.balanceOf(
            _asset,
            address(this)
        );
        address _lrtProxy = lrtConfig.getContract(LRTConstants.LRT_PROXY);
        assetLyingInProxy = TransferHelper.balanceOf(_asset, _lrtProxy);
        assetStakedInEigenLayer = ILRTProxy(_lrtProxy).getAssetBalance(_asset);

        address lrtUnstakingVault = lrtConfig.getContract(
            LRTConstants.LRT_UNSTAKING_VAULT
        );

        assetUnstakingFromEigenLayer = ILRTUnstakingVault(lrtUnstakingVault)
            .getAssetsUnstaking(_asset);
        assetLyingUnstakingVault = TransferHelper.balanceOf(
            _asset,
            lrtUnstakingVault
        );
    }

    receive() external payable {}
}
