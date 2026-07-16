// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";

import {IPool} from "@aave/core-v3/contracts/interfaces/IPool.sol";
import {IPoolDataProvider} from "@aave/core-v3/contracts/interfaces/IPoolDataProvider.sol";

import {ISignatureTransfer} from "@uniswap/permit2/src/interfaces/ISignatureTransfer.sol";

/**
 * @title ERC4626EdelWrapperGateway
 *
 * @notice Deposit flow:
 *         TSLAx -> wTSLAx -> Edel Pool -> user receives eWTSLAx
 *
 * @notice Withdraw flow:
 *         user gives eWTSLAx -> Edel Pool returns wTSLAx -> unwrap -> user receives TSLAx
 *
 * @notice Migration flow:
 *         user gives old eTSLAx -> Edel Pool returns TSLAx -> wrap into wTSLAx
 *         -> supply wTSLAx -> user receives eWTSLAx
 *
 * @dev The Edel reserve asset for the new target flow is the ERC4626 wrapper token,
 *      e.g. wTSLAx, not TSLAx.
 *
 * @dev This contract assumes one Edel Pool per deployment. Deploy one gateway per chain/pool.
 */
contract ERC4626EdelWrapperGateway is ReentrancyGuard, Ownable2Step {
    using SafeERC20 for IERC20;

    IPool public immutable POOL;
    IPoolDataProvider public immutable DATA_PROVIDER;
    ISignatureTransfer public immutable PERMIT2;

    uint16 public constant REFERRAL_CODE = 0;

    /**
     * @notice Wrapped ERC4626 tokens that this gateway accepts.
     *
     * Example:
     *   allowedWrapped[wTSLAx] = true
     */
    mapping(address => bool) public allowedWrapped;

    error ZeroAddress();
    error ZeroAmount();
    error ZeroShares();
    error NoEToken(address reserveAsset);
    error BadPermitToken(address expectedToken, address actualToken);
    error PermitAmountTooLow(uint256 requiredAmount, uint256 permittedAmount);
    error MinSharesNotMet(uint256 actualShares, uint256 minShares);
    error MinAssetsNotMet(uint256 actualAssets, uint256 minAssets);
    error WrappedNotAllowed(address wrappedToken);
    error InvalidWrapper(address wrappedToken, address underlyingToken);
    error PoolDataProviderMismatch(address poolProvider, address dataProviderProvider);

    event WrappedAllowedSet(
        address indexed wrappedToken,
        address indexed underlyingToken,
        address indexed eToken,
        bool allowed
    );

    event WrappedAndSupplied(
        address indexed user,
        address indexed underlyingToken,
        address indexed wrappedToken,
        uint256 assets,
        uint256 shares
    );

    event WithdrawnAndUnwrapped(
        address indexed user,
        address indexed wrappedToken,
        address indexed eToken,
        uint256 eTokenAmount,
        uint256 withdrawnWrappedShares,
        uint256 assetsReturned
    );

    event MigratedToWrapped(
        address indexed user,
        address indexed underlyingToken,
        address indexed wrappedToken,
        address oldEToken,
        uint256 oldETokenAmount,
        uint256 underlyingWithdrawn,
        uint256 wrappedSharesSupplied
    );

    constructor(
    IPool pool_,
    IPoolDataProvider dataProvider_,
    ISignatureTransfer permit2_,
    address owner_
) Ownable(owner_) {
    if (
        address(pool_) == address(0) ||
        address(dataProvider_) == address(0) ||
        address(permit2_) == address(0) ||
        owner_ == address(0)
    ) {
        revert ZeroAddress();
    }

    POOL = pool_;
    DATA_PROVIDER = dataProvider_;
    PERMIT2 = permit2_;
}

    // -------------------------------------------------------------------------
    // Admin
    // -------------------------------------------------------------------------

    /**
     * @notice Allows or disallows a wrapped ERC4626 reserve asset.
     *
     * @dev Example:
     *      wrapped = wTSLAx
     *      wrapped.asset() = TSLAx
     *      getEToken(wrapped) = eWTSLAx
     */
    function setWrappedAllowed(
        IERC4626 wrapped,
        bool allowed
    ) external onlyOwner {
        address wrappedToken = address(wrapped);

        if (wrappedToken == address(0)) {
            revert ZeroAddress();
        }

        address underlyingToken = address(0);
        address eToken = address(0);

        if (allowed) {
            underlyingToken = wrapped.asset();

            if (
                underlyingToken == address(0) ||
                underlyingToken == wrappedToken
            ) {
                revert InvalidWrapper(wrappedToken, underlyingToken);
            }

            // Ensures the wrapped token is an active Edel reserve.
            eToken = getEToken(wrappedToken);
        }

        allowedWrapped[wrappedToken] = allowed;

        emit WrappedAllowedSet(
            wrappedToken,
            underlyingToken,
            eToken,
            allowed
        );
    }

    // -------------------------------------------------------------------------
    // Deposit: normal ERC20 approval flow
    // -------------------------------------------------------------------------

    /**
     * @notice Pulls underlying xStock from the user, wraps it into ERC4626 shares,
     *         supplies the wrapped token to Edel, and mints the eToken to the user.
     *
     * @dev User must approve this contract for the underlying token first.
     *
     * Example:
     *   wrapped.asset() = TSLAx
     *   wrapped          = wTSLAx
     *   Edel reserve     = wTSLAx
     *   user receives    = eWTSLAx
     */
    function wrapAndSupply(
        IERC4626 wrapped,
        uint256 assets
    ) external nonReentrant returns (uint256 shares) {
        shares = _wrapAndSupplyFromUser(
            wrapped,
            assets,
            0
        );
    }

    /**
     * @notice Same as wrapAndSupply, but with a minimum wrapped-share output check.
     */
    function wrapAndSupply(
        IERC4626 wrapped,
        uint256 assets,
        uint256 minShares
    ) external nonReentrant returns (uint256 shares) {
        shares = _wrapAndSupplyFromUser(
            wrapped,
            assets,
            minShares
        );
    }

    // -------------------------------------------------------------------------
    // Deposit: Permit2 flow
    // -------------------------------------------------------------------------

    /**
     * @notice Permit2 version of wrapAndSupply.
     *
     * @dev User must first approve Permit2 for the underlying token.
     *      The Permit2 signature must authorize this gateway as spender.
     */
    function wrapAndSupplyWithPermit2(
        IERC4626 wrapped,
        uint256 assets,
        ISignatureTransfer.PermitTransferFrom calldata permit,
        bytes calldata signature
    ) external nonReentrant returns (uint256 shares) {
        shares = _wrapAndSupplyFromPermit2(
            wrapped,
            assets,
            0,
            permit,
            signature
        );
    }

    /**
     * @notice Permit2 version of wrapAndSupply with a minimum wrapped-share output check.
     */
    function wrapAndSupplyWithPermit2(
        IERC4626 wrapped,
        uint256 assets,
        uint256 minShares,
        ISignatureTransfer.PermitTransferFrom calldata permit,
        bytes calldata signature
    ) external nonReentrant returns (uint256 shares) {
        shares = _wrapAndSupplyFromPermit2(
            wrapped,
            assets,
            minShares,
            permit,
            signature
        );
    }

    // -------------------------------------------------------------------------
    // Withdraw: normal ERC20 approval flow
    // -------------------------------------------------------------------------

    /**
     * @notice Pulls the user's eToken for the wrapped reserve, withdraws the wrapped token
     *         from Edel, redeems the ERC4626 wrapper, and sends underlying xStock to the user.
     *
     * @dev User must approve this contract for the eToken first.
     *
     * Example:
     *   user gives     = eWTSLAx
     *   Edel withdraws = wTSLAx
     *   ERC4626 redeem = TSLAx
     *   user receives  = TSLAx
     *
     * @param eTokenAmount Amount of eWTSLAx to withdraw.
     *                     Pass type(uint256).max to use the user's full eWTSLAx balance.
     */
    function unwrapAndWithdraw(
        IERC4626 wrapped,
        uint256 eTokenAmount
    ) external nonReentrant returns (uint256 assets) {
        assets = _unwrapAndWithdrawFromUser(
            wrapped,
            eTokenAmount,
            0
        );
    }

    /**
     * @notice Same as unwrapAndWithdraw, but with a minimum underlying-asset output check.
     */
    function unwrapAndWithdraw(
        IERC4626 wrapped,
        uint256 eTokenAmount,
        uint256 minAssets
    ) external nonReentrant returns (uint256 assets) {
        assets = _unwrapAndWithdrawFromUser(
            wrapped,
            eTokenAmount,
            minAssets
        );
    }

    // -------------------------------------------------------------------------
    // Withdraw: Permit2 flow
    // -------------------------------------------------------------------------

    /**
     * @notice Permit2 version of unwrapAndWithdraw.
     *
     * @dev User must first approve Permit2 for the eToken.
     *      The Permit2 signature must authorize this gateway as spender.
     */
    function unwrapAndWithdrawWithPermit2(
        IERC4626 wrapped,
        uint256 eTokenAmount,
        ISignatureTransfer.PermitTransferFrom calldata permit,
        bytes calldata signature
    ) external nonReentrant returns (uint256 assets) {
        assets = _unwrapAndWithdrawFromPermit2(
            wrapped,
            eTokenAmount,
            0,
            permit,
            signature
        );
    }

    /**
     * @notice Permit2 version of unwrapAndWithdraw with a minimum underlying-asset output check.
     */
    function unwrapAndWithdrawWithPermit2(
        IERC4626 wrapped,
        uint256 eTokenAmount,
        uint256 minAssets,
        ISignatureTransfer.PermitTransferFrom calldata permit,
        bytes calldata signature
    ) external nonReentrant returns (uint256 assets) {
        assets = _unwrapAndWithdrawFromPermit2(
            wrapped,
            eTokenAmount,
            minAssets,
            permit,
            signature
        );
    }

    // -------------------------------------------------------------------------
    // Migration: old direct eToken -> new wrapped eToken
    // -------------------------------------------------------------------------

    /**
     * @notice Migrates an old direct-reserve position into the new wrapped-reserve position.
     *
     * Example:
     *   user gives old eTSLAx
     *   Edel withdraws TSLAx
     *   gateway wraps TSLAx into wTSLAx
     *   gateway supplies wTSLAx to Edel
     *   user receives eWTSLAx
     *
     * @dev User must approve this contract for the old direct eToken first.
     *
     * @param wrapped ERC4626 wrapper token, e.g. wTSLAx.
     * @param oldETokenAmount Amount of old eTSLAx to migrate.
     *                        Pass type(uint256).max to use the user's full old eTSLAx balance.
     */
    function migrateToWrapped(
        IERC4626 wrapped,
        uint256 oldETokenAmount
    ) external nonReentrant returns (uint256 shares) {
        shares = _migrateToWrappedFromUser(
            wrapped,
            oldETokenAmount,
            0
        );
    }

    /**
     * @notice Same as migrateToWrapped, but with a minimum wrapped-share output check.
     */
    function migrateToWrapped(
        IERC4626 wrapped,
        uint256 oldETokenAmount,
        uint256 minShares
    ) external nonReentrant returns (uint256 shares) {
        shares = _migrateToWrappedFromUser(
            wrapped,
            oldETokenAmount,
            minShares
        );
    }

    /**
     * @notice Permit2 version of migrateToWrapped.
     *
     * @dev User must first approve Permit2 for the old direct eToken.
     */
    function migrateToWrappedWithPermit2(
        IERC4626 wrapped,
        uint256 oldETokenAmount,
        ISignatureTransfer.PermitTransferFrom calldata permit,
        bytes calldata signature
    ) external nonReentrant returns (uint256 shares) {
        shares = _migrateToWrappedFromPermit2(
            wrapped,
            oldETokenAmount,
            0,
            permit,
            signature
        );
    }

    /**
     * @notice Permit2 version of migrateToWrapped with a minimum wrapped-share output check.
     */
    function migrateToWrappedWithPermit2(
        IERC4626 wrapped,
        uint256 oldETokenAmount,
        uint256 minShares,
        ISignatureTransfer.PermitTransferFrom calldata permit,
        bytes calldata signature
    ) external nonReentrant returns (uint256 shares) {
        shares = _migrateToWrappedFromPermit2(
            wrapped,
            oldETokenAmount,
            minShares,
            permit,
            signature
        );
    }

    // -------------------------------------------------------------------------
    // Views
    // -------------------------------------------------------------------------

    /**
     * @notice Returns the Edel eToken for a reserve asset.
     *
     * @dev For new wrapped flows, reserveAsset should be the wrapper token,
     *      e.g. wTSLAx.
     *
     * @dev For migration, reserveAsset can be the old direct token,
     *      e.g. TSLAx.
     */
    function getEToken(
        address reserveAsset
    ) public view returns (address eToken) {
        (eToken, , ) = DATA_PROVIDER.getReserveTokensAddresses(reserveAsset);

        if (eToken == address(0)) {
            revert NoEToken(reserveAsset);
        }
    }

    /**
     * @notice Convenience helper for getting the eToken of a wrapped ERC4626 reserve.
     */
    function getETokenForWrapped(
        IERC4626 wrapped
    ) external view returns (address eToken) {
        eToken = getEToken(address(wrapped));
    }

    /**
     * @notice Convenience helper for checking whether a wrapper is allowed.
     */
    function isWrappedAllowed(
        IERC4626 wrapped
    ) external view returns (bool allowed) {
        allowed = allowedWrapped[address(wrapped)];
    }

    // -------------------------------------------------------------------------
    // Internal deposit logic
    // -------------------------------------------------------------------------

    function _wrapAndSupplyFromUser(
        IERC4626 wrapped,
        uint256 assets,
        uint256 minShares
    ) internal returns (uint256 shares) {
        if (assets == 0) {
            revert ZeroAmount();
        }

        _requireWrappedAllowed(wrapped);

        address underlyingToken = wrapped.asset();

        IERC20(underlyingToken).safeTransferFrom(
            msg.sender,
            address(this),
            assets
        );

        shares = _wrapAndSupply(
            wrapped,
            underlyingToken,
            assets,
            minShares,
            msg.sender
        );
    }

    function _wrapAndSupplyFromPermit2(
        IERC4626 wrapped,
        uint256 assets,
        uint256 minShares,
        ISignatureTransfer.PermitTransferFrom calldata permit,
        bytes calldata signature
    ) internal returns (uint256 shares) {
        if (assets == 0) {
            revert ZeroAmount();
        }

        _requireWrappedAllowed(wrapped);

        address underlyingToken = wrapped.asset();

        _pullWithPermit2(
            underlyingToken,
            assets,
            permit,
            signature
        );

        shares = _wrapAndSupply(
            wrapped,
            underlyingToken,
            assets,
            minShares,
            msg.sender
        );
    }

    function _wrapAndSupply(
        IERC4626 wrapped,
        address underlyingToken,
        uint256 assets,
        uint256 minShares,
        address user
    ) internal returns (uint256 shares) {
        address wrappedToken = address(wrapped);

        IERC20(underlyingToken).forceApprove(
            wrappedToken,
            assets
        );

        // Underlying xStock -> ERC4626 wrapper token.
        shares = wrapped.deposit(
            assets,
            address(this)
        );

        if (shares == 0) {
            revert ZeroShares();
        }

        if (shares < minShares) {
            revert MinSharesNotMet(shares, minShares);
        }

        IERC20(wrappedToken).forceApprove(
            address(POOL),
            shares
        );

        // Supply wrapped token to Edel.
        // User receives the corresponding eToken.
        POOL.supply(
            wrappedToken,
            shares,
            user,
            REFERRAL_CODE
        );

        emit WrappedAndSupplied(
            user,
            underlyingToken,
            wrappedToken,
            assets,
            shares
        );
    }

    // -------------------------------------------------------------------------
    // Internal withdraw logic
    // -------------------------------------------------------------------------

    function _unwrapAndWithdrawFromUser(
        IERC4626 wrapped,
        uint256 eTokenAmount,
        uint256 minAssets
    ) internal returns (uint256 assets) {
        _requireWrappedAllowed(wrapped);

        address wrappedToken = address(wrapped);
        address eToken = getEToken(wrappedToken);

        uint256 amountToWithdraw = _resolveAmount(
            IERC20(eToken),
            eTokenAmount,
            msg.sender
        );

        IERC20(eToken).safeTransferFrom(
            msg.sender,
            address(this),
            amountToWithdraw
        );

        assets = _withdrawAndUnwrap(
            wrapped,
            eToken,
            amountToWithdraw,
            minAssets,
            msg.sender
        );
    }

    function _unwrapAndWithdrawFromPermit2(
        IERC4626 wrapped,
        uint256 eTokenAmount,
        uint256 minAssets,
        ISignatureTransfer.PermitTransferFrom calldata permit,
        bytes calldata signature
    ) internal returns (uint256 assets) {
        _requireWrappedAllowed(wrapped);

        address wrappedToken = address(wrapped);
        address eToken = getEToken(wrappedToken);

        uint256 amountToWithdraw = _resolveAmount(
            IERC20(eToken),
            eTokenAmount,
            msg.sender
        );

        _pullWithPermit2(
            eToken,
            amountToWithdraw,
            permit,
            signature
        );

        assets = _withdrawAndUnwrap(
            wrapped,
            eToken,
            amountToWithdraw,
            minAssets,
            msg.sender
        );
    }

    function _withdrawAndUnwrap(
        IERC4626 wrapped,
        address eToken,
        uint256 amountToWithdraw,
        uint256 minAssets,
        address user
    ) internal returns (uint256 assets) {
        address wrappedToken = address(wrapped);

        // Edel burns this contract's eToken and sends wrappedToken to this contract.
        uint256 withdrawnWrappedShares = POOL.withdraw(
            wrappedToken,
            amountToWithdraw,
            address(this)
        );

        if (withdrawnWrappedShares == 0) {
            revert ZeroShares();
        }

        // ERC4626 redeem: wrapped token -> underlying xStock.
        // Underlying asset is sent directly to the user.
        assets = wrapped.redeem(
            withdrawnWrappedShares,
            user,
            address(this)
        );

        if (assets == 0) {
            revert ZeroAmount();
        }

        if (assets < minAssets) {
            revert MinAssetsNotMet(assets, minAssets);
        }

        emit WithdrawnAndUnwrapped(
            user,
            wrappedToken,
            eToken,
            amountToWithdraw,
            withdrawnWrappedShares,
            assets
        );
    }

    // -------------------------------------------------------------------------
    // Internal migration logic
    // -------------------------------------------------------------------------

    function _migrateToWrappedFromUser(
        IERC4626 wrapped,
        uint256 oldETokenAmount,
        uint256 minShares
    ) internal returns (uint256 shares) {
        _requireWrappedAllowed(wrapped);

        address underlyingToken = wrapped.asset();
        address oldEToken = getEToken(underlyingToken);

        uint256 amountToMigrate = _resolveAmount(
            IERC20(oldEToken),
            oldETokenAmount,
            msg.sender
        );

        IERC20(oldEToken).safeTransferFrom(
            msg.sender,
            address(this),
            amountToMigrate
        );

        shares = _withdrawUnderlyingWrapAndSupply(
            wrapped,
            underlyingToken,
            oldEToken,
            amountToMigrate,
            minShares,
            msg.sender
        );
    }

    function _migrateToWrappedFromPermit2(
        IERC4626 wrapped,
        uint256 oldETokenAmount,
        uint256 minShares,
        ISignatureTransfer.PermitTransferFrom calldata permit,
        bytes calldata signature
    ) internal returns (uint256 shares) {
        _requireWrappedAllowed(wrapped);

        address underlyingToken = wrapped.asset();
        address oldEToken = getEToken(underlyingToken);

        uint256 amountToMigrate = _resolveAmount(
            IERC20(oldEToken),
            oldETokenAmount,
            msg.sender
        );

        _pullWithPermit2(
            oldEToken,
            amountToMigrate,
            permit,
            signature
        );

        shares = _withdrawUnderlyingWrapAndSupply(
            wrapped,
            underlyingToken,
            oldEToken,
            amountToMigrate,
            minShares,
            msg.sender
        );
    }

    function _withdrawUnderlyingWrapAndSupply(
        IERC4626 wrapped,
        address underlyingToken,
        address oldEToken,
        uint256 amountToMigrate,
        uint256 minShares,
        address user
    ) internal returns (uint256 shares) {
        address wrappedToken = address(wrapped);

        // Withdraw old direct reserve, e.g. eTSLAx -> TSLAx.
        uint256 underlyingWithdrawn = POOL.withdraw(
            underlyingToken,
            amountToMigrate,
            address(this)
        );

        if (underlyingWithdrawn == 0) {
            revert ZeroAmount();
        }

        // Wrap TSLAx -> wTSLAx, then supply wTSLAx -> eWTSLAx.
        shares = _wrapAndSupply(
            wrapped,
            underlyingToken,
            underlyingWithdrawn,
            minShares,
            user
        );

        emit MigratedToWrapped(
            user,
            underlyingToken,
            wrappedToken,
            oldEToken,
            amountToMigrate,
            underlyingWithdrawn,
            shares
        );
    }

    // -------------------------------------------------------------------------
    // Internal helpers
    // -------------------------------------------------------------------------

    function _requireWrappedAllowed(IERC4626 wrapped) internal view {
        address wrappedToken = address(wrapped);

        if (!allowedWrapped[wrappedToken]) {
            revert WrappedNotAllowed(wrappedToken);
        }
    }

    function _pullWithPermit2(
        address expectedToken,
        uint256 amount,
        ISignatureTransfer.PermitTransferFrom calldata permit,
        bytes calldata signature
    ) internal {
        if (amount == 0) {
            revert ZeroAmount();
        }

        address actualToken = permit.permitted.token;

        if (actualToken != expectedToken) {
            revert BadPermitToken(expectedToken, actualToken);
        }

        if (permit.permitted.amount < amount) {
            revert PermitAmountTooLow(amount, permit.permitted.amount);
        }

        PERMIT2.permitTransferFrom(
            permit,
            ISignatureTransfer.SignatureTransferDetails({
                to: address(this),
                requestedAmount: amount
            }),
            msg.sender,
            signature
        );
    }

    function _resolveAmount(
        IERC20 token,
        uint256 amount,
        address owner
    ) internal view returns (uint256 resolvedAmount) {
        if (amount == type(uint256).max) {
            resolvedAmount = token.balanceOf(owner);
        } else {
            resolvedAmount = amount;
        }

        if (resolvedAmount == 0) {
            revert ZeroAmount();
        }
    }
}