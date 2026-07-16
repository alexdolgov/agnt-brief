// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {ERC20Upgradeable} from "openzeppelin-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {OFTUpgradeable} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/OFTUpgradeable.sol";
import {Origin} from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";

import {ERC20VotesUpgradeable} from "./lib/ERC20VotesUpgradeable.sol";
import {IStatusRead} from "./IMessagingStatus.sol";

contract L2Cook is
    OFTUpgradeable,
    ERC20VotesUpgradeable
{
    // errors
    error Paused();
    error NotEnabled();
    error MaxSupplyOutOfBound();
    error UnexpectedInitializeParams();

    // messaging status setup
    address public status;

    struct Init {
        address owner;
        address delegate;
        address status;
        string name;
        string symbol;
    }

    constructor(address _lzEndpoint) OFTUpgradeable(_lzEndpoint) {}

    /**
     * @dev Initializes the OFT with the provided name, symbol, and delegate.
     * @dev The delegate typically should be set as the admin of the contract.
     * @dev Ownable is not initialized here on purpose. It should be initialized in the child contract to
     * accommodate the different version of Ownable.
     */
    function initialize(Init memory init) external reinitializer(2) {
        if (
            init.owner == address(0) ||
            init.delegate == address(0) ||
            init.status == address(0)
        ) {
            revert UnexpectedInitializeParams();
        }
        // delegate can set config of OApp on endpoint
        __OFT_init(init.name, init.symbol, init.delegate);
        // owner can set peer
        __Ownable_init(init.owner);

        status = init.status;
    }

    /// @dev override transfer update to check blocklist and sanction list
    /// @dev ignore check if it is not set
    function _update(address from, address to, uint256 value) internal override(ERC20Upgradeable,ERC20VotesUpgradeable) {
        if (IStatusRead(status).isTransferPaused()) {
            revert Paused();
        }
        super._update(from, to, value);
    }

    /**
     * @dev Credits tokens to the specified address.
     * @param _to The address to credit the tokens to.
     * @param _amountLD The amount of tokens to credit in local decimals.
     * @dev _srcEid The source chain ID.
     * @return amountReceivedLD The amount of tokens ACTUALLY received in local decimals.
     */
    function _credit(
        address _to,
        uint256 _amountLD,
        uint32 _srcEid
    ) internal override returns (uint256) {
        /// @dev override to check capacity(ignore check if it is not set)
        if (IStatusRead(status).capacity() != 0 && totalSupply() + _amountLD > IStatusRead(status).capacity()) {
            revert MaxSupplyOutOfBound();
        }
        return super._credit(_to, _amountLD, _srcEid);
    }

    /**
     * @dev Internal function to handle the receive on the LayerZero endpoint.
     * @param _origin The origin information.
     *  - srcEid: The source chain endpoint ID.
     *  - sender: The sender address from the src chain.
     *  - nonce: The nonce of the LayerZero message.
     * @param _guid The unique identifier for the received LayerZero message.
     * @param _message The encoded message.
     * @dev _executor The address of the executor.
     * @dev _extraData Additional data.
     */
    function _lzReceive(
        Origin calldata _origin,
        bytes32 _guid,
        bytes calldata _message,
        address _executor, // @dev unused in the default implementation.
        bytes calldata _extraData // @dev unused in the default implementation.
    ) internal override {
        /// @dev override to check enable status
        if (!IStatusRead(status).enabled()) {
            revert NotEnabled();
        }
        super._lzReceive(_origin, _guid, _message, _executor, _extraData);
    }
}
