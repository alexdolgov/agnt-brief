// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC721} from "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import {IERC1155} from "@openzeppelin/contracts/token/ERC1155/IERC1155.sol";
import {ERC721Holder} from "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";
import {ERC1155Holder} from "@openzeppelin/contracts/token/ERC1155/utils/ERC1155Holder.sol";

import {SafeERC20} from "../libraries/SafeERC20.sol";
import {ErrorsLib} from "../libraries/ErrorsLib.sol";
import {TransferHelper} from "../libraries/TransferHelper.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";

import {IOrderMixin} from "@1inch/limit-order-protocol/contracts/interfaces/IOrderMixin.sol";
import {Address, AddressLib} from "@1inch/solidity-utils/contracts/libraries/AddressLib.sol";
import {RevertReasonForwarder} from "@1inch/solidity-utils/contracts/libraries/RevertReasonForwarder.sol";

contract NativeResolver is Ownable2Step, ERC721Holder, ERC1155Holder {
    using SafeERC20 for IERC20;
    using AddressLib for Address;

    /*//////////////////////////////////////////////////////////////////////////
                                     STATE VARIABLES
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Address allowed to call settleOrders.
    address public executor;

    /// @notice Recipient of swept assets. If address(0), sweep sends to owner.
    address public recipient;

    /// @notice 1inch Limit Order Protocol v4 contract.
    IOrderMixin private immutable LOPV4;

    /// @notice Whitelist of ERC20 tokens allowed for approve.
    mapping(address token => bool) public tokenWhitelist;

    /*//////////////////////////////////////////////////////////////////////////
                                    ERRORS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Thrown when approve is called for a token not in the whitelist.
    error TokenNotWhitelisted();

    /// @notice Thrown when a function restricted to LOP is called by a non-LOP address.
    error OnlyLOP();

    /// @notice Thrown when a function restricted to the executor is called by a non-executor.
    error OnlyExecutor();

    /// @notice Thrown when takerInteraction is invoked but the order taker is not this contract.
    error NotTaker();

    /// @notice Thrown when a sub-call in takerInteraction fails; index and revert reason are provided.
    error FailedExternalCall(uint256 index, bytes reason);

    /*//////////////////////////////////////////////////////////////////////////
                                    EVENTS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Emitted when the executor is changed by the owner.
    event ExecutorSet(address indexed previousExecutor, address indexed newExecutor);

    event RecipientSet(address indexed previousRecipient, address indexed newRecipient);

    /// @notice Emitted when a token is added to or removed from the approve whitelist.
    event TokenWhitelistSet(address indexed token, bool allowed);

    /// @notice Emitted when assets are swept. For ETH/ERC20 idOrAmount is the amount; for ERC721 it is tokenId; for ERC1155 it is the type id.
    event Sweep(address indexed to, address indexed token, uint256 idOrAmount);

    /*//////////////////////////////////////////////////////////////////////////
                                     RECEIVE FUNCTION
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Accept incoming native ETH (e.g. from order fills or direct sends).
    receive() external payable {}

    /*//////////////////////////////////////////////////////////////////////////
                                     CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    /// @param limitOrderProtocol The LOP v4 contract address.
    /// @param initialRecipient Recipient for swept assets; pass address(0) to use owner as default.
    constructor(IOrderMixin limitOrderProtocol, address initialRecipient) {
        LOPV4 = limitOrderProtocol;
        recipient = initialRecipient == address(0) ? msg.sender : initialRecipient;
    }

    /// @notice Forward encoded calldata to LOP (e.g. fillOrder/cancelOrder). Only executor; reverts with LOP reason on failure.
    /// @param data Encoded LOP call (e.g. fillOrder args).
    function settleOrders(bytes calldata data) external {
        require(msg.sender == executor, OnlyExecutor());

        (bool success,) = address(LOPV4).call(data);
        if (!success) RevertReasonForwarder.reRevert();
    }

    /// @notice Called by LOP when filling an order that has a "taker interaction" and the taker is this contract.
    ///         Decodes extraData as (targets[], calldatas[]) and executes each call in sequence. Used to run
    ///         custom logic during fill (e.g. unwrap WETH, swap intermediate tokens) so the order can be settled.
    /// @param taker Must equal address(this); otherwise NotTaker.
    /// @param extraData ABI-encoded (InchAddress[] targets, bytes[] calldatas) to execute.
    function takerInteraction(
        IOrderMixin.Order calldata, /* order */
        bytes calldata, /* extension */
        bytes32, /* orderHash */
        address taker,
        uint256, /* makingAmount */
        uint256, /* takingAmount */
        uint256, /* remainingMakingAmount */
        bytes calldata extraData
    ) public {
        if (msg.sender != address(LOPV4)) revert OnlyLOP();
        if (taker != address(this)) revert NotTaker();

        (Address[] memory targets, bytes[] memory calldatas) = abi.decode(extraData, (Address[], bytes[]));

        for (uint256 i = 0; i < targets.length; ++i) {
            (bool success, bytes memory reason) = targets[i].get().call(calldatas[i]);
            if (!success) revert FailedExternalCall(i, reason);
        }
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    OWNER FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Approve ERC20 allowance to a spender (e.g. LOP) for filling orders; use amount 0 to revoke. Only whitelisted tokens.
    /// @param token ERC20 token to approve (must be in tokenWhitelist).
    /// @param spender Spender address (typically LOP).
    /// @param amount Allowance amount; use 0 to revoke.
    function approve(IERC20 token, address spender, uint256 amount) external onlyOwner {
        require(tokenWhitelist[address(token)], TokenNotWhitelisted());

        token.safeApprove(spender, amount);
    }

    /// @notice Set whether a token is allowed for approve.
    /// @param token ERC20 token address.
    /// @param allowed True to allow approve for this token, false to remove.
    function setTokenWhitelist(address token, bool allowed) external onlyOwner {
        tokenWhitelist[token] = allowed;

        emit TokenWhitelistSet(token, allowed);
    }

    /// @notice Set executor (only owner). Use address(0) to revoke.
    /// @param newExecutor New executor address.
    function setExecutor(address newExecutor) external onlyOwner {
        address prev = executor;
        executor = newExecutor;

        emit ExecutorSet(prev, newExecutor);
    }

    /// @notice Set sweep recipient (only owner).
    /// @param newRecipient New recipient address.
    function setRecipient(address newRecipient) external onlyOwner {
        require(newRecipient != address(0), ErrorsLib.ZeroAddress());

        address prev = recipient;
        recipient = newRecipient;

        emit RecipientSet(prev, newRecipient);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    SWEEP FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Withdraw ERC20 or native ETH from this contract to the recipient.
    /// @param token Address(0) for native ETH; otherwise the ERC20 token contract.
    /// @param amount Amount to sweep (in wei for ETH, token units for ERC20).
    function sweepAssets(address token, uint256 amount) external onlyOwner {
        require(recipient != address(0), ErrorsLib.ZeroAddress());

        if (token == address(0)) {
            TransferHelper.safeTransferETH(recipient, amount);
        } else {
            TransferHelper.safeTransfer(token, recipient, amount);
        }

        emit Sweep(recipient, token, amount);
    }

    /// @notice Transfer a single ERC721 NFT from this contract to the recipient.
    /// @param token The ERC721 token address.
    /// @param tokenId The token ID to sweep.
    function sweepERC721(address token, uint256 tokenId) external onlyOwner {
        require(recipient != address(0), ErrorsLib.ZeroAddress());

        IERC721(token).safeTransferFrom(address(this), recipient, tokenId);
        emit Sweep(recipient, token, tokenId);
    }

    /// @notice Transfer ERC1155 tokens from this contract to the recipient.
    /// @param token The ERC1155 token address.
    /// @param id The token type id.
    /// @param amount The amount to transfer.
    /// @param data Optional data for safeTransferFrom (e.g. for receiver hooks).
    function sweepERC1155(address token, uint256 id, uint256 amount, bytes calldata data) external onlyOwner {
        require(recipient != address(0), ErrorsLib.ZeroAddress());

        IERC1155(token).safeTransferFrom(address(this), recipient, id, amount, data);
        emit Sweep(recipient, token, id);
    }
}
