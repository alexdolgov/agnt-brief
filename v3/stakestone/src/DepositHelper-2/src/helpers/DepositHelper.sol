// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {
    TransferHelper
} from "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";
import {
    IOFT,
    SendParam,
    MessagingFee,
    OFTReceipt
} from "@layerzerolabs/lz-evm-oapp-v2/oft/interfaces/IOFT.sol";
import {
    Ownable2Step,
    Ownable
} from "@openzeppelin/contracts/access/Ownable2Step.sol";

import {IDepositVault} from "../interfaces/IDepositVault.sol";

/// @title DepositHelper
/// @author luoyhang003
/// @notice Helper contract for depositing assets into a DepositVault and bridging
///         the resulting receipt tokens via LayerZero OFT-based bridging.
contract DepositHelper is Ownable2Step {
    /*//////////////////////////////////////////////////////////////////////////
                                    STATE VARIABLES
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Address of the receipt token minted by the DepositVault.
    address public immutable tokenAddr;

    /// @notice Address of the DepositVault contract that handles deposit logic.
    address public immutable depositVaultAddr;

    /// @notice Address of the LayerZero OFT adapter used for bridging.
    address public immutable adapterAddr;

    /// @notice Destination endpoint ID for LayerZero bridging.
    uint32 public immutable dstEid;

    /*//////////////////////////////////////////////////////////////////////////
                                    CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    /// @param _tokenAddr Address of the vault receipt token.
    /// @param _depositVaultAddr Address of the DepositVault contract.
    /// @param _adapterAddr Address of the OFT adapter contract for bridging.
    /// @param _dstEid LayerZero destination endpoint ID.
    constructor(
        address _tokenAddr,
        address _depositVaultAddr,
        address _adapterAddr,
        uint32 _dstEid
    ) Ownable(msg.sender) {
        tokenAddr = _tokenAddr;
        depositVaultAddr = _depositVaultAddr;
        adapterAddr = _adapterAddr;

        dstEid = _dstEid;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    PERMISSIONLESS FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Deposit assets and bridge the resulting receipt tokens to msg.sender.
    /// @param _asset The underlying asset to deposit.
    /// @param _amount Amount of the underlying asset to deposit.
    /// @return _bridged Amount of tokens successfully bridged to destination chain.
    function depositAndBridge(
        address _asset,
        uint256 _amount
    ) external payable returns (uint256 _bridged) {
        _bridged = _depositAndBridgeTo(_asset, _amount, msg.sender);
    }

    /// @notice Deposit assets and bridge the resulting receipt tokens to a specified address.
    /// @param _asset The underlying asset to deposit.
    /// @param _amount Amount of the underlying asset to deposit.
    /// @param _dstAddr Recipient address on the destination chain.
    /// @return _bridged Amount of tokens successfully bridged to destination chain.
    function depositAndBridgeTo(
        address _asset,
        uint256 _amount,
        address _dstAddr
    ) external payable returns (uint256 _bridged) {
        _bridged = _depositAndBridgeTo(_asset, _amount, _dstAddr);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Quotes the LayerZero messaging fee.
    /// @param _asset The underlying asset to deposit.
    /// @param _amount Amount of underlying asset to deposit.
    /// @param _dstAddr Recipient address on the destination chain.
    /// @return MessagingFee structure containing the quoted fee information.
    function quoteSend(
        address _asset,
        uint256 _amount,
        address _dstAddr
    ) external view returns (MessagingFee memory) {
        IDepositVault depositVault = IDepositVault(depositVaultAddr);

        // Preview how many receipt tokens would be minted for this deposit.
        (uint256 minted, , , ) = depositVault.previewDeposit(_asset, _amount);

        // Prepare LayerZero send parameters.
        SendParam memory sendParam;
        sendParam.dstEid = dstEid;
        sendParam.to = bytes32(uint256(uint160(_dstAddr)));
        sendParam.amountLD = minted;

        return IOFT(adapterAddr).quoteSend(sendParam, false);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Allows the owner to withdraw accidentally stuck tokens ("dust").
    /// @param _token The dust token address.
    function withdrawDust(address _token) external onlyOwner {
        TransferHelper.safeTransfer(
            _token,
            msg.sender,
            IERC20(_token).balanceOf(address(this))
        );
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Internal function for deposit-and-bridge flow.
    /// @dev
    ///   1. Transfers the underlying asset from caller.
    ///   2. Deposits into the DepositVault to mint receipt tokens.
    ///   3. Approves the OFT adapter and performs the bridge operation.
    ///
    /// @param _asset Underlying asset to deposit.
    /// @param _amount Amount of underlying asset.
    /// @param _dstAddr Recipient address on destination chain.
    /// @return _bridged Amount of tokens successfully bridged (after fees/slippage).
    function _depositAndBridgeTo(
        address _asset,
        uint256 _amount,
        address _dstAddr
    ) internal returns (uint256 _bridged) {
        // Pull assets from sender.
        TransferHelper.safeTransferFrom(
            _asset,
            msg.sender,
            address(this),
            _amount
        );

        // Approve DepositVault to pull the underlying asset.
        TransferHelper.safeApprove(_asset, depositVaultAddr, 0);
        TransferHelper.safeApprove(_asset, depositVaultAddr, _amount);

        // Deposit into the vault and mint receipt tokens.
        IDepositVault depositVault = IDepositVault(depositVaultAddr);
        uint256 minted = depositVault.deposit(_asset, _amount);

        // Approve OFT adapter for bridging.
        TransferHelper.safeApprove(tokenAddr, adapterAddr, minted);

        // Prepare LayerZero send parameters.
        SendParam memory sendParam;
        sendParam.dstEid = dstEid;
        sendParam.to = bytes32(uint256(uint160(_dstAddr)));
        sendParam.amountLD = minted;

        // Quote the OFT bridging and extract the expected bridged amount.
        IOFT adapter = IOFT(adapterAddr);
        (, , OFTReceipt memory oftReceipt) = adapter.quoteOFT(sendParam);

        // Use the quoted received amount as minimum.
        _bridged = oftReceipt.amountReceivedLD;
        sendParam.minAmountLD = _bridged;

        // Prepare message fee; msg.value is the LayerZero native fee.
        MessagingFee memory msgFee;
        msgFee.nativeFee = msg.value;

        // Execute bridging via OFT adapter.
        adapter.send{value: msgFee.nativeFee}(sendParam, msgFee, msg.sender);
    }
}
