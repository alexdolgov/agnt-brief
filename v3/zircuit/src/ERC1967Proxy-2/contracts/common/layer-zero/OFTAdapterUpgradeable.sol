// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {
    IERC20Metadata,
    IERC20
} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IOFT, OFTCoreUpgradeable } from "./OFTCoreUpgradeable.sol";

/// @title OFTAdapter Contract
/// @dev OFTAdapter is a contract that adapts an ERC-20 token to the OFT functionality.
///
/// @dev For existing ERC20 tokens, this can be used to convert the token to crosschain compatibility.
/// @dev WARNING: ONLY 1 of these should exist for a given global mesh,
/// unless you make a NON-default implementation of OFT and needs to be done very carefully.
/// @dev WARNING: The default OFTAdapter implementation assumes LOSSLESS transfers, ie. 1 token in, 1 token out.
/// IF the 'innerToken' applies something like a transfer fee, the default will NOT work...
/// a pre/post balance check will need to be done to calculate the amountSentLD/amountReceivedLD.

/*
 * Diff description:
 * - Solidity compiler pinned to 0.8.30.
 * - Replaces immutable `innerToken` with upgrade-safe storage slot (`OFTAdapterStorage`) and accessor.
 * - Constructor now only accepts `_lzEndpoint`; token address & shared decimals supplied in initializer.
 * - `__OFTAdapter_init` takes `_innerToken`, `_sharedDecimals`, `_delegate`; stores token via `__OFTAdapter_init_unchained`.
 * - Adds `innerToken()` view helper; `token()`, `_debit()`, `_credit()` route through it.
 */

abstract contract OFTAdapterUpgradeable is OFTCoreUpgradeable {
    using SafeERC20 for IERC20;

    struct OFTAdapterStorage {
        IERC20 innerToken;
    }

    // keccak256(abi.encode(uint256(keccak256("zircuit.finance.storage.OFTAdapter")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant OFT_ADAPTER_STORAGE_LOCATION =
        0x57cf91c52cfebf7b3bcbf651e7cb2c8d2dd785d9eb964e1ae51ca2c2608f2f00;

    function _getOFTAdapterStorage()
        internal
        pure
        returns (OFTAdapterStorage storage $)
    {
        assembly {
            $.slot := OFT_ADAPTER_STORAGE_LOCATION
        }
    }
    /**
     * @dev Constructor for the OFTAdapter contract.
     * @param _lzEndpoint The LayerZero endpoint address.
     */
    constructor(address _lzEndpoint) OFTCoreUpgradeable(_lzEndpoint) {}

    /**
     * @notice Initializes the OFT adapter around an existing ERC-20 token.
     * @dev initializes the underlying OFT core using the inner token’s decimals and
     *      stores the token address.
     * @param _innerToken ERC-20 token to adapt for cross-chain transfers.
     * @param _sharedDecimals Shared cross-chain decimal precision (SD) used by the mesh.
     * @param _delegate Address allowed to manage LayerZero endpoint configuration.
     */
    function __OFTAdapter_init(
        address _innerToken,
        uint8 _sharedDecimals,
        address _delegate
    ) internal onlyInitializing {
        __OFTCore_init(
            _delegate,
            IERC20Metadata(_innerToken).decimals(),
            _sharedDecimals
        );
        __OFTAdapter_init_unchained(_innerToken);
    }

    /**
     * @notice stores the ERC-20 token instance for the adapter.
     * @param _innerToken ERC-20 token to wrap.
     */
    function __OFTAdapter_init_unchained(
        address _innerToken
    ) internal onlyInitializing {
        OFTAdapterStorage storage $ = _getOFTAdapterStorage();
        $.innerToken = IERC20(_innerToken);
    }

    function innerToken() public view returns (IERC20) {
        return _getOFTAdapterStorage().innerToken;
    }

    /**
     * @dev Retrieves the address of the underlying ERC20 implementation.
     * @return The address of the adapted ERC-20 token.
     * @dev In the case of OFTAdapter, address(this) and erc20 are NOT the same contract.
     */
    function token() public view returns (address) {
        return address(_getOFTAdapterStorage().innerToken);
    }
    /**
     * @notice Indicates whether the OFT contract requires approval of the 'token()' to send.
     * @return requiresApproval Needs approval of the underlying token implementation.
     * @dev In the case of default OFTAdapter, approval is required.
     * @dev In non-default OFTAdapter contracts with something like mint and burn privileges, it would NOT need approval.
     */
    function approvalRequired() external pure virtual returns (bool) {
        return true;
    }
    /**
     * @dev Burns tokens from the sender's specified balance, ie. pull method.
     * @param _from The address to debit from.
     * @param _amountLD The amount of tokens to send in local decimals.
     * @param _minAmountLD The minimum amount to send in local decimals.
     * @param _dstEid The destination chain ID.
     * @return amountSentLD The amount sent in local decimals.
     * @return amountReceivedLD The amount received in local decimals on the remote.
     * @dev msg.sender will need to approve this _amountLD of tokens to be locked inside of the contract.
     * @dev WARNING: The default OFTAdapter implementation assumes LOSSLESS transfers, ie. 1 token in, 1 token out.
     * IF the 'innerToken' applies something like a transfer fee, the default will NOT work...
     * a pre/post balance check will need to be done to calculate the amountReceivedLD.
     */
    function _debit(
        address _from,
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32 _dstEid
    )
        internal
        virtual
        override
        returns (uint256 amountSentLD, uint256 amountReceivedLD)
    {
        (amountSentLD, amountReceivedLD) = _debitView(
            _amountLD,
            _minAmountLD,
            _dstEid
        );
        // @dev Lock tokens by moving them into this contract from the caller.
        innerToken().safeTransferFrom(_from, address(this), amountSentLD);
    }
    /**
     * @dev Credits tokens to the specified address.
     * @param _to The address to credit the tokens to.
     * @param _amountLD The amount of tokens to credit in local decimals.
     * @dev _srcEid The source chain ID.
     * @return amountReceivedLD The amount of tokens ACTUALLY received in local decimals.
     * @dev WARNING: The default OFTAdapter implementation assumes LOSSLESS transfers, ie. 1 token in, 1 token out.
     * IF the 'innerToken' applies something like a transfer fee, the default will NOT work...
     * a pre/post balance check will need to be done to calculate the amountReceivedLD.
     */
    function _credit(
        address _to,
        uint256 _amountLD,
        uint32 /*_srcEid*/
    ) internal virtual override returns (uint256 amountReceivedLD) {
        // @dev Unlock the tokens and transfer to the recipient.
        innerToken().safeTransfer(_to, _amountLD);
        // @dev In the case of NON-default OFTAdapter, the amountLD MIGHT not be == amountReceivedLD.
        return _amountLD;
    }
}
