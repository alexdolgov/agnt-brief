// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {FixedPointMathLib} from "@solmate/src/utils/FixedPointMathLib.sol";
import {VaultComposerSync} from "@layerzerolabs/ovault-evm/contracts/VaultComposerSync.sol";

import {GatewayLib} from "@libraries/GatewayLib.sol";
import {IInfiniFiGateway} from "@interfaces/IInfiniFiGateway.sol";

/// @title InfiniFiStakeOVaultComposer
/// @notice This is an OVault composer that allows staking and unstaking of iUSD<->siUSD across
/// different chains using LayerZero's OFT protocol.
/// see https://docs.layerzero.network/v2/developers/evm/ovault/overview
contract InfiniFiStakeOVaultComposer is VaultComposerSync {
    using SafeERC20 for IERC20;
    using GatewayLib for IInfiniFiGateway;
    using FixedPointMathLib for uint256;

    IInfiniFiGateway public immutable gateway;
    IERC20 public immutable iUSD;
    IERC20 public immutable siUSD;

    /// @dev set address(this) as the VaultComposerSync vault, and override/define
    /// the functions needed on the vault on this contract. This allows this composer to implement
    /// custom logic for staking and unstaking, without expecting a valid ERC4626 vault anywhere.
    /// This is needed because siusd isn't an ERC4626 vault of iusd, and we need to implement custom logic
    /// to perform stake, unstake, and preview functions.
    constructor(address _gateway, address _iusdOFT, address _siusdOFT)
        VaultComposerSync(address(this), _iusdOFT, _siusdOFT)
    {
        gateway = IInfiniFiGateway(_gateway);
        iUSD = IERC20(gateway.receiptToken());
        siUSD = IERC20(gateway.stakedToken());

        // Approve gateway to spend iUSD, and siUSD
        iUSD.forceApprove(_gateway, type(uint256).max);
        siUSD.forceApprove(_gateway, type(uint256).max);

        // Approve tokens to be used on their OFT adapters
        iUSD.forceApprove(_iusdOFT, type(uint256).max);
        siUSD.forceApprove(_siusdOFT, type(uint256).max);
    }

    function asset() public view returns (address) {
        return address(iUSD);
    }

    function maxRedeem(address _who) public view returns (uint256) {
        return gateway.stakedToReceipt(siUSD.balanceOf(_who));
    }

    function previewRedeem(uint256 _siUSDAmount) public view returns (uint256) {
        return gateway.stakedToReceipt(_siUSDAmount);
    }

    function maxDeposit(address) public pure returns (uint256) {
        return type(uint256).max;
    }

    function previewDeposit(uint256 _iusdAmount) public view returns (uint256) {
        return gateway.receiptToStaked(_iusdAmount);
    }

    function _deposit(bytes32, uint256 _iusdAmount) internal override returns (uint256) {
        return gateway.stake(address(this), _iusdAmount);
    }

    function _redeem(bytes32, uint256 _siusdAmount) internal override returns (uint256) {
        return gateway.unstake(address(this), _siusdAmount);
    }

    function _initializeShareToken() internal view override returns (address) {
        return address(siUSD);
    }

    function _initializeAssetToken() internal view override returns (address assetERC20) {
        return address(iUSD);
    }
}
