// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {FixedPointMathLib} from "@solmate/src/utils/FixedPointMathLib.sol";
import {VaultComposerSync} from "@layerzerolabs/ovault-evm/contracts/VaultComposerSync.sol";

import {GatewayLib} from "@libraries/GatewayLib.sol";
import {IInfiniFiGateway} from "@interfaces/IInfiniFiGateway.sol";

/// @title InfiniFiMintOVaultComposer
/// @notice This is an OVault composer that allows minting and redeeming of USDC<->iUSD across
/// different chains using LayerZero's OFT protocol.
/// see https://docs.layerzero.network/v2/developers/evm/ovault/overview
contract InfiniFiMintOVaultComposer is VaultComposerSync {
    using SafeERC20 for IERC20;
    using GatewayLib for IInfiniFiGateway;
    using FixedPointMathLib for uint256;

    IInfiniFiGateway public immutable gateway;
    IERC20 public immutable usdc;
    IERC20 public immutable iUSD;

    /// @dev set address(this) as the VaultComposerSync vault, and override/define
    /// the functions needed on the vault on this contract. This allows this composer to implement
    /// custom logic for minting and redeeming, without expecting a valid ERC4626 vault anywhere.
    /// This is needed because iusd isn't an ERC4626 vault of usdc, and we need to implement custom logic
    /// to perform minting, redeeming, and preview functions.
    constructor(address _gateway, address _usdcOFT, address _iusdOFT)
        VaultComposerSync(address(this), _usdcOFT, _iusdOFT)
    {
        gateway = IInfiniFiGateway(_gateway);
        usdc = IERC20(gateway.usdc());
        iUSD = IERC20(gateway.receiptToken());

        // Approve gateway to spend iUSD, and siUSD
        usdc.forceApprove(_gateway, type(uint256).max);
        iUSD.forceApprove(_gateway, type(uint256).max);

        // Approve tokens to be used on their OFT adapters
        usdc.forceApprove(_usdcOFT, type(uint256).max);
        iUSD.forceApprove(_iusdOFT, type(uint256).max);
    }

    function decimals() public view returns (uint8) {
        return 18; // iUSD decimals
    }

    function asset() public view returns (address) {
        return address(usdc);
    }

    function maxRedeem(address _who) public view returns (uint256) {
        return gateway.receiptToAsset(iUSD.balanceOf(_who));
    }

    function previewRedeem(uint256 _iUSDAmount) public view returns (uint256) {
        return gateway.receiptToAsset(_iUSDAmount);
    }

    function maxDeposit(address) public pure returns (uint256) {
        return type(uint256).max;
    }

    function previewDeposit(uint256 _usdcAmount) public view returns (uint256) {
        return gateway.assetToReceipt(_usdcAmount);
    }

    function _deposit(bytes32, uint256 _usdcAmount) internal override returns (uint256) {
        return gateway.mint(address(this), _usdcAmount);
    }

    function _redeem(bytes32, uint256 _iusdAmount) internal override returns (uint256) {
        return gateway.redeem(address(this), _iusdAmount, gateway.receiptToAsset(_iusdAmount));
    }

    function _initializeShareToken() internal view override returns (address) {
        return address(iUSD);
    }

    function _initializeAssetToken() internal view override returns (address assetERC20) {
        return address(usdc);
    }
}
