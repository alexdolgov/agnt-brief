// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

// LayerZero imports
import { MessagingFee, OApp, Origin } from "@layerzerolabs/oapp-evm/contracts/oapp/OApp.sol";

// OZ imports
import { IERC20, SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

// WOFT imports
import { FeeConfig, IWOFTFactory } from "./interfaces/IWOFTFactory.sol";
import { WOFT, WOFTConfig } from "./WOFT.sol";

/**
 * @title WOFTFactory
 * @notice The Wrapped Asset Bridge OFT Factory is responsible for deploying and managing WAB OFTs.
 */
contract WOFTFactory is IWOFTFactory, OApp {
    using SafeERC20 for IERC20;

    // @dev The remote EID for the woft factory is always Ethereum
    // https://docs.layerzero.network/v2/developers/evm/technical-reference/endpoints
    uint32 public constant ADAPTER_EID = 30101;
    uint256 public constant BPS_DENOMINATOR = 10_000;
    address public constant NATIVE_TOKEN_ADDRESS = address(0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE);

    // Enforced options for gas limits
    bytes public factoryEnforcedOptions;
    bytes public woftSendEnforcedOptions;
    bytes public woftSendAndCallEnforcedOptions;

    uint16 public defaultFeeBps;

    mapping(address woftAddress => FeeConfig config) public feeBps;

    /**
     * @dev Constructs a WAB OFT Factory.
     * @param _endpoint _endpoint The LayerZero endpoint address.
     * @param _delegate The delegate capable of making OApp configurations inside of the endpoint.
     * @param _defaultFeeBps The default fee basis points (BPS) for all tokens.
     */
    constructor(
        address _endpoint,
        address _delegate,
        uint16 _defaultFeeBps
    ) OApp(_endpoint, _delegate) Ownable(_delegate) {
        if (_defaultFeeBps >= BPS_DENOMINATOR) revert InvalidBps();
        defaultFeeBps = _defaultFeeBps;
    }

    /**
     * @notice External only owner function to set the default fee basis points (BPS) for all tokens.
     * @param _feeBps The fee basis points to set for all tokens.
     */
    function setDefaultFeeBps(uint16 _feeBps) external onlyOwner {
        if (_feeBps >= BPS_DENOMINATOR) revert InvalidBps();
        defaultFeeBps = _feeBps;
        emit DefaultFeeBpsSet(_feeBps);
    }

    /**
     * @notice External only owner function to set the fee basis points (BPS) for a specific token.
     * @param _woftAddress WOFT address to set fee basis points for.
     * @param _feeBps The fee basis points to set for given _woftAddress.
     * @param _enabled Flag to represent which feeBps to use. Set to true to use _feeBps, false to use defaultFeeBps.
     */
    function setFeeBps(address _woftAddress, uint16 _feeBps, bool _enabled) external onlyOwner {
        if (_feeBps >= BPS_DENOMINATOR) revert InvalidBps();
        feeBps[_woftAddress] = FeeConfig(_feeBps, _enabled);
        emit FeeBpsSet(_woftAddress, _feeBps, _enabled);
    }

    /**
     * @notice External only owner function to set factory and WOFT Send Enforced Options.
     * @param _factoryEnforcedOptions The enforced options for sending a msg to the remote factory.
     * @param _woftSendEnforcedOptions The enforced options for SEND msg type.
     * @param _woftSendAndCallEnforcedOptions The enforced options for SEND_AND_CALL msg type.
     */
    function setEnforcedOptions(
        bytes calldata _factoryEnforcedOptions,
        bytes calldata _woftSendEnforcedOptions,
        bytes calldata _woftSendAndCallEnforcedOptions
    ) external onlyOwner {
        factoryEnforcedOptions = _factoryEnforcedOptions;
        woftSendEnforcedOptions = _woftSendEnforcedOptions;
        woftSendAndCallEnforcedOptions = _woftSendAndCallEnforcedOptions;

        emit EnforcedOptionsSet(_factoryEnforcedOptions, _woftSendEnforcedOptions, _woftSendAndCallEnforcedOptions);
    }

    /**
     * @notice External only owner function to withdraw fees and lzSend refunds from factory.
     * @param _woftAddress WOFT address that fees should be transferred in.
     * @param _to Address to send the fees to.
     * @param _amount Amount of fees to withdraw.
     */
    function withdrawFees(address _woftAddress, address _to, uint256 _amount) external onlyOwner {
        if (_woftAddress == NATIVE_TOKEN_ADDRESS) {
            // this can also be used to withdraw the a->b>a fees refunded from the lzSend
            (bool success, ) = payable(_to).call{ value: _amount }("");
            if (!success) revert WithdrawFailure(_woftAddress, _to, _amount);
        } else {
            IERC20(_woftAddress).safeTransfer(_to, _amount);
        }

        emit FeeWithdrawn(_to, _amount);
    }

    /**
     * @notice Get the fee to transfer a WOFT over the WAB.
     * @param _woftAddress The WOFT address.
     * @param _amount The amount to transfer.
     * @return uint256 The fee.
     */
    function getFee(address _woftAddress, uint256 _amount) public view virtual returns (uint256) {
        FeeConfig memory config = feeBps[_woftAddress];
        uint16 bps = config.enabled ? config.feeBps : defaultFeeBps;
        return bps == 0 ? 0 : (_amount * bps) / BPS_DENOMINATOR;
    }

    /**
     * @notice External function to quote the gas needed to pay for the B->A transaction in native gas or ZRO token.
     * @return fee A `MessagingFee` struct containing the calculated gas fee.
     *      - `nativeFee`: The native fee.
     *      - `lzTokenFee`: The lzToken fee.
     */
    function quoteDeployWOFT() external view returns (MessagingFee memory fee) {
        return
            _quote(
                ADAPTER_EID, // dstEid
                abi.encode(address(0), address(0)), // _message
                factoryEnforcedOptions, // options
                false // _payInLzToken
            );
    }

    /**
     * @dev Internal function override to handle incoming messages from WOFTAdapter's chain.
     * @param payload The encoded message payload being received.
     */
    function _lzReceive(
        Origin calldata /*_origin*/,
        bytes32 /*_guid*/,
        bytes calldata payload,
        address /*_executor*/,
        bytes calldata /*_extraData*/
    ) internal override {
        // @dev decode the lz message payload
        (
            address token,
            address woftAdapter,
            string memory name,
            string memory symbol,
            uint8 localDecimals,
            uint8 sharedDecimals
        ) = abi.decode(payload, (address, address, string, string, uint8, uint8));

        // @dev deploy the WOFT
        address woft = address(
            new WOFT(
                name,
                symbol,
                address(endpoint), // _lzEndpoint
                owner(), // _delegate
                address(this), // _factoryAddress
                WOFTConfig(
                    localDecimals,
                    sharedDecimals,
                    woftSendEnforcedOptions,
                    woftSendAndCallEnforcedOptions,
                    woftAdapter,
                    ADAPTER_EID
                ) // _config
            )
        );

        emit WOFTDeployed(token, woft);

        // @dev send the WOFT to the hub, and wire the adapter with this new address
        _lzSend(
            ADAPTER_EID, // _dstEid
            abi.encode(token, woft), // _message
            factoryEnforcedOptions, // _options
            MessagingFee(msg.value, 0), // _fee  // @dev Users are unable to make payments in ZRO
            payable(address(this)) // _refundAddress // @dev Users will not be refunded on the ABA call for initializing a token
        );
    }

    /**
     * @notice External function to accept funds sent to the factory
     */
    receive() external payable {}
}
