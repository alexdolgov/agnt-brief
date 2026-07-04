// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/introspection/ERC165.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./interfaces/IRestrictedSwap.sol";
import "./RestrictedLockupToken.sol";
import "./EasyAccessControl.sol";
import "./interfaces/IERC1404.sol";

contract RestrictedSwap is
    IRestrictedSwap,
    EasyAccessControl,
    ReentrancyGuard,
    ERC165
{
    RestrictedLockupToken public restrictedLockupToken;

    using SafeERC20 for IERC20;

    /// @dev swap number
    uint256 public _swapNumber = 0;
    bytes4 public immutable INTERFACE_ID;

    /// @dev swap number => swap
    mapping(uint256 => Swap) private _swap;

    /// @dev userAddress => tokenAddress => the required allowance of tokens to swapContract by active swaps
    mapping(address => mapping(address => uint256)) private _requiredAllowance; // specific to configurer. Is a requirement!
    mapping(address => mapping(address => uint256))
        private _requiredAllowanceCounterparty; // as a counterparty - for information only. Not a requirement (so that configurers can't manipulate required allowance)

    /// @dev userAddress => pending restricted tokens to buy - configured by another users
    mapping(address => uint256) private _pendingBuys;

    // @dev userAddress => pending restricted tokens to sell - configured by current user
    mapping(address => uint256) private _pendingSells;

    bool public pausedSwaps = false;

    modifier onlyValidSwap(uint256 swapNumber_) {
        Swap storage swap = _swap[swapNumber_];
        require(swap.status != SwapStatus.Canceled, "Already canceled");
        require(swap.status != SwapStatus.Complete, "Already completed");
        _;
    }

    modifier onlyUnpaused() {
        require(pausedSwaps == false, "All swaps are paused");
        _;
    }

    constructor(
        address contractAdmin_,
        address restrictedLockupTokenAddress_
    ) ReentrancyGuard() EasyAccessControl(contractAdmin_) {
        restrictedLockupToken = RestrictedLockupToken(
            restrictedLockupTokenAddress_
        );
        INTERFACE_ID = type(IRestrictedSwap).interfaceId;
    }

    /**
     * @dev Pause all swaps
     */
    function pauseSwaps() external onlyContractAdmin {
        pausedSwaps = true;
        emit SwapPausedState(true);
    }

    /**
     * @dev Unpause all swaps
     */
    function unpauseSwaps() external onlyContractAdmin {
        pausedSwaps = false;
        emit SwapPausedState(false);
    }

    /**
     * @dev Get the swap number counter value
     */
    function swapNumber() external view returns (uint256) {
        return _swapNumber;
    }

    /**
     * Support of ERC165
     * @dev See https://eips.ethereum.org/EIPS/eip-165
     * @param interfaceId The interface identifier, as specified in ERC-165
     */
    function supportsInterface(
        bytes4 interfaceId
    ) public view override(ERC165, IERC165) returns (bool) {
        return
            interfaceId == INTERFACE_ID || super.supportsInterface(interfaceId);
    }

    /**
     * @dev Get the allowance required for active swaps for the wallet address and token address.
            Can be used by UI client to calculate the required allowance before creating the swap
     * @param addr Wallet address
     * @param token ERC-20 token address
     */
    function requiredAllowance(
        address addr,
        address token
    ) external view returns (uint256) {
        return _requiredAllowance[addr][token];
    }

    /**
     * @dev Get the allowance required for active swaps for the wallet address and token address.
            Can be used by UI client to calculate the required allowance before creating the swap
     * @param addr Wallet address
     * @param token ERC-20 token address
     */
    function requiredAllowanceCounterparty(
        address addr,
        address token
    ) external view returns (uint256) {
        return _requiredAllowanceCounterparty[addr][token];
    }

    /**
     * @dev Pending buy transactions for the wallet address
     * @param addr Buyer address
     * @return pending restricted tokens to buy
     */
    function pendingBuys(address addr) external view returns (uint256) {
        return _pendingBuys[addr];
    }

    /**
     * @dev Pending sell transactions for the wallet address
     * @param addr Seller address
     * @return pending restricted tokens to sell
     */
    function pendingSells(address addr) external view returns (uint256) {
        return _pendingSells[addr];
    }

    /**
     * @dev Configures swap and emits an event. This function does not fund tokens. Only for swap configuration.
     * @param restrictedTokenSender restricted token sender
     * @param quoteTokenSender quote token sender
     * @param quoteToken quote token
     * @param restrictedTokenAmount restricted token amount
     * @param quoteTokenAmount quote token amount
     */
    function _configureSwap(
        address restrictedTokenSender,
        address quoteTokenSender,
        address quoteToken,
        uint256 restrictedTokenAmount,
        uint256 quoteTokenAmount,
        SwapStatus configuror
    ) private onlyUnpaused {
        require(restrictedTokenAmount > 0, "Invalid restricted token amount");
        require(quoteTokenAmount > 0, "Invalid quote token amount");

        uint8 code = restrictedLockupToken.detectTransferRestriction(
            restrictedTokenSender,
            quoteTokenSender,
            restrictedTokenAmount
        );

        string memory message = restrictedLockupToken
            .messageForTransferRestriction(code);

        require(
            restrictedLockupToken.transferRules().checkSuccess(code),
            message
        );

        try
            IERC165(quoteToken).supportsInterface(type(IERC1404).interfaceId)
        returns (bool supported1404) {
            require(!supported1404, "Does not support IERC1404");
            // happy path, ie ERC1404 is not supported, even if ERC165 is supported
        } catch {
            // happy path, ie ERC165 is not supported. Most ERC-20 tokens do not support ERC-165
        }

        _swapNumber += 1;

        Swap storage swap = _swap[_swapNumber];
        swap.restrictedTokenSender = restrictedTokenSender;
        swap.restrictedTokenAmount = restrictedTokenAmount;
        swap.quoteTokenSender = quoteTokenSender;
        swap.quoteTokenAmount = quoteTokenAmount;
        swap.quoteToken = quoteToken;
        swap.status = configuror;

        if (configuror == SwapStatus.SellConfigured) {
            _requiredAllowance[swap.restrictedTokenSender][
                address(restrictedLockupToken)
            ] += restrictedTokenAmount;
            _requiredAllowanceCounterparty[swap.quoteTokenSender][
                quoteToken
            ] += quoteTokenAmount;
        } else {
            _requiredAllowance[swap.quoteTokenSender][
                quoteToken
            ] += quoteTokenAmount;
            _requiredAllowanceCounterparty[swap.restrictedTokenSender][
                address(restrictedLockupToken)
            ] += restrictedTokenAmount;
        }

        emit SwapConfigured(
            _swapNumber,
            restrictedTokenSender,
            restrictedTokenAmount,
            quoteToken,
            quoteTokenSender,
            quoteTokenAmount
        );
    }

    /**
     *  @dev Configure sell and emit an event with new swap number
     *       Restricted Tokens should be approved to this contract before calling this function
     *  @param restrictedTokenAmount the required amount for the erc1404Sender to send
     *  @param quoteToken the address of an erc1404 or erc20 that will be swapped
     *  @param quoteTokenSender the address that is approved to fund quoteToken
     *  @param quoteTokenAmount the required amount of quoteToken to swap
     */
    function configureSell(
        uint256 restrictedTokenAmount,
        address quoteToken,
        address quoteTokenSender,
        uint256 quoteTokenAmount
    ) external override {
        require(quoteTokenSender != address(0), "Invalid quote token sender");
        require(quoteToken != address(0), "Invalid quote token address");
        require(
            restrictedLockupToken.balanceOf(msg.sender) >=
                restrictedTokenAmount,
            "Insufficient restricted token amount"
        );
        require(
            restrictedLockupToken.allowance(msg.sender, address(this)) >=
                _requiredAllowance[msg.sender][address(restrictedLockupToken)] +
                    restrictedTokenAmount,
            "Insufficient allowance of restricted token"
        );

        _pendingSells[msg.sender] += restrictedTokenAmount;

        _configureSwap(
            msg.sender,
            quoteTokenSender,
            quoteToken,
            restrictedTokenAmount,
            quoteTokenAmount,
            SwapStatus.SellConfigured
        );
    }

    /**
     *  @dev Configure buy and emit an event with new swap number
     *  @param restrictedTokenAmount the required amount for the erc1404Sender to send
     *  @param restrictedTokenSender restricted token sender
     *  @param quoteToken the address of an erc1404 or erc20 that will be swapped
     *  @param quoteTokenAmount the required amount of quoteToken to swap
     */
    function configureBuy(
        uint256 restrictedTokenAmount,
        address restrictedTokenSender,
        address quoteToken,
        uint256 quoteTokenAmount
    ) external override {
        require(
            restrictedTokenSender != address(0),
            "Invalid restricted token sender"
        );
        require(quoteToken != address(0), "Invalid quote token address");
        require(
            IERC20(quoteToken).balanceOf(msg.sender) >= quoteTokenAmount,
            "Insufficient quote token amount"
        );
        require(
            IERC20(quoteToken).allowance(msg.sender, address(this)) >=
                _requiredAllowance[msg.sender][quoteToken] + quoteTokenAmount,
            "Insufficient allowance of quote token"
        );

        _pendingBuys[restrictedTokenSender] += restrictedTokenAmount;

        _configureSwap(
            restrictedTokenSender,
            msg.sender,
            quoteToken,
            restrictedTokenAmount,
            quoteTokenAmount,
            SwapStatus.BuyConfigured
        );
    }

    function _completeSwap(uint256 swapNumber_) private {
        Swap memory swap = _swap[swapNumber_];

        uint256 balanceBeforeTransfer = IERC20(swap.quoteToken).balanceOf(
            swap.restrictedTokenSender
        );

        IERC20(swap.quoteToken).safeTransferFrom(
            swap.quoteTokenSender,
            swap.restrictedTokenSender,
            swap.quoteTokenAmount
        );

        uint256 balanceAfterTransfer = IERC20(swap.quoteToken).balanceOf(
            swap.restrictedTokenSender
        );

        require(
            balanceAfterTransfer - balanceBeforeTransfer ==
                swap.quoteTokenAmount,
            "Swap reverted for inconsistent quote token amount"
        );

        uint256 _restrictedTokenBalanceBefore = restrictedLockupToken.balanceOf(
            swap.quoteTokenSender
        );
        restrictedLockupToken.transferFrom(
            swap.restrictedTokenSender,
            swap.quoteTokenSender,
            swap.restrictedTokenAmount
        );

        uint256 _restrictedTokenBalanceAfter = restrictedLockupToken.balanceOf(
            swap.quoteTokenSender
        );

        require(
            _restrictedTokenBalanceAfter - _restrictedTokenBalanceBefore ==
                swap.restrictedTokenAmount,
            "Swap reverted for inconsistent restricted token amount"
        );

        if (swap.status == SwapStatus.SellConfigured) {
            _requiredAllowance[swap.restrictedTokenSender][
                address(restrictedLockupToken)
            ] -= swap.restrictedTokenAmount;
            _requiredAllowanceCounterparty[swap.quoteTokenSender][
                swap.quoteToken
            ] -= swap.quoteTokenAmount;
        } else if (swap.status == SwapStatus.BuyConfigured) {
            _requiredAllowance[swap.quoteTokenSender][swap.quoteToken] -= swap
                .quoteTokenAmount;
            _requiredAllowanceCounterparty[swap.restrictedTokenSender][
                address(restrictedLockupToken)
            ] -= swap.restrictedTokenAmount;
        }

        _swap[swapNumber_].status = SwapStatus.Complete;

        emit SwapComplete(
            swapNumber_,
            swap.restrictedTokenSender,
            swap.restrictedTokenAmount,
            swap.quoteTokenSender,
            swap.quoteToken,
            swap.quoteTokenAmount
        );
    }

    /**
     *  @dev Complete swap with quote token
     *  @param swapNumber_ swap number
     */
    function completeSwapWithQuoteToken(
        uint256 swapNumber_
    ) external override nonReentrant onlyValidSwap(swapNumber_) onlyUnpaused {
        Swap memory swap = _swap[swapNumber_];

        require(
            swap.quoteTokenSender == msg.sender,
            "You are not appropriate token sender for this swap"
        );

        require(
            swap.status == SwapStatus.SellConfigured,
            "A Sell Swap cannot be completed with this method"
        );
        require(
            IERC20(swap.quoteToken).balanceOf(swap.quoteTokenSender) >=
                swap.quoteTokenAmount,
            "Insufficient quote token amount"
        );
        require(
            restrictedLockupToken.balanceOf(swap.restrictedTokenSender) >=
                swap.restrictedTokenAmount,
            "Insufficient restricted token amount"
        );

        uint8 code = restrictedLockupToken.detectTransferRestriction(
            swap.restrictedTokenSender,
            swap.quoteTokenSender,
            swap.restrictedTokenAmount
        );

        require(
            restrictedLockupToken.transferRules().checkSuccess(code),
            restrictedLockupToken.transferRules().messageForTransferRestriction(
                code
            )
        );

        _pendingSells[swap.restrictedTokenSender] -= swap.restrictedTokenAmount;

        _completeSwap(swapNumber_);
    }

    /**
     *  @dev Complete swap with restricted token
     *  @param swapNumber_ swap number
     */
    function completeSwapWithRestrictedToken(
        uint256 swapNumber_
    ) external override nonReentrant onlyValidSwap(swapNumber_) onlyUnpaused {
        Swap memory swap = _swap[swapNumber_];

        require(
            swap.restrictedTokenSender == msg.sender,
            "You are not appropriate token sender for this swap"
        );

        require(
            swap.status == SwapStatus.BuyConfigured,
            "A Buy Swap cannot be completed with this method"
        );

        require(
            IERC20(swap.quoteToken).balanceOf(swap.quoteTokenSender) >=
                swap.quoteTokenAmount,
            "Insufficient quote token amount"
        );
        require(
            restrictedLockupToken.balanceOf(swap.restrictedTokenSender) >=
                swap.restrictedTokenAmount,
            "Insufficient restricted token amount"
        );

        uint8 code = restrictedLockupToken.detectTransferRestriction(
            swap.restrictedTokenSender,
            swap.quoteTokenSender,
            swap.restrictedTokenAmount
        );

        require(
            restrictedLockupToken.transferRules().checkSuccess(code),
            restrictedLockupToken.transferRules().messageForTransferRestriction(
                code
            )
        );

        _pendingBuys[swap.restrictedTokenSender] -= swap.restrictedTokenAmount;

        _completeSwap(swapNumber_);
    }

    /**
     *  @dev cancel swap
     *  @param swapNumber_ swap number
     */
    function cancelSwap(
        uint256 swapNumber_
    ) external override nonReentrant onlyValidSwap(swapNumber_) {
        Swap memory swap = _swap[swapNumber_];

        require(
            swap.restrictedTokenSender != address(0) &&
                swap.quoteTokenSender != address(0),
            "This swap is not configured"
        );

        if (swap.status == SwapStatus.SellConfigured) {
            require(
                msg.sender == swap.restrictedTokenSender,
                "Only swap configurator can cancel the swap"
            );
            _pendingSells[swap.restrictedTokenSender] -= swap
                .restrictedTokenAmount;
            _requiredAllowance[swap.restrictedTokenSender][
                address(restrictedLockupToken)
            ] -= swap.restrictedTokenAmount;
            _requiredAllowanceCounterparty[swap.quoteTokenSender][
                swap.quoteToken
            ] -= swap.quoteTokenAmount;
        } else if (swap.status == SwapStatus.BuyConfigured) {
            require(
                msg.sender == swap.quoteTokenSender,
                "Only swap configurator can cancel the swap"
            );
            _pendingBuys[swap.restrictedTokenSender] -= swap
                .restrictedTokenAmount;
            _requiredAllowance[swap.quoteTokenSender][swap.quoteToken] -= swap
                .quoteTokenAmount;
            _requiredAllowanceCounterparty[swap.restrictedTokenSender][
                address(restrictedLockupToken)
            ] -= swap.restrictedTokenAmount;
        }

        _swap[swapNumber_].status = SwapStatus.Canceled;

        emit SwapCanceled(msg.sender, swapNumber_);
    }

    /**
     * @dev Returns the swap status if exists
     * @param swapNumber_ swap number
     * @return SwapStatus status of the swap record
     */
    function swapStatus(
        uint256 swapNumber_
    ) external view override returns (SwapStatus) {
        require(
            _swap[swapNumber_].restrictedTokenSender != address(0),
            "Swap record does not exist"
        );
        return _swap[swapNumber_].status;
    }
}
