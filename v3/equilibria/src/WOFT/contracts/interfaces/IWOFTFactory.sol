// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

// LayerZero imports
import { MessagingFee } from "@layerzerolabs/oapp-evm/contracts/oapp/OApp.sol";

struct FeeConfig {
    uint16 feeBps;
    bool enabled;
}

/**
 * @title IWOFTFactory
 * @dev This interface defines the WOFTFactory.
 */
interface IWOFTFactory {
    error InvalidBps();
    error WithdrawFailure(address _woftAddress, address _to, uint256 _amount);

    event DefaultFeeBpsSet(uint16 feeBps);
    event EnforcedOptionsSet(
        bytes factoryEnforcedOptions,
        bytes woftSendEnforcedOptions,
        bytes woftSendAndCallEnforcedOptions
    );
    event FeeBpsSet(address woftAddress, uint16 feeBps, bool enabled);
    event FeeWithdrawn(address indexed to, uint256 amountLD);
    event WOFTDeployed(address indexed token, address woftAddress);

    /**
     * @notice External only owner function to set the default fee basis points (BPS) for all tokens.
     * @param _feeBps The fee basis points to set for all tokens.
     */
    function setDefaultFeeBps(uint16 _feeBps) external;

    /**
     * @notice External only owner function to set the fee basis points (BPS) for a specific token.
     * @param _woftAddress WOFT address to set fee basis points for.
     * @param _feeBps The fee basis points to set for given _woftAddress.
     * @param _enabled Flag to represent which feeBps to use. Set to true to use _feeBps, false to use defaultFeeBps.
     */
    function setFeeBps(address _woftAddress, uint16 _feeBps, bool _enabled) external;

    /**
     * @notice External only owner function to set factory and OFT Send Enforced Options.
     * @param _factoryEnforcedOptions The enforced options for sending a msg to the remote factory.
     * @param _woftSendEnforcedOptions The enforced options for SEND msg type.
     * @param _woftSendAndCallEnforcedOptions The enforced options for SEND_AND_CALL msg type.
     */
    function setEnforcedOptions(
        bytes calldata _factoryEnforcedOptions,
        bytes calldata _woftSendEnforcedOptions,
        bytes calldata _woftSendAndCallEnforcedOptions
    ) external;

    /**
     * @notice External only owner function to withdraw fees from factory.
     * @param _woftAddress WOFT address that fees should be transferred in.
     * @param _to Address to send the fees to.
     * @param _amount Amount of fees to withdraw.
     */
    function withdrawFees(address _woftAddress, address _to, uint256 _amount) external;

    /**
     * @notice External function to get the fee to transfer a WOFT over the WAB.
     * @param _woftAddress The WOFT address.
     * @param _amount The amount to transfer.
     * @return uint256 The fee.
     */
    function getFee(address _woftAddress, uint256 _amount) external view returns (uint256);

    /**
     * @notice External function to quote the gas needed to pay for the B->A transaction in native gas or ZRO token.
     * @return fee A `MessagingFee` struct containing the calculated gas fee.
     *      - `nativeFee`: The native fee.
     *      - `lzTokenFee`: The lzToken fee.
     */
    function quoteDeployWOFT() external view returns (MessagingFee memory fee);
}
